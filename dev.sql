--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: catalog_category; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_category (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


--
-- Name: catalog_category_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_category_id_seq OWNED BY catalog_category.id;


--
-- Name: catalog_city; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_city (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


--
-- Name: catalog_city_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_city_id_seq OWNED BY catalog_city.id;


--
-- Name: catalog_coordsystem; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_coordsystem (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    "EPSG_code" integer NOT NULL
);


--
-- Name: catalog_coordsystem_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_coordsystem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_coordsystem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_coordsystem_id_seq OWNED BY catalog_coordsystem.id;


--
-- Name: catalog_county; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_county (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


--
-- Name: catalog_county_cities; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_county_cities (
    id integer NOT NULL,
    county_id integer NOT NULL,
    city_id integer NOT NULL
);


--
-- Name: catalog_county_cities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_county_cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_county_cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_county_cities_id_seq OWNED BY catalog_county_cities.id;


--
-- Name: catalog_county_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_county_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_county_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_county_id_seq OWNED BY catalog_county.id;


--
-- Name: catalog_datatype; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_datatype (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


--
-- Name: catalog_datatype_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_datatype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_datatype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_datatype_id_seq OWNED BY catalog_datatype.id;


--
-- Name: catalog_department; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_department (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(40) NOT NULL
);


--
-- Name: catalog_department_divisions; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_department_divisions (
    id integer NOT NULL,
    department_id integer NOT NULL,
    division_id integer NOT NULL
);


--
-- Name: catalog_department_divisions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_department_divisions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_department_divisions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_department_divisions_id_seq OWNED BY catalog_department_divisions.id;


--
-- Name: catalog_department_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_department_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_department_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_department_id_seq OWNED BY catalog_department.id;


--
-- Name: catalog_division; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_division (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


--
-- Name: catalog_division_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_division_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_division_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_division_id_seq OWNED BY catalog_division.id;


--
-- Name: catalog_resource; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_resource (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(50) NOT NULL,
    short_description character varying(255) NOT NULL,
    release_date date,
    time_period character varying(50) NOT NULL,
    usage text NOT NULL,
    description text NOT NULL,
    contact_phone character varying(50) NOT NULL,
    contact_email character varying(255) NOT NULL,
    contact_url character varying(255) NOT NULL,
    updates_id integer,
    area_of_interest character varying(255) NOT NULL,
    is_published boolean NOT NULL,
    created_by_id integer NOT NULL,
    last_updated_by_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    last_updated timestamp with time zone NOT NULL,
    metadata_contact character varying(255) NOT NULL,
    metadata_notes text NOT NULL,
    update_frequency character varying(255) NOT NULL,
    data_formats character varying(255) NOT NULL,
    proj_coord_sys character varying(255) NOT NULL,
    wkt_geometry text NOT NULL,
    csw_typename character varying(200) NOT NULL,
    csw_schema character varying(200) NOT NULL,
    csw_mdsource character varying(100) NOT NULL,
    csw_xml text NOT NULL,
    csw_anytext text NOT NULL,
    rating_votes integer NOT NULL,
    rating_score integer NOT NULL,
    agency_type character varying(16) NOT NULL,
    keywords character varying(255) NOT NULL,
    department_id integer NOT NULL,
    division_id integer,
    newest_record date,
    oldest_record date,
    CONSTRAINT catalog_resource_rating_votes_check CHECK ((rating_votes >= 0))
);


--
-- Name: catalog_resource_categories; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_resource_categories (
    id integer NOT NULL,
    resource_id integer NOT NULL,
    category_id integer NOT NULL
);


--
-- Name: catalog_resource_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_resource_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_resource_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_resource_categories_id_seq OWNED BY catalog_resource_categories.id;


--
-- Name: catalog_resource_cities; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_resource_cities (
    id integer NOT NULL,
    resource_id integer NOT NULL,
    city_id integer NOT NULL
);


--
-- Name: catalog_resource_cities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_resource_cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_resource_cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_resource_cities_id_seq OWNED BY catalog_resource_cities.id;


--
-- Name: catalog_resource_coord_sys; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_resource_coord_sys (
    id integer NOT NULL,
    resource_id integer NOT NULL,
    coordsystem_id integer NOT NULL
);


--
-- Name: catalog_resource_coord_sys_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_resource_coord_sys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_resource_coord_sys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_resource_coord_sys_id_seq OWNED BY catalog_resource_coord_sys.id;


--
-- Name: catalog_resource_counties; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_resource_counties (
    id integer NOT NULL,
    resource_id integer NOT NULL,
    county_id integer NOT NULL
);


--
-- Name: catalog_resource_counties_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_resource_counties_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_resource_counties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_resource_counties_id_seq OWNED BY catalog_resource_counties.id;


--
-- Name: catalog_resource_data_types; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_resource_data_types (
    id integer NOT NULL,
    resource_id integer NOT NULL,
    datatype_id integer NOT NULL
);


--
-- Name: catalog_resource_data_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_resource_data_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_resource_data_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_resource_data_types_id_seq OWNED BY catalog_resource_data_types.id;


--
-- Name: catalog_resource_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_resource_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_resource_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_resource_id_seq OWNED BY catalog_resource.id;


--
-- Name: catalog_updatefrequency; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_updatefrequency (
    id integer NOT NULL,
    update_frequency character varying(50) NOT NULL
);


--
-- Name: catalog_updatefrequency_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_updatefrequency_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_updatefrequency_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_updatefrequency_id_seq OWNED BY catalog_updatefrequency.id;


--
-- Name: catalog_url; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_url (
    id integer NOT NULL,
    url character varying(255) NOT NULL,
    url_label character varying(255) NOT NULL,
    url_type_id integer NOT NULL,
    resource_id integer NOT NULL
);


--
-- Name: catalog_url_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_url_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_url_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_url_id_seq OWNED BY catalog_url.id;


--
-- Name: catalog_urlimage; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_urlimage (
    id integer NOT NULL,
    image character varying(100) NOT NULL,
    title character varying(255) NOT NULL,
    source character varying(255) NOT NULL,
    source_url character varying(255) NOT NULL,
    resource_id integer NOT NULL
);


--
-- Name: catalog_urlimage_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_urlimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_urlimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_urlimage_id_seq OWNED BY catalog_urlimage.id;


--
-- Name: catalog_urltype; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE catalog_urltype (
    id integer NOT NULL,
    url_type character varying(50) NOT NULL
);


--
-- Name: catalog_urltype_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE catalog_urltype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: catalog_urltype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE catalog_urltype_id_seq OWNED BY catalog_urltype.id;


--
-- Name: celery_taskmeta; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE celery_taskmeta (
    id integer NOT NULL,
    task_id character varying(255) NOT NULL,
    status character varying(50) NOT NULL,
    result text,
    date_done timestamp with time zone NOT NULL,
    traceback text,
    hidden boolean NOT NULL,
    meta text
);


--
-- Name: celery_taskmeta_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE celery_taskmeta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: celery_taskmeta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE celery_taskmeta_id_seq OWNED BY celery_taskmeta.id;


--
-- Name: celery_tasksetmeta; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE celery_tasksetmeta (
    id integer NOT NULL,
    taskset_id character varying(255) NOT NULL,
    result text NOT NULL,
    date_done timestamp with time zone NOT NULL,
    hidden boolean NOT NULL
);


--
-- Name: celery_tasksetmeta_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE celery_tasksetmeta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: celery_tasksetmeta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE celery_tasksetmeta_id_seq OWNED BY celery_tasksetmeta.id;


--
-- Name: comments_commentwithrating; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE comments_commentwithrating (
    comment_ptr_id integer NOT NULL,
    rating integer NOT NULL
);


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    content_type_id integer,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_comment_flags; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE django_comment_flags (
    id integer NOT NULL,
    user_id integer NOT NULL,
    comment_id integer NOT NULL,
    flag character varying(30) NOT NULL,
    flag_date timestamp with time zone NOT NULL
);


--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE django_comment_flags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE django_comment_flags_id_seq OWNED BY django_comment_flags.id;


--
-- Name: django_comments; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE django_comments (
    id integer NOT NULL,
    content_type_id integer NOT NULL,
    object_pk text NOT NULL,
    site_id integer NOT NULL,
    user_id integer,
    user_name character varying(50) NOT NULL,
    user_email character varying(75) NOT NULL,
    user_url character varying(200) NOT NULL,
    comment text NOT NULL,
    submit_date timestamp with time zone NOT NULL,
    ip_address inet,
    is_public boolean NOT NULL,
    is_removed boolean NOT NULL
);


--
-- Name: django_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE django_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE django_comments_id_seq OWNED BY django_comments.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


--
-- Name: django_site; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: djangoratings_ignoredobject; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE djangoratings_ignoredobject (
    object_id integer NOT NULL,
    id integer NOT NULL,
    content_type_id integer NOT NULL,
    user_id integer NOT NULL,
    CONSTRAINT djangoratings_ignoredobject_object_id_check CHECK ((object_id >= 0))
);


--
-- Name: djangoratings_ignoredobject_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE djangoratings_ignoredobject_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: djangoratings_ignoredobject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE djangoratings_ignoredobject_id_seq OWNED BY djangoratings_ignoredobject.id;


--
-- Name: djangoratings_score; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE djangoratings_score (
    id integer NOT NULL,
    content_type_id integer NOT NULL,
    object_id integer NOT NULL,
    key character varying(32) NOT NULL,
    score integer NOT NULL,
    votes integer NOT NULL,
    CONSTRAINT djangoratings_score_object_id_check CHECK ((object_id >= 0)),
    CONSTRAINT djangoratings_score_votes_check CHECK ((votes >= 0))
);


--
-- Name: djangoratings_score_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE djangoratings_score_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: djangoratings_score_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE djangoratings_score_id_seq OWNED BY djangoratings_score.id;


--
-- Name: djangoratings_similaruser; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE djangoratings_similaruser (
    to_user_id integer NOT NULL,
    agrees integer NOT NULL,
    id integer NOT NULL,
    disagrees integer NOT NULL,
    from_user_id integer NOT NULL,
    exclude boolean NOT NULL,
    CONSTRAINT djangoratings_similaruser_agrees_check CHECK ((agrees >= 0)),
    CONSTRAINT djangoratings_similaruser_disagrees_check CHECK ((disagrees >= 0))
);


--
-- Name: djangoratings_similaruser_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE djangoratings_similaruser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: djangoratings_similaruser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE djangoratings_similaruser_id_seq OWNED BY djangoratings_similaruser.id;


--
-- Name: djangoratings_vote; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE djangoratings_vote (
    id integer NOT NULL,
    content_type_id integer NOT NULL,
    object_id integer NOT NULL,
    key character varying(32) NOT NULL,
    score integer NOT NULL,
    user_id integer,
    ip_address inet NOT NULL,
    date_added timestamp with time zone NOT NULL,
    date_changed timestamp with time zone NOT NULL,
    cookie character varying(32),
    CONSTRAINT djangoratings_vote_object_id_check CHECK ((object_id >= 0))
);


--
-- Name: djangoratings_vote_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE djangoratings_vote_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: djangoratings_vote_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE djangoratings_vote_id_seq OWNED BY djangoratings_vote.id;


--
-- Name: djcelery_crontabschedule; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE djcelery_crontabschedule (
    id integer NOT NULL,
    minute character varying(64) NOT NULL,
    hour character varying(64) NOT NULL,
    day_of_week character varying(64) NOT NULL,
    day_of_month character varying(64) NOT NULL,
    month_of_year character varying(64) NOT NULL
);


--
-- Name: djcelery_crontabschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE djcelery_crontabschedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: djcelery_crontabschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE djcelery_crontabschedule_id_seq OWNED BY djcelery_crontabschedule.id;


--
-- Name: djcelery_intervalschedule; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE djcelery_intervalschedule (
    id integer NOT NULL,
    every integer NOT NULL,
    period character varying(24) NOT NULL
);


--
-- Name: djcelery_intervalschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE djcelery_intervalschedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: djcelery_intervalschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE djcelery_intervalschedule_id_seq OWNED BY djcelery_intervalschedule.id;


--
-- Name: djcelery_periodictask; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE djcelery_periodictask (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    task character varying(200) NOT NULL,
    interval_id integer,
    crontab_id integer,
    args text NOT NULL,
    kwargs text NOT NULL,
    queue character varying(200),
    exchange character varying(200),
    routing_key character varying(200),
    expires timestamp with time zone,
    enabled boolean NOT NULL,
    last_run_at timestamp with time zone,
    total_run_count integer NOT NULL,
    date_changed timestamp with time zone NOT NULL,
    description text NOT NULL,
    CONSTRAINT djcelery_periodictask_total_run_count_check CHECK ((total_run_count >= 0))
);


--
-- Name: djcelery_periodictask_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE djcelery_periodictask_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: djcelery_periodictask_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE djcelery_periodictask_id_seq OWNED BY djcelery_periodictask.id;


--
-- Name: djcelery_periodictasks; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE djcelery_periodictasks (
    ident smallint NOT NULL,
    last_update timestamp with time zone NOT NULL
);


--
-- Name: djcelery_taskstate; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE djcelery_taskstate (
    id integer NOT NULL,
    state character varying(64) NOT NULL,
    task_id character varying(36) NOT NULL,
    name character varying(200),
    tstamp timestamp with time zone NOT NULL,
    args text,
    kwargs text,
    eta timestamp with time zone,
    expires timestamp with time zone,
    result text,
    traceback text,
    runtime double precision,
    retries integer NOT NULL,
    worker_id integer,
    hidden boolean NOT NULL
);


--
-- Name: djcelery_taskstate_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE djcelery_taskstate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: djcelery_taskstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE djcelery_taskstate_id_seq OWNED BY djcelery_taskstate.id;


--
-- Name: djcelery_workerstate; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE djcelery_workerstate (
    id integer NOT NULL,
    hostname character varying(255) NOT NULL,
    last_heartbeat timestamp with time zone
);


--
-- Name: djcelery_workerstate_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE djcelery_workerstate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: djcelery_workerstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE djcelery_workerstate_id_seq OWNED BY djcelery_workerstate.id;


--
-- Name: registration_registrationprofile; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE registration_registrationprofile (
    id integer NOT NULL,
    user_id integer NOT NULL,
    activation_key character varying(40) NOT NULL
);


--
-- Name: registration_registrationprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE registration_registrationprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: registration_registrationprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE registration_registrationprofile_id_seq OWNED BY registration_registrationprofile.id;


--
-- Name: requests_request; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE requests_request (
    id integer NOT NULL,
    suggested_by_id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL,
    relevance text NOT NULL,
    url character varying(200) NOT NULL,
    agency_type character varying(16) NOT NULL,
    city_id integer,
    county_id integer,
    agency_name character varying(255) NOT NULL,
    agency_division character varying(255) NOT NULL,
    agency_contact character varying(255) NOT NULL,
    other_category character varying(255) NOT NULL,
    rating_votes integer NOT NULL,
    rating_score integer NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    last_modified timestamp with time zone NOT NULL,
    updates_id integer,
    status integer NOT NULL,
    contact_phone character varying(50) NOT NULL,
    contact_email character varying(255) NOT NULL,
    contact_url character varying(255) NOT NULL,
    CONSTRAINT requests_request_rating_votes_check CHECK ((rating_votes >= 0))
);


--
-- Name: requests_request_categories; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE requests_request_categories (
    id integer NOT NULL,
    request_id integer NOT NULL,
    category_id integer NOT NULL
);


--
-- Name: requests_request_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE requests_request_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: requests_request_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE requests_request_categories_id_seq OWNED BY requests_request_categories.id;


--
-- Name: requests_request_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE requests_request_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: requests_request_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE requests_request_id_seq OWNED BY requests_request.id;


--
-- Name: requests_request_resources; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE requests_request_resources (
    id integer NOT NULL,
    request_id integer NOT NULL,
    resource_id integer NOT NULL
);


--
-- Name: requests_request_resources_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE requests_request_resources_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: requests_request_resources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE requests_request_resources_id_seq OWNED BY requests_request_resources.id;


--
-- Name: scribbler_scribble; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE scribbler_scribble (
    id integer NOT NULL,
    created_time timestamp with time zone NOT NULL,
    modified_time timestamp with time zone NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(64) NOT NULL,
    url character varying(255) NOT NULL,
    content text NOT NULL
);


--
-- Name: scribbler_scribble_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE scribbler_scribble_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: scribbler_scribble_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE scribbler_scribble_id_seq OWNED BY scribbler_scribble.id;


--
-- Name: south_migrationhistory; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE south_migrationhistory (
    id integer NOT NULL,
    app_name character varying(255) NOT NULL,
    migration character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE south_migrationhistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE south_migrationhistory_id_seq OWNED BY south_migrationhistory.id;


--
-- Name: suggestions_suggestion; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE suggestions_suggestion (
    id integer NOT NULL,
    date timestamp with time zone NOT NULL,
    date_last_modified timestamp with time zone NOT NULL,
    title character varying(255) NOT NULL,
    short_description character varying(255) NOT NULL,
    description text NOT NULL,
    url character varying(255) NOT NULL,
    other_format character varying(255) NOT NULL,
    agency_name character varying(255) NOT NULL,
    agency_division character varying(255) NOT NULL,
    agency_type character varying(16) NOT NULL,
    city_id integer,
    county_id integer,
    last_updated date,
    keywords character varying(255) NOT NULL,
    contact_name character varying(255) NOT NULL,
    phone_number character varying(30) NOT NULL,
    street_address character varying(100) NOT NULL,
    contact_city character varying(50) NOT NULL,
    zipcode character varying(30) NOT NULL,
    email_address character varying(100) NOT NULL,
    other_category character varying(255) NOT NULL,
    data_format_id integer,
    updates_id integer
);


--
-- Name: suggestions_suggestion_categories; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE suggestions_suggestion_categories (
    id integer NOT NULL,
    suggestion_id integer NOT NULL,
    category_id integer NOT NULL
);


--
-- Name: suggestions_suggestion_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE suggestions_suggestion_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: suggestions_suggestion_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE suggestions_suggestion_categories_id_seq OWNED BY suggestions_suggestion_categories.id;


--
-- Name: suggestions_suggestion_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE suggestions_suggestion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: suggestions_suggestion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE suggestions_suggestion_id_seq OWNED BY suggestions_suggestion.id;


--
-- Name: thumbnail_kvstore; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE thumbnail_kvstore (
    key character varying(200) NOT NULL,
    value text NOT NULL
);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_category ALTER COLUMN id SET DEFAULT nextval('catalog_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_city ALTER COLUMN id SET DEFAULT nextval('catalog_city_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_coordsystem ALTER COLUMN id SET DEFAULT nextval('catalog_coordsystem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_county ALTER COLUMN id SET DEFAULT nextval('catalog_county_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_county_cities ALTER COLUMN id SET DEFAULT nextval('catalog_county_cities_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_datatype ALTER COLUMN id SET DEFAULT nextval('catalog_datatype_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_department ALTER COLUMN id SET DEFAULT nextval('catalog_department_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_department_divisions ALTER COLUMN id SET DEFAULT nextval('catalog_department_divisions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_division ALTER COLUMN id SET DEFAULT nextval('catalog_division_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource ALTER COLUMN id SET DEFAULT nextval('catalog_resource_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_categories ALTER COLUMN id SET DEFAULT nextval('catalog_resource_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_cities ALTER COLUMN id SET DEFAULT nextval('catalog_resource_cities_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_coord_sys ALTER COLUMN id SET DEFAULT nextval('catalog_resource_coord_sys_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_counties ALTER COLUMN id SET DEFAULT nextval('catalog_resource_counties_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_data_types ALTER COLUMN id SET DEFAULT nextval('catalog_resource_data_types_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_updatefrequency ALTER COLUMN id SET DEFAULT nextval('catalog_updatefrequency_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_url ALTER COLUMN id SET DEFAULT nextval('catalog_url_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_urlimage ALTER COLUMN id SET DEFAULT nextval('catalog_urlimage_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_urltype ALTER COLUMN id SET DEFAULT nextval('catalog_urltype_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY celery_taskmeta ALTER COLUMN id SET DEFAULT nextval('celery_taskmeta_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY celery_tasksetmeta ALTER COLUMN id SET DEFAULT nextval('celery_tasksetmeta_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_comment_flags ALTER COLUMN id SET DEFAULT nextval('django_comment_flags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_comments ALTER COLUMN id SET DEFAULT nextval('django_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY djangoratings_ignoredobject ALTER COLUMN id SET DEFAULT nextval('djangoratings_ignoredobject_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY djangoratings_score ALTER COLUMN id SET DEFAULT nextval('djangoratings_score_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY djangoratings_similaruser ALTER COLUMN id SET DEFAULT nextval('djangoratings_similaruser_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY djangoratings_vote ALTER COLUMN id SET DEFAULT nextval('djangoratings_vote_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY djcelery_crontabschedule ALTER COLUMN id SET DEFAULT nextval('djcelery_crontabschedule_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY djcelery_intervalschedule ALTER COLUMN id SET DEFAULT nextval('djcelery_intervalschedule_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY djcelery_periodictask ALTER COLUMN id SET DEFAULT nextval('djcelery_periodictask_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY djcelery_taskstate ALTER COLUMN id SET DEFAULT nextval('djcelery_taskstate_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY djcelery_workerstate ALTER COLUMN id SET DEFAULT nextval('djcelery_workerstate_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY registration_registrationprofile ALTER COLUMN id SET DEFAULT nextval('registration_registrationprofile_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY requests_request ALTER COLUMN id SET DEFAULT nextval('requests_request_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY requests_request_categories ALTER COLUMN id SET DEFAULT nextval('requests_request_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY requests_request_resources ALTER COLUMN id SET DEFAULT nextval('requests_request_resources_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY scribbler_scribble ALTER COLUMN id SET DEFAULT nextval('scribbler_scribble_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY south_migrationhistory ALTER COLUMN id SET DEFAULT nextval('south_migrationhistory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY suggestions_suggestion ALTER COLUMN id SET DEFAULT nextval('suggestions_suggestion_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY suggestions_suggestion_categories ALTER COLUMN id SET DEFAULT nextval('suggestions_suggestion_categories_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_group (id, name) FROM stdin;
1	Students
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, true);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
37	1	35
38	1	36
39	1	37
40	1	38
41	1	39
42	1	40
43	1	41
44	1	42
45	1	43
46	1	44
47	1	45
48	1	46
49	1	47
50	1	48
51	1	49
52	1	50
53	1	51
54	1	52
55	1	53
56	1	54
57	1	55
58	1	56
59	1	57
60	1	58
61	1	59
62	1	60
63	1	61
64	1	62
65	1	63
66	1	64
67	1	65
68	1	66
69	1	67
70	1	68
71	1	69
72	1	70
73	1	110
74	1	111
75	1	112
76	1	113
77	1	114
78	1	115
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 78, true);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add content type	4	add_contenttype
11	Can change content type	4	change_contenttype
12	Can delete content type	4	delete_contenttype
13	Can add session	5	add_session
14	Can change session	5	change_session
15	Can delete session	5	delete_session
16	Can add site	6	add_site
17	Can change site	6	change_site
18	Can delete site	6	delete_site
19	Can add comment	7	add_comment
20	Can change comment	7	change_comment
21	Can delete comment	7	delete_comment
22	Can moderate comments	7	can_moderate
23	Can add comment flag	8	add_commentflag
24	Can change comment flag	8	change_commentflag
25	Can delete comment flag	8	delete_commentflag
26	Can add comment with rating	9	add_commentwithrating
27	Can change comment with rating	9	change_commentwithrating
28	Can delete comment with rating	9	delete_commentwithrating
29	Can add log entry	10	add_logentry
30	Can change log entry	10	change_logentry
31	Can delete log entry	10	delete_logentry
32	Can add migration history	11	add_migrationhistory
33	Can change migration history	11	change_migrationhistory
34	Can delete migration history	11	delete_migrationhistory
35	Can add city	12	add_city
36	Can change city	12	change_city
37	Can delete city	12	delete_city
38	Can add county	13	add_county
39	Can change county	13	change_county
40	Can delete county	13	delete_county
41	Can add category	14	add_category
42	Can change category	14	change_category
43	Can delete category	14	delete_category
44	Can add data type	15	add_datatype
45	Can change data type	15	change_datatype
46	Can delete data type	15	delete_datatype
47	Can add url type	16	add_urltype
48	Can change url type	16	change_urltype
49	Can delete url type	16	delete_urltype
50	Can add update frequency	17	add_updatefrequency
51	Can change update frequency	17	change_updatefrequency
52	Can delete update frequency	17	delete_updatefrequency
53	Can add Coordinate system	18	add_coordsystem
54	Can change Coordinate system	18	change_coordsystem
55	Can delete Coordinate system	18	delete_coordsystem
56	Can add resource	19	add_resource
57	Can change resource	19	change_resource
58	Can delete resource	19	delete_resource
59	Can add url	20	add_url
60	Can change url	20	change_url
61	Can delete url	20	delete_url
62	Can add url image	21	add_urlimage
63	Can change url image	21	change_urlimage
64	Can delete url image	21	delete_urlimage
65	Can add request	22	add_request
66	Can change request	22	change_request
67	Can delete request	22	delete_request
68	Can add suggestion	23	add_suggestion
69	Can change suggestion	23	change_suggestion
70	Can delete suggestion	23	delete_suggestion
71	Can add scribble	24	add_scribble
72	Can change scribble	24	change_scribble
73	Can delete scribble	24	delete_scribble
74	Can add task state	25	add_taskmeta
75	Can change task state	25	change_taskmeta
76	Can delete task state	25	delete_taskmeta
77	Can add saved group result	26	add_tasksetmeta
78	Can change saved group result	26	change_tasksetmeta
79	Can delete saved group result	26	delete_tasksetmeta
80	Can add interval	27	add_intervalschedule
81	Can change interval	27	change_intervalschedule
82	Can delete interval	27	delete_intervalschedule
83	Can add crontab	28	add_crontabschedule
84	Can change crontab	28	change_crontabschedule
85	Can delete crontab	28	delete_crontabschedule
86	Can add periodic tasks	29	add_periodictasks
87	Can change periodic tasks	29	change_periodictasks
88	Can delete periodic tasks	29	delete_periodictasks
89	Can add periodic task	30	add_periodictask
90	Can change periodic task	30	change_periodictask
91	Can delete periodic task	30	delete_periodictask
92	Can add worker	31	add_workerstate
93	Can change worker	31	change_workerstate
94	Can delete worker	31	delete_workerstate
95	Can add task	32	add_taskstate
96	Can change task	32	change_taskstate
97	Can delete task	32	delete_taskstate
98	Can add vote	33	add_vote
99	Can change vote	33	change_vote
100	Can delete vote	33	delete_vote
101	Can add score	34	add_score
102	Can change score	34	change_score
103	Can delete score	34	delete_score
104	Can add similar user	35	add_similaruser
105	Can change similar user	35	change_similaruser
106	Can delete similar user	35	delete_similaruser
107	Can add ignored object	36	add_ignoredobject
108	Can change ignored object	36	change_ignoredobject
109	Can delete ignored object	36	delete_ignoredobject
110	Can add division	37	add_division
111	Can change division	37	change_division
112	Can delete division	37	delete_division
113	Can add department	38	add_department
114	Can change department	38	change_department
115	Can delete department	38	delete_department
116	Can add kv store	39	add_kvstore
117	Can change kv store	39	change_kvstore
118	Can delete kv store	39	delete_kvstore
119	Can add registration profile	40	add_registrationprofile
120	Can change registration profile	40	change_registrationprofile
121	Can delete registration profile	40	delete_registrationprofile
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_permission_id_seq', 121, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
27	pbkdf2_sha256$10000$8REtuJcIahSk$wIMVtNoDaWNRQse+wk2A8KnL9nhNo4qQxgK87buIjxc=	2013-11-18 14:19:55.207078-05	t	guest			guest@example.com	t	t	2013-11-18 14:08:30.337722-05
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 17, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_user_id_seq', 27, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 2, true);


--
-- Data for Name: catalog_category; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_category (id, name) FROM stdin;
1	Arts/Culture/History
2	Business and economy
3	Government spending and taxes
4	Communications
5	Courts and prisons
6	Crime, fire and public safety
7	Education
8	Energy and utilities
9	Elections, voting and lobbying
10	Environment and natural resources
11	Health
12	Jobs, employment and occupations
13	Parks and recreation
14	Permits
15	Planning and zoning
16	Property/real estate
17	Social services
18	Transportation and motor vehicles
\.


--
-- Name: catalog_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_category_id_seq', 18, true);


--
-- Data for Name: catalog_city; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_city (id, name) FROM stdin;
1	Aberdeen
2	Ahoskie
3	Alamance
4	Albemarle
5	Alliance
6	Andrews
7	Angier
8	Ansonville
9	Apex
10	Arapahoe
11	Archdale
12	Archer Lodge
13	Asheboro
14	Asheville
15	Askewville
16	Atkinson
17	Atlantic Beach
18	Aulander
19	Aurora
20	Autryville
21	Ayden
22	Badin
23	Bailey
24	Bakersville
25	Bald Head Island
26	Banner Elk
27	Bath
28	Bayboro
29	Bear Grass
30	Beaufort
31	Beech Mountain
32	Belhaven
33	Belmont
34	Belville
35	Belwood
36	Benson
37	Bermuda Run
38	Bessemer City
39	Bethania
40	Bethel
41	Beulaville
42	Biltmore Forest
43	Biscoe
44	Black Creek
45	Black Mountain
46	Bladenboro
47	Blowing Rock
48	Boardman
49	Bogue
50	Boiling Spring Lakes
51	Boiling Springs
52	Bolivia
53	Bolton
54	Boone
55	Boonville
56	Bostic
57	Brevard
58	Bridgeton
59	Broadway
60	Brookford
61	Brunswick
62	Bryson City
63	Bunn
64	Burgaw
65	Burlington
66	Burnsville
67	Butner
68	Cajah's Mountain
69	Calabash
70	Calypso
71	Cameron
72	Candor
73	Canton
74	Cape Carteret
75	Carolina Beach
76	Carolina Shores
77	Carrboro
78	Carthage
79	Cary
80	Casar
81	Castalia
82	Caswell Beach
83	Catawba
84	Cedar Point
85	Cedar Rock
86	Centerville
87	Cerro Gordo
88	Chadbourn
89	Chapel Hill
90	Charlotte
91	Cherryville
92	Chimney Rock Village
93	China Grove
94	Chocowinity
95	Claremont
96	Clarkton
97	Clayton
98	Clemmons
99	Cleveland
100	Clinton
101	Clyde
102	Coats
103	Cofield
104	Colerain
105	Columbia
106	Columbus
107	Como
108	Concord
109	Conetoe
110	Connelly Springs
111	Conover
112	Conway
113	Cooleemee
114	Cornelius
115	Cove City
116	Cramerton
117	Creedmoor
118	Creswell
119	Crossnore
120	Dallas
121	Danbury
122	Davidson
123	Denton
124	Dillsboro
125	Dobbins Heights
126	Dobson
127	Dortches
128	Dover
129	Drexel
130	Dublin
131	Duck
132	Dunn
133	Durham
134	Earl
135	East Arcadia
136	East Bend
137	East Laurinburg
138	East Spencer
139	Eastover
140	Eden
141	Edenton
142	Elizabeth City
143	Elizabethtown
144	Elk Park
145	Elkin
146	Ellenboro
147	Ellerbe
148	Elm City
149	Elon
150	Emerald Isle
151	Enfield
152	Erwin
153	Eureka
154	Everetts
155	Fair Bluff
156	Fairmont
157	Fairview
158	Faison
159	Faith
160	Falcon
161	Falkland
162	Fallston
163	Farmville
164	Fayetteville
165	Flat Rock
166	Fletcher
167	Fontana Dam
168	Forest City
169	Forest Hills
170	Fountain
171	Four Oaks
172	Foxfire Village
173	Franklin
174	Franklinton
175	Franklinville
176	Fremont
177	Fuquay-Varina
178	Gamewell
179	Garland
180	Garner
181	Garysburg
182	Gaston
183	Gastonia
184	Gatesville
185	Gibson
186	Gibsonville
187	Glen Alpine
188	Godwin
189	Goldsboro
190	Goldston
191	Graham
192	Grandfather Village
193	Granite Falls
194	Granite Quarry
195	Grantsboro
196	Green Level
197	Greenevers
198	Greensboro
199	Greenville
200	Grifton
201	Grimesland
202	Grover
203	Halifax
204	Hamilton
205	Hamlet
206	Harmony
207	Harrells
208	Harrellsville
209	Harrisburg
210	Hassell
211	Havelock
212	Haw River
213	Hayesville
214	Hemby Bridge
215	Henderson
216	Hendersonville
217	Hertford
218	Hickory
219	High Point
220	High Shoals
221	Highlands
222	Hildebran
223	Hillsborough
224	Hobgood
225	Hoffman
226	Holden Beach
227	Holly Ridge
228	Holly Springs
229	Hookerton
230	Hope Mills
231	Hot Springs
232	Hudson
233	Huntersville
234	Indian Beach
235	Indian Trail
236	Jackson
237	Jacksonville
238	Jamestown
239	Jamesville
240	Jefferson
241	Jonesville
242	Kannapolis
243	Kelford
244	Kenansville
245	Kenly
246	Kernersville
247	Kill Devil Hills
248	King
249	Kings Mountain
250	Kingstown
251	Kinston
252	Kittrell
253	Kitty Hawk
254	Knightdale
255	Kure Beach
256	La Grange
257	Lake Lure
258	Lake Park
259	Lake Santeetlah
260	Lake Waccamaw
261	Landis
262	Lansing
263	Lasker
264	Lattimore
265	Laurel Park
266	Laurinburg
267	Lawndale
268	Leggett
269	Leland
270	Lenoir
271	Lewiston Woodville
272	Lewisville
273	Lexington
274	Liberty
275	Lilesville
276	Lillington
277	Lincolnton
278	Linden
279	Littleton
280	Locust
281	Long View
282	Louisburg
283	Love Valley
284	Lowell
285	Lucama
286	Lumber Bridge
287	Lumberton
288	Macclesfield
289	Macon
290	Madison
291	Maggie Valley
292	Magnolia
293	Maiden
294	Manteo
295	Marietta
296	Marion
297	Mars Hill
298	Marshall
299	Marshville
300	Marvin
301	Matthews
302	Maxton
303	Mayodan
304	Maysville
305	McAdenville
306	McDonald
307	McFarlan
308	Mebane
309	Mesic
310	Micro
311	Middleburg
312	Middlesex
313	Midland
314	Midway
315	Mills River
316	Milton
317	Mineral Springs
318	Minnesott Beach
319	Mint Hill
320	Misenheimer
321	Mocksville
322	Momeyer
323	Monroe
324	Montreat
325	Mooresboro
326	Mooresville
327	Morehead City
328	Morganton
329	Morrisville
330	Morven
331	Mount Airy
332	Mount Gilead
333	Mount Holly
334	Mount Olive
335	Mount Pleasant
336	Murfreesboro
337	Murphy
338	Nags Head
339	Nashville
340	Navassa
341	New Bern
342	New London
343	Newland
344	Newport
345	Newton
346	Newton Grove
347	Norlina
348	Norman
349	North Topsail Beach
350	North Wilkesboro
351	Northwest
352	Norwood
353	Oak City
354	Oak Island
355	Oak Ridge
356	Oakboro
357	Ocean Isle Beach
358	Old Fort
359	Oriental
360	Orrum
361	Ossipee
362	Oxford
363	Pantego
364	Parkton
365	Parmele
366	Patterson Springs
367	Peachland
368	Peletier
369	Pembroke
370	Pikeville
371	Pilot Mountain
372	Pine Knoll Shores
373	Pine Level
374	Pinebluff
375	Pinehurst
376	Pinetops
377	Pineville
378	Pink Hill
379	Pittsboro
380	Pleasant Garden
381	Plymouth
382	Polkton
383	Polkville
384	Pollocksville
385	Powellsville
386	Princeton
387	Princeville
388	Proctorville
389	Raeford
390	Raleigh
391	Ramseur
392	Randleman
393	Ranlo
394	Raynham
395	Red Cross
396	Red Oak
397	Red Springs
398	Reidsville
399	Rennert
400	Rhodhiss
401	Rich Square
402	Richfield
403	Richlands
404	River Bend
405	Roanoke Rapids
406	Robbins
407	Robbinsville
408	Robersonville
409	Rockingham
410	Rockwell
411	Rocky Mount
412	Rolesville
413	Ronda
414	Roper
415	Rose Hill
416	Roseboro
417	Rosman
418	Rowland
419	Roxboro
420	Roxobel
421	Rural Hall
422	Ruth
423	Rutherford College
424	Rutherfordton
425	Saint Helena
426	Saint Pauls
427	Salemburg
428	Salisbury
429	Saluda
430	Sandy Creek
431	Sandyfield
432	Sanford
433	Saratoga
434	Sawmills
435	Scotland Neck
436	Seaboard
437	Seagrove
438	Sedalia
439	Selma
440	Seven Devils
441	Seven Springs
442	Severn
443	Shallotte
444	Sharpsburg
445	Shelby
446	Siler City
447	Simpson
448	Sims
449	Smithfield
450	Snow Hill
451	Southern Pines
452	Southern Shores
453	Southport
454	Sparta
455	Speed
456	Spencer
457	Spencer Mountain
458	Spindale
459	Spring Hope
460	Spring Lake
461	Spruce Pine
462	St. James
463	Staley
464	Stallings
465	Stanfield
466	Stanley
467	Stantonsburg
468	Star
469	Statesville
470	Stedman
471	Stem
472	Stokesdale
473	Stoneville
474	Stonewall
475	Stovall
476	Sugar Mountain
477	Summerfield
478	Sunset Beach
479	Surf City
480	Swansboro
481	Swepsonville
482	Sylva
483	Tabor City
484	Tar Heel
485	Tarboro
486	Taylorsville
487	Taylortown
488	Teachey
489	Thomasville
490	Tobaccoville
491	Topsail Beach
492	Trent Woods
493	Trenton
494	Trinity
495	Troutman
496	Troy
497	Tryon
498	Turkey
499	Unionville
500	Valdese
501	Vanceboro
502	Vandemere
503	Varnamtown
504	Vass
505	Waco
506	Wade
507	Wadesboro
508	Wagram
509	Wake Forest
510	Walkertown
511	Wallace
512	Wallburg
513	Walnut Cove
514	Walnut Creek
515	Walstonburg
516	Warrenton
517	Warsaw
518	Washington
519	Washington Park
520	Watha
521	Waxhaw
522	Waynesville
523	Weaverville
524	Webster
525	Weddington
526	Weldon
527	Wendell
528	Wentworth
529	Wesley Chapel
530	West Jefferson
531	Whispering Pines
532	Whitakers
533	White Lake
534	Whiteville
535	Whitsett
536	Wilkesboro
537	Williamston
538	Wilmington
539	Wilson
540	Wilson's Mills
541	Windsor
542	Winfall
543	Wingate
544	Winston-Salem
545	Winterville
546	Winton
547	Woodfin
548	Woodland
549	Wrightsville Beach
550	Yadkinville
551	Yanceyville
552	Youngsville
553	Zebulon
554	Cherokee
555	Swan Quarter
\.


--
-- Name: catalog_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_city_id_seq', 555, true);


--
-- Data for Name: catalog_coordsystem; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_coordsystem (id, name, description, "EPSG_code") FROM stdin;
\.


--
-- Name: catalog_coordsystem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_coordsystem_id_seq', 1, false);


--
-- Data for Name: catalog_county; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_county (id, name) FROM stdin;
1	Moore
2	Hertford
3	Alamance
4	Stanly
5	Pamlico
6	Cherokee
7	Harnett
8	Wake
9	Anson
10	Guilford
11	Randolph
12	Johnston
13	Buncombe
14	Bertie
15	Pender
16	Carteret
17	Beaufort
18	Sampson
19	Pitt
20	Nash
21	Mitchell
22	Brunswick
23	Avery
24	Martin
25	Watauga
26	Gaston
27	Cleveland
28	Davie
29	Forsyth
30	Duplin
31	Montgomery
32	Wilson
33	Bladen
34	Caldwell
35	Columbus
36	Yadkin
37	Rutherford
38	Transylvania
39	Craven
40	Lee
41	Catawba
42	Swain
43	Franklin
44	Yancey
45	Granville
46	Haywood
47	New Hanover
48	Orange
49	Chatham
50	Franlkin
51	Durham
52	Mecklenburg
53	Rowan
54	Tyrrell
55	Polk
56	Cabarrus
57	Edgecombe
58	Burke
59	Northampton
60	Washington
61	Stokes
62	Iredell
63	Davidson
64	Jackson
65	Richmond
66	Surry
67	Dare
68	Scotland
69	Cumberland
70	Rockingham
71	Chowan
72	Camden
73	Pasquotank
74	Wilkes
75	Halifax
76	Wayne
77	Robeson
78	Union
79	Henderson
80	Graham
81	Macon
82	Gates
83	Lenoir
84	Clay
85	Vance
86	Perquimans
87	Lincoln
88	Onslow
89	Greene
90	Madison
91	Ashe
92	Warren
93	Mcdowell
94	Jones
95	Caswell
96	Hoke
97	Person
98	Alleghany
99	Alexander
100	Hyde
\.


--
-- Data for Name: catalog_county_cities; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_county_cities (id, county_id, city_id) FROM stdin;
1	1	531
2	1	451
3	1	374
4	1	1
5	1	406
6	1	71
7	1	487
8	1	504
9	1	375
10	1	172
11	1	78
12	2	208
13	2	336
14	2	2
15	2	546
16	2	103
17	2	107
18	3	308
19	3	212
20	3	196
21	3	191
22	3	149
23	3	3
24	3	186
25	3	65
26	3	481
27	3	361
28	4	342
29	4	22
30	4	465
31	4	352
32	4	356
33	4	320
34	4	402
35	4	395
36	4	280
37	4	4
38	5	10
39	5	318
40	5	309
41	5	195
42	5	28
43	5	5
44	5	474
45	5	502
46	5	359
47	6	337
48	6	6
49	7	152
50	7	59
51	7	7
52	7	132
53	7	276
54	7	102
55	8	527
56	8	228
57	8	553
58	8	7
59	8	133
60	8	9
61	8	180
62	8	390
63	8	97
64	8	254
65	8	412
66	8	509
67	8	177
68	8	329
69	8	79
70	9	330
71	9	307
72	9	382
73	9	275
74	9	8
75	9	367
76	9	507
77	10	11
78	10	380
79	10	198
80	10	355
81	10	219
82	10	472
83	10	535
84	10	246
85	10	238
86	10	65
87	10	438
88	10	186
89	10	477
90	11	11
91	11	13
92	11	463
93	11	219
94	11	392
95	11	391
96	11	274
97	11	489
98	11	494
99	11	437
100	11	175
101	12	449
102	12	12
103	12	310
104	12	36
105	12	553
106	12	245
107	12	540
108	12	171
109	12	386
110	12	439
111	12	373
112	12	97
113	13	14
114	13	45
115	13	42
116	13	547
117	13	324
118	13	523
119	14	15
120	14	18
121	14	271
122	14	541
123	14	385
124	14	243
125	14	420
126	14	104
127	15	16
128	15	520
129	15	511
130	15	64
131	15	479
132	15	425
133	15	491
134	16	150
135	16	17
136	16	49
137	16	30
138	16	344
139	16	74
140	16	327
141	16	368
142	16	234
143	16	372
144	16	84
145	17	27
146	17	19
147	17	32
148	17	94
149	17	519
150	17	518
151	17	363
152	18	20
153	18	207
154	18	158
155	18	346
156	18	416
157	18	498
158	18	179
159	18	100
160	18	160
161	18	427
162	19	201
163	19	200
164	19	199
165	19	21
166	19	447
167	19	40
168	19	545
169	19	170
170	19	161
171	19	163
172	20	459
173	20	339
174	20	411
175	20	23
176	20	312
177	20	444
178	20	322
179	20	396
180	20	127
181	20	81
182	20	532
183	21	24
184	21	461
185	22	25
186	22	34
187	22	443
188	22	453
189	22	50
190	22	478
191	22	52
192	22	357
193	22	76
194	22	354
195	22	340
196	22	351
197	22	69
198	22	82
199	22	226
200	22	269
201	22	462
202	22	503
203	22	430
204	23	144
205	23	31
206	23	440
207	23	26
208	23	192
209	23	476
210	23	343
211	23	119
212	24	204
213	24	210
214	24	29
215	24	537
216	24	353
217	24	239
218	24	154
219	24	365
220	24	408
221	25	47
222	25	31
223	25	440
224	25	54
225	26	120
226	26	38
227	26	33
228	26	466
229	26	305
230	26	333
231	26	457
232	26	393
233	26	183
234	26	116
235	26	91
236	26	249
237	26	284
238	26	220
239	27	202
240	27	134
241	27	325
242	27	51
243	27	445
244	27	383
245	27	267
246	27	35
247	27	264
248	27	366
249	27	80
250	27	505
251	27	249
252	27	250
253	27	162
254	28	321
255	28	37
256	28	113
257	29	39
258	29	219
259	29	98
260	29	272
261	29	246
262	29	544
263	29	421
264	29	510
265	29	490
266	29	248
267	30	207
268	30	244
269	30	158
270	30	197
271	30	70
272	30	41
273	30	415
274	30	517
275	30	488
276	30	511
277	30	334
278	30	292
279	31	72
280	31	496
281	31	43
282	31	468
283	31	332
284	32	448
285	32	467
286	32	148
287	32	444
288	32	245
289	32	433
290	32	285
291	32	44
292	32	539
293	33	143
294	33	46
295	33	130
296	33	533
297	33	135
298	33	484
299	33	96
300	34	47
301	34	400
302	34	193
303	34	270
304	34	218
305	34	178
306	34	68
307	34	434
308	34	232
309	34	85
310	35	155
311	35	48
312	35	260
313	35	53
314	35	61
315	35	88
316	35	534
317	35	483
318	35	87
319	35	431
320	36	55
321	36	241
322	36	136
323	36	550
324	37	146
325	37	458
326	37	422
327	37	56
328	37	257
329	37	168
330	37	92
331	37	424
332	38	57
333	38	417
334	39	58
335	39	211
336	39	115
337	39	404
338	39	341
339	39	128
340	39	492
341	39	501
342	40	59
343	40	432
344	41	218
345	41	60
346	41	345
347	41	111
348	41	281
349	41	83
350	41	95
351	41	293
352	42	62
353	42	167
354	43	63
355	43	282
356	43	509
357	43	174
358	43	552
359	44	66
360	45	67
361	45	117
362	45	471
363	45	362
364	45	475
365	46	101
366	46	73
367	46	522
368	46	291
369	47	255
370	47	75
371	47	549
372	47	538
373	48	77
374	48	133
375	48	223
376	48	89
377	48	308
378	49	379
379	49	190
380	49	79
381	49	446
382	50	86
383	51	133
384	51	89
385	51	390
386	51	329
387	52	319
388	52	114
389	52	313
390	52	301
391	52	525
392	52	122
393	52	464
394	52	90
395	52	377
396	52	233
397	53	159
398	53	194
399	53	456
400	53	99
401	53	428
402	53	261
403	53	410
404	53	242
405	53	93
406	53	138
407	54	105
408	55	429
409	55	497
410	55	106
411	56	465
412	56	209
413	56	108
414	56	242
415	56	280
416	56	313
417	56	335
418	57	455
419	57	444
420	57	376
421	57	288
422	57	109
423	57	411
424	57	387
425	57	485
426	57	268
427	57	532
428	58	218
429	58	222
430	58	110
431	58	400
432	58	281
433	58	129
434	58	423
435	58	328
436	58	500
437	58	187
438	59	182
439	59	442
440	59	263
441	59	181
442	59	401
443	59	112
444	59	436
445	59	236
446	59	548
447	60	414
448	60	381
449	60	118
450	61	121
451	61	513
452	61	490
453	61	248
454	62	469
455	62	206
456	62	122
457	62	326
458	62	495
459	62	283
460	63	273
461	63	314
462	63	219
463	63	123
464	63	489
465	63	512
466	64	524
467	64	124
468	64	169
469	64	221
470	64	482
471	65	147
472	65	205
473	65	125
474	65	225
475	65	348
476	65	409
477	66	371
478	66	145
479	66	331
480	66	126
481	67	338
482	67	452
483	67	131
484	67	247
485	67	253
486	67	294
487	68	302
488	68	137
489	68	266
490	68	508
491	68	185
492	69	230
493	69	460
494	69	164
495	69	470
496	69	278
497	69	139
498	69	160
499	69	188
500	69	506
501	70	140
502	70	303
503	70	473
504	70	398
505	70	528
506	70	290
507	71	141
508	72	142
509	73	142
510	74	536
511	74	350
512	74	145
513	74	413
514	75	151
515	75	203
516	75	224
517	75	405
518	75	526
519	75	279
520	75	435
521	76	153
522	76	334
523	76	441
524	76	370
525	76	176
526	76	189
527	76	514
528	77	156
529	77	302
530	77	369
531	77	306
532	77	397
533	77	287
534	77	394
535	77	388
536	77	286
537	77	364
538	77	295
539	77	418
540	77	399
541	77	360
542	77	426
543	78	323
544	78	214
545	78	157
546	78	525
547	78	300
548	78	464
549	78	317
550	78	319
551	78	543
552	78	258
553	78	499
554	78	299
555	78	235
556	78	529
557	78	521
558	79	216
559	79	315
560	79	429
561	79	265
562	79	165
563	79	166
564	80	407
565	80	167
566	80	259
567	81	173
568	81	221
569	82	184
570	83	200
571	83	251
572	83	256
573	83	378
574	84	213
575	85	252
576	85	311
577	85	215
578	86	542
579	86	217
580	87	220
581	87	293
582	87	277
583	88	237
584	88	403
585	88	227
586	88	479
587	88	349
588	88	480
589	89	450
590	89	515
591	89	229
592	90	297
593	90	231
594	90	298
595	91	262
596	91	240
597	91	530
598	92	289
599	92	347
600	92	516
601	93	296
602	93	358
603	94	304
604	94	384
605	94	493
606	95	551
607	95	316
608	96	389
609	96	397
610	97	419
611	98	454
612	99	486
613	100	555
\.


--
-- Name: catalog_county_cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_county_cities_id_seq', 613, true);


--
-- Name: catalog_county_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_county_id_seq', 100, true);


--
-- Data for Name: catalog_datatype; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_datatype (id, name) FROM stdin;
2	API
3	App
1	Data
\.


--
-- Name: catalog_datatype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_datatype_id_seq', 3, true);


--
-- Data for Name: catalog_department; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_department (id, name, type) FROM stdin;
1	County Manager's Office	county
2	County Attorney's Office	county
3	Register of Deeds	county
4	Clerk of Courts	county
5	Sheriff's Department	county
6	Finance Department	county
7	Department of Social Services	county
8	Health Department	county
9	Mental Health Department	county
10	Board of Elections	county
11	Emergency Medical Services	county
12	Parks and Recreation	county
13	Human Resources Department	county
14	Alcoholic Beverage Control Board	county
15	Cooperative Extension Service	county
16	Solid Waste Management Department	county
17	City/Town Manager's Office	city
18	Mayor's Office	city
19	City/Town Attorney's Office	city
20	City/Town Clerk's Office	city
21	Police Department	city
22	Fire Department	city
23	Finance Department	city
24	Human Resources Department	city
25	Parks and Recreation	city
26	Public Works	city
27	Office of the Governor	state
28	Secretary of State	state
29	Office of the State Auditor	state
30	Treasurer	state
31	Department of Justice	state
32	Department of Public Instruction	state
33	Agriculture & Consumer Services	state
34	Department of Insurance	state
35	Department of Labor	state
36	Department of Administration	state
37	Commerce	state
38	Cultural Resources	state
39	Environment & Natural Resources	state
40	Health & Human Services	state
41	Department of Public Safety	state
42	Department of Revenue	state
43	Transportation	state
44	Office of the State Controller	state
45	State Board of Elections	state
46	Office of State Human Resources	state
47	University of North Carolina System	state
48	Office of Adminstrative Hearings	state
49	N.C. Administrative Office of the Courts	state
50	N.C. General Assembly	state
51	Housing Finance Agency	state
52	NC Acupuncture Licensing Board\n	state
53	NC Alarm Systems Licensing Board	state
54	NC Appraisal Board	state
55	NC Board of Architecture\n	state
56	NC Auctioneer Licensing Board	state
57	NC Board of Barber Examiners	state
58	NC Board of Certified Public Accountant Examiners	state
59	NC Board of Chiropractic Examiners	state
60	NC Board of Cosmetic Art Examiners	state
61	NC Board of Dental Examiners	state
62	NC Board of Dietetics/Nutrition	state
63	NC Board of Examiners of Electrical Contractors	state
64	NC Board of Electrolysis Examiners	state
65	NC Board of Examiners for Engineers and Surveyors	state
66	NC State Board of Environmental Health Specialist Examiners	state
67	NC Ethics Commission	state
68	NC State Board of Examiners of Fee-Based\nPracticing Pastoral Counselors	state
69	NC Board of Registration for Foresters	state
70	NC Board of Funeral Service	state
71	NC Hearing Aid Dealers and Fitters Board	state
72	NC Home Inspector Licensure Board	state
73	NC Interpreters and Transliterators Licensing Board	state
74	NC Licensing Board for General Contractors	state
75	NC Board for Licensing of Geologists	state
76	NC Board of Landscape Architects	state
77	NC Landscape Contractors Registration Board	state
78	NC Board of Law Examiners	state
79	NC Board of Licensed Professional Counselors	state
80	NC Board of Marriage and Family Therapy	state
81	NC Board of Massage and Bodywork Therapy	state
82	NC Medical Board	state
83	NC Midwifery Joint Committee	state
84	NC Board of Nursing	state
85	NC State Board of Examiners for Nursing Home Administrators	state
86	NC Board of Occupational Therapy	state
87	NC Board of Opticians	state
88	NC Board of Optometry	state
89	NC Board of Pharmacy	state
90	NC Board of Physical Therapy Examiners	state
91	NC State Board of Examiners of Plumbing, Heating and Fire Sprinkler Contractors	state
92	NC Board of Podiatry Examiners	state
93	NC Private Protective Services Board	state
94	NC Psychology Board	state
95	NC Public Librarian Certification Commission	state
96	NC Real Estate Commission	state
97	NC Board of Recreational Therapy Licensure	state
98	NC State Board of Refrigeration Examiners	state
99	NC Social Work Certification and Licensure Board	state
100	NC Board for Licensing of Soil Scientists	state
101	NC Board of Examiners for Speech and Language Pathologists and Audiologists	state
102	NC Substance Abuse Professional Practice Board	state
103	NC Veterinary Medical Board	state
104	Office of Information Technology Services	state
105	Development Services	county
106	Tax Office	county
\.


--
-- Data for Name: catalog_department_divisions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_department_divisions (id, department_id, division_id) FROM stdin;
1	27	1
2	27	3
3	27	2
4	28	11
5	28	10
6	28	13
7	28	12
8	28	15
9	28	14
10	28	17
11	28	16
12	28	5
13	28	4
14	28	7
15	28	6
16	28	9
17	28	8
18	29	19
19	29	18
20	29	20
21	29	21
22	30	24
23	30	25
24	30	26
25	30	27
26	30	22
27	30	23
28	31	37
29	31	39
30	31	38
31	31	41
32	31	33
33	31	32
34	31	31
35	31	30
36	31	28
37	31	43
38	31	40
39	31	29
40	31	2
41	31	35
42	31	36
43	31	45
44	31	34
45	31	44
46	31	42
47	32	38
48	32	59
49	32	58
50	32	48
51	32	49
52	32	46
53	32	47
54	32	57
55	32	56
56	32	51
57	32	50
58	32	53
59	32	52
60	32	60
61	32	55
62	32	62
63	32	63
64	32	54
65	32	61
66	33	72
67	33	66
68	33	79
69	33	73
70	33	67
71	33	77
72	33	76
73	33	75
74	33	74
75	33	64
76	33	65
77	33	71
78	33	70
79	33	82
80	33	83
81	33	80
82	33	81
83	33	69
84	33	68
85	33	84
86	33	78
87	34	91
88	34	93
89	34	92
90	34	86
91	34	85
92	34	88
93	34	87
94	34	99
95	34	98
96	34	96
97	34	89
98	34	97
99	34	90
100	34	102
101	34	103
102	34	100
103	34	101
104	34	95
105	34	94
106	34	104
107	34	105
108	35	109
109	35	108
110	35	115
111	35	114
112	35	117
113	35	116
114	35	111
115	35	110
116	35	113
117	35	112
118	35	106
119	35	107
120	36	120
121	36	123
122	36	38
123	36	126
124	36	121
125	36	127
126	36	122
127	36	133
128	36	132
129	36	131
130	36	130
131	36	124
132	36	125
133	36	135
134	36	134
135	36	128
136	36	129
137	36	119
138	36	118
139	36	136
140	37	151
141	37	150
142	37	153
143	37	152
144	37	155
145	37	154
146	37	157
147	37	156
148	37	159
149	37	158
150	37	137
151	37	139
152	37	138
153	37	146
154	37	147
155	37	144
156	37	145
157	37	142
158	37	143
159	37	140
160	37	141
161	37	148
162	37	149
163	37	164
164	37	165
165	37	166
166	37	160
167	37	161
168	37	162
169	37	163
170	38	167
171	38	180
172	38	168
173	38	169
174	38	179
175	38	178
176	38	177
177	38	176
178	38	175
179	38	174
180	38	173
181	38	172
182	38	171
183	38	170
184	39	199
185	39	198
186	39	210
187	39	195
188	39	194
189	39	197
190	39	196
191	39	191
192	39	190
193	39	193
194	39	192
195	39	118
196	39	182
197	39	183
198	39	181
199	39	186
200	39	187
201	39	184
202	39	185
203	39	188
204	39	189
205	39	201
206	39	200
207	39	203
208	39	202
209	39	205
210	39	204
211	39	207
212	39	206
213	39	209
214	39	208
215	39	38
216	40	216
217	40	217
218	40	214
219	40	215
220	40	212
221	40	213
222	40	211
223	40	218
224	40	219
225	40	62
226	40	234
227	40	230
228	40	231
229	40	232
230	40	233
231	40	118
232	40	181
233	40	77
234	40	229
235	40	228
236	40	227
237	40	226
238	40	225
239	40	224
240	40	223
241	40	222
242	40	221
243	40	220
244	41	235
245	41	237
246	41	248
247	41	245
248	41	244
249	41	247
250	41	246
251	41	238
252	41	239
253	41	243
254	41	242
255	41	252
256	41	241
257	41	250
258	41	251
259	41	249
260	41	236
261	41	240
262	42	263
263	42	202
264	42	262
265	42	259
266	42	258
267	42	261
268	42	270
269	42	271
270	42	272
271	42	260
272	42	267
273	42	266
274	42	265
275	42	264
276	42	253
277	42	269
278	42	268
279	42	256
280	42	257
281	42	254
282	42	255
283	43	273
284	43	274
285	43	275
286	43	276
287	43	277
288	43	278
289	43	279
290	43	289
291	43	288
292	43	2
293	43	281
294	43	280
295	43	283
296	43	282
297	43	285
298	43	284
299	43	287
300	43	286
301	43	38
302	43	292
303	43	290
304	43	291
305	44	300
306	44	301
307	44	2
308	44	298
309	44	299
310	44	296
311	44	297
312	44	294
313	44	295
314	44	293
315	45	302
316	45	2
317	45	304
318	45	305
319	45	303
320	46	308
321	46	309
322	46	313
323	46	312
324	46	311
325	46	310
326	46	306
327	46	307
328	46	2
329	47	319
330	47	318
331	47	339
332	47	338
333	47	335
334	47	334
335	47	337
336	47	336
337	47	331
338	47	330
339	47	333
340	47	332
341	47	322
342	47	323
343	47	320
344	47	321
345	47	326
346	47	327
347	47	324
348	47	325
349	47	328
350	47	329
351	47	317
352	47	316
353	47	315
354	47	314
355	48	340
356	48	341
357	48	342
358	49	38
359	49	343
360	49	37
361	49	344
362	49	345
363	49	346
364	49	347
365	49	350
366	49	348
367	49	349
368	50	39
369	50	356
370	50	355
371	50	354
372	50	353
373	50	352
374	50	351
375	104	358
376	105	359
\.


--
-- Name: catalog_department_divisions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_department_divisions_id_seq', 376, true);


--
-- Name: catalog_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_department_id_seq', 106, true);


--
-- Data for Name: catalog_division; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_division (id, name) FROM stdin;
1	Office of State Budget and Management
2	Information Technology
3	Office of State Personnel
4	Corporations Division
5	Charitable Solicitation Licensing Section
6	Lobbying Compliance Division
7	Notary Public Section
8	Securities Division
9	Uniform Commercial Code Section
10	Athlete Agent Registration Office
11	Authentication Office
12	Office of International Services
13	Land Records Management Section
14	Publications Division
15	Trademarks Section
16	Certification and Filing Division
17	Information Technology Division
18	Division of Audits
19	Management Information Systems
20	Information Systems Audit
21	Investigative Division
22	Financial Operations
23	Investment Management
24	Retirement Systems
25	State and Local Government Finance Division
26	State Health Plan for Teachers and State Employees
27	Unclaimed Property and Escheats Division
28	Attorney General’s Office
29	Legal Services Division
30	State Bureau of Investigation
31	Sheriffs Training & Standards
32	Criminal Justice Training & Standards
33	NC Justice Academy
34	Private Protective Services
35	Alarm Systems Licensing
36	Medicaid Fraud Investigations Unit
37	Financial Services
38	Human Resources
39	Administrative Division
40	Criminal Division
41	Consumer Protection
42	Civil Division
43	Environmental Division
44	Law Enforcement and Prosecutions Division
45	Special Litigation DIvision
46	Center for Advancement of Teaching
47	N.C. Virtual Public School
48	Communication and Information Division
49	Data, Research and Federal Policy Division
50	Race to the Top
51	Academic Services and Instructional Support
52	Accountability Services
53	Career and Technical Education
54	Office of Charter Schools
55	District and School Transformation Division
56	Educator Effectiveness Division
57	Exceptional Children Division
58	Federal Program Monitoring and Support Services Division
59	Financial and Business Services
60	Healthy Schools
61	Digital Teaching and Learning
62	Internal Audit
63	IT Program Management Office
64	Agricultural Statistics
65	Agronomic Services
66	Budget & Finance
67	Emergency Programs
68	Environmental Programs
69	Food Distribution
70	Food and Drug Protection
71	Human Resources Office
72	Marketing
73	Meat and Poultry Inspection
74	Forest Service
75	State Fair
76	Plant Industry
77	Property and Construction
78	Public Affairs
79	Research Stations
80	Small Farms
81	Soil and Water Conservation
82	Standards
83	Structural Pest Control And Pesticides Division
84	Veterinary Division
85	Office of the State Fire Marshall
86	Consumer Services Division
87	Health Insurance Smart NC
88	Seniors' Health Insurance Information Program (SHIIP/Medicare)
89	Criminal Investigations
90	Agent Services
91	Property and Casualty
92	Life and Health
93	Market Regulation Division
94	Financial Evaluation Division
95	Regulatory Actions Division
96	Actuarial Services Division
97	Legislative Services Office
98	Engineering and Codes Division
99	Risk Management Division
100	Manufactured Building Division
101	Fire and Rescue Commission
102	Fire and Rescue Training
103	Safe Kids North Carolina
104	Ratings and Inspections Division
105	Research and Program Development Division
106	Occupational Safety and Health Division
107	Communications Division
108	Individual Development Accounts (IDA) Program
109	Legal Affairs Division
110	Research and Policy Division
111	N.C. Department of Labor Library
112	Apprenticeship and Training Bureau
113	Boiler Safety Bureau
114	Elevator and Amusement Device standards and inspections
115	Employment Discrimination Bureau
116	Mine and Quarry Bureau
117	Wage and Hour Bureau
118	Office of the Secretary
119	Division of Surplus Property
120	Purchase and Contract Division
121	Office for Historically Underutilitized Businesses
122	Commission of Indian Affairs
123	Council for Women
124	Youth Advocacy and Involvement Office
125	Division of Non-Public Education
126	State Parking
127	State Property Office
128	State Construction Office
129	Human Relations Commission
130	Division of Veterans Affairs
131	Motor Fleet Management
132	Justice for Sterlization Victims Foundation
133	Facility Management
134	Mail Service Center
135	Office of Fiscal Management
136	License to Give Trust Fund
137	Fiscal Management Division
138	Division of Employment Security
139	Business and Industry Division
140	Division of Community Assistance
141	Energy Division
142	N.C. Film Office/Film Council
143	International Trade Division
144	Labor and Economic Analysis Division
145	Office of Science & Technology
146	Division of Tourism, Film, and Sports Development 
147	Division of Workforce Solutions
148	Board of Science & Technology
149	 Commission on Workforce Development
150	Economic Development Board
151	Alcoholic Beverage Control Commission
152	Banking Commission
153	Community Development Council
154	Credit Union Division
155	Energy Policy Council
156	Industrial Commission
157	Utilities Commission
158	Rural Electrification Authority
159	Travel and Tourism Board
160	Office of the Commissioner for Small Business
161	NC Rural Development Council
162	Commerce Finance Center
163	Marketing and Customer Services Division
164	Policy, Research and Strategic Planning Division
165	Cemetary Commission
166	State Ports Authority
167	Archives and Records
168	Division of State History Museums
169	Division of State Historic Sites
170	Division of Historical Resources
171	N.C. Museum of Art
172	N.C. Arts Council
173	Southeastern Center for Contemporary Art
174	N.C. Symphony
175	State Library of North Carolina
176	Office of State Archeology
177	Historic Preservation Office
178	Historical Publications
179	N.C. Maritime Museums
180	Library for the Blind and Physically Handicapped
181	General Counsel
182	Ombudsman
183	Division of Water Infrastructure
184	Information Technology Services
185	Budget & Planning
186	Controller
187	Purchase and Contracts
188	Property Management
189	Division of Air Quality
190	N.C. Aquariums
191	Office of Conservation, Planning and Community Affairs
192	Environmental Assistance Center
193	Office of Environmental Education and Public Affairs
194	Division of Energy, Mineral and Land Resources
195	Legislative and Intergovernmental Affairs office
196	Division of Marine Fisheries
197	Museum of Natural Sciences
198	Division of Parks and Recreation
199	Division of Waste Management
200	Division of Water Resources (including Division of Water Quality)
201	N.C. Zoo
202	Financial Services Division
203	Albemarle-Pamlico National Estuary Partnership
204	Clean Water Management Trust Fund
205	Division of Coastal Management
206	Environmental Management Commission
207	Mining and Energy Commission
208	Natural Heritage Trust Fund
209	Ecosystem Enhancement Program
210	Wildlife Resources Commission
211	Aging and Adult Services
212	Services for the Blind
213	Child Development and Early Education
214	Services for the Deaf and Hard of Hearing
215	Council on Developmental Disabilities
216	Office of Economic Opportunity
217	Education Services
218	Division of Public Health (including vital records and environmental health)
219	Division of Health Service Regulation
220	Division of Medical Assistance
221	Division of Mental Health, Developmental Disabilities, and Substance Abuse Services
222	Office of Rural Health and Community Care
223	Division of Social Services
224	State Center for Health Statistics
225	Division of State Operated Healthcare Facilities
226	Division of Budget and Analysis
227	Office of the Controller
228	Division of Human Resources
229	Intergovernmental Relations
230	Division of Information Resource Management
231	Office of Medicaid Management Information System Services
232	Office of Privacy and Security
233	Office of Procurement and Contract Services
234	Office of Public Affairs
235	Division of Adult Correction
236	Alcoholism and Chemical Dependency Programs
237	North Carolina Correction Enterprises\n
238	\nCommunity Corrections\n
239	North Carolina Inmate Grievance Resolution Board
240	Post Release Supervision and Parole Commission
241	Prisons
242	Division of Juvenile Justice
243	Division of Law Enforcement
244	Emergency Management
245	Boxing Authority
246	Civil Air Patrol
247	National Guard
248	Butner Public Safety
249	State Capitol Police
250	State Highway Patrol
251	Governor's Crime Commission
252	Victim's Services
253	Internal Audit Division
254	Business Operations Division
255	Collection Division
256	Examinations Division
257	Special Corporate Compliance Initiatives Division
258	Tax Enforcement Division
259	Excise Tax Division
260	Income Tax Division
261	Local Government Division
262	Sales and Use Tax Division
263	Taxpayer Assistance
264	Applications Development and Support Division
265	Business Support Services Division
266	Contract Administration
267	Enterprise Project Management Division
268	Information Security Division
269	Technology Services and Support
270	Documents and Payments Processing Division
271	Human Resources Division
272	Business Solutions Division
273	Division of Motor Vehicles
274	Facilities Management
275	Support Services
276	Division of Highways
277	Prioritization Office
278	Program Development Branch
279	Technical Services
280	Rail Division
281	Division of Aviation
282	Ferry Division
283	Public Transportation Division
284	Bicycle and Pedestrian Division
285	Turnpike Authority
286	Financial Management Division
287	Intergovernmental Affairs and Budget Coordination
288	Strategic Planning
289	Attorney General's Office
290	Communications Office
291	Governance Office
292	Office of Inspector General
293	Administration
294	Personnel
295	Business Services
296	Communications and Government Relations
297	Risk Mitigation Services
298	Data Integration
299	CJLeads
300	Fraud, Waste and Abuse
301	Government Business Intelligence Competency Center
302	Executive Division
303	Elections Administration
304	Campaign Finance
305	Voting Systems Division
306	Director's Office
307	Deputy Director's Office
308	Classification & Compensation
309	Equal Employment Opportunity, Diversity and Inclusion
310	Employee Relations and Local Government
311	Learning & Development
312	Operations and Benefits
313	Recruitment and Staffing
314	Appalacian State University
315	 East Carolina University
316	Fayetteville State University
317	Elizabeth City State University
318	NC Agricultural and Technical State University
319	North Carolina Central University
320	 NC State University
321	 UNC Asheville
322	 UNC-Chapel Hill
323	 UNC Charlotte
324	 UNC Greensboro
325	 UNC Pembroke
326	 UNC Wilmington
327	 UNC School of the Arts
328	 Western Carolina University
329	 Winston-Salem State University
330	 North Carolina School of Science and Mathematics
331	UNC Center for Public Television (UNC-TV)
332	The North Carolina Arboretum
333	The North Carolina State Approving Agency (NCSAA)
334	The North Carolina Center for International Understanding (NCCIU)
335	The North Carolina State Education Assistance Authority (NCSEAA)
336	North Carolina Center for the Advancement of Teaching (NCCAT)
337	UNC Press
338	UNC Health Care System
339	N.C. Area Health Education Centers Program
340	Rules Division
341	Hearings Division
342	Civil Rights Division
343	Court Programs and Management Services Division
344	Court Services Division
345	Guardian ad Litem
346	Legal and Legislative Services
347	Organizational Development Division
348	Purchasing Office
349	Research and Planning Division
350	Technology Services Division
351	Legislative Services
352	Bill Drafting Division
353	Fiscal Research Division
354	Information Systems Division
355	Program Evaluation Division
356	Research Division
357	asdf
358	Center for Geographic Information and Analysis
359	GIS
360	Records
361	Land Records
362	Environmental Health
\.


--
-- Name: catalog_division_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_division_id_seq', 362, true);


--
-- Data for Name: catalog_resource; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_resource (id, name, slug, short_description, release_date, time_period, usage, description, contact_phone, contact_email, contact_url, updates_id, area_of_interest, is_published, created_by_id, last_updated_by_id, created, last_updated, metadata_contact, metadata_notes, update_frequency, data_formats, proj_coord_sys, wkt_geometry, csw_typename, csw_schema, csw_mdsource, csw_xml, csw_anytext, rating_votes, rating_score, agency_type, keywords, department_id, division_id, newest_record, oldest_record) FROM stdin;
4	DHHS Restaurant Inspections	dhhs-restaurant-inspections	Spreadsheet of restaurant inspections in all counties.	\N			The state Department of Health and Human Services has an Oracle database called BETS. \r\n\r\nAt the department's discretion it posts to the Web two tab-delimited .ttx files that contain a subset of the data within BETS. \r\n\r\nEach month the file receives a new, unique name based on the date. The file names that contain the string "Part1" contain data about the restaurants themselves. The files with "Part2" in the name includes information about the inspection events. Each row in the file is an individual inspection item, so there may be several rows for a single inspection if there were multiple point deductions at that inspection.\r\n\r\n	919-855-4816	kevin.howell@dhhs.nc.gov	http://ehs.ncpublichealth.com/	4		t	27	27	2013-08-21 19:40:47.941955-04	2013-11-18 14:17:55.653953-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	state		40	218	2013-03-12	2009-05-28
5	N.C. Master Addresses Dataset	nc-master-addresses-dataset	"the best available representation of situs addresses and their location"	\N			"The NC Master Address Dataset represents a compilation of the best available representation of situs addresses and their location. CGIA contacted county and municipal governments to acquire this information, and insight on how each local jurisdiction manages address assignment and maintenance."\r\n\r\n"The NC Master Address Dataset products are available in the Census Master Address File (MAF) file format (a pipe delimited ASCII file) and as shapefile in a GIS-ready form. The state has been broken into ten regions to accommodate the volume of data. "\r\n\r\n	(919) 754-6580	tim.johnson@nc.gov	http://www.cgia.state.nc.us/ContactUs/tabid/72/Default.aspx	5		t	27	27	2013-08-21 19:59:13.738598-04	2013-11-18 14:17:56.378213-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	state		104	358	2009-10-31	2009-10-31
12	Crime Mapping App	crime-mapping-app	Interactive maps showing incidents and arrests graphically with brief descriptions	\N			Crimereports.com allows participating cities and towns to graphically display the location and type of crime overlaid on top of a map.				1		f	27	27	2013-09-22 17:11:07.477362-04	2013-11-18 14:17:56.822743-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	360	2013-09-22	2013-09-22
11	Belmont Police Reports	belmont-police-reports	Database to request police reports for Belmont, NC	\N			Searchable database from the Belmont Police Department. You can search by report number, date, or victim's name. Each report costs money and is available via .pdf download.	(704) 829-4018		http://www.cityofbelmont.org/ContactUs.aspx	1		t	27	27	2013-09-15 18:46:58.437306-04	2013-11-18 14:17:57.288064-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			1	1	city		21	\N	2013-09-15	2008-01-01
6	Statewide Corporations List	corporations-list	Daily list of new corporations registered with the Secretary of State	\N			This web search form can be used to query the N.C. Secretary of State's database of corporations and retrieve up to a year's worth of records. The results can be downloaded in a tab-delimited zipped text file.\r\n\r\nData includes the corporation name, date of incorporation, registrant's name and address, principle's name and address, whether it is foreign or domestically controlled, and the type of corporation. It does not include information about the actual physical location of the corporations or the types of industries they are in.	919-807-2225		http://www.secretary.state.nc.us/corporations/	1		t	27	27	2013-08-21 20:16:29.691688-04	2013-11-18 14:17:58.630326-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	state		28	4	2013-08-21	1929-08-24
2	Columbus County Land Parcels	parcels	Parcel data for Columbus County	\N			Parcel data for Columbus County				2		f	27	27	2013-08-16 11:04:33.743972-04	2013-11-18 14:17:59.0759-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			1	2	county		36	127	\N	\N
1	Columbus County Property Sales	property-sales	Property sales in Columbus County	\N			Property sales in Columbus County				1		t	27	27	2013-08-16 10:56:13.332506-04	2013-11-18 14:17:59.52524-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	\N	\N
36	Dare County Food Establishment Inspections	dare-county-food-establishment-inspections	Health Department inspections for Dare County 	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	252.475.5092	jackf@darenc.com	http://www.darenc.com/health/enviro.asp	1		t	27	27	2013-10-04 23:38:51.153473-04	2013-11-18 14:18:10.343337-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-02	2007-12-05
105	Wake Forest Police Records	wake-forest-police-records	Searchable web app of incident reports for Wake Forest	\N			This data set contains a searchable web app of incident reports from Wake Forest. You can search for accidents, incidents, or arrests and search by date, name, and location. 				1		t	27	27	2013-10-17 23:43:46.194476-04	2013-11-18 14:18:42.905874-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-17	1991-11-19
110	Onslow County GIS	onslow-county-gis	Property records for Onslow County	\N			Onslow County offers both an interactive online map and downloadable GIS data. Data downloads include address points, parcel lines, etc. With the interactive map, users can search parcels by owner, map number, PARID, NC PIN, or deed book and page. Users can also navigate with the map and select a parcel using the "Identify Map Layers" tool in the top left box. The map provides parcel information such as owner name, address, value, and acreage.	910.937.1190			\N		t	27	27	2013-10-18 16:17:13.762076-04	2013-11-18 14:18:45.346728-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	359	2013-10-18	\N
9	Winston-Salem Police Reports	winston-salem-police-department	Incident, arrest and accident reports	\N			The Winston-Salem police department provides a web search application to find incident and arrest reports. It is "powered by Sungard Public Sector OSSI 's P2C engine."	(336)773-7700		http://www.cityofws.org/departments/police	1		t	27	27	2013-09-06 14:55:32.435494-04	2013-11-18 14:18:56.419684-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			1	5	city		21	\N	2013-09-06	2007-12-06
10	Winston-Salem Police Warrants	warrants	List of people wanted by the Winston-Salem Police	\N			The Winston-Salem Police keep a running list of people who are wanted for failure to appear, for arrest, and for other reasons. Includes the person's name, race, gender, age, charge, home address and "paper type." The site says this list may include the names of people who've already been served by other agencies. To access a more scrapeable list, click on the "Show all wanted" list in the upper right corner of the page. 	(336)773-7700		http://www.cityofws.org/departments/police	1		t	27	27	2013-09-06 15:20:20.690477-04	2013-11-18 14:17:57.748665-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-09-06	2013-09-06
15	Lincoln County Food Establishment Inspections	lincoln-county-food-establishment-inspections	Food safety inspections for establishments in Lincoln County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.\r\n\r\nThe third page shows a description of each specific violation, along with the inspector's comments. Each violation includes a "violation item" number and the number of points deducted for each violation.	(704) 736-8426		http://www.lincolncounty.org/index.aspx?NID=451	1		t	27	27	2013-10-04 11:15:31.908544-04	2013-11-18 14:18:00.017161-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2005-10-01
16	Madison County Food Establishment Inspections	madison-county-public-health-inspections	Inspections of food establishments in Madison County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant.\r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.\r\n\r\nThe third page shows a description of each specific violation, along with the inspector's comments. Each violation includes a "violation item" number and the number of points deducted for each violation.				1		t	27	27	2013-10-04 11:16:28.085907-04	2013-11-18 14:18:00.734174-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-09-30	2005-05-25
18	Iredell County Food Establishment Inspections	iredell-county-food-establishment-inspections	Food safety inspections of restaurants in Iredell County, N.C.	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.\r\n\r\nThe third page shows a description of each specific violation, along with the inspector's comments. Each violation includes a "violation item" number and the number of points deducted for each violation.	(704) 878-5358		http://www.co.iredell.nc.us/Departments/Health/EVHealth/	1		t	27	27	2013-10-04 11:26:52.75744-04	2013-11-18 14:18:01.784247-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2009-04-16
19	McDowell County Food Establishment Inspections	mcdowell-county-food-establishment-inspections	Inspections of food establishments in McDowell County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant.\r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.\r\n\r\nThe third page shows a description of each specific violation, along with the inspector's comments. Each violation includes a "violation item" number and the number of points deducted for each violation.				1		t	27	27	2013-10-04 11:27:58.192987-04	2013-11-18 14:18:02.236678-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-09-30	2000-10-18
14	Jackson County Food Establishment Inspections	jackson-county-food-establishment-inspections	Health department food inspections	\N			Webpage allows users to search for county health department inspections of restaurants and other food establishments by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Click on "inspections" to see details about specific times that inspectors graded the restaurant.\r\n\r\nSecond page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Click on "violations" to see further details about specific violations found during each inspection.\r\n\r\nThird page shows a description of each specific violation, along with the inspector's comments. Each violation includes a "violation item" number and the number of points deducted for each violation.	(828) 586-8994	jaimedellinger@jacksonnc.org	http://health.jacksonnc.org/	1		t	27	27	2013-10-04 11:14:57.400403-04	2013-11-18 14:18:24.843406-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2010-07-06
17	Macon County Food Establishment Inspections	macon-county-food-establishment-inspections	Macon County health department inspections	\N			What it is:\r\n- Web page that allows users to search for county health department inspections of restaurants and other food establishments\r\n- Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nDetails: \r\n- First page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n- The second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.\r\n- The third page shows a description of each specific violation, along with the inspector's comments. Each violation includes a "violation item" number and the number of points deducted for each violation.	(828) 349-2490	bpatterson@maconnc.org	http://www.maconnc.org/environmental-food.html	1		t	27	27	2013-10-04 11:25:34.317298-04	2013-11-18 14:18:02.673232-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2006-07-05
20	Lee County Food Establishment Inspections	lee-county-food-establishment-inspections	Health Department inspections for Lee County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.\r\n\r\nAs of October 3, 2013, it has not the web page has not been updated 2009. \r\n	(919) 718-4641	hcain@leecountync.gov	http://leecountync.gov/Departments/PublicHealth/EnviromentalHealth.aspx	5		t	27	27	2013-10-04 11:35:48.007844-04	2013-11-18 14:18:03.152673-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2009-06-18	2006-03-31
22	Wake County Restaurant and Sanitation Inspections	wake-county-restaurant-and-sanitation-inspections	Health Department inspections for Wake County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, address, city, zip code, establishment type, inspection type, violations, score range, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on the name of the restaurant to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the location of the establishment, the establishment type, the total score, and the specific violations. Users can download specific reports by clicking on "Inspection". 	919-856-7400	apierce@wakegov.com	http://www.wakegov.com/food/Pages/default.aspx	1		t	27	27	2013-10-04 18:15:35.60528-04	2013-11-18 14:18:03.597749-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	1994-01-20
23	Ashe County Food Establishment Inspections	ashe-county-food-establishment-inspections	Health Department inspections for Ashe County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(336) 246-3356	info@apphealth.com	http://www.apphealth.com/locations/ashe/	1		t	27	27	2013-10-04 18:31:55.428349-04	2013-11-18 14:18:04.044624-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-02	2013-05-24
80	Granville County GIS	granville-county-gis	Property data for Granville County	\N			Granville County offers both an interactive map and GIS data downloads. Downloads include parcels, streets and roads, place names, etc. In the interactive map, users can click "Tasks" and then "Attribute Query" in the top right corner of the screen to search for properties by a variety of fields, including owner name, address, and sale price. Users can also navigate with the map and select properties using the "identify" tool in the top toolbar. By clicking "PRC" on the right side of the screen, users can access the selected property's property card. The service provides information such as owner name, address, real value, and sale price.				\N		t	27	27	2013-10-09 10:18:59.615929-04	2013-11-18 14:18:30.546904-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	2013-10-09	\N
106	Carrboro Police Records	carrboro-police-records	Bulletin of Carrboro police records from current week and past week	\N			This resource links to a list of bulletins from this week and the week before. The bulletins are PDF files containing the police records from specific days. The bulletin gives the case number, description, and officer relating to each specific police report. 				1		t	27	27	2013-10-17 23:54:04.537461-04	2013-11-18 14:18:43.31046-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-16	2013-10-08
107	Durham County GIS	durham-county-gis	Property records for Durham County	\N			Durham County offers both an interactive online map and downloadable GIS data.\r\n\r\nEach layer of downloadable GIS data costs money to access.\r\n\r\nUsers can search parcels using the interactive map by parcel number, address, and several other fields. Users can also navigate with the map and find information on parcels using the "identify" tool in the top left toolbar. The map offers data such as parcel ID, address, owner name, acreage, etc.	919.560.4122 (GIS Division)	gis@durhamnc.gov		\N		t	27	27	2013-10-18 15:48:11.526694-04	2013-11-18 14:18:43.763206-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	\N	\N
24	Beaufort County Food Establishment Inspections	beaufort-county-food-establishment-inspections	Health Department inspections for Beaufort County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(252) 946-1902		http://www.bchd.net/services/environmental-health/	1		t	27	27	2013-10-04 18:43:08.538157-04	2013-11-18 14:18:04.527957-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2007-04-01
25	Bertie County Food Establishment Inspections 	bertie-county-food-establishment-inspections	Health Department inspections for Bertie County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(252) 794-5322	jparks@arhs-nc.org	http://www.arhs-nc.org/	1		t	27	27	2013-10-04 18:53:16.60029-04	2013-11-18 14:18:04.974176-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-09-25	2012-03-28
26	Alamance County Food Establishment Inspections	alamance-county-food-establishment-inspections	Health Department inspections for Alamance County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	336-570-6367	carl.carroll@alamance-nc.com	http://www.alamance-nc.com/d/environmental-health.html	1		t	27	27	2013-10-04 18:59:57.693947-04	2013-11-18 14:18:05.712543-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2005-12-20
27	Alleghany County Food Establishment Inspections	alleghany-county-food-establishment-inspections	Health Department inspections for Alleghany County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	412-687-2243		http://www.achd.net/newweb/environmental.html	1		t	27	27	2013-10-04 19:05:00.362971-04	2013-11-18 14:18:06.459793-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-01	2013-06-06
28	Catawba County Food Establishment Inspection	catawba-county-food-establishment-inspection	Food safety inspections for Catawba County establishments	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.\r\n\r\nThe third page shows a description of each specific violation, along with the inspector's comments. Each violation includes a "violation item" number and the number of points deducted for each violation.	(828) 465-8258	scarpenter@catawbacountync.gov	http://www.catawbacountync.gov/Environmentalhealth/	1		t	27	27	2013-10-04 21:21:54.949646-04	2013-11-18 14:18:06.881875-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2007-01-01
42	Mecklenburg County Food Establishment Inspections	mecklenburg-county-food-establishment-inspections	Health Department inspections for Mecklenburg County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	704-336-7600		http://charmeck.org/mecklenburg/county/healthdepartment/environmentalhealth/Pages/Default.aspx	1		t	27	27	2013-10-05 08:42:02.670562-04	2013-11-18 14:18:13.003021-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2013-03-05
81	Greene County GIS Data Downloads	greene-county-gis-data-downloads	Property data for Greene County	\N			Greene County offers downloadable GIS data, including boundaries, taxparcels, roads, etc. 	252.747.4398 (Rich Elkins, Greene Co. GIS Coord.)	relkins@co.greene.nc.us		\N		t	27	27	2013-10-09 10:25:14.740436-04	2013-11-18 14:18:31.009432-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	2012-01-20	\N
30	Brunswick County Food Establishment Inspections	brunswick-county-food-establishment-inspections	Health Department inspections for Brunswick County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	910.253.2250	env-health@brunsco.net	http://www.brunswickcountync.gov/Departments/HealthRelated/EnvironmentalHealth.aspx	1		t	27	27	2013-10-04 21:57:15.829866-04	2013-11-18 14:18:07.788378-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2010-02-18
32	Clay County Food Establishment Inspections 	clay-county-food-establishment-inspections	Health Department inspections for Clay County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(828) 389-8052	clayhd@clayhdnc.us	http://www.clayhdnc.us/	1		t	27	27	2013-10-04 22:54:02.586142-04	2013-11-18 14:18:08.644272-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2007-07-05
33	Craven County Food Establishment Inspections	craven-county-food-establishment-inspections	Health Department inspections for Craven County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(252) 636-4936	envhealth@cravencountync.gov	http://www.cravencounty.com/departments/hth/env/fli/flimain.cfm	1		t	27	27	2013-10-04 23:02:02.737532-04	2013-11-18 14:18:09.153222-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2009-09-10
38	Davie County Food Establishment Inspections	davie-county-food-establishment-inspections	Health Department inspections for Davie County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(336) 753-6780	Tracie.Lakey@co.davie.nc.us	http://www.daviecountync.gov/index.aspx?NID=153	1		t	27	27	2013-10-04 23:51:40.15433-04	2013-11-18 14:18:11.224355-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2007-09-25
39	Duplin County Food Establishment Inspections	duplin-county-food-establishment-inspections	Health Department inspections for Duplin County 	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(910) 296-2104		http://www.duplincounty.org/dcp_health_envh.htm	1		t	27	27	2013-10-04 23:59:24.764894-04	2013-11-18 14:18:11.660686-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-02	2013-02-28
40	Durham County Food Establishment Inspections	durham-county-food-establishment-inspections	Health Department inspections for Durham County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(919) 560-7800	healthinspector@dconc.gov	http://dconc.gov/index.aspx?page=800	1		t	27	27	2013-10-05 00:05:18.812902-04	2013-11-18 14:18:12.156246-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2004-04-24
41	Forsyth County Food Establishment Inspections	forsyth-county-food-establishment-inspections	Health Department inspections for Forsyth County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(336) 703-3225		http://www.co.forsyth.nc.us/publichealth/environmentalhealth/	1		t	27	27	2013-10-05 00:11:54.733034-04	2013-11-18 14:18:12.575757-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-02	2001-01-04
43	Guilford County Food Establishment Inspections	guilford-county-food-establishment-inspections	Health Department inspections for Guilford County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	336.641.3771 		http://www.co.guilford.nc.us/gheh_cms/	1		t	27	27	2013-10-05 08:49:11.747231-04	2013-11-18 14:18:13.464537-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	1998-05-23
76	Davie County GIS Data Download	davie-county-gis-data-download	Property data for Davie County	\N			Davie County offers downloadable GIS data, including address points and driveways, municipal boundaries, school districts, etc. 				\N		t	27	27	2013-10-08 19:41:40.236572-04	2013-11-18 14:18:29.212562-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	\N	\N
78	City of Winston-Salem/Forsyth County GIS Data Download	test	Property records for Winston-Salem/Forsyth County	\N			The City of Winston-Salem and Forsyth County offer downloadable GIS data, including street centerlines, tax parcels, tax record polygons, zoning districts, etc.			http://www.cityofws.org/departments/planning/gis/gis-contact-us	4		t	27	27	2013-10-09 09:43:17.611665-04	2013-11-18 14:18:29.669434-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	2013-03-17	2005-02-01
35	Currituck County Food Establishment Inspections	currituck-county-food-establishment-inspections	Health Department inspections for Currituck County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	252-232-2271		http://www.arhs-nc.org/	2		t	27	27	2013-10-04 23:31:05.008279-04	2013-11-18 14:18:13.942085-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-09-26	2012-06-20
44	Gaston County Food Establishment Inspections	gaston-county-food-establishment-inspections	Health Department inspections for Gaston County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	704-853-5200		http://www.gastongov.com/departments/health/environmental-health	1		t	27	27	2013-10-05 08:56:33.413264-04	2013-11-18 14:18:14.683504-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2001-11-13
45	Gates County Food Establishment Inspections	gates-county-food-establishment-inspections	Health Department inspections for Gates Couny	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	252-357-1380		http://www.arhs-nc.org/	2		t	27	27	2013-10-05 09:02:52.359646-04	2013-11-18 14:18:15.14643-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-09-26	2012-09-09
46	Harnett County Food Establishment Inspections	harnett-county-food-establishment-inspections	Health Department inspections for Harnett County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	910-893-7547	gbyrd@harnett.org	http://www.harnett.org/health/environmental-health.asp	1		t	27	27	2013-10-05 15:00:29.998834-04	2013-11-18 14:18:15.599296-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-02	2007-07-02
48	Polk County Food Establishment Inspections	polk-county-food-establishment-inspections	Health Department inspections for Polk County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(828) 894-8271		http://www.rpmhd.org/index.php/environmental-services	1		t	27	27	2013-10-05 15:20:20.186285-04	2013-11-18 14:18:16.609141-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	1996-12-18
79	Gates County GIS	gates-county-gis	Property data for Gates County	\N			Gates County offers both an interactive map and downloadable GIS data. Downloads include roads, zoning, parcels, and parlines.\r\n\r\nTo search for a property using the interactive map, users can use the "attribute query" box on the right side of the screen to choose which field to search in (such as owner name or address) and type in their search term in the "attribute value" section. Users can also navigate with the map to choose a property and can find information about that property using the "identify" tool in the top toolbar. The service offers information such as owner name, address, sale date, and total value. By clicking "Get PRC" on the right side, users can access the property's property card.				\N		t	27	27	2013-10-09 10:02:58.035828-04	2013-11-18 14:18:30.119561-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	2013-03-08	\N
47	Northampton County Food Establishment Inspections 	northampton-county-food-establishment-inspections	Health Department inspections for Northampton County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(252) 534-5841 (ext) 619		http://www.northamptonhd.com/index.php?option=com_alphacontent&view=alphacontent&Itemid=115	5		t	27	27	2013-10-05 15:12:45.635631-04	2013-11-18 14:18:16.136624-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2011-05-24	2006-03-14
49	Richmond County Food Establishment Inspections	richmond-county-food-establishment-inspections	Health Department inspections for Richmond County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(910) 997-8365	tommy.jarrell@richmondnc.com	http://www.richmondnc.com/dept_health.aspx	1		t	27	27	2013-10-05 15:25:49.430183-04	2013-11-18 14:18:17.066203-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2006-08-22
50	Robeson County Food Establishment Inspections	robeson-county-food-establishment-inspections	Health Department inspections for Robeson County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(910) 272-6560	William.smith@robeson.nc.gov 	http://publichealth.southernregionalahec.org/robeson/envir.html	1		t	27	27	2013-10-05 15:33:05.004918-04	2013-11-18 14:18:17.552712-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2006-09-05
51	Rowan County Food Establishment Inspections	rowan-county-food-establishment-inspections	Health Department inspections for Rowan County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	704-216-8525	Barbara.Ellis@rowancountync.gov	http://www.rowancountync.gov/GOVERNMENT/Departments/HealthDepartment/EnvironmentalHealth.aspx	1		t	27	27	2013-10-05 15:38:01.969213-04	2013-11-18 14:18:17.986052-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2009-01-06
52	Rutherford County Food Establishment Inspections	rutherford-county-food-establishment-inspections	Health Department inspections for Rutherford County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(828) 287-6100		http://www.rpmhd.org/index.php/environmental-services	1		t	27	27	2013-10-05 15:43:05.579413-04	2013-11-18 14:18:18.434701-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2001-04-09
54	Stanly County Food Establishment Inspections	stanly-county-food-establishment-inspections	Health Department inspections for Stanly County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	704-986-3675	DEzzell@stanlycountync.gov	http://www.stanlycountync.gov/environmental-health/	1		t	27	27	2013-10-05 15:54:57.054073-04	2013-11-18 14:18:19.628085-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2012-12-06
56	Watauga County Food Establishment Inspections	watauga-county-food-establishment-inspections	Health Department inspections for Watauga County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(828) 264-4995	info@apphealth.com	http://www.apphealth.com/environmental-health/	1		t	27	27	2013-10-05 16:09:20.727686-04	2013-11-18 14:18:20.578794-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2013-05-24
57	Wilkes County Food Establishment Inspections	wilkes-county-food-establishment-inspections	Health Department inspections for Wilkes County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(336) 651-7450		http://wilkeshealth.com/environmental-health/environmental-health-programs/	1		t	27	27	2013-10-05 16:15:15.667298-04	2013-11-18 14:18:21.042266-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-09-30	2008-02-04
58	Buncombe County Food Establishment Inspections	buncombe-county-food-establishment-inspections	Health Department inspections for Buncombe County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, address, city, zip code, establishment type, inspection type, violations, score range, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on the name of the restaurant to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the location of the establishment, the establishment type, the total score, and the specific violations. Users can download specific reports by clicking on "Inspection". 	828.250.5016	marc.fowler@buncombecounty.org	http://www.buncombecounty.org/Governing/Depts/Health/EnvironmentalHealth.aspx	1		t	27	27	2013-10-05 19:22:05.093555-04	2013-11-18 14:18:21.446499-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2002-07-01
59	Orange County Food Establishment Inspections 	orange-county-food-establishment-inspections	Health Department inspections for Orange County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(919) 245-2360	cbridger@orangecountync.gov	http://www.co.orange.nc.us/envhlth/	1		t	27	27	2013-10-05 19:49:31.057896-04	2013-11-18 14:18:21.89354-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2000-06-22
60	Pasquotank County Food Establishment Inspections	pasquotank-county-food-establishment-inspections	Health Department inspections for Pasquotank County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	252-338-4400		http://www.arhs-nc.org/services/ehs/	2		t	27	27	2013-10-05 19:56:32.797497-04	2013-11-18 14:18:22.335251-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-09-27	2012-07-04
61	Pender County Food Establishment Inspections	pender-county-food-establishment-inspections	Health Department inspections for Pender County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	910-259-1499	cmoser@pendercountync.gov	http://www.pendercountync.gov/government/departments/healthdept/Programs/EnvironmentalHealth.aspx	1		t	27	27	2013-10-05 20:58:54.311981-04	2013-11-18 14:18:22.793036-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2010-01-05
64	Transylvania County Food Establishment Inspections	transylvania-county-food-establishment-inspections	Health department inspections of places that sell and distribute food in Transylvania County.	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.\r\n\r\nThe third page shows a description of each specific violation, along with the inspector's comments. Each violation includes a "violation item" number and the number of points deducted for each violation.	828-884-3135	steve.smith@transylvaniacounty.org	http://health.transylvaniacounty.org/	2		t	27	27	2013-10-06 15:22:25.536879-04	2013-11-18 14:18:23.972072-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-09-30	2007-05-24
65	Tyrrell County Food Establishment Inspections	tyrrell-county-food-establishment-inspections	Health Department inspections for Tyrrell County	\N			-News station web page containing restaurant ratings of establishments that sell and distribute food searchable by beginning letter of establishment name, date of inspection visit, zip code and county. Each listing includes grade, list of violations, and comments on the violation if applicable. \r\n\r\n-Additionally, this page contains videos of newscasts that go through sanitation ratings and reasons for ratings of various places that sell and distribute food searchable by date of newscast. Each video is detailed with food establishment location, health inspection grade, reasons for that grade being given, and grades that the establishment had received in previous months. This includes newscasts from 8/30/2013-10/4/2013.\r\n				3		t	27	27	2013-10-06 16:13:26.272901-04	2013-11-18 14:18:24.400475-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2012-08-13	2012-05-11
67	Cape Carteret Police Reports	cape-carteret-police-reports	Database to request police reports for Cape Carteret, NC	\N			Searchable database from the Cape Carteret Police Department. You can search by report number, date, or victim's name. Each report costs money and is available via .pdf download.	252-393-2183		http://www.townofcapecarteret.org/public-safety-home.html	5		t	27	27	2013-10-07 14:39:25.011157-04	2013-11-18 14:18:25.272294-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2011-09-20	2010-12-01
68	Cabarrus County Food Establishment Inspections	cabarrus-county-food-establishment-inspections	Health Department inspections for Cabarrus County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, score range, violation, and inspection date.\r\n\r\nIf the page is blank, the user can press "search" on the right side of the page, and the inspections for all of the restaurants and establishments in the county will appear. If the user searches by one of the criteria mentioned above, the site filters the results. 	704-920-1000		http://www.cabarrushealth.org/234/Contact	1		t	27	27	2013-10-07 16:10:21.16199-04	2013-11-18 14:18:25.73562-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-07	2004-06-25
69	Carteret County Food Establishment Inspections	carteret-county-food-establishment-inspections	Health Department inspections for Carteret County	\N			This PDF report has data on a number of restaurants, school lunchrooms, hotels, child-care centers, and more. \r\n\r\nIt gives the name of the facility, the date of the inspection, a number grade, and a letter grade. At the top, it explains what each of the grades mean and summarizes the inspection frequency for each type of facility. 	252.728.8499	EHcustomerservice@carteretcountygov.org	http://www.carteretcountyhealth.org/EH/	3		t	27	27	2013-10-07 16:28:40.46095-04	2013-11-18 14:18:26.286805-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-08-02	2010-05-17
70	Charlotte-Mecklenburg Police Reports 	charlotte-mecklenburg-police-records	Police reports for the Charlotte-Mecklenburg Police Department	\N			-Database from the Charlotte-Mecklenburg Police Department searchable by complaint number AND victim's last name. \r\n-Sexual assault, vice and narcotics, domestic violence, suicide crime reports are only available by phone contact.\r\n-Reports are in PDF format.	(704) 336-2848		http://cmpdcrime.policereports.us/index.html	1		t	27	27	2013-10-07 23:57:05.247231-04	2013-11-18 14:18:26.757446-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			1	3	city		21	\N	2013-10-07	\N
73	Buncombe County GIS	buncombe-county-gis	Property records for Buncombe County	\N			Buncombe County offers a web-based map application and downloadable data in both ShapeFile (ArcGIS) and HTML formats.\r\n\r\nThe "Access Full GIS" tab directs the user to a searchable map web application. Properties are searchable by PIN, owner, address, street, deed book/page, and plat book/page. Users can also navigate via the map. Once the user has located a property, clicking "property card" redirects to a page with information such as ownership history (purchase records) and assessment history.\r\n\r\nThe "Download Digital Data" tab allows users to download ShapeFiles of datasets such as election precincts, parcels, county zoning, etc. Users can also view HTML metadata.	828.250.6860	gishelp@buncombecounty.org		2		t	27	27	2013-10-08 19:16:37.779146-04	2013-11-18 14:18:27.180673-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	\N	\N
85	Durham County Sheriff Incidents	durham-county-sheriff-incidents	Limited information on limited set of recent incidents	\N			Durham County Sheriff  and Durham city Police and share two sites on which they produce incomplete records about incidents. \r\n\r\nOn the "Durham Crime Mapper" site, users can find some information about the following incident types:\r\n<p>\r\n* Arson\r\n* Assault\r\n* Burglary \r\n* Homicide\r\n* Larceny\r\n* Motor Vehicle Theft\r\n* Robbery\r\n* Rape\r\n<p>\r\nOn this site, the Sheriff department information does not include dates of incidents. Police data begins on Jan. 1, 2009 and appears to be updated daily. \r\n\r\nHTML tables include the following fields:\r\n* Date\r\n* Street address of incident\r\n* "General Type of Crime"\r\n* "Specific Category"\r\n* Incident Number\r\n\r\nThere is no arrest data.\r\n\r\nThe two agencies also post incident data to a website run by their RMS vendor, Bair Analytics, at http://www.raidsonline.com/?agency=Durham,NC. \r\n\r\nPolice information on this site is delayed by seven days. You can browse through a maximum of 500 records at a time. \r\n\r\nIt has one record from 1986, but doesn't appear to have more complete incident reports until about 2009.	919-560-7115	LACash@durhamsheriff.org	http://dconc.gov/index.aspx?page=475	2		t	27	27	2013-10-10 10:32:10.676683-04	2013-11-18 14:18:32.579068-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		5	\N	2013-10-03	2009-01-01
84	Durham Police Incidents	durham-police-incidents	Limited information on limited set of recent incidents	\N			Durham city Police and Durham County Sheriff share two sites on which they produce incomplete records about incidents. \r\n\r\nOn the "Durham Crime Mapper" site, users can find some information about the following incident types:\r\n<p>\r\n* Arson\r\n* Assault\r\n* Burglary \r\n* Homicide\r\n* Larceny\r\n* Motor Vehicle Theft\r\n* Robbery\r\n* Rape\r\n<p>\r\nOn this site, the Sheriff department information does not include dates of incidents. Police data begins on Jan. 1, 2009 and appears to be updated daily. \r\n\r\nHTML tables include the following fields:\r\n* Date\r\n* Street address of incident\r\n* "General Type of Crime"\r\n* "Specific Category"\r\n* Incident Number\r\n\r\nThere is no arrest data.\r\n\r\n\r\nThe two agencies also post incident data to a website run by their RMS vendor, Bair Analytics, at http://www.raidsonline.com/?agency=Durham,NC. \r\n\r\nPolice information on this site is delayed by seven days. You can browse through a maximum of 500 records at a time. \r\n\r\nIt has one record from 1986, but doesn't appear to have more complete incident reports until about 2009.	(919) 560-4322, ext. 29195	eric.arrington@durhamnc.gov	http://durhamnc.gov/ich/op/DPD/Pages/CrimeInfo.aspx	2		t	27	27	2013-10-10 10:17:33.978502-04	2013-11-18 14:18:33.026651-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-08	2009-01-01
87	East Spencer Police Reports 	east-spencer-police-reports	Blog website for the East Spencer Police Department .	\N			-The homepage has a list of police write-ups for charges and arrests of individuals identifiable by photograph, name, age, and residence. Write-ups are listed by date of incident. \r\n-Other pages include lists of individuals with warrants for arrest and bans from certain locations.\r\n-There is no searchable database. 	(704) 637-1660	espdchief@gmail.com	http://www.townofeastspencer.org/police-dept.html	\N		t	27	27	2013-10-10 14:09:46.923551-04	2013-11-18 14:18:33.477912-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	\N	\N
91	Goldsboro Police Reports	goldsboro-police-reports	Database of police reports for Goldsboro, NC	\N			-Database of police reports searchable by report number, last name, date, and location.\r\n-Results are available online or in PDF format. \r\n-Results must be paid for. 	 (919)-580-4239			1		t	27	27	2013-10-10 16:05:23.272689-04	2013-11-18 14:18:33.932409-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-09	\N
89	Fayetteville Police Reports	fayetteville-police-reports	Incident Reports from Fayetteville	\N			Web page includes a searchable database for incident reports in Fayetteville. Users can search by date, name, location, city, case number, and patrol zone.\r\n\r\nFirst page shows date, case number, primary offense, location, and a PDF of the report. \r\n\r\nPDF shows the detailed report. 	(910) 433-1819		http://police.ci.fayetteville.nc.us/	1		t	27	27	2013-10-10 14:41:34.49124-04	2013-11-18 14:18:34.383935-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-09	2005-10-06
90	Elon Police Reports	elon-police-reports	Database of police reports in Elon, NC	\N			-Database of police reports searchable by report number, last name, date, and location.\r\n-Results are available online or in PDF format.\r\n	(336) 584-1301			1		t	27	27	2013-10-10 15:02:27.566151-04	2013-11-18 14:18:34.812346-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-04	\N
92	Graham Accident Reports 	graham-accident-reports	Incident Reports from Graham 	\N			Searchable database from the Graham Police Department. Users can search by report number, date, driver's name, and location.\r\n\r\nFirst page shows report number, date, driver's name, location, and price of the file.\r\n\r\nFiles must be paid for before they can be downloaded. 	336-570-6711	jprichard@cityofgraham.com	http://www.cityofgraham.com/departments/police/	1		t	27	27	2013-10-10 21:14:05.334968-04	2013-11-18 14:18:35.234008-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-10	2008-02-01
93	Huntersville Police Reports 	huntersville-police-reports	Incident Reports from Huntersville	\N			Database of searchable police reports. Users can only search if they have a report number. 	704-464-5400	mkee@huntersville.org	http://huntersville.org/Departments/Police.aspx	1		t	27	27	2013-10-10 21:46:11.165283-04	2013-11-18 14:18:35.678386-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-10	\N
94	Randolph County Food Establishment Inspections	randolph-county-food-establishment-inspections	Health Department inspections for Randolph County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can filter by establishment name, address, city, inspection date, score, grade and type.	336.318.6262		http://www.co.randolph.nc.us/ph/grade.aspx	1		t	27	27	2013-10-11 22:51:01.851862-04	2013-11-18 14:18:36.659098-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-11	2012-09-21
95	Mecklenburg County GIS and Mapping Data	mecklenburg-county-gis-and-mapping-data	Property records for Mecklenburg County	\N			Mecklenburg County offers both downloadable mapping data and an interactive web map. Downloadable data includes parcel lines, districts, aerial imagery, etc. Some, but not all, data can be viewed without being downloaded by using the "View" tool.\r\n\r\nWith the interactive map, users can search by address, parcel ID, street intersection, point of interest, or facilities. This notably lacks the ability to search by owner name; however, a separate webpage allows lookup by owner name--see the "Resources" section of this page. Users can navigate using the map and find information on parcels using the "identify" tool on the left side of the map. The map provides information such as owner name, tax value, square footage, etc.		gis@charlottechamber.com		3		t	27	27	2013-10-14 15:21:43.467367-04	2013-11-18 14:18:38.161434-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	2013-09-13	\N
96	Wake County GIS	wake-county-gis	Property records for Wake County	\N			Wake County offers both downloadable GIS data and an interactive online map. Downloads include topography, property data, electoral data, etc. The online map allows users to search properties by owner name, address, PIN, and real estate ID. Users can also navigate with the map and use the "identify" feature in the top left corner to find information about a property. The map provides information such as owner name, building and land value, etc. 		mike.ping@wakegov.com		4		t	27	27	2013-10-14 15:33:16.243422-04	2013-11-18 14:18:38.58312-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	\N	\N
97	Guilford County GIS	guilford-county-gis	Property records for Guilford County	\N			Guilford County offers both a GIS data download and an interactive online map. Downloadable data includes parcel data, school data, governmental units, etc. With the online map, users can search for properties in the search bar at the top of the map. (NOTE: This search bar does not seem to work for all browsers. If you're experiencing problems, try another browser.) Properties are searchable by legal description, owner, parcel number, PIN, address, and short parcel ID. Users can also navigate with the map and select properties with the "Show map information" tool in the top right corner. The map provides information such as owner, address, land and building value, etc.	336.641.7583			3		t	27	27	2013-10-14 15:50:20.745187-04	2013-11-18 14:18:39.01255-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	2013-10-01	\N
98	Cumberland County GIS	cumberland-county-gis	Property records for Cumberland County	\N			Cumberland County offers both downloadable GIS data and an interactive online map hosted on arcgis.com. The data is available in both MapInfo and Shapefile formats. Downloads include parcel data, development plans, etc. With the online map, users can search for properties by selecting "Queries" under the Mapping tab. Properties are searchable by address, street name, PIN, and owner name. Users can also navigate with the map and use the "select features" tool to identify a property. The map supplies data such as owner name, acreage, and a link to the property's entry on the Cumberland County Tax Assessor website.				\N		t	27	27	2013-10-14 16:27:16.908453-04	2013-11-18 14:18:39.481096-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	\N	\N
99	New Hanover GIS	new-hanover-gis	Property records for New Hanover County	\N			-New Hanover County offers both downloadable GIS data and an interactive online map. Downloads include topography, property data, electoral data, etc. \r\n-Users are able to filter through data by file name, size, type, metadata, and URL. \r\n-For some entries users can either 'describe' or 'download' the data. Describe means to open the data in the webpage. \r\n\r\n\r\n	(910) 798-7311	suggestionbox@nhcgov.com 		\N		t	27	27	2013-10-15 11:54:39.594798-04	2013-11-18 14:18:39.938988-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	\N	\N
100	Matthews Police Reports	matthews-police-reports	Crime map of reported incidents and known offenders	\N			Crime map of all reported events and offenders for the Matthews Police Department, as provided by BAIR Analytics.	(704) 845-1973		http://matthewsnc.gov/Departments/Police/ContactUs.aspx	1		t	27	27	2013-10-15 12:06:47.843776-04	2013-11-18 14:18:40.377777-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-14	2011-09-27
101	Alamance County Property Data	alamance-county-property-data	GIS data and tax records for Alamance County	\N			Alamance County offers both downloadable GIS shapefiles and a searchable database for property records. The database can search by name, address, parcel ID, Map GPIN, OLD tax ID, and owner account number, as well as an interactive spacial map search. The GIS shapefiles offered include tax parcels that are updated quarterly.	336-570-4102	bruce.walker@alamance-nc.com		4		t	27	27	2013-10-16 14:09:25.076045-04	2013-11-18 14:18:41.110775-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		106	\N	2013-07-29	2010-12-31
102	Harnett County Property Data	harnett-county-property-data	GIS data and tax records for Harnett County	\N			Harnett County offers both downloadable GIS shapefiles and a searchable database for property records. The database can search by name, account ID, address, parcel ID, and PIN. The GIS shapefiles offered include address points, parcels, streets, zoning, and more, updated monthly.	910-893-7523		http://www.harnett.org/gis/contact-us.asp	3		t	27	27	2013-10-16 14:25:02.184308-04	2013-11-18 14:18:41.563209-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		106	\N	2013-09-18	2013-09-18
112	Johnston County GIS	johnston-county-gis	Property records for Johnston County	\N			Johnston County offers both an interactive online map and downloadable GIS data. Data downloads include parcels, tax assessment attributes, zoning, etc. In the interactive map, users can select "Locate" from the top toolbar and search parcels by address, owner name, tax number, etc. The map provides parcel information such as owner name, address, acreage, market value, and sale date and price.	919.989.5153	gis@johnstonnc.com		\N		t	27	27	2013-10-18 16:38:43.807298-04	2013-11-18 14:18:46.286317-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	359	2013-09-11	\N
113	Kannapolis Police Records 	kannapolis-police-records	Searchable web app of police reports for Kannapolis 	\N			This website contains a data set of police reports from Kannapolis searchable by accident, arrest or incident, case number, date occurred, date reported, name and address. \r\n-Some listings are available in PDF format. 	704-920-4000		http://kannapolisp2c.com/p2c/contact.aspx	1		t	27	27	2013-10-18 18:09:53.387999-04	2013-11-18 14:18:46.720504-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-18	2006-01-01
114	High Point Police Records	high-point-police-records	Searchable web app of police reports for High Point, NC	\N			This website contains a data set of police reports from High Point searchable by accident, arrest or incident, case number, date occurred, date reported, name and address. \r\n-Some listings are available in PDF format. 	(336) 887-7940		http://www.high-point.net/police/	1		t	27	27	2013-10-18 19:59:10.994615-04	2013-11-18 14:18:47.172069-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	1988-06-18	2013-10-18
115	Wilmington Police Reports 	wilmington-police-reports	Police Incident Reports in Wilmington	\N			Web page that allows users to search for police incident reports in Wilmington. Users can search by date, name, location, or case number. \r\n\r\nFirst page shows date, time, type of incident, case number, primary offense, and location for incidents that match the search criteria. Users click the link under "view" to see a copy of the report. 	910.341.7800	officeofthechief@wilmingtonnc.gov	http://www.wilmingtonnc.gov/police_department	1		t	27	27	2013-10-19 20:56:55.381937-04	2013-11-18 14:18:47.603125-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-18	1998-01-01
116	Rowan County Police Reports 	rowan-county-police-reports	Police Incident Reports for Rowan County	\N			Web page that allows users to search for police incident reports. Users can search by date, name, location, or zone. \r\n\r\nFirst page shows date, time, type of incident, arrestee's name, charge, and location. Users click on the PDF link to view the report. \r\n\r\nThere is also a scraperwiki that collects information from this dataset. 	704-216-8700		http://www.rowancountync.gov/GOVERNMENT/Departments/SheriffsOffice.aspx	1		t	27	27	2013-10-19 21:36:23.848715-04	2013-11-18 14:18:48.054388-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		21	\N	2013-10-19	2009-01-13
117	Stokes County Food Establishment Inspections 	stokes-county-food-establishment-inspections	Food Establishment Inspections for Stokes County	\N			PDF file shows food establishment inspection grades for Stokes County. Dataset shows restaurants, school cafeterias, institutional food service, food stands, and meat markets. Users can see food establishment's name, address, date of last inspection, score, grade, and category. \r\n\r\nThis dataset only shows information from the last inspection and does not include specific violations.	(336)593-2403	slenhart@co.stokes.nc.us	http://www.co.stokes.nc.us/health/index_files/contact.htm	4		t	27	27	2013-10-19 22:34:30.276112-04	2013-11-18 14:18:48.566263-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-02-20	2012-04-27
118	Wayne County Food Establishment Inspections	wayne-county-food-establishment-inspections	Food Establishment Inspections for Wayne County	\N			Web page allows users to search by restaurant name. \r\n\r\nUsers click on restaurant name to view inspection summary. Summary shows restaurant name, inspection date, location, and number of critical and non-critical violations.\r\n\r\nUsers click "full inspection history" to see other inspection dates. \r\n\r\nDoes not include specific violations or inspection scores/grades.	304-272-6761	Mickey.O.Plymale@wv.gov	http://www.waynehealthdept.org/contact	4		t	27	27	2013-10-19 23:50:10.788825-04	2013-11-18 14:18:49.020067-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2012-06-04	2006-07-20
119	Haywood County Property Data	haywood-county-property-data	GIS data and tax records for Harnett County	\N			Haywood County offers both downloadable GIS shapefiles and a searchable map for property records. The map's database can search be searched by owner name, deed, and PIN. The GIS shapefiles offered include addresses, municipalities, parcels, streets, zoning, and more, updated monthly. The shapefiles online are available for free, but special reports can be requested for a minimum of $20.	(828) 452-6644		http://www.haywoodnc.net/index.php?option=com_content&view=article&id=71&Itemid=72	3		t	27	27	2013-10-20 00:43:51.196927-04	2013-11-18 14:18:49.748554-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		106	361	2013-10-20	2013-06-26
120	Henderson County Property Data	henderson-county-property-data	GIS data and tax records for Harnett County	\N			Henderson County offers downloadable GIS shapefiles, tax data download, tax bill lookup, and a searchable database for property records. The database can search by name, address, parcel number, and PIN. The GIS downloadable data can be accessed by clicking on the link and registering as a "guest" user. Henderson County also offers live GIS data streaming.	(828) 698-5124	gis@hendersoncountync.org	http://www.hendersoncountync.org/gis/contact.html	3		t	27	27	2013-10-20 01:02:27.485712-04	2013-11-18 14:18:50.197641-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		104	358	\N	\N
121	Iredell County Property Data	iredell-county-property-data	GIS data and tax records for Iredell County	\N			Iredell County offers both downloadable GIS shapefiles and a searchable map for property records. The map can search by name, PIN, address, street name, subdivision, and longitude/latitude. The GIS shapefiles offered include addresses, parcels, streets, zoning, and more, updated monthly.	(704) 878-3137			3		t	27	27	2013-10-20 01:21:38.1422-04	2013-11-18 14:18:50.641757-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		106	\N	2013-09-13	\N
124	Greenville Police Arrest Reports 	greenville-police-arrest-reports	Arrest Reports by Greenville Police 	\N			Web page has PDF files for arrest reports. \r\n\r\nFirst half of arrest report dataset shows arrest number, case number, arrest date, arrestee, age, and charge. Second half of dataset shows detailed reports. 	(252) 329-4324	haden@greenvillenc.gov	http://www.greenvillenc.gov/departments/police_dept/default.aspx?id=2674	2		t	27	27	2013-10-20 18:06:12.17284-04	2013-11-18 14:18:51.106761-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-14	2013-07-21
111	Cabarrus County GIS	cabarrus-county-gis	Property records for Cabarrus County	\N			Cabarrus County offers both an interactive online map and downloadable GIS data. Data downloads are in Shapefile format and include addresses, county zoning, park areas, etc. In the interactive map, users can search parcels by owner name, address, and property ID number. Users can also navigate with the map and select parcels by clicking on them. The map provides information such as owner name, address, property value, and sale records.				\N		t	27	27	2013-10-18 16:25:28.704794-04	2013-11-18 14:18:45.804965-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	359	2013-10-18	\N
123	Greenville Police Case Reports 	greenville-police-case-reports	Case Reports by Greenville Police 	\N			Web page has PDF files for daily case reports. \r\n\r\nFirst half of daily case report dataset shows case number, date and time reported, incident type, offense address, and case status and disposition. Second half of dataset shows detailed reports.\r\n	(252) 329-4324	haden@greenvillenc.gov	http://www.greenvillenc.gov/departments/police_dept/default.aspx?id=2674	2		t	27	27	2013-10-20 18:03:11.233791-04	2013-11-18 14:18:51.561286-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-18	2013-07-15
125	Greenville Police Drug Arrest Reports	greenville-police-drug-arrest-reports	Drug Arrest Reports by Greenville Police 	\N			Web page has PDF files for drug arrests. \r\n\r\nDrug arrest report dataset shows name, date of birth, arrest date, and arrest number. This report is organized alphabetically by last name. 	(252) 329-4324	haden@greenvillenc.gov	http://www.greenvillenc.gov/departments/police_dept/default.aspx?id=2674	2		t	27	27	2013-10-20 18:10:09.508459-04	2013-11-18 14:18:52.018247-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-18	1999-01-01
126	Greenville Police Crime Mapping	greenville-police-crime-mapping	Crime Mapping of Greenville 	\N			Crime mapped data allows users to search by address, event type, offender type, and date range. When users select a point on the map, they are shown the event type, IR number, crime, date, time, public address, and agency. 	(252) 329-4324	haden@greenvillenc.gov	http://www.greenvillenc.gov/departments/police_dept/default.aspx?id=2674	2		t	27	27	2013-10-20 18:13:22.727152-04	2013-11-18 14:18:52.540476-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-18	2009-06-08
127	Lexington Police Reports 	lexington-police-reports	Police Incident Reports by Lexington Police	\N			Web page shows incident reports. Users can search by date, name, location, case number, and city district. \r\n\r\nFirst page shows date, time, type of incident, arrestee, charge, and location. Users click on the PDF link under "view" to see the full report. 	336-243-3302	TWKepley@LexingtonNC.gov	http://www.lexingtonnc.net/index.aspx?page=374	1		t	27	27	2013-10-20 20:21:38.419826-04	2013-11-18 14:18:52.999632-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-20	2000-01-01
128	Greensboro Police Records	greensboro-police-records	Searchable web app of police reports for Greensboro, NC	\N			This website contains a data set of police reports from Greensboro searchable by accident, arrest or incident, case number, date occurred, date reported, name and address. \r\n-Some listings are available in PDF format. 	336-373-2222		http://www.greensboro-nc.gov/index.aspx?page=1045	1		t	27	27	2013-10-20 20:26:33.022464-04	2013-11-18 14:18:53.460297-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	1988-01-01	2013-10-20
129	Hickory Police Reports 	hickory-police-reports	Police Incident Reports by Hickory Police 	\N			Web page allows users to search for police incident reports. \r\n\r\nUsers can search by date, name, location, case number, and beat.\r\n\r\nFirst page shows date, time, type of incident, arrestee, charge, and location. Users click on the PDF link under "report" to see the full details of the report. 	828-261-2600	tadkins@hickorync.gov	http://www.hickorync.gov/egov/apps/staff/directory.egov	1		t	27	27	2013-10-20 20:55:49.557529-04	2013-11-18 14:18:54.159828-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-20	2004-03-01
130	Rowan GIS	rowan-gis	Property records for Rowan County	\N			-Rowan County offers both downloadable GIS data. Downloads include topography, property data, electoral data, etc. \r\n-Most entries are .zip files. \r\n	704-216-8588 			\N		t	27	27	2013-10-20 23:44:12.662568-04	2013-11-18 14:18:54.59722-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	\N	\N
122	Lee County Property Data	lee-county-property-data	GIS data and tax records for Lee County	\N			Lee County offers both downloadable GIS shapefiles and a searchable map for property records. The database can search by owner, address, parcel ID, PIN, and latitude/longitude. The GIS data comes in shapefiles, metadata, and snapshots, and the data offered is grouped into categories such as infrastructure, jurisdiction, schools, census, political, and more. Sales data is offered from January 2001-December 2011 in Excel format.	919-718-4663	dkovasckitz@leecountync.gov		3		t	27	27	2013-10-20 14:17:34.010703-04	2013-11-18 14:18:55.044293-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		3	\N	2013-09-06	2006-01-30
131	Lincoln County Property Data	lincoln-county-property-data	GIS data and tax records for Lee County	\N			Lincoln County offers both downloadable GIS shapefiles and an online GIS mapping tool. The map can be searched by owner, address, parcel ID, PIN, and more, as well as by sales data and parcels. The GIS shapefiles offered include addresses, parcels, streets, zoning, and more. Sales data is also offered in Excel format.	(704) 736-8542	psetzer@lincolncounty.org		3		t	27	27	2013-10-21 03:20:02.390264-04	2013-11-18 14:18:55.469774-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		106	\N	2013-09-27	\N
8	Chapel Hill Police Reports	chapel-hill-police-reports	Incident, arrest and accident	\N			The RMS of the Chapel Hill Police Department contains information about arrests, incidents and accidents. The name of the database is the ONESolution Records Management System and the vendor is SunGard Public Sector. \r\n\r\nThe website allows visitors to search accidents, incidents and arrests. Results of report index information are returned in HTML format with links to PDF versions of the paper reports. PDFs of accident reports are not available online.	919-968-2760	kgunter@townofchapelhill.org	http://www.ci.chapel-hill.nc.us/index.aspx?page=668	1		t	27	27	2013-08-21 21:14:12.276525-04	2013-11-18 14:18:55.881505-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-08-21	2011-08-31
132	This is not public anymore	this-is-not-public-anymore	wysiwyg	\N			\n        <ol><li>Pretty cool ain't it?<br></li><li>But very basic too</li></ol><div><font size="5">This is not super cool anymore</font></div>				2		f	27	27	2013-11-18 13:15:39.344973-05	2013-11-18 14:18:56.823124-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		1	\N	2013-11-18	2013-11-18
55	Surry County Food Establishment Inspections	surry-county-food-establishment-inspections	Health Department inspections for Surry County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	336-401-8400	anges@co.surry.nc.us	http://www.surry.com/Food--Lodging-and-Institutional-Sanitation	\N		t	27	27	2013-10-05 16:02:24.434214-04	2013-11-18 14:18:20.118052-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	state		8	362	\N	\N
63	Cherokee County Food Establishment Inspections	cherokee-county-food-establishment-inspections	Food safety inspections for establishments in Cherokee County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.\r\n\r\nThe third page shows a description of each specific violation, along with the inspector's comments. Each violation includes a "violation item" number and the number of points deducted for each violation.	828-835-3853		http://www.cherokeecounty-nc.gov/index.aspx?page=112	5		t	27	27	2013-10-06 13:14:37.730462-04	2013-11-18 14:18:37.183027-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2010-03-01	2006-01-01
71	Alexander County Property Sales	alexander-county-property-sales	Property sales in Alexander County	\N			Searchable map of property in Alexander County. Properties are searchable by owner name, PIN, parcel ID, and address. Properties are also selectable by navigating with the map. The app offers information such as acreage, building and land value, last sale date, and last sale price.				1		t	27	27	2013-10-08 12:25:41.624741-04	2013-11-18 14:18:37.70203-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	\N	\N
103	Wake County Police Reports	wake-county-police-reports	Searchable police records for Wake County	\N			This is a searchable database for police records in Wake County. You can search by date, location, or name. This data set contains records from the Garner Police Department, the Holly Springs Police Department, Wake County Sheriff's Office, Knightdale Police Department, Wendell Police Department, Zebulon Police Department, Wake County Board of Alcoholic Control, and the City/County Board of Identification.				1		t	27	27	2013-10-17 22:37:52.205263-04	2013-11-18 14:18:42.00298-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		21	\N	2013-10-17	1989-05-10
104	Morrisville Crime Records	morrisville-crime-records	Arrest records for Morrisville	\N			This data set contains arrest reports for Morrisville, provided by SpotCrime. You can search from crimes by city and enter your email to get updates. If you click on an individual record, the website will tell you the date, time, location, and charge of the arrest.				3		t	27	27	2013-10-17 23:16:13.333911-04	2013-11-18 14:18:42.460402-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-14	2013-08-07
108	Gaston County GIS	gaston-county-gis	Property records for Gaston County	\N			Gaston County offers both an interactive online map and downloadable GIS data.\r\n\r\nThe downloadable data costs money to access. Users can contact IT GIS using the contact information provided below for information and pricing on GIS data.\r\n\r\nIn the interactive map, users can search by parcel number, owner name, address, and several other fields. Users can also navigate with the map and select parcels using the "Identify Parcel" tool in the top toolbar. The map provides information on parcels such as owner name, acreage, total value, etc.	704.810.5820	gis@co.gaston.nc.us		\N		t	27	27	2013-10-18 16:00:46.001756-04	2013-11-18 14:18:44.224652-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	\N	\N
109	Union County GIS	union-county-gis	Property records for Union County	\N			Union County offers both an interactive online map and downloadable GIS data. Downloadable data is available in Shapefile format and includes files such as roads, parcels, structures, etc. With the interactive map, users can search parcels by owner name, account number, address, road, etc. Users can also navigate with the map and double-click on parcels to learn more about them. The map offers parcel data such as owner name, tax value, sale records, etc.		gishelp@co.union.nc.us		\N		t	27	27	2013-10-18 16:09:17.622433-04	2013-11-18 14:18:44.670398-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	359	2013-09-17	\N
62	Perquimans County Food Establishment Inspections	perquimans-county-food-establishment-inspections	Health Department inspections for Perquimans County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	252-426-2100		http://www.arhs-nc.org/services/ehs/	2		t	27	27	2013-10-05 21:29:10.757546-04	2013-11-18 14:18:23.494789-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-09-30	2012-08-02
72	Pitt County Food Establishment Inspections	pitt-county-food-establishment-inspections	Health Department inspections for Pitt County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. It explains the different inspection categories, techniques and ratings. Users can search by establishment name.\r\n\r\nThe inspection report - which can be accessed by simply clicking on the establishment name - shows the inspection date, score and frequency, and the type and number of violations. 	252.902.3200	http://www.pittcountync.gov/apps/email/?address=pittinfo	http://www.pittcountync.gov/apps/email/?address=pittinfo	2		t	27	27	2013-10-08 19:11:01.922666-04	2013-11-18 14:18:27.899126-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2010-11-30
74	Currituck County Governmental Maps	currituck-county-governmental-maps	Property records for Currituck County	\N			Currituck County offers property data both in a web-based map format and as downloadable GIS data. With the interactive map, users can search properties by parcel ID number, global PIN, owner, address, street, subdivision, and sale information. Users can also select properties by navigating the map itself. The "identify" feature of the left-side toolbar allows users to pick properties from the map and view information about them. Currituck County also offers downloadable GIS parcel data and street centerline data. As of Oct. 8, 2013, the downloadable data had last been updated in April 2013.				\N		t	27	27	2013-10-08 19:30:09.164791-04	2013-11-18 14:18:28.35578-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	\N	\N
75	Henderson County Food Establishment Inspections	henderson-county-food-establishment-inspections	Health Department inspections for Pender County	\N			These web pages that open as PDF files - one for restaurant grades and another for food stand grades - give establishment names, inspection dates and scores for restaurants and other food establishments in Henderson County. \r\n\r\nThe data ranges from April to June 2013.	(828) 692-4223			5		t	27	27	2013-10-08 19:31:36.457506-04	2013-11-18 14:18:28.789845-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-06-26	2013-04-01
82	Halifax County Property Records	halifax-county-property-records	Property records for Halifax County	\N			Halifax County offers both downloadable GIS data and a property search tool which leads to an interactive online map. The GIS data is bundled into a single ZIP file that includes parcel and road data. With the property search tool, users can search properties by address, owner name, parcel number, etc. Users can also "search by map," which directs to an interactive map. Users can navigate with the map and select properties using the "Get Info" tool in the top toolbar. The service provides information such as owner name, address, assessed land value, and assessed building value.	252.583.2121 (Halifax Co. Tax Office)	hawkinsd@halifaxnc.com (Doris Hawkins, GIS Coord.)		2		t	27	27	2013-10-09 10:38:49.623338-04	2013-11-18 14:18:31.468466-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		106	\N	2013-10-05	\N
83	Johnston County Food Establishment Inspections	johnston-county-food-establishment-inspections	Health Department inspections for Johnston County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, address, city, type, zipcode, and violations. \r\n\r\nThe inspection report - which can be accessed by simply clicking on the establishment name - shows the inspection date, score and frequency, and the type and number of violations. 	Phone: (919) 989-5200	health_dept@johnstonnc.com	http://johnston.nc.gegov.com/contact.cfm	1		t	27	27	2013-10-10 00:18:55.544261-04	2013-11-18 14:18:32.182852-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-09	1993-01-05
7	Davie County Real Property Tax Data	real-property-tax-data	ArcGIS geodatabase of property data, including sales	\N			"Each geodatabase consists of a polygon layer(bitek_view_fc) and (5) tables(buildings, building sub ‐ areas, sale, land, and obxf). The records in each table are related to the parcel polygons through a Parcelid field. In this way, the parcels can be viewed on the map, and each table can be opened and queried for specific data like number of bedrooms, number of bathrooms, year built, etc... The geodatabase was selected as the preferred method of distributing the data in order to preserve the one ‐ to ‐ many relationship between parcel polygons and the appraisal data. In addition, the Appraisal Manual is also available for download. The manual lists code values and descriptions for the content in the appraisal tables."	336 ‐ 753 ‐ 6056	john.gallimore @ co.davie.nc.us	http://www.daviecountync.gov/index.aspx?NID=322	3		t	27	27	2013-08-21 20:36:31.880534-04	2013-11-18 14:17:58.19084-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		105	359	2013-08-21	\N
29	Chatham County Food Establishment Inspections	chatham-county-food-establishment-inspections	Food safety inspections for Chatham County establishments	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.\r\n\r\nThe third page shows a description of each specific violation, along with the inspector's comments. Each violation includes a "violation item" number and the number of points deducted for each violation.		howard.surface@chathamnc.org	http://www.chathamnc.org/Index.aspx?page=542	1		t	27	27	2013-10-04 21:29:34.930903-04	2013-11-18 14:18:07.342026-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2007-03-01
31	Camden County Food Establishment Inspections 	camden-county-food-establishment-inspections	Health Department inspections for Camden County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	252-338-4460		http://www.arhs-nc.org/	2		t	27	27	2013-10-04 22:35:57.365107-04	2013-11-18 14:18:08.228202-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-01	2012-08-03
34	Cumberland County Food Establishment Inspections	cumberland-county-food-establishment-inspections	Health Department inspections for Cumberland County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	910-433-3622		http://www.co.cumberland.nc.us/health/services/environmental.aspx	1		t	27	27	2013-10-04 23:11:32.665026-04	2013-11-18 14:18:09.627372-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2011-02-25
37	Davidson County Food Establishment Inspections	davidson-county-food-establishment-inspections	Health Department inspections for Davidson County 	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	336-242-2300		http://www.dchdnc.com/Environmental%20Health.html	1		t	27	27	2013-10-04 23:47:05.696639-04	2013-11-18 14:18:10.762249-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2006-03-08
53	Scotland County Food Establishment Inspections	scotland-county-food-establishment-inspections	Health Department inspections for Scotland County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	910-277-2415	inspections@scotlandcounty.org	http://www.scotlandcounty.org/inspections.aspx	1		t	27	27	2013-10-05 15:48:19.29785-04	2013-11-18 14:18:19.185775-05							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-09-30	2007-02-19
\.


--
-- Data for Name: catalog_resource_categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_resource_categories (id, resource_id, category_id) FROM stdin;
167	101	16
168	102	16
169	103	6
171	104	6
172	105	6
173	106	6
175	107	16
176	108	16
177	109	16
179	110	16
180	111	16
15	4	2
16	4	11
17	4	14
18	5	16
181	112	16
182	113	6
183	114	6
184	115	6
185	116	6
186	117	11
187	118	11
188	119	16
189	120	16
28	12	6
190	121	16
30	11	6
32	10	6
33	9	6
34	8	6
35	7	16
36	6	2
37	2	15
38	1	16
193	124	6
194	123	6
195	125	6
196	126	6
197	127	6
198	128	6
46	15	11
47	16	11
199	129	6
200	130	16
50	18	11
51	19	11
201	122	16
56	17	11
58	20	11
59	22	11
60	23	11
61	24	11
62	25	11
63	26	11
65	27	11
67	28	11
68	29	11
69	30	11
70	31	11
71	32	11
72	33	11
73	34	11
75	36	11
76	37	11
77	38	11
78	39	11
79	40	11
80	41	11
81	42	11
82	43	11
83	35	11
84	44	11
85	45	11
87	46	11
88	47	11
89	48	11
90	49	11
91	50	11
92	51	11
93	52	11
94	53	11
95	54	11
96	55	11
97	56	11
98	57	11
99	58	11
100	59	11
101	60	11
102	61	11
103	62	11
105	64	11
106	65	11
112	14	11
113	67	6
114	68	11
115	69	11
117	70	6
120	73	16
121	72	11
122	74	16
123	75	11
124	76	16
127	78	16
128	79	16
129	80	16
130	81	16
131	82	16
132	83	11
134	85	6
135	84	6
137	87	6
144	91	6
145	89	6
146	90	6
147	92	6
148	93	6
149	94	11
154	63	11
155	71	16
156	95	16
157	96	16
158	97	16
163	98	16
164	99	16
166	100	6
203	131	16
206	132	1
207	132	2
\.


--
-- Name: catalog_resource_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_resource_categories_id_seq', 207, true);


--
-- Data for Name: catalog_resource_cities; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_resource_cities (id, resource_id, city_id) FROM stdin;
10	12	14
12	11	33
14	10	544
15	9	544
16	8	89
19	67	74
21	70	90
23	78	544
25	84	133
26	87	138
33	91	189
34	89	164
35	90	149
36	93	233
38	100	301
40	104	329
41	105	509
42	106	77
44	107	133
45	113	242
46	114	219
47	115	538
49	124	199
50	123	199
51	125	199
52	126	199
53	127	273
54	128	198
55	129	218
\.


--
-- Name: catalog_resource_cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_resource_cities_id_seq', 55, true);


--
-- Data for Name: catalog_resource_coord_sys; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_resource_coord_sys (id, resource_id, coordsystem_id) FROM stdin;
\.


--
-- Name: catalog_resource_coord_sys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_resource_coord_sys_id_seq', 1, false);


--
-- Data for Name: catalog_resource_counties; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_resource_counties (id, resource_id, county_id) FROM stdin;
14	12	13
16	11	26
18	7	28
19	2	35
20	1	35
28	15	87
29	16	90
32	18	62
33	19	93
38	17	81
40	20	40
41	22	8
42	23	91
43	24	17
44	25	14
45	26	3
47	27	98
49	28	41
50	29	49
51	30	22
52	31	72
53	32	84
54	33	39
55	34	69
56	36	67
57	37	63
58	38	28
59	39	30
60	40	51
61	41	29
62	42	52
63	43	10
64	44	26
65	45	82
67	46	7
68	47	59
69	48	55
70	49	65
71	50	77
72	51	53
73	52	37
74	53	68
75	54	4
76	55	66
77	56	25
78	57	74
79	58	13
80	59	48
81	60	73
82	61	15
83	62	86
85	64	38
86	65	54
92	14	64
93	67	16
94	69	16
96	70	52
99	73	13
100	72	19
101	75	79
102	76	28
104	78	29
105	79	82
106	80	45
107	81	89
108	82	75
109	83	12
110	85	51
112	92	80
113	93	52
114	94	11
119	63	6
120	71	99
121	95	52
122	96	8
123	97	10
127	98	69
128	99	47
129	101	3
130	102	7
131	103	8
133	107	51
134	108	26
135	109	78
137	110	88
138	111	56
139	112	12
140	115	47
141	116	53
142	117	61
143	118	76
144	119	46
145	120	79
146	121	62
148	130	53
149	122	40
151	131	87
153	132	48
\.


--
-- Name: catalog_resource_counties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_resource_counties_id_seq', 153, true);


--
-- Data for Name: catalog_resource_data_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_resource_data_types (id, resource_id, datatype_id) FROM stdin;
176	101	1
177	101	3
178	102	1
179	102	3
180	103	3
182	104	3
183	105	3
184	106	1
187	107	1
13	4	1
14	5	1
188	107	3
189	108	1
190	108	3
191	109	1
192	109	3
195	110	1
196	110	3
24	12	3
197	111	1
26	11	3
198	111	3
28	10	3
29	9	3
30	8	3
31	7	1
32	6	1
33	2	1
34	1	1
199	112	1
200	112	3
201	113	3
202	114	3
203	115	3
204	116	2
205	116	3
42	15	3
43	16	3
206	117	1
207	118	3
46	18	3
47	19	3
208	119	1
209	119	3
210	120	1
211	120	3
52	17	3
212	121	1
54	20	3
55	22	3
56	23	3
57	24	3
58	25	3
59	26	3
213	121	3
61	27	3
63	28	3
64	29	3
65	30	3
66	31	3
67	32	3
68	33	3
69	34	3
71	36	3
72	37	3
73	38	3
74	39	3
75	40	3
76	41	3
77	42	3
78	43	3
79	35	3
80	44	3
81	45	3
83	46	3
84	47	3
85	48	3
86	49	3
87	50	3
88	51	3
89	52	3
90	53	3
91	54	3
92	55	3
93	56	3
94	57	3
95	58	3
96	59	3
97	60	3
98	61	3
99	62	3
217	124	1
101	64	3
102	65	3
218	123	1
219	125	1
220	126	3
221	127	3
222	128	3
108	14	3
109	67	3
110	68	3
111	69	1
223	129	3
113	70	3
224	130	1
225	122	1
116	73	1
117	73	3
118	72	3
119	74	1
120	74	3
121	75	1
122	75	3
123	76	1
226	122	3
126	78	1
127	79	1
128	79	3
129	80	1
130	80	3
131	81	1
132	82	1
133	82	3
134	83	3
136	85	3
137	84	3
139	87	3
146	91	3
147	89	3
148	90	3
149	92	3
150	93	3
151	94	3
156	63	3
157	71	3
158	95	1
159	95	3
160	96	1
161	96	3
162	97	1
163	97	3
171	98	1
172	98	3
173	99	1
175	100	3
229	131	1
230	131	3
232	132	2
\.


--
-- Name: catalog_resource_data_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_resource_data_types_id_seq', 232, true);


--
-- Name: catalog_resource_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_resource_id_seq', 132, true);


--
-- Data for Name: catalog_updatefrequency; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_updatefrequency (id, update_frequency) FROM stdin;
1	At least once a day
2	At least once a week
3	At least once a month
4	At least once a year
5	It is not updated after it's created
\.


--
-- Name: catalog_updatefrequency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_updatefrequency_id_seq', 5, true);


--
-- Data for Name: catalog_url; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_url (id, url, url_label, url_type_id, resource_id) FROM stdin;
1	http://www.columbusco.org/sales.xls	2013 Property Sales	11	1
2	http://www.columbusco.org/GISData/parcels.zip	Parcels	15	2
4	http://ehs.ncpublichealth.com/browsablemedia/	.ttx files on DHHS website	16	4
5	ftp://ftp.nconemap.com/outgoing/vector/NCMasterAddress_area01_shp.zip	Area 1 Shapefile	15	5
6	ftp://ftp.nconemap.com/outgoing/vector/NCMasterAddress_area01_maf.zip	Area 1 MAF	17	5
7	http://www.secretary.state.nc.us/corporations/SearchChgs.aspx	Web search app	16	6
8	http://maps.co.davie.nc.us/developmentservices/gisftp/DavieCo_parceldata_pgdb.zip	GIS Geodatabase	18	7
9	http://maps.co.davie.nc.us/developmentservices/gisftp/DavieCo_parceldata_filegdb.zip	Microsoft Access file	19	7
10	https://api.scraperwiki.com/api/1.0/datastore/sqlite?format=csv&name=chapel_hill_police_reports&query=select+*+from+%60swdata%60&apikey=	Open-NC.org's ScraperWiki CSV	9	8
11	https://api.scraperwiki.com/api/1.0/datastore/sqlite?format=json&name=chapel_hill_police_reports&query=select+*+from+%60swdata%60&apikey=	Open-NC.org's ScraperWiki JSON	12	8
12	https://classic.scraperwiki.com/scrapers/export_sqlite/chapel_hill_police_reports/	Open-NC.org's ScraperWiki SQLite database	20	8
13	http://p2c.chpd.us/Summary.aspx	Chapel Hill PD Web App	1	8
14	http://www.wspdp2c.org/Summary.aspx	label	1	9
15	http://www.wspdp2c.org/wantedlist.aspx	label	1	10
17	https://www.crimereports.com/	Crime Reports.com	18	12
16	http://belmontnc.policereports.us/	Web search app	13	11
19	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=57	Web search app	1	16
20	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=55	Web search app	1	15
21	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=56	Web search app	1	17
22	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=49	Web search app	1	18
23	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=59	Web search app	1	19
24	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=53	Web search app	1	20
26	http://wake.digitalhealthdepartment.com/qsearch.cfm	Web search app	1	22
27	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=5	Web search app	1	23
28	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=7	Web search app	1	24
29	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=8	Web search app	1	25
30	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=1	Web search app	1	26
31	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=3	Web search app	1	27
32	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=18	Web search app	1	28
33	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=19	Web search app	1	29
34	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=10	Web search app	1	30
35	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=15	Web search app	1	31
36	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=22	Web search app	1	32
37	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=25	Web search app	1	33
38	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=26	Web search app	1	34
39	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=27	Web search app	1	35
40	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=28	Web search app	1	36
41	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=29	Web search app	1	37
42	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=30	Web search app	1	38
43	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=31	Web search app	1	39
44	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=32	Web search app	1	40
45	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=34	Web search app	1	41
46	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=60	Web search app	1	42
47	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=41	Web search app	1	43
48	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=36	Web search app	1	44
49	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=37	Web search app	1	45
50	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=43	Web search app	1	46
51	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=66	Web search app	1	47
52	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=75	Web search app	1	48
53	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=77	Web search app	1	49
54	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=78	Web search app	1	50
55	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=80	Web search app	1	51
56	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=81	Web search app	1	52
57	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=83	Web search app	1	53
58	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=84	Web search app	1	54
59	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=86	Web search app	1	55
60	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=95	Web search app	1	56
61	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=97	Web search app	1	57
62	http://buncombe.digitalhealthdepartment.com/reports.cfm	Web search app	1	58
63	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=68	Web search app	1	59
64	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=70	Web search app	1	60
65	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=71	Web search app	1	61
66	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=72	Web search app	1	62
67	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=20	Web search app	1	63
68	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=77	Web search app	1	64
70	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=50	Web search app	1	14
71	http://capecarteretnc.policereports.us/index.html	Web search app	1	67
72	http://cabarrus.nc.gegov.com/index.cfm	Web app	1	68
73	http://www.carteretcountyhealth.org/EH/files/Web%20Grades%202013.pdf	Data	13	69
74	http://cmpdcrime.policereports.us/index.html	Web search app 	1	70
75	http://maps.co.alexander.nc.us/maps/	Web search app	1	71
76	http://www.pittcountync.gov/depts/health/apps/restrate/	Web app	1	72
77	http://www.buncombecounty.org/Governing/Depts/GIS/Disclaimer.aspx	Searchable map	1	73
78	http://www.buncombecounty.org/Governing/Depts/GIS/DataDownload.aspx	Data downloads	1	73
79	http://www.co.currituck.nc.us/MapsDup2.cfm	Link to downloadable data and web map	1	74
80	http://www.hendersoncountync.org/health/web_pages/environmental_health/restaurant_grades.html	Web app	1	75
81	http://www.hendersoncountync.org/health/documents/environmental_health/grades/2013/restaurant-grades-for%20paper_2013_april-june.pdf	Restaurant grades	13	75
82	http://www.hendersoncountync.org/health/documents/environmental_health/grades/2013/food_stand-grades-for%20paper_2013_april-june.pdf	Food stand grades	13	75
83	http://www.daviecountync.gov/index.aspx?NID=394	Data download	1	76
85	http://www.cityofws.org/departments/planning/gis/gis-data-sets-for-download	Data download	1	78
86	http://www.gatescountygis.com/downloads/tabid/54/Default.aspx	Data download	1	79
87	http://www.gatescountygis.com/mapguide/gatesgis/	Interactive map	1	79
88	http://www.granvillegis.org/Downloads/tabid/55/Default.aspx	Data download	1	80
89	http://www.granvillegis.org/mapguide/granvillegis/	Interactive map	1	80
90	http://www.co.greene.nc.us/gisdownload.aspx	Data download	1	81
91	http://www.halifaxnc.com/index.php?option=com_content&view=article&id=48&Itemid=48	Data download	1	82
92	http://gis.halifaxnc.com/search.html	Property search app	1	82
93	http://johnston.nc.gegov.com/qsearch.cfm	Web app	1	83
94	http://gisweb.durhamnc.gov/gis_apps/crimedata/dsp_entryform.cfm	Crime Mapper HTML search	1	84
96	http://gisweb.durhamnc.gov/gis_apps/crimedata/dsp_entryform.cfm	Crime Mapper HTML search	1	85
97	http://www.raidsonline.com/?agency=Durham,NC	Raids Online App	21	85
95	http://www.raidsonline.com/?agency=Durham,NC	Raids Online App	21	84
99	http://www.eastspencerpolice.blogspot.com	Blog Page	1	87
101	http://p2c.ci.fayetteville.nc.us/p2c/Summary.aspx	Web search app	1	89
102	http://www.ci.goldsboro.nc.us/police/pd_default.aspx	Web search app	1	91
103	http://elonnc.policereports.us/index.html	Web search app	1	90
104	http://grahamnc.policereports.us/search.html	Web search app	1	92
105	http://huntersvillenc.policereports.us/index.html	Web search app	1	93
106	http://www.co.randolph.nc.us/ph/grade.aspx	Web app	1	94
107	http://maps.co.mecklenburg.nc.us/openmapping/data.html	Data download	1	95
108	http://maps.co.mecklenburg.nc.us/edgis/	Interactive map	1	95
109	http://meckcama.co.mecklenburg.nc.us/relookup/	Lookup by owner name	1	95
110	http://www.wakegov.com/gis/services/pages/data.aspx	Data download	1	96
111	http://maps.raleighnc.gov/IMAPS/index.html	Interactive map	1	96
112	http://gisdv.co.guilford.nc.us/guilfordsl/	Interactive map	1	97
113	http://www.co.guilford.nc.us/gisftp.php	Data download	1	97
114	http://www.arcgis.com/explorer/?open=271090d98ae14d7fb2d8b20f878114c3	Interactive map	1	98
115	http://expo.co.cumberland.nc.us/downloads.html	Data download	1	98
118	http://www.nhcgov.com/Pages/GISData.aspx?View=%7B7cb6ddb3-cfbf-4f39-bbe6-6018ff26bac4%7D&SortField=File_x0020_Size&SortDir=Asc	Data download	1	99
119	http://matthewsnc.gov/Departments/Police/CrimeMap.aspx	RAIDS online Crime Map	1	100
120	http://www.alamance-nc.com/d/gis/gis-downloads.html	GIS Downloadable data	15	101
121	http://alamance.ustaxdata.com	Searchable property database	1	101
122	http://gisportal.harnett.org/Downloads/tabid/54/Default.aspx	GIS Downloadable data	15	102
123	http://cama.harnett.org/RealEstate.aspx	Searchable property database	1	102
124	http://p2c.wakeso.net/Summary.aspx	Wake County Police Records Web App	1	103
125	http://spotcrime.com/nc/morrisville	Morrisville Crime Report Web App	1	104
126	http://p2c.wakeforestnc.gov/p2c/Summary.aspx	Wake Forest Police Records Searchable Web App	1	105
127	http://www.ci.carrboro.nc.us/pd/bulletin.htm	Carrboro Police Bulletins	1	106
128	http://durhamnc.gov/ich/as/ts/Pages/Distribution-Policies.aspx	Data download ($$)	1	107
129	http://gisweb.durhamnc.gov/gomaps/map/index.cfm	Interactive map	1	107
130	http://www.gastongov.com/maps	Info on data download ($$)	1	108
131	http://egov1.co.gaston.nc.us/website/ParcelDataSite/viewer.htm	Interactive map	1	108
132	http://www.co.union.nc.us/Divisions/GISMaps/DownloadableData.aspx	Data download	1	109
133	http://gisapps.co.union.nc.us/community-mapper/	Interactive map	1	109
134	http://maps.onslowcountync.gov/download/index.cfm?	Data download	1	110
135	http://maps2.roktech.net/onslow/#	Interactive map	1	110
136	http://www.cabarruscounty.us/government/departments/information-technology/Pages/Data-Services.aspx	Data download	1	111
137	http://gis.cabarruscounty.us/mycabarrusgis/	Interactive map	1	111
138	http://www.johnstonnc.com/gis2/content.cfm?PD=data	Data download	1	112
139	http://152.31.96.18/prod/	Interactive map	1	112
140	http://kannapolisp2c.com/p2c/main.aspx	Web search app	1	113
141	http://p2c.high-point.net/main.aspx	Web search app	1	114
142	http://p2c.wilmingtonnc.gov/Summary.aspx	Web search app	1	115
143	http://ossip2c.rowancountync.gov/p2c/Summary.aspx	Web search app	1	116
144	https://classic.scraperwiki.com/scrapers/rowan_county_police_reports/	Scraperwiki	20	116
145	http://www.co.stokes.nc.us/health/food.pdf	PDF File 	13	117
146	http://www.waynehealthdept.org/inspections	Web search app	1	118
147	http://maps.haywoodnc.net/downloads/default.aspx	GIS downloadable data	15	119
148	http://maps.haywoodnc.net/gisweb/default.htm	Searchable map	1	119
149	http://www.hendersoncountync.org/gis/gisdownload.html	Data Download	15	120
150	http://taxinfo.hendersoncountync.org/propertysearch/	Searchable property database	1	120
151	http://iredell.connectgis.com/Map.aspx	Searchable map	1	121
152	http://www.co.iredell.nc.us/Departments/GISMaps/datadownloads.aspx	GIS downloadable data	15	121
153	http://www.leecountync.gov/Departments/GISStrategicServices/DownloadGISLayers.aspx	GIS downloadable data	15	122
154	http://lee2.connectgis.com/Map.aspx	Interactive searchable map	1	122
155	http://www.leecountync.gov/Departments/GISStrategicServices/SalesData/tabid/294/Default.aspx	Sales Data	11	122
156	http://www.greenvillenc.gov/departments/police_dept/online_reports/cases/reports/CaseReports.pdf	Daily Case Reports PDF 	13	123
157	http://www.greenvillenc.gov/departments/police_dept/online_reports/arrests/reports/ArrestReports.pdf	Arrest Reports PDF	13	124
158	http://www.greenvillenc.gov/departments/police_dept/online_reports/drugarrests/reports/DRUGARRESTREPORT.pdf	Drug Arrest Reports PDF	13	125
159	http://www.raidsonline.com/?address=Greenville%2CNC	Crime Map Web search app	1	126
160	http://dev.lexingtonnc.net/p2c/Summary.aspx	Web search app	1	127
161	http://p2c.greensboro-nc.gov/Summary.aspx	Web search app	1	128
162	http://www.hickorypd.net/p2c/Summary.aspx	Web search app	1	129
163	http://www.rowancountync.gov/GOVERNMENT/Departments/PlanningDevelopment/DataDownloads.aspx?m=f#dltop	Web data 	1	130
164	http://www.lincolncounty.org/index.aspx?NID=470	GIS and Sales Data	15	131
165	http://www.lincolncounty.org/index.aspx?NID=289	GIS Online Map	1	131
\.


--
-- Name: catalog_url_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_url_id_seq', 165, true);


--
-- Data for Name: catalog_urlimage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_urlimage (id, image, title, source, source_url, resource_id) FROM stdin;
1	url_images/4/Screen Shot 2013-08-21 at 7_1.39	title	source	sourceurl	4
2	url_images/5/Screen Shot 2013-08-21 at 7_1.58	title	source	sourceurl	5
3	url_images/6/Screen Shot 2013-08-21 at 8_1.16	title	source	sourceurl	6
4	url_images/7/Screen Shot 2013-08-21 at 8_1.35	title	source	sourceurl	7
5	url_images/8/Screen Shot 2013-08-21 at 9_1.13	title	source	sourceurl	8
6	url_images/8/Screen Shot 2013-08-21 at 9_1_1.13	titel	source	sourceurl	8
7	url_images/9/Screen Shot 2013-09-06 at 2_1.54	title	source	http://www.wspdp2c.org/Summary.aspx	9
8	url_images/10/Screen Shot 2013-09-06 at 3_1.19	title	source	http://www.wspdp2c.org/wantedlist.aspx#	10
10	url_images/12/Screen Shot 2013-09-22 at 5_1.09	Crime Reports.com	Individual, participating police departments	https://www.crimereports.com/	12
9	url_images/11/Screen Shot 2013-09-30 at 11_1.01	Belmont Police Department Crime Reports	Belmont Police Department	http://belmontnc.policereports.us/	11
12	url_images/16/Screen Shot 2013-10-04 at 11_1.15	image			16
13	url_images/15/Screen Shot 2013-10-04 at 11_1.19	url title	source	source url	15
14	url_images/18/IredellFoodInspections_1.JPG	url title	source	source url	18
15	url_images/19/Screen Shot 2013-10-04 at 11_1.27	image			19
17	url_images/20/Screen Shot 2013-10-04 at 11_1.33				20
18	url_images/17/Macon County SS_1_1.png				17
20	url_images/22/Screen Shot 2013-10-04 at 6_1.14				22
21	url_images/23/Screen Shot 2013-10-04 at 6_1.29				23
22	url_images/24/Screen Shot 2013-10-04 at 6_1.40				24
23	url_images/25/Screen Shot 2013-10-04 at 6_1.49				25
24	url_images/26/Screen Shot 2013-10-04 at 6_1.58				26
25	url_images/27/Screen Shot 2013-10-04 at 7_1.05				27
26	url_images/28/Screen Shot 2013-10-04 at 9_1.20	Title	Source	Source url	28
27	url_images/29/Screen Shot 2013-10-04 at 9_1.22	Title	Source	Source url	29
28	url_images/30/Screen Shot 2013-10-04 at 7_1.14				30
29	url_images/31/Screen Shot 2013-10-04 at 10_1.31				31
30	url_images/32/Screen Shot 2013-10-04 at 10_1.47				32
31	url_images/33/Screen Shot 2013-10-04 at 11_1.00				33
32	url_images/34/Screen Shot 2013-10-04 at 11_1.05				34
33	url_images/35/Screen Shot 2013-10-04 at 11_1.28				35
34	url_images/36/Screen Shot 2013-10-04 at 11_1.35				36
35	url_images/37/Screen Shot 2013-10-04 at 11_1.43				37
36	url_images/38/Screen Shot 2013-10-04 at 11_1.49				38
37	url_images/39/Screen Shot 2013-10-04 at 11_1.53				39
38	url_images/40/Screen Shot 2013-10-05 at 12_1.00				40
39	url_images/41/Screen Shot 2013-10-05 at 12_1.07				41
40	url_images/42/Screen Shot 2013-10-05 at 8_1.35				42
41	url_images/43/Screen Shot 2013-10-05 at 8_1.47				43
42	url_images/44/Screen Shot 2013-10-05 at 8_1.54				44
43	url_images/45/Screen Shot 2013-10-05 at 8_1.58				45
44	url_images/46/Screen Shot 2013-10-05 at 2_1.59				46
45	url_images/47/Screen Shot 2013-10-05 at 3_1.09				47
46	url_images/48/Screen Shot 2013-10-05 at 3_1.17				48
47	url_images/49/Screen Shot 2013-10-05 at 3_1.24				49
48	url_images/50/Screen Shot 2013-10-05 at 3_1.31				50
49	url_images/51/Screen Shot 2013-10-05 at 3_1.36				51
50	url_images/52/Screen Shot 2013-10-05 at 3_1.41				52
51	url_images/53/Screen Shot 2013-10-05 at 3_1.47				53
52	url_images/54/Screen Shot 2013-10-05 at 3_1.53				54
53	url_images/55/Screen Shot 2013-10-05 at 3_1.58				55
54	url_images/56/Screen Shot 2013-10-05 at 4_1.07				56
55	url_images/57/Screen Shot 2013-10-05 at 4_1.13				57
56	url_images/58/Screen Shot 2013-10-05 at 7_1.14				58
57	url_images/59/Screen Shot 2013-10-05 at 7_1.47				59
58	url_images/60/Screen Shot 2013-10-05 at 7_1.55				60
59	url_images/61/Screen Shot 2013-10-05 at 8_1.57				61
60	url_images/62/Screen Shot 2013-10-05 at 9_1.27				62
61	url_images/63/Screen Shot 2013-10-06 at 1_1.10	Title	Source	Source url	63
63	url_images/14/Screen Shot 2013-10-07 at 1_1.21	title	source		14
64	url_images/67/Screen Shot 2013-10-07 at 2_1.38				67
65	url_images/68/Cabarrus County food inspection_1.png				68
66	url_images/69/Carteret County food inspection_1.png				69
67	url_images/70/Screen Shot 2013-10-07 at 11_1.56				70
68	url_images/71/Screen Shot 2013-10-08 at 12_1.25	image			71
69	url_images/72/Pitt county food inspection_1.png				72
70	url_images/73/Screen Shot 2013-10-08 at 7_1.16	image			73
71	url_images/74/Screen Shot 2013-10-08 at 7_1.28				74
72	url_images/75/Henderson county food inspection_1.png				75
73	url_images/76/Screen Shot 2013-10-08 at 7_1.41	image			76
74	url_images/78/Screen Shot 2013-10-09 at 9_1.46	image			78
75	url_images/79/Screen Shot 2013-10-09 at 9_1.53	image			79
76	url_images/80/Screen Shot 2013-10-09 at 10_1.07	image			80
77	url_images/81/Screen Shot 2013-10-09 at 10_1.24	image			81
78	url_images/82/Screen Shot 2013-10-09 at 10_1.33	image			82
79	url_images/83/Johnston County food inspection_1.png				83
80	url_images/84/Screen Shot 2013-10-10 at 10_1.16	title	source	sourceurl	84
81	url_images/85/Screen Shot 2013-10-10 at 10_1.16	title	source	sourceurl	85
83	url_images/89/Screen Shot 2013-10-10 at 2_1.37				89
84	url_images/90/Screen Shot 2013-10-10 at 3_1.02				90
85	url_images/91/Screen Shot 2013-10-10 at 4_1.03				91
86	url_images/92/Screen Shot 2013-10-10 at 9_1.13				92
87	url_images/93/Screen Shot 2013-10-10 at 9_1.45				93
88	url_images/94/randolph county food inspection_1.png				94
89	url_images/95/Screen Shot 2013-10-14 at 3_1.21	image			95
90	url_images/96/Screen Shot 2013-10-14 at 3_1.32	image			96
91	url_images/97/Screen Shot 2013-10-14 at 3_1.42	image			97
92	url_images/98/Screen Shot 2013-10-14 at 4_1.31	image			98
93	url_images/99/Screen Shot 2013-10-15 at 11_1.43	image 			99
94	url_images/100/matthewscrimemap_1.tiff	title	source	url	100
95	url_images/101/alamance property_1.tiff	title	source	url	101
96	url_images/102/harnett property_1.tiff	title	source 	url	102
97	url_images/103/Screen Shot 2013-10-17 at 10_1.34	title	source	source url	103
98	url_images/104/Screen Shot 2013-10-17 at 11_1.17	Title	Source	Source url	104
99	url_images/105/Screen Shot 2013-10-17 at 11_1.43	Title	Source	Source url	105
100	url_images/106/Screen Shot 2013-10-17 at 11_1.53	Title	Source	Source url	106
101	url_images/107/Screen Shot 2013-10-18 at 3_1.46	image			107
102	url_images/108/Screen Shot 2013-10-18 at 3_1.57	image			108
103	url_images/109/Screen Shot 2013-10-18 at 4_1.08	image			109
104	url_images/110/Screen Shot 2013-10-18 at 4_1.11	image			110
105	url_images/111/Screen Shot 2013-10-18 at 4_1.25	image			111
106	url_images/112/Screen Shot 2013-10-18 at 4_1.34	image			112
107	url_images/113/Screen Shot 2013-10-18 at 6_1.07				113
108	url_images/114/Screen Shot 2013-10-18 at 7_1.58				114
109	url_images/115/Screen Shot 2013-10-19 at 8_1.55				115
110	url_images/116/Screen Shot 2013-10-19 at 9_1.36				116
111	url_images/116/Screen Shot 2013-10-19 at 9_1.32				116
112	url_images/117/Screen Shot 2013-10-19 at 10_1.31				117
113	url_images/118/Screen Shot 2013-10-19 at 11_1.48				118
114	url_images/119/haywood property_1.tiff	title	source	url	119
115	url_images/120/henderson property_1.tiff	title	source	url	120
116	url_images/121/iredell property_1.tiff	title	source	url	121
117	url_images/122/lee property_1.tiff	title	source	url	122
118	url_images/123/Screen Shot 2013-10-20 at 5_1.57				123
119	url_images/124/Screen Shot 2013-10-20 at 5_1.52				124
120	url_images/125/Screen Shot 2013-10-20 at 5_1.52				125
121	url_images/126/Screen Shot 2013-10-20 at 5_1.53				126
122	url_images/127/Screen Shot 2013-10-20 at 8_1.19				127
123	url_images/128/Screen Shot 2013-10-20 at 8_1.26				128
124	url_images/129/Screen Shot 2013-10-20 at 8_1.52				129
125	url_images/130/Screen Shot 2013-10-20 at 11_1.43				130
126	url_images/131/lincoln property_1.tiff	title	source	url	131
\.


--
-- Name: catalog_urlimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_urlimage_id_seq', 126, true);


--
-- Data for Name: catalog_urltype; Type: TABLE DATA; Schema: public; Owner: -
--

COPY catalog_urltype (id, url_type) FROM stdin;
1	HTML
2	XML
3	WMS
4	WCS
5	TIFF
6	ZIP
7	MrSID
8	KML
9	CSV
10	WFS
11	Excel
12	JSON
13	PDF
14	XLS
15	Shapefile
16	TTX
17	MAF-ASCII
18	ArcGIS Geodatabase
19	Microsoft Access .mdb
20	SQLite
21	JavaScript
\.


--
-- Name: catalog_urltype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_urltype_id_seq', 21, true);


--
-- Data for Name: celery_taskmeta; Type: TABLE DATA; Schema: public; Owner: -
--

COPY celery_taskmeta (id, task_id, status, result, date_done, traceback, hidden, meta) FROM stdin;
7828	4bc52a43-960c-440b-8335-a9de414da8a2	SUCCESS	\N	2013-11-14 04:00:00.149177-05	\N	f	eJxrYKotZAzlSM7IzEkpSs0rZIotZC7WAwBREgb9
\.


--
-- Name: celery_taskmeta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('celery_taskmeta_id_seq', 7828, true);


--
-- Data for Name: celery_tasksetmeta; Type: TABLE DATA; Schema: public; Owner: -
--

COPY celery_tasksetmeta (id, taskset_id, result, date_done, hidden) FROM stdin;
\.


--
-- Name: celery_tasksetmeta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('celery_tasksetmeta_id_seq', 1, false);


--
-- Data for Name: comments_commentwithrating; Type: TABLE DATA; Schema: public; Owner: -
--

COPY comments_commentwithrating (comment_ptr_id, rating) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 916, true);


--
-- Data for Name: django_comment_flags; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_comment_flags (id, user_id, comment_id, flag, flag_date) FROM stdin;
\.


--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_comment_flags_id_seq', 1, false);


--
-- Data for Name: django_comments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_comments (id, content_type_id, object_pk, site_id, user_id, user_name, user_email, user_url, comment, submit_date, ip_address, is_public, is_removed) FROM stdin;
\.


--
-- Name: django_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_comments_id_seq', 7, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	permission	auth	permission
2	group	auth	group
3	user	auth	user
4	content type	contenttypes	contenttype
5	session	sessions	session
6	site	sites	site
7	comment	comments	comment
8	comment flag	comments	commentflag
9	comment with rating	comments	commentwithrating
10	log entry	admin	logentry
11	migration history	south	migrationhistory
12	city	catalog	city
13	county	catalog	county
14	category	catalog	category
15	data type	catalog	datatype
16	url type	catalog	urltype
17	update frequency	catalog	updatefrequency
18	Coordinate system	catalog	coordsystem
19	resource	catalog	resource
20	url	catalog	url
21	url image	catalog	urlimage
22	request	requests	request
23	suggestion	suggestions	suggestion
24	scribble	scribbler	scribble
25	task state	djcelery	taskmeta
26	saved group result	djcelery	tasksetmeta
27	interval	djcelery	intervalschedule
28	crontab	djcelery	crontabschedule
29	periodic tasks	djcelery	periodictasks
30	periodic task	djcelery	periodictask
31	worker	djcelery	workerstate
32	task	djcelery	taskstate
33	vote	djangoratings	vote
34	score	djangoratings	score
35	similar user	djangoratings	similaruser
36	ignored object	djangoratings	ignoredobject
37	division	catalog	division
38	department	catalog	department
39	kv store	thumbnail	kvstore
40	registration profile	registration	registrationprofile
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_content_type_id_seq', 40, true);


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_site (id, domain, name) FROM stdin;
1	0.0.0.0:9000	open-nc.org
\.


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Data for Name: djangoratings_ignoredobject; Type: TABLE DATA; Schema: public; Owner: -
--

COPY djangoratings_ignoredobject (object_id, id, content_type_id, user_id) FROM stdin;
\.


--
-- Name: djangoratings_ignoredobject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('djangoratings_ignoredobject_id_seq', 1, false);


--
-- Data for Name: djangoratings_score; Type: TABLE DATA; Schema: public; Owner: -
--

COPY djangoratings_score (id, content_type_id, object_id, key, score, votes) FROM stdin;
1	22	1	2c5504ab9a86164db22a92dc8793843d	1	1
2	22	2	2c5504ab9a86164db22a92dc8793843d	1	1
3	22	6	2c5504ab9a86164db22a92dc8793843d	1	1
4	22	7	2c5504ab9a86164db22a92dc8793843d	1	1
5	22	8	2c5504ab9a86164db22a92dc8793843d	0	0
7	22	11	2c5504ab9a86164db22a92dc8793843d	1	1
8	22	12	2c5504ab9a86164db22a92dc8793843d	1	1
9	22	13	2c5504ab9a86164db22a92dc8793843d	1	1
10	22	14	2c5504ab9a86164db22a92dc8793843d	1	1
12	22	16	2c5504ab9a86164db22a92dc8793843d	1	1
13	22	17	2c5504ab9a86164db22a92dc8793843d	1	1
14	22	18	2c5504ab9a86164db22a92dc8793843d	1	1
15	19	2	2c5504ab9a86164db22a92dc8793843d	2	1
17	22	19	2c5504ab9a86164db22a92dc8793843d	1	1
16	19	11	2c5504ab9a86164db22a92dc8793843d	1	1
18	19	9	2c5504ab9a86164db22a92dc8793843d	5	1
19	19	13	2c5504ab9a86164db22a92dc8793843d	4	2
11	22	15	2c5504ab9a86164db22a92dc8793843d	2	2
20	19	70	2c5504ab9a86164db22a92dc8793843d	3	1
6	22	9	2c5504ab9a86164db22a92dc8793843d	2	2
\.


--
-- Name: djangoratings_score_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('djangoratings_score_id_seq', 20, true);


--
-- Data for Name: djangoratings_similaruser; Type: TABLE DATA; Schema: public; Owner: -
--

COPY djangoratings_similaruser (to_user_id, agrees, id, disagrees, from_user_id, exclude) FROM stdin;
\.


--
-- Name: djangoratings_similaruser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('djangoratings_similaruser_id_seq', 1, false);


--
-- Data for Name: djangoratings_vote; Type: TABLE DATA; Schema: public; Owner: -
--

COPY djangoratings_vote (id, content_type_id, object_id, key, score, user_id, ip_address, date_added, date_changed, cookie) FROM stdin;
\.


--
-- Name: djangoratings_vote_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('djangoratings_vote_id_seq', 23, true);


--
-- Data for Name: djcelery_crontabschedule; Type: TABLE DATA; Schema: public; Owner: -
--

COPY djcelery_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year) FROM stdin;
\.


--
-- Name: djcelery_crontabschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('djcelery_crontabschedule_id_seq', 1, false);


--
-- Data for Name: djcelery_intervalschedule; Type: TABLE DATA; Schema: public; Owner: -
--

COPY djcelery_intervalschedule (id, every, period) FROM stdin;
\.


--
-- Name: djcelery_intervalschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('djcelery_intervalschedule_id_seq', 1, false);


--
-- Data for Name: djcelery_periodictask; Type: TABLE DATA; Schema: public; Owner: -
--

COPY djcelery_periodictask (id, name, task, interval_id, crontab_id, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description) FROM stdin;
\.


--
-- Name: djcelery_periodictask_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('djcelery_periodictask_id_seq', 1, false);


--
-- Data for Name: djcelery_periodictasks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY djcelery_periodictasks (ident, last_update) FROM stdin;
\.


--
-- Data for Name: djcelery_taskstate; Type: TABLE DATA; Schema: public; Owner: -
--

COPY djcelery_taskstate (id, state, task_id, name, tstamp, args, kwargs, eta, expires, result, traceback, runtime, retries, worker_id, hidden) FROM stdin;
\.


--
-- Name: djcelery_taskstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('djcelery_taskstate_id_seq', 1, false);


--
-- Data for Name: djcelery_workerstate; Type: TABLE DATA; Schema: public; Owner: -
--

COPY djcelery_workerstate (id, hostname, last_heartbeat) FROM stdin;
\.


--
-- Name: djcelery_workerstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('djcelery_workerstate_id_seq', 1, false);


--
-- Data for Name: registration_registrationprofile; Type: TABLE DATA; Schema: public; Owner: -
--

COPY registration_registrationprofile (id, user_id, activation_key) FROM stdin;
\.


--
-- Name: registration_registrationprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('registration_registrationprofile_id_seq', 12, true);


--
-- Data for Name: requests_request; Type: TABLE DATA; Schema: public; Owner: -
--

COPY requests_request (id, suggested_by_id, title, description, relevance, url, agency_type, city_id, county_id, agency_name, agency_division, agency_contact, other_category, rating_votes, rating_score, creation_date, last_modified, updates_id, status, contact_phone, contact_email, contact_url) FROM stdin;
183	27	Mint Hill Police Records	This data set would tell us about crime and police activity that cannot be found on the Mint Hill Police Department's website. You can find some crime information for Mint Hill on https://www.crimereports.com/.	This would tell us about crime and police activity.		city	319	\N	Police Department				0	0	2013-10-17 21:54:34.281153-04	2013-11-18 14:13:26.264063-05	\N	1			
203	27	Stallings Police Reports	The data provides information on crime and police activity in Stallings. For example, the website provides monthly crime reports for 2011, 2012, and 2013. A weekly crime bulletin is also available. From Oct. 7 to Oct. 13, crimes that were reported include larcenies, felonies, an injury to personal property, and reports of assault and battery, according to the crime bulletin from the website. In the 2013 monthly report, crimes include 596 incident reports, 61 felony arrests, and 400 misdemeanor arrests, according to the report from the website. You cannot access individual police reports, however.	The data provides information on crime and police activity. 		city	464	78	Department of Public Safety		704-821-0300 		0	0	2013-10-19 16:16:53.11994-04	2013-11-18 14:13:34.562317-05	\N	1			
14	27	Archdale Police Records	Only provide physical reports that must be obtained in person. Would like them to publish a searchable index online.	Public safety.		city	11	10	Archdale Police Department	Records Unit	Records Officer (not named online) — 434-3134 main line to the police office		1	1	2013-09-22 16:22:44.988949-04	2013-11-18 14:12:10.489747-05	1	1			
12	27	Angier Police Reports	Angier does not provide digital links to police reports. Furthermore, they do not point you to a specific manner in which you can obtain them.	Public safety.		city	7	\N	Angier Police Department	Police Department	919-639-2699		1	1	2013-09-22 14:56:09.856707-04	2013-11-18 14:12:10.836388-05	1	1			
11	27	Andrews Police Records	The Andrews Police Department does not publish their police reports online. Furthermore, they do not specifically list on their website where to obtain those records even if you must do so in person.	It is supposed to be public record and I'd like to inspect it.		city	\N	6	Andrews Police Department	Police Department	Direct line to the department — 321-9814		1	1	2013-09-22 14:51:58.909646-04	2013-11-18 14:12:11.225287-05	1	1			
13	27	Apex Police Reports	Apex provides direct lines of contact to their records clerk but do not publish their police reports online.	Public safety.	http://www.apexnc.org/services/police/records-office	city	9	8	Town of Apex	Records Office	Betty Hobson - Records Clerk (919) 249-3460		1	1	2013-09-22 15:50:30.402268-04	2013-11-18 14:12:11.599126-05	1	1			
5	27	Police Reports	The RMS of the Chapel Hill Police Department contains information about arrests, incidents and accidents. The name of the database is the ONESolution Records Management System and the vendor is SunGard Public Sector.	Police incident and arrest reports provide important information about public safety issues and police activity in their communities.	http://p2c.chpd.us/Summary.aspx	city	89	\N	Police Department	Public Information officer	kgunter@townofchapelhill.org		0	0	2013-08-22 00:00:00-04	2013-11-18 14:12:11.986602-05	\N	1			
4	27	Police Incident Reports	This database contains information about incidents to which the Ahoskie Police Department responds.	Police incident reports provide important information about public safety issues and police activity in their communities.	http://www.ahoskiepd.com/information/requesting-a-police-report/	city	2	\N	Police Department	Records Clerk	(252) 332-5012		0	0	2013-08-22 00:00:00-04	2013-11-18 14:12:12.630249-05	\N	1			
41	27	Brevard Police Reports	This data set would provide information about crime and police activity, which cannot be found on the Brevard Police Department's website.	This would tell us about crime and public safety.		city	57	\N	Police Department				0	0	2013-10-07 10:56:14.270181-04	2013-11-18 14:12:13.039826-05	\N	1			
39	27	Boiling Springs Police Report	Although you can request a police report from the Boiling Springs Police Department's website, this data set would provide information about all police activity and crime.	This would tell us about crime and police activity.		city	51	\N	Police Department				0	0	2013-10-07 10:44:04.878096-04	2013-11-18 14:12:13.415607-05	\N	1			
15	27	Asheboro Police Reports	The records division will only provide police reports in physical copies to individuals that show up in person at their offices. I want them to publish that online.	Public safety.		city	13	11	City of Asheboro Police Department	Records Division	Mrs. Garner or Mrs. Henly at 336-626-1300 x 306 or 307		2	2	2013-09-22 16:26:06.991688-04	2013-11-18 14:12:13.839319-05	1	1			
38	27	Boiling Spring Lakes Police Department	This data set would provide information about crime and public safety, which cannot be found on the Boiling Spring Lakes Police Department website.	This would tell us about crime and public safety.		city	50	\N	Police Department		bshirley@cityofbsl.org		0	0	2013-10-06 20:21:48.454522-04	2013-11-18 14:12:14.222679-05	\N	1			
9	27	Voter Registration Information	The state Board of Elections collects information about each registered voter, and each change in voter registration. Some of the information is available on the board's website, but not in a bulk download or API.	It is important to know who is registered to vote and who is not. 	https://www.ncsbe.gov/voterlookup.aspx	state	\N	\N	Board of Elections		Marc Burris, IS Director		2	2	2013-09-06 14:33:37.51259-04	2013-11-18 14:12:14.609792-05	3	1			
17	27	Atlantic Beach Police Reports	This police department does not post anything online regarding their records department. They simply give the contact information for their administrative assistant.	Public safety.		city	17	16	Atlantic Beach Police Department		Sara O'Brien - 252-726-2523		1	1	2013-09-22 17:14:20.44285-04	2013-11-18 14:12:14.970563-05	1	1			
16	27	Asheville Police Reports	Asheville provides crime mapping through a software partnership, which will give you an outlook on recent crimes with brief descriptions of each crime listed on the map. They do not, however, provide the actual police reports. You have to request those in person.	Public safety.	https://www.crimereports.com/	city	14	13	Asheville Police Department	Central Records Unit	Jeanette Sams — 828-259-5890		1	1	2013-09-22 16:56:00.860159-04	2013-11-18 14:12:15.390651-05	1	1			
18	27	Ayden Police Reports	Ayden does not publish any police reports online.	Public safety.		city	21	19	Town of Ayden Police Department		Police Captain Richard S. Patterson — 252-481-5844 or rpatterson@ayden.com		1	1	2013-09-22 17:19:37.428394-04	2013-11-18 14:12:15.777906-05	1	1			
20	27	Police Reports	Police incident and arrest reports from the town of Badin.	Police incident and arrest reports help hold powerful people accountable and help us understand crime trends in our community. 		city	22	\N	Police Department		Bryan C. Lambert 		0	0	2013-09-23 22:32:45.450858-04	2013-11-18 14:12:16.67619-05	1	1			
22	27	Banner Elk Police Reports	The Banner Elk police department has eight full-time employees, according to its website. Its website makes no mention of police reports or how to obtain them. This data would tell us about crimes and police activity.	This helps us understand crime and police activity.		city	26	\N	Police Department				0	0	2013-10-06 13:24:24.715619-04	2013-11-18 14:12:17.040246-05	\N	1			
23	27	Beaufort City Police Reports	This data set would include police reports from Beaufort and tells us about crime and police activity.	This would tell us about crime and police activity.		city	30	\N	Police Department				0	0	2013-10-06 13:26:23.68667-04	2013-11-18 14:12:17.511075-05	\N	1			
218	27	Montgomery County Food Establishment Inspections 	Montgomery County does not make its food establishment inspection data readily available on its county website. WRAL.com has links to some reports.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.montgomerycountync.com/health_department.html	county	\N	31	Montgomery County Health Department		(910) 572-8175		0	0	2013-10-19 22:10:26.920237-04	2013-11-18 14:13:40.276243-05	\N	1			
25	27	Belhaven Police Reports	This data set would provide information about crime and police activity, which cannot be found on the Belhaven Police Department's website.	This would tell us about crime and police activity.		city	32	\N	Police Department				0	0	2013-10-06 13:33:20.087839-04	2013-11-18 14:12:18.247335-05	\N	1			
26	27	Belmont Police Reports	This data set would provide us with information about crime and police activity, which cannot be found on the Belmont Police Department's website.	This would tell us about crime and public safety.		city	33	\N	Police Department				0	0	2013-10-06 13:35:10.998439-04	2013-11-18 14:12:18.72084-05	\N	1			
28	27	Bethel Police Reports	This data set would tell us information about crime and police activity, which cannot be found on the Bethel Police Department's website.	This would tell us about crime and police activity.		city	40	\N	Police Department				0	0	2013-10-06 13:40:35.496452-04	2013-11-18 14:12:19.100717-05	\N	1			
29	27	Beulaville Police Reports	This data set would provide information on crime and police activity, which cannot be found on the Beulaville Police Department's website.	This would tell us about crime and police activity.		city	41	\N	Police Department		(910) 298-5360		0	0	2013-10-06 13:45:28.739078-04	2013-11-18 14:12:19.441042-05	\N	1			
30	27	Biltmore Forest Police Reports	This data set would provide information about crime and police activity, which cannot be found on the Biltmore Forest Police Department's website.	This would tell us about crime and police activity.		city	42	\N	Police Department		policedesk@biltmoreforest.org		0	0	2013-10-06 13:49:27.19878-04	2013-11-18 14:12:19.837154-05	\N	1			
31	27	Broadway Police Reports	The data would provide information about crime and police activity, and this information cannot be found on the website. 	This helps understand crime and police activity. 		city	59	\N	Department of Public Safety				0	0	2013-10-06 18:51:16.646627-04	2013-11-18 14:12:20.486954-05	\N	1			
40	27	Boone Police Reports	This data set would provide us information about crime and police activity.	This would tell us about crime and police activity.		city	54	\N	Police Department				0	0	2013-10-07 10:47:27.070924-04	2013-11-18 14:12:20.879283-05	\N	1			
37	27	Blowing Rock Police Reports	This data set would provide information on crime and police activity, which cannot be found on the Blowing Rock Police Department's website.	This would tell us about crime and police activity.		city	47	\N	Police Department				0	0	2013-10-06 19:42:28.990228-04	2013-11-18 14:12:21.231462-05	\N	1			
36	27	Black Mountain Police Reports	The Black Mountain Police Department receives about 140 calls a month, according to its website. This data set would tell us about crime and police activity.	This tells us about crime and police activity.		city	45	\N	Police Department				0	0	2013-10-06 19:30:39.089432-04	2013-11-18 14:12:21.637948-05	\N	1			
35	27	Black Creek Police Reports	This data set tells us about crime and police activity, which cannot be found on the Black Creek Police Department's website.	This would tell us about crime and police activity in Black Creek.		city	44	\N	Police Department		(252) 243-6439		0	0	2013-10-06 19:28:38.184012-04	2013-11-18 14:12:22.038362-05	\N	1			
33	27	Candor Police Reports	The data would provide information on crimes and police activity. There are five full-time officers and two reserve officers at this police department. 	This helps understand crime and police activity. 		city	72	\N	Department of Public Safety				0	0	2013-10-06 18:59:13.181306-04	2013-11-18 14:12:22.820722-05	\N	1			
32	27	Bryson City Police Reports	This data would provide information about crimes and police activity, but the data cannot be found on the website. 	This helps understand crime and police activity. 		city	62	\N	Department of Public Safety				0	0	2013-10-06 18:55:10.01385-04	2013-11-18 14:12:23.214111-05	\N	1			
43	27	Burlington Police Reports	According to its website, the Burlington Police Department has electronic copies of accident and incident reports, but there is no way to access these online. Automobile crash reports are available through a database here: https://www.cobpsweb.info/eCrash/SearchReports.aspx	This helps understand crime and police activity		city	65	\N	Burlington Police Departmen	Police Department	(336) 229-3503		0	0	2013-10-07 14:05:12.707716-04	2013-11-18 14:12:23.602827-05	\N	1			
42	27	Butner Public Safety 	This data set would provide information about crime and law enforcement activities in Butner, which cannot be found on the North Carolina Department of Public Safety website. 	This would tell us about crime and public safety.		city	67	45	Department of Public Safety				0	0	2013-10-07 13:51:00.72315-04	2013-11-18 14:12:24.209502-05	\N	1			
49	27	Bladen County Restaurant Inspection Reports	Bladen County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.bladennc.govoffice3.com/index.asp?SEC=311A5F57-87AA-4885-B60D-E0394F8E90EE&Type=B_BASIC	county	\N	33	Bladen County Health Department		khair@bladenco.org		0	0	2013-10-07 15:46:52.540984-04	2013-11-18 14:12:24.594631-05	\N	1			
21	27	Bald Head Police Reports	The Bald Head Police Department produces between 420 and 400 incident and arrest reports each year, according to its website. This data tells us about crimes and police activity.	This helps understand crime and police activity		city	25	\N	Department of Public Safety				0	0	2013-10-04 11:37:23.256964-04	2013-11-18 14:12:24.981775-05	\N	1			
57	27	Chadbourn Police Records	This data set would provide information on crime and police activity that cannot be found on the Chadbourn Police Department's website.	This would tell us about crime and police activity.		city	88	35	Police Department		(910)654-4146		0	0	2013-10-07 16:32:09.230303-04	2013-11-18 14:12:25.332424-05	\N	1			
56	27	Catawba Town Police Records	This data set would provide information on crime and police activity that cannot be found on the Catawba Police Department's website.	This would tell us about crime and police activity.		city	83	\N	Police Department		(828) 241-4888		0	0	2013-10-07 16:29:15.976025-04	2013-11-18 14:12:25.67807-05	\N	1			
55	27	Caswell Beach Police Records	This data set would provide information on crime and police activity that cannot be found on the Caswell Beach Police Department's website.	This would tell us about crime and police activity.		city	82	\N	Police Department		police@caswellbeach.org		0	0	2013-10-07 16:27:34.387088-04	2013-11-18 14:12:26.560315-05	\N	1			
53	27	Carthage Police Records	This data set would provide information about crime and police activity, which cannot be found on the Carthage Police Department's website.	This would tell us about crime and police activity.		city	78	\N	Police Department		(910) 947-2231		0	0	2013-10-07 16:23:06.040979-04	2013-11-18 14:12:26.924603-05	\N	1			
233	27	Swansboro Police Reports	This data set would provide information about crime and police activity that cannot be found on the Swansboro Police Department's website.	This would tell us about crime and police activity.	http://swansboro-nc.org/index.asp?Type=B_BASIC&SEC={8BCF5A74-D504-4A96-B61F-6E1EC036F648}	city	480	88	Police Department 				0	0	2013-10-20 17:00:09.943966-04	2013-11-18 14:13:48.056008-05	\N	1			
260	27	Troutman Police Reports	The data provides information on crimes and police activity in Troutman. The website provides press releases, such as press releases about burglaries, felonies, larcenies, arrests, and possession of drugs. The department has 20 commissioned police officers, according to the website. The data is lacking full database capability for all police records.	The data provides information about the crimes and police activity in Troutman. 		city	495	62	Department of Public Safety		704-528-7610		0	0	2013-10-20 20:06:27.532805-04	2013-11-18 14:13:51.017111-05	\N	1			
50	27	Burke County Restaurant Inspection Reports	Burke County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.co.burke.nc.us/index.asp?Type=B_BASIC&SEC={FF54E9A7-2D2B-46D5-9366-9EFDCC9F01F1}	county	\N	58	Burke County Department of Health		828-764-9240		0	0	2013-10-07 15:52:14.71372-04	2013-11-18 14:12:28.295973-05	\N	1			
48	27	Anson County Restaurant Inspection Reports	Anson County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.co.anson.nc.us/Default.aspx?alias=www.co.anson.nc.us/healthdepartment&	county	\N	9	Anson County Health Department		steven.cox@co.anson.nc.us		0	0	2013-10-07 15:42:37.943977-04	2013-11-18 14:12:28.658612-05	\N	1			
45	27	Canton Police Reports	The data would provide information about crime and police activity, but it cannot be found on the Canton Police Department's website.	This helps understand crime and police activity. 		city	73	46	Canton Police Department	Police Department	(828) 648-2376		0	0	2013-10-07 14:21:02.739797-04	2013-11-18 14:12:29.033723-05	\N	1			
44	27	Burnsville Police Reports	The data would provide information about crime and police activity, but it cannot be found on the Burnsville Police Department's website.	This helps understand crime and police activity. 		city	66	44	Burnsville Police Department	Police Department	(828) 682-2420		0	0	2013-10-07 14:14:08.363416-04	2013-11-18 14:12:29.418515-05	\N	1			
3	27	Police Incident Reports	This database contains information about incidents to which the Aberdeen Police Department responds. The department's RMS vendor is Southern Software, which previously referred to its product as "Police-Pak" which resides on a department server running Microsoft SQL Server.	Police incident reports provide important information about public safety issues and police activity in their communities.	http://townofaberdeen.net/pView.aspx?id=2092&catID=29	city	1	\N	Aberdeen Police Department	none	(910) 944-9721		0	0	2013-08-22 00:00:00-04	2013-11-18 14:12:29.834334-05	\N	1			
61	27	Edgecombe County Food Establishment Inspections	Edgecombe County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.edgecombecountync.gov/eh/institution.aspx	county	\N	57	Edgecombe County Health Department		(252) 641-7573		0	0	2013-10-07 20:02:41.939667-04	2013-11-18 14:12:30.338542-05	\N	1			
70	27	Clayton Police Records	This data set would provide information on crime and police activity that cannot be found on the Clayton Police Department's website.	This would tell us about crime and police activity.		city	97	12	Police Department		(919)-553-4611		0	0	2013-10-07 22:26:38.498151-04	2013-11-18 14:12:30.717757-05	\N	1			
74	27	Concord Police Records	This data set would provide information on crime and police activity that cannot be found on the police department's page on the City of Concord website.	This would tell us about crime and police activity.		city	108	56	Police Department		Police Chief Guy Smith, (704) 920-5007		0	0	2013-10-07 22:46:23.557558-04	2013-11-18 14:12:31.1014-05	\N	1			
72	27	Coats Police Records	This data set would provide information on crime and police activity that cannot be found on the police department page on the Town of Coats website.	This would tell us about crime and police activity.		city	102	7	Police Department	(910)-897-5183			0	0	2013-10-07 22:36:47.521236-04	2013-11-18 14:12:31.526451-05	\N	1			
73	27	Town of Columbus Police Records 	This data set would provide information on crime and police activity that cannot be found on the police department page on the Town of Columbus website. 	This would tell us about crime and police activity.		city	106	55	Police Department		(828) 894-5464		0	0	2013-10-07 22:39:11.182374-04	2013-11-18 14:12:32.148545-05	\N	1			
71	27	Clinton Police Records	This data set would provide information on crime and police activity that cannot be found on the police department page on the City of Clinton website. 	This would tell us about crime and police activity.		city	100	18	Police Department 		(910) 592-3105		0	0	2013-10-07 22:29:25.992957-04	2013-11-18 14:12:32.537157-05	\N	1			
68	27	Chocowinity Police Reports 	This data set would provide information on crime and police activity that cannot be found on the police department page on the Town of Chocowinity website.	This would tell us about crime and police activity.		city	94	17	Police Department		(252) 946-2882		0	0	2013-10-07 22:20:53.891461-04	2013-11-18 14:12:32.898413-05	\N	1			
69	27	Claremont Police Records	This data set would provide information on crime and police activity that cannot be found on the Claremont Police Department's website.	This would tell us about crime and police activity.		city	95	41	Police Department				0	0	2013-10-07 22:22:50.306999-04	2013-11-18 14:12:33.284396-05	\N	1			
66	27	Cherokee Indian Police Records	This data set would provide information on crime and police activity that cannot be found on the Cherokee Indian Police Department's website.	This would tell us about crime and police activity.		city	554	\N	Police Department		828-497-7405		0	0	2013-10-07 21:54:40.282852-04	2013-11-18 14:12:33.655052-05	\N	1			
67	27	China Grove Police Records	This data set would provide information on crime and police activity that cannot be found under the police department's page on the Town of China Grove website. 	This would tell us about crime and police activity.		city	93	53	Police Department		Police Chief Eddie M. Kluttz, (704) 857-7755		0	0	2013-10-07 22:08:26.279822-04	2013-11-18 14:12:34.040105-05	\N	1			
27	27	Benson Police Reports	The records clerk in Benson enters police reports into Police Pak, Benson's record management system, according to the website. If you want to obtain a copy of a record, you have to go to the records office. This data set would include information about crime and police activity. 	This would tell us about crime and police activity.		city	36	\N	Police Department				0	0	2013-10-06 13:38:39.823415-04	2013-11-18 14:12:34.372052-05	\N	1			
278	27	Williamston Police Reports	The data would provide information about crime and police activity in Williamston, but the website does not provide this information. There are 20 sworn full-time officers, one civilian employee, 14 uniformed patrol officers, four detectives, and three administrative staff at the police department, according to the town's website. 	The data could provide information on crime and police activity. 		city	537	24	Department of Public Safety		252-792-2125		0	0	2013-10-20 21:38:49.061162-04	2013-11-18 14:13:57.227912-05	\N	1			
266	27	Leland Police Reports	The data provides information on crime and police activity in Leland. The website provides crime analysis reports, a most wanted list for Leland, and a list of patrol responses and reports, which has updates in October. The crime analysis reports are for 2009, 2010, and 2011. In 2011, from January to June, there were 246 crimes, which include eight vehicle thefts, one armed robbery, and 70 larcenies of more than $200, according to the department's website. The patrol responses and reports provide information on incidents such as an injury to personal property and larcenies. 	The data would provide information on crime and police activity. 		city	269	22	Department of Public Safety		910-371-1100		0	0	2013-10-20 20:38:25.720251-04	2013-11-18 14:14:01.707152-05	\N	1			
59	27	Cleveland County Food Establishment Inspections	Cleveland County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://clevelandcounty.com/cchd/environmental-health/	county	\N	27	Cleveland County Health Department		704-484-5100		0	0	2013-10-07 19:53:29.070323-04	2013-11-18 14:12:35.142378-05	\N	1			
75	27	Conover Police Records 	This data set would provide information on crime and police activity that cannot be found on the police department page of the City of Conover website.	This would tell us about crime and police activity.		city	111	41	Police Department		Police Chief Steve Brewer, (828) 464-4698		0	0	2013-10-07 22:50:06.293293-04	2013-11-18 14:12:35.751562-05	\N	1			
58	27	Caswell County Restaurant Inspection Reports	Caswell County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://cchd.caswellnc.us/2.html	county	\N	95	Caswell County Health Department		(336) 694-9731		0	0	2013-10-07 19:46:53.65871-04	2013-11-18 14:12:37.353582-05	\N	1			
62	27	Franklin County Food Establishment Inspections	Franklin County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.franklincountync.us/services/health/services/environmental-health/food-lodging-and-institutional-sanitation-program	county	\N	43	Franklin County Health Department		(919) 496-2533		0	0	2013-10-07 20:20:15.186031-04	2013-11-18 14:12:37.739027-05	\N	1			
47	27	Alexander County Restaurant Inspection Reports	Alexander County does not make its restaurant and food inspection reports readily available on its county website. This link is the closest it comes: http://www.alexanderhealth.org/enviroFLI.php. 	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.alexanderhealth.org/enviroFLI.php	county	\N	99	Alexander County Department of Health		http://www.alexanderhealth.org/enviroContact.php		0	0	2013-10-07 15:35:35.289908-04	2013-11-18 14:12:38.088968-05	\N	1			
80	27	Granville County Food Establishment Inspections	Granville County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.gvdhd.org/index.php?module=pagemaster&PAGE_user_op=view_page&PAGE_id=11&MMN_position=11:10	county	\N	45	Granville County Health Department		wvaughan@gvdhd.org		0	0	2013-10-08 18:45:36.872222-04	2013-11-18 14:12:38.882125-05	\N	1			
81	27	Greene County Food Establishment Inspections	Greene County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.co.greene.nc.us/Departments_Health_Food.aspx	county	\N	89	Greene County Health Department 		252-747-8181		0	0	2013-10-08 18:48:33.762205-04	2013-11-18 14:12:39.329178-05	\N	1			
83	27	Haywood County Food Establishment Inspections	Haywood County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.haywoodnc.net/index.php?option=com_content&view=article&id=92&Itemid=87	county	\N	46	Haywood County Health Department		crocco@haywoodnc.net; (828) 452-6675		0	0	2013-10-08 19:18:52.864703-04	2013-11-18 14:12:39.689081-05	\N	1			
82	27	Halifax County Food Establishment Inspections	Halifax County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.halifaxnc.com/index.php?option=com_content&view=article&id=71&Itemid=71	county	\N	75	Halifax County Health Department		(252) 583-6651		0	0	2013-10-08 19:15:20.887742-04	2013-11-18 14:12:40.071749-05	\N	1			
79	27	Graham County Food Establishment Inspections	Graham County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.grahamcounty.org/Departments/Health/FoodAndLodging.html#foodservice	county	\N	80	Graham County Health Department		828-479-7900		0	0	2013-10-08 18:37:18.48699-04	2013-11-18 14:12:40.714477-05	\N	1			
77	27	Conrnelius Police Records 	This data set would provide information on crime and police activity that cannot be found on the police department page on the Town of Cornelius website. 	This would tell us about crime and police activity.		city	114	52			(704)-892-1363		0	0	2013-10-07 23:37:34.805768-04	2013-11-18 14:12:41.482557-05	\N	1			
76	27	Cooleemee Police Records 	This data set would provide information on crime and police activity that cannot be found on the police department page of the Town of Cooleemee website.	This would tell us about crime and police activity.		city	113	28	Police Department		(336) 284-4098		0	0	2013-10-07 23:34:51.208724-04	2013-11-18 14:12:41.940425-05	\N	1			
96	27	Jones County Food Establishment Inspections	Jones County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.jonescountyhealth.com/?page_id=89	county	\N	94	Jones County Health Department		252-448-9111		0	0	2013-10-10 00:25:09.754336-04	2013-11-18 14:12:42.772873-05	\N	1			
97	27	Lenoir County Food Establishment Inspections	Lenoir County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.co.lenoir.nc.us/health.html	county	\N	83	Lenoir County Health Department		(252) 559-6450		0	0	2013-10-10 00:32:27.704462-04	2013-11-18 14:12:43.168131-05	\N	1			
93	27	Hertford County Food Establishment Inspections	Hertford County has a link for restaurant grades on its county website - http://www.hertfordpublichealth.com/ - but clicking on the "Restaurant Grades" link brings the user to a Microsoft Word document with the grades for just one month, May 2012. 	The public deserves to know about restaurant sanitation and health grades, and these full reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=46	county	\N	2	Hertford County Health Department		(252) 358-7833		0	0	2013-10-09 23:45:40.773918-04	2013-11-18 14:12:43.557659-05	\N	1			
94	27	Hoke County Food Establishment Inspections	Hoke County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.hokecounty.net/index.aspx?NID=177	county	\N	96	Hoke County Health Department				0	0	2013-10-09 23:53:55.454111-04	2013-11-18 14:12:43.898974-05	\N	1			
102	27	Eden Police Records	This data set would provide information about crime and police activity that cannot be found on the Eden Police Department's page on the City of Eden website.	This would tell us about crime and police activity.		city	140	70	Police Department		(336) 623-9687		0	0	2013-10-10 14:27:14.99887-04	2013-11-18 14:12:44.554977-05	\N	1			
90	27	Duck Police Records	This data set would tell us about crime and police activity that cannot be found on the Duck Police Department's website.	This would tell us about crime and police activity.		city	131	\N	Police Department				0	0	2013-10-09 23:22:05.481632-04	2013-11-18 14:12:44.938156-05	\N	1			
89	27	Drexel Police Records	This data set would provide information about crime and police activity that cannot be found on the Drexel Police Department's website.	This would tell us about crime and police activity.		city	129	\N	Police Department				0	0	2013-10-09 23:19:53.691055-04	2013-11-18 14:12:45.504393-05	\N	1			
88	27	Dobson Police Reports	This dataset would provide information about crime and police activity that cannot be found on the Dobson Police Department's website.	This would tell us about crime and police activity.		city	126	\N	Police Department				0	0	2013-10-09 23:16:02.332004-04	2013-11-18 14:12:45.877682-05	\N	1			
87	27	Denton Police Records	This dataset would provide information on crime and police activity that cannot be found on the Denton Police Department's website.	This would tell us about crime and police activity.		city	123	\N	Police Department				0	0	2013-10-09 23:06:37.510784-04	2013-11-18 14:12:46.415846-05	\N	1			
86	27	Davidson Police Records	This data set would provide information on crime and police activity that cannot be found on the Davidson Police Department's website.	This would tell us about crime and police activity.		city	122	\N	Police Department		704 892-5131		0	0	2013-10-09 23:04:08.624445-04	2013-11-18 14:12:47.380078-05	\N	1			
85	27	Dallas Police Reports	This data set would provide information about crime and police activity that cannot be found from the Dallas Police Department's website.	This would tell us about crime and police activity.		city	120	\N	Police Department		(704) 922-3116		0	0	2013-10-09 23:01:18.581657-04	2013-11-18 14:12:47.756201-05	\N	1			
84	27	Creedmoor Police Reports	This data set would provide information about crime and police activity, which cannot be found on the Creedmoor Police Department's website.	This would tell us about crime and police activity.		city	117	\N	Police Department				0	0	2013-10-09 22:59:00.708024-04	2013-11-18 14:12:48.126195-05	\N	1			
98	27	Durham Police Arrest Reports	Public records related to the arrests made by the Durham city Police Department. A limited set of incident report data is available, but no arrest reports. 	It's important to know who police are arresting, and for what alleged crimes. 		city	133	\N	Durham Police				0	0	2013-10-10 11:09:40.268432-04	2013-11-18 14:12:48.502459-05	1	1			
99	27	Durham County Sheriff Arrest Reports	Public records related to the arrests made by the Durham city Police Department. A limited set of incident report data is available, but no arrest reports. 	It is important to know who is being arrested, and for what crimes. 		county	\N	51	Durham County Sheriff				0	0	2013-10-10 11:10:34.366684-04	2013-11-18 14:12:49.157575-05	1	1			
91	27	Dunn Police Records	This data set would provide information about crime and police activity that cannot be found on the Dunn Police Department's website.	This would tell us about crime and police activity.		city	132	\N	Police Department				0	0	2013-10-09 23:23:35.700394-04	2013-11-18 14:12:49.530309-05	\N	1			
101	27	East Spencer Police Records 	This data set would provide information about crime and police activity that cannot be found on the East Spencer Police Department's website.	This would tell us about crime and police activity.		city	138	53	Police Department				0	0	2013-10-10 14:15:21.265268-04	2013-11-18 14:12:50.308664-05	\N	1			
109	27	Franklin Police Reports	This data set would provide information about crime and police activity that cannot be found on the Franklin Police Department's page. According to the website, incident reports can be picked up in person at the police department. 	This would tell us about crime and police activity.	http://www.franklinnc.com/police/	city	173	81	Police Department 		(828) 524-2864		0	0	2013-10-10 15:02:00.60097-04	2013-11-18 14:12:50.665194-05	\N	1			
111	27	Emerald Isle Police Records	This data set would provide information about crime and police activity that cannot be found on the Emerald Isle Police Department's page on the Town of Emerald Isle website.	This would tell us about crime and police activity.		city	150	16	Police Department		(252)-354-2021		0	0	2013-10-10 15:08:54.350204-04	2013-11-18 14:12:51.04338-05	\N	1			
113	27	Erwin Police Records	This data set would provide information about crime and police activity that cannot be found on the Erwin Police Department's page on the Erwin town website.	This would tell us about crime and police activity.		city	152	7	Police Department		910-897-5122		0	0	2013-10-10 15:14:13.356921-04	2013-11-18 14:12:51.455486-05	\N	1			
153	27	Saint Pauls Police Reports	This data would provide information on crime and police activity, but the department's website does not provide this information. 	The data could provide information on crime and police activity. 		city	426	77	Department of Public Safety		910-865-5155		0	0	2013-10-12 11:27:37.985566-04	2013-11-18 14:12:51.840793-05	\N	1			
120	27	Fremont Police Department 	This data set would provide information about crime and police activity that cannot be found on the Fremont Police Department's website.	This would tell us about crime and police activity.	http://www.fremontnc.gov/emergency-services/police	city	176	76	Police Department		919-242-5151		0	0	2013-10-10 20:52:14.766045-04	2013-11-18 14:12:52.2204-05	\N	1			
119	27	Franklinton Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Franklinton Police Department's website.	This would tell us about crime and police activity.	http://www.franklintonnc.us/Public%20Safety.html	city	174	50	Police Department 		919-494-2151		0	0	2013-10-10 20:49:06.580684-04	2013-11-18 14:12:52.857218-05	\N	1			
118	27	Gibsonville Police Records	This data set would provide information about crime and police activity that cannot be found on the Gibsonville Police Department's page on the Town of Gibsonville website.	This would tell us about crime and police activity.		city	185	10	Police Department		(336)-449-7926		0	0	2013-10-10 15:28:15.12242-04	2013-11-18 14:12:53.256789-05	\N	1			
117	27	Gastonia Police Records	This data set would provide information about crime and police activity that cannot be found on the Gastonia Police Department's page on the Gastonia city website.	This would tell us about crime and police activity.		city	183	26	Police Department		704.866.3300		0	0	2013-10-10 15:26:06.853548-04	2013-11-18 14:12:53.63259-05	\N	1			
116	27	Garysburg Police Records	This data set would provide information about crime and police activity that cannot be found on the Garysburg Police Department's page on the Town of Garysburg website.	This would tell us about crime and police activity.		city	181	59	Police Department		(252) 536-2167		0	0	2013-10-10 15:23:23.188062-04	2013-11-18 14:12:54.024893-05	\N	1			
115	27	Garner Police Records	This data set would provide information about crime and police activity that cannot be found on the Garner Police Department's page on the website.	This would tell us about crime and police activity.		city	180	8	Police Department		919-772-8810		0	0	2013-10-10 15:20:46.565375-04	2013-11-18 14:12:54.383096-05	\N	1			
114	27	Fairmont Police Records	This data set would provide information about crime and police activity that cannot be found on the Fairmont Police Department's page on the Town of Fairmont website.	This would tell us about crime and police activity.		city	156	77	Department of Public Safety	Fairmont Police Division 	(910) 628-9766		0	0	2013-10-10 15:16:36.508042-04	2013-11-18 14:12:54.767502-05	\N	1			
112	27	Enfield Police Records	This data set would provide information about crime and police activity that cannot be found on the Enfield Police Department's page on the Town of Enfield website.	This would tell us about crime and police activity.		city	151	75	Police Department		(252) 445-5122		0	0	2013-10-10 15:11:36.94425-04	2013-11-18 14:12:55.135387-05	\N	1			
108	27	Four Oaks Police Records 	This data set would provide information about crime and police activity that cannot be found on the Four Oaks Police Department's website. 	This would tell us about crime and police activity.	http://fouroaks-nc.com/?page_id=179	city	171	12	Police Department 		919.963.3112 ext. 34		0	0	2013-10-10 14:57:57.042067-04	2013-11-18 14:12:55.545847-05	\N	1			
107	27	Forest City Police Records 	This data set would provide information about crime and police activity that cannot be found on the Forest City Police Department's page. According to the department website, police records may be obtained in person from the Forest City Police Department. 	This would tell us about crime and police activity.	http://www.forestcitypd.com/communicationsrecords.html	city	168	37	Police Department 		(828) 248-5234		0	0	2013-10-10 14:54:53.515199-04	2013-11-18 14:12:55.934599-05	\N	1			
106	27	Fletcher Police Records 	This data set would provide information about crime and police activity that cannot be found on the Fletcher Police Department's page. 	This would tell us about crime and police activity.	http://www.fletchernc.org/pages/departments/police-department/general-information.php	city	166	79	Police Department 		(828) 687-7922		0	0	2013-10-10 14:50:03.353504-04	2013-11-18 14:12:56.588338-05	\N	1			
105	27	Elizabethtown Police Records 	This data set would provide information about crime and police activity that cannot be found on the Elizabethtown Police Department page on the Town of Elizabehtown website. 	This would tell us about crime and police activity.		city	143	33	Police Department		(910) 862-3125		0	0	2013-10-10 14:38:26.917231-04	2013-11-18 14:12:56.93533-05	\N	1			
104	27	Elizabeth City Police Records	This data set would provide information about crime and police activity that cannot be found on the Elizabeth City Police Department's page on the City of Elizabeth City website. 	This would tell us about crime and police activity.		city	142	73	Police Department 		 (252)335-432		0	0	2013-10-10 14:34:52.936398-04	2013-11-18 14:12:57.315841-05	\N	1			
123	27	Granite Falls Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Granite Falls Police Department's website. 	This would tell us about crime and police activity.	http://www.granitefallspolicenc.us/Patrol.html	city	193	34	Police Department 		828.396.3358		0	0	2013-10-10 21:25:23.284382-04	2013-11-18 14:12:57.697859-05	\N	1			
135	27	Hudson Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Hudson Police Department's website. Currently, users must email records@hudsonpolicedepartment.net to request copies of reports. 	This would tell us about crime and police activity.	http://www.ci.hudson.nc.us/departments/police/	city	232	34	Police Department 		(828) 728-5021		0	0	2013-10-10 22:33:44.07796-04	2013-11-18 14:12:58.452543-05	\N	1			
134	27	Holly Springs Police Reports	This data set would provide information about crime and police activity that cannot be found on the Holly Springs Police Department's website. 	This would tell us about crime and police activity.	http://www.hollyspringsnc.us/index.aspx?nid=212	city	228	8	Police Department 		(919) 552-7110		0	0	2013-10-10 22:30:11.139564-04	2013-11-18 14:12:58.999147-05	\N	1			
133	27	Holly Ridge Police Reports	This data set would provide information about crime and police activity that cannot be found on the Holly Ridge Police Department's website. Currently, reports can only be picked up in person from the police department and it costs $4 for a police report and $5 for a wreck report. 	This would tell us about crime and police activity.	http://www.townofhollyridge.net/police.htm	city	227	88	Police Department 		910-329-4076		0	0	2013-10-10 22:27:26.74829-04	2013-11-18 14:12:59.42-05	\N	1			
132	27	Holden Beach Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Holden Beach Police Department's website. Currently, the website only has monthly reports of crime statistics. 	This would tell us about crime and police activity.	http://hbtownhall.com/Departments/policedept.htm	city	226	22	Police Department 		910-842-6707		0	0	2013-10-10 22:21:25.872664-04	2013-11-18 14:12:59.813647-05	\N	1			
131	27	Highlands Police Records 	This data set would provide information about crime and police activity that cannot be found on the Highlands Police Department's website.	This would tell us about crime and police activity.	http://www.highlandsnc.org/police/index.html	city	221	81	Police Department 		828.526.1769		0	0	2013-10-10 22:17:04.378028-04	2013-11-18 14:13:00.451575-05	\N	1			
130	27	Hillsborough Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Hillsborough Police Department's website. 	This would tell us about crime and police activity.	http://www.ci.hillsborough.nc.us/content/police-department-0	city	223	48	Police Department 		919-732-9381		0	0	2013-10-10 22:14:20.411903-04	2013-11-18 14:13:00.842349-05	\N	1			
129	27	Hertford Police Records 	This data set would provide information about crime and police activity that cannot be found on the Hertford Police Department's website.	This would tell us about crime and police activity.	http://townofhertfordnc.com/departments-2/police-department	city	217	86	Police Department 		252-426-5587		0	0	2013-10-10 22:08:04.439865-04	2013-11-18 14:13:01.214855-05	\N	1			
128	27	Henderson Police Records 	This data set would provide information about crime and police activity that cannot be found on the Henderson Police Department's website. Currently they only have annual reports with crime statistics.	This would tell us about crime and police activity.	http://www.hendersonncpolice.com/	city	215	85	Police Department 		252.438.4141		0	0	2013-10-10 22:03:46.921314-04	2013-11-18 14:13:01.582537-05	\N	1			
127	27	Haw River Police Records 	This data set would provide information about crime and police activity that cannot be found on the Haw River Police Department's website. 	This would tell us about crime and police activity.	http://townofhawriver.com/Departments/Police/tabid/177/Default.aspx	city	212	3	Police Department 		(336) 578-4141		0	0	2013-10-10 22:00:44.331231-04	2013-11-18 14:13:01.968387-05	\N	1			
126	27	Havelock Police Records 	This data set would provide information about crime and police activity that cannot be found on the Havelock Police Department's website. Currently the records section of the website is under construction. 	This would tell us about crime and police activity.	http://www.havelocknc.us/Error.aspx?aspxerrorpath=/Departments/Police/Departments/Police/RecordsCommunicationsSection.aspx	city	211	39	Police Department 		252-447-3212		0	0	2013-10-10 21:58:02.694603-04	2013-11-18 14:13:02.349881-05	\N	1			
125	27	Granite Quarry Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Granite Quarry Police Department's website. 	This would tell us about crime and police activity.	http://www.granitequarrync.gov/html/police-department.html	city	194	53	Police Department 		704-279-2952		0	0	2013-10-10 21:51:30.177348-04	2013-11-18 14:13:02.756712-05	\N	1			
124	27	Huntersville Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Huntersville Police Department's website. Currently users can only search if they have a report number. More search options would be helpful.	This would tell us about crime and police activity.	http://huntersvillenc.policereports.us/index.html	city	233	52	Police Department 		704-464-5400		0	0	2013-10-10 21:48:53.283473-04	2013-11-18 14:13:03.196781-05	\N	1			
122	27	Graham Police Reports	This data set would provide information about crime and police activity that cannot be found on the Graham Police Department's page. Currently, users can search for accident reports, but they are charged $4 to download and view them. Incident reports are currently unavailable online. 	This would tell us about crime and police activity.	http://grahamnc.policereports.us/	city	191	3	Police Department 		336-570-6711		0	0	2013-10-10 21:18:19.289767-04	2013-11-18 14:13:03.665178-05	\N	1			
121	27	Fuquay-Varina Police Reports	This data set would provide information about crime and police activity that cannot be found on the Fuquay-Varina Police Department's page. According to the department's website, copies of police reports can be picked up at the police department and cost $3 each. 	This would tell us about crime and police activity.	http://www.fuquay-varina.org/departments-and-services/police-department/records-and-reports.html	city	177	8	Police Department 		(919) 552-1422		0	0	2013-10-10 20:56:28.770182-04	2013-11-18 14:13:04.318533-05	\N	1			
143	27	Kenansville Police Reports	This information is to describe crime and police activity, but the website does not provide this information. The police chief is Chief Rusty Merritt, according to the department's website.	This is to provide information on crime and police activity. 		city	244	30	Department of Public Safety		910-\t296-0369		0	0	2013-10-12 10:24:54.254512-04	2013-11-18 14:13:05.1144-05	\N	1			
144	27	Laurel Park Police Reports	This information is to provide facts about crime and police activity, but the website does not provide this information. The Laurel Park Police Department provides many different services including crime prevention, patrol, criminal investigation, and emergency management services, according to the department's website. There are seven full-time officers and five part-time (reserve) officers. 	This is to provide information on crime and police activity. 		city	265	79	Department of Public Safety		(828) 692-9399		0	0	2013-10-12 10:30:17.972948-04	2013-11-18 14:13:05.862801-05	\N	1			
141	27	Person County Food Establishment Inspections	Pamilco County does not make its food establishment inspection data readily available on its county website. WRAL.com has links to some reports.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.personcounty.net/index.aspx?page=145	county	\N	97	Person County Health Department		http://www.personcounty.net/index.aspx?recordid=150&page=697		0	0	2013-10-11 22:42:44.769788-04	2013-11-18 14:13:06.278217-05	\N	1			
139	27	Onslow County Food Establishment Inspections	On the health department page of Onslow County's official website, it has a link to food inspection reports on WRAL.com. The reports do not appear anywhere else on the site.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.onslowcountync.gov/department7030.aspx?pageid=22717	county	\N	88	Onslow County Health Department		910-938-5851		0	0	2013-10-11 22:33:46.974647-04	2013-11-18 14:13:06.671695-05	\N	1			
142	27	Richlands Police Reports	This information is to provide information about crime and police activity, but the website does not provide this data. The Richlands Police Department has a police chief, five full-time sworn officers, two part-time officers, and auxillary officers, according to the department's website. Programs by the department include an Explorer Program and Community Watch Programs. 	This helps understand crime and police activity. 		city	403	88	Department of Public Safety		910-324-3301		0	0	2013-10-12 10:15:57.273006-04	2013-11-18 14:13:07.06089-05	\N	1			
147	27	Walnut Cove Police Reports	This is to provide information on crime and police activity. The department's website does not provide this information for Walnut Cove. 	This data is to provide information on crime and police activity.		city	513	61	Department of Public Safety		336-591-7121		0	0	2013-10-12 10:52:13.788519-04	2013-11-18 14:13:07.448126-05	\N	1			
151	27	Princeton Police Reports	This data is to provide information on crime and police activity, but the website does not provide this information. The police chief is Chief Tyrone Sutton, according to the department's website. 	The data is to provide information about crime and police activity. 		city	386	12	Department of Public Safety		(919) 936-8171 ext. 313 		0	0	2013-10-12 11:16:21.302659-04	2013-11-18 14:13:08.104286-05	\N	1			
146	27	Norwood Police Reports	This is to provide information on crime and police activity, but the website does not provide this information. Employees include Sgt. Keith Hyatt, Officer Jimmy Beaman, Sgt. Chris Thompson, Officer Darryl Gerald, Chief Randy Smith, Adm. Asst. Nellie Thompson, Officer Billy Cagle, Cpl. Bruce Mohen, and Officer Chad Green, according to the department's website. 	This data is to provide information on crime and police activity. 		city	352	4	Department of Public Safety		704-474-3716		0	0	2013-10-12 10:41:22.657974-04	2013-11-18 14:13:08.863361-05	\N	1			
138	27	New Hanover County Food Establishment Inspections	On the health department page of New Hanover's County official website, the link to the "Restaurant & Food Inspection scores" is broken - it brings you to an error page. 	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.nhcgov.com/Health/enviro-health/Pages/restaurants-school-inspection.aspx	county	\N	47	New Hanover Health Department		910-798-6500		0	0	2013-10-11 22:29:24.565696-04	2013-11-18 14:13:09.289374-05	\N	1			
154	27	Mebane Police Reports	This data is to provide information on crime and police activity, but the website does not provide this information. The Mebane Police Department has 27 sworn positions, according to the website. The police chief is Chief Terrence Caldwell. 	The data could provide information on crime and police activity. 		city	308	3	Department of Public Safety		919-563-9031		0	0	2013-10-12 11:31:49.972023-04	2013-11-18 14:13:09.699093-05	\N	1			
152	27	Murfreesboro Police Reports	This data is to provide information on crime and police activity, but the department's website does not provide this data for Murfreesboro. 	The data could provide information on crime and police activity. 		city	336	2	Department of Public Safety		252-398-4151		0	0	2013-10-12 11:23:32.731232-04	2013-11-18 14:13:10.046103-05	\N	1			
156	27	Woodfin Police Reports	The data is to provide information on crime and police activity in Woodfin, but this information is not available on the department's website. The police chief is Chief Brett Holloman. 	The data could provide information on crime and police activity. 		city	547	13	Department of Public Safety		828-253-4889		0	0	2013-10-12 11:55:49.72615-04	2013-11-18 14:13:10.424162-05	\N	1			
157	27	Louisburg Police Reports	The data would provide information on crime and police activity in Louisburg, but this information is not available on the website. The police chief is Chief Rick Lassiter, according to the town's website. 	The data could provide information on crime and police activity. 		city	282	43	Department of Public Safety		919-496-4175		0	0	2013-10-13 10:38:09.3684-04	2013-11-18 14:13:10.81012-05	\N	1			
161	27	Mooresville Police Reports	The data could provide information on crime and police activity in Mooresville, but this information is not available on the town's website. The police chief is Chief Carl W. Robbins, according to the website. Programs include Crime Stoppers and Explorer Post.	The data would provide information on crime and police activity. 		city	326	62	Department of Public Safety		704-664-3311		0	0	2013-10-13 10:54:56.06726-04	2013-11-18 14:13:11.199465-05	\N	1			
165	27	Sugar Mountain Police Reports	The data would provide information on crime and police activity in Sugar Mountain, but this information is not available on the village's website. The police chief is Chief David Henson, according to the website. 	The data would provide information on crime and police activity. 		city	476	23	Department of Public Safety		828-898-4349 		0	0	2013-10-13 11:33:30.697714-04	2013-11-18 14:13:12.658265-05	\N	1			
164	27	Red Springs Police Reports	The data would provide information on crime and police activity in Red Springs, but this information is not available on the town's website. The police chief is Chief Ronnie Patterson, according to the website. 	The data would provide information on crime and police activity. 		city	397	77	Department of Public Safety		910-843-3454		0	0	2013-10-13 11:28:35.557215-04	2013-11-18 14:13:13.047704-05	\N	1			
163	27	Statesville Police Reports	The data would provide information on crime and police activity in Statesville, but this information is not available on the city's website. The police chief is Chief Thomas A. Anderson, according to the website. There are 77 sworn officers, four reserve officers, and 21 civilians serving approximately 26,000 residents. 	The data would provide information on crime and police activity. 		city	469	62	Department of Public Safety		704-878-3406		0	0	2013-10-13 11:22:00.405107-04	2013-11-18 14:13:13.44335-05	\N	1			
162	27	Sparta Police Reports	The data would provide information on crime and police activity in Sparta. The data on the website cannot be checked. There are some potential errors. \r\n\r\n	The data could provide information on crime and police activity in Sparta. 		city	454	98	Department of Public Safety		336-372-4252		0	0	2013-10-13 11:13:47.866849-04	2013-11-18 14:13:13.819434-05	\N	1			
160	27	Sanford Police Reports	The data would provide information on crime and police activity in Sanford, but this information is not available on the city's website. The police chief is Chief Ronnie Yarborough, according to the website. 	The data could provide information on crime and police activity. 		city	432	40	Department of Public Safety		919-775-8268		0	0	2013-10-13 10:49:14.643162-04	2013-11-18 14:13:14.207883-05	\N	1			
159	27	Tarboro Police Reports	The data would provide information on crime and police activity in Tarboro, but this information is not available on the website. The police chief is Chief Damon Williams, according to the town's website. 	The data could provide information on crime and police activity. 		city	485	57	Department of Public Safety		252-641-4247		0	0	2013-10-13 10:45:37.833718-04	2013-11-18 14:13:14.581021-05	\N	1			
158	27	Pinetops Police Reports	The data would provide information on crime and police activity in Pinetops, but this data is not available on the website. 	The data could provide information on crime and police activity. 		city	376	57	Department of Public Safety		252-827-5014		0	0	2013-10-13 10:41:42.524788-04	2013-11-18 14:13:14.962407-05	\N	1			
150	27	Lincolnton Police Reports	This data is to provide information on crime and police activity, but the website does not provide this information. The City of Lincolnton Police Department has 37 full-time employees, according to the department's website. The department has crime prevention programs including a Hospital Watch program, a Community Watch program, and an Operation Alert program. 	This data is to provide information on crime and police activity. 		city	277	87	Department of Public Safety		704-736-8900		0	0	2013-10-12 11:09:56.527389-04	2013-11-18 14:13:15.655047-05	\N	1			
145	27	Maiden Police Reports	This is to provide information on crime and police activity, but the website does not provide this information. Employees of the department include: Chief Tracy Ledford; Lt. Jamey Fletcher for criminal investigations; Lt. Donna Hartman for patrol operations; Sgt. J.N. Miller, Sgt. J.G. Wagner, and Sgt. M.R. Eaker as patrol supervisors; Sgt. J.N. Miller as the D.A.R.E officer; and Lisa Huffman in the Records Division. The department also has an animal control division, according to the department's website. 	This is to provide information on crime and police activity. 		city	293	\N	Department of Public Safety		828-428-5005 		0	0	2013-10-12 10:38:05.475553-04	2013-11-18 14:13:16.014056-05	\N	1			
155	27	Rolesville Police Reports	This data is to provide information on crime and police activity, but the department's website does not provide this information for the Town of Rolesville. The police chief is Chief Matthew Anderson. There are 11 sworn police officers, seven reserve officers, and one administrative specialist, according to the department's website. 	The data is to provide information on crime and police activity. 		city	412	8	Department of Public Safety		919-556-7226		0	0	2013-10-12 11:42:27.771875-04	2013-11-18 14:13:16.38453-05	\N	1			
178	27	Pilot Mountain Police Reports	This is to provide information on crime and police activity. The department's website does not provide this information for Pilot Mountain.	This data is to provide information on crime and police activity at Pilot Mountain.		city	371	66	Department of Public Safety		(336) 368-4725		0	0	2013-10-13 22:34:27.986186-04	2013-11-18 14:13:16.776525-05	\N	1			
169	27	Whispering Pines Police Reports	This data would provide information on crime and police activity in Whispering Pines, but this information is not available on the website. The police chief is Chief Domonic Campbell, according to the website. 	The data could provide information on crime and police activity. 		city	531	1	Department of Public Safety		910-949-9961		0	0	2013-10-13 12:08:30.488634-04	2013-11-18 14:13:17.139704-05	\N	1			
168	27	Pine Level Police Reports	The data would provide information on crime and police activity in Pine Level, but this information is not available on the town's website. The police chief is Chief Keith Sparks, according to the website. 	The data could provide information on crime and police activity. 		city	373	12	Department of Public Safety		919-965-2045 		0	0	2013-10-13 11:59:10.982411-04	2013-11-18 14:13:17.584257-05	\N	1			
167	27	Tryon Police Reports	The data would provide information on crime and police activity in Tryon, but this information is not available on the town's website. The police chief is Chief Jeff Arrowood, according to the website. 	The data could provide information on crime and police activity. 		city	497	55	Department of Public Safety		828-859-9195		0	0	2013-10-13 11:50:22.652638-04	2013-11-18 14:13:17.963992-05	\N	1			
177	27	Pinehurst Police Reports	This is to provide information on crime and police activity. The department's website does not provide this information for Pinehurst.	This data is to provide information on crime and police activity in Wallace.		city	375	1	Department of Public Safety		(910) 295-3141		0	0	2013-10-13 22:28:50.333183-04	2013-11-18 14:13:18.3741-05	\N	1			
176	27	Youngsville Police Reports	This is to provide information on crime and police activity. The department's website does not provide this information for Youngsville.	This data is to provide information on crime and police activity in Youngsville.		city	552	43	Department of Public Safety		(919) 556-0500		0	0	2013-10-13 22:21:20.859257-04	2013-11-18 14:13:18.938674-05	\N	1			
184	27	Knightdale Police Records	This data set would tell us about crime and police activity in Knightdale. Police records can be found on Wake County's resource for police records, but there is not a resource for just Knightdale records.	This would tell us about crime and police activity.		city	254	\N	Knightdale Police Department				0	0	2013-10-17 22:50:09.955741-04	2013-11-18 14:13:25.890586-05	\N	1			
173	27	Grifton Police Reports	This is to provide information on crime and police activity. The department's website does not provide this information for Grifton. 	This data is to provide information on crime and police activity in Grifton.		city	200	19	Department of Public Safety		(252) 524-4161		0	0	2013-10-13 21:56:57.272139-04	2013-11-18 14:13:19.917107-05	\N	1			
172	27	Wallace Police Reports	This is to provide information on crime and police activity. The department's website does not provide this information for Wallace. 	This data is to provide information on crime and police activity in Wallace.		city	511	30			910-285-2126		0	0	2013-10-13 21:49:47.236482-04	2013-11-18 14:13:20.301272-05	\N	1			
171	27	Robbins Police Reports	The data would provide information on crime and police activity, but this information is not available on the town's website. The police chief is Chief J.A. Sheffield, according to the website. Special services of the department include nightly door checks of the town's local businesses and morning calls to senior citizens. 	The data would provide information on crime and police activity. 		city	406	1	Department of Public Safety		910-948-3549		0	0	2013-10-13 12:28:54.910153-04	2013-11-18 14:13:20.661084-05	\N	1			
170	27	Stanfield Police Reports	The data would provide information on crime and police activity in Stanfield. From January to May of 2011, the crime statistics are one aggravated assault, one residential burglary, three larcenies of more than $200, two larcenies between $50 to $200, one shoplifting occurrence, and one vehicle theft, according to the town's website. In 2010, there were 29 crimes. In 2009, there were 23 crimes. The PDF provides information on the number of cases per crime. 	The data provides information on crime and police activity. 		city	465	4	Department of Public Safety		704-986-3700 		0	0	2013-10-13 12:22:09.656639-04	2013-11-18 14:13:21.038737-05	\N	1			
137	27	Nash County Food Establishment Inspections	Nash County's official website links its "County Restaurant Inspection Results" to a page on WRAL.com. It does not provide the data in another spot on its site. 	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://nc-nashcounty.civicplus.com/index.aspx?NID=389	county	\N	20	Nash County Health Department		252-459-9829		0	0	2013-10-11 22:24:50.594196-04	2013-11-18 14:13:21.436895-05	\N	1			
100	27	Farmville Police Reports	This dataset would provide information about crime and police activity that cannot be found on the Farmville Police Department's website. According to the website, most police reports need to be obtained from the department headquarters and cost $2 each. 	This would tell us about crime and police activity in Farmville. 	http://www.farmville-nc.com/departments_police.htm	city	163	\N	Police Department 		(252) 753-4111		0	0	2013-10-10 14:14:34.170162-04	2013-11-18 14:13:22.441258-05	\N	1			
179	27	West Jefferson Police Reports	The eight officers of the West Jefferson Public Safety Department file incident and arrest reports.	This information would allow the public to see how police are using their powers and which people are being arrested, as well as which areas of town have the most crime of different types.		city	530	91	West Jefferson Public Safety Department		http://www.townofwj.com/safety.htm		0	0	2013-10-14 13:06:29.421401-04	2013-11-18 14:13:22.831296-05	1	1			
180	27	White Lake Police Reports	The town of White Lake has 12 police officers, but no website. Google's contact information appears to be correct: https://plus.google.com/112302791236094294718/about?gl=us&hl=en	Police incident and arrest reports would allow us to see whether crime is on the increase or decline, who is being arrested and what parts of town have the most crimes of various types.		city	533	33	White Lake Police Department		(910) 862-4057		0	0	2013-10-14 13:15:00.361817-04	2013-11-18 14:13:23.20963-05	1	1			
181	27	Montreat Police Reports	The Montreat Police officers file incident and arrest reports, summarized in a month PDF document available from the department's website: http://www.townofmontreat.org/documents/SEPTEMBER_2013_MONTHLY_POLICE_ACTIVITY_REPORT_10102013.pdf	Incident and arrest reports would show which parts of town are most dangerous, who is being arrested and specific details about crimes that can be used to improve community safety.	http://www.townofmontreat.org/documents/SEPTEMBER_2013_MONTHLY_POLICE_ACTIVITY_REPORT_10102013.pdf	city	324	13	Montreat Police Department		828.669.8002		0	0	2013-10-14 13:19:33.031349-04	2013-11-18 14:13:23.928363-05	1	1			
187	27	Wendell Police Records	This data set would tell us about crime and police activity in Wendell. Wendell's police records can be found in the Wake County Police 2 Citizen searchable web app, but there is no resource for just Wendell's police records. 	This would tell us about crime and police activity in Wendell.	http://p2c.wakeso.net/	city	527	\N	Police Department				0	0	2013-10-17 23:36:22.554726-04	2013-11-18 14:13:24.702742-05	\N	1			
186	27	Seven Devils Police Records	This data set would tell us about crime and police activity that cannot be found on the Seven Devils Police Department's website. 	This would tell us about crime and police activity.		city	440	\N	Police Department		policechief@sevendevils.net		0	0	2013-10-17 23:31:25.745152-04	2013-11-18 14:13:25.072862-05	\N	1			
185	27	Morrisville Police Records	This data set would tell us about crime and police activity in Morrisville that cannot be found from the Morrisville Police Department's website. You can find crime statistics from certain neighborhoods (see "Morrisville Crime Records" resource). 	This would tell us about crime and police activity.		city	329	\N	Police Department				0	0	2013-10-17 22:59:12.08296-04	2013-11-18 14:13:25.4438-05	\N	1			
189	27	Hope Mills Police Records	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Town of Hope Mills website.	This would tell us about crime and police activity.		city	230	69	Police Department 		(910) 425-4103		0	0	2013-10-18 18:18:18.177792-04	2013-11-18 14:13:26.653546-05	\N	1			
196	27	Marshville Police Reports	The data would provide information on crime and police activity in Marshville, but the website does not provide this information. The police chief is Chief Carl Webber, according to the website. 	The data would provide information on crime and police activity. 		city	299	78	Department of Public Safety		704-624-6767		0	0	2013-10-19 15:54:12.516604-04	2013-11-18 14:13:27.046789-05	\N	1			
195	27	Simpson Police Reports	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Simpson, N.C., website.	This would tell us about crime and police activity in Simpson, N.C.		city	447	19	Police Department		252-757-0101 		0	0	2013-10-19 15:50:33.629824-04	2013-11-18 14:13:27.760673-05	\N	1			
194	27	Troy Police Reports	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Troy, NC website.	This would tell us about crime and police activity in Troy, N.C.		city	496	31	Police Department		(910) 576-8151		0	0	2013-10-19 15:45:08.83058-04	2013-11-18 14:13:28.130566-05	\N	1			
193	27	Stanley Police Records	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Stanley, NC website.	This would tell us about crime and police activity.		city	466	26	Police Department				0	0	2013-10-18 19:45:53.012015-04	2013-11-18 14:13:28.519571-05	\N	1			
192	27	Mount Holly Police Records	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Town of Hope Mills website.	This would tell us about crime and police activity.		city	333	26					0	0	2013-10-18 18:57:25.048877-04	2013-11-18 14:13:28.916002-05	\N	1			
191	27	Lowell Police Records	This data set would provide information on crime and police activity that cannot be found on the police department's page on the City of Lowell website.	This would tell us about crime and police activity.		city	284	26					0	0	2013-10-18 18:55:49.331116-04	2013-11-18 14:13:29.265962-05	\N	1			
190	27	Cherryville Police Records	This data set would provide information on crime and police activity that cannot be found on the police department's page on the City of Cherryville's website.	This would tell us about crime and police activity.		city	91	26	Police Department				0	0	2013-10-18 18:53:33.166751-04	2013-11-18 14:13:29.695812-05	\N	1			
188	27	Weaverville Police Records 	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Town of Weaverville website.	This would tell us about crime and police activity.		city	523	13	Police Department 		(828) 645-5700		0	0	2013-10-18 17:52:08.109166-04	2013-11-18 14:13:30.079537-05	\N	1			
214	27	Wingate Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Wingate Police Department's website. Currently, the website only offers aggregated crime data. 	This would tell us about crime and police activity.	http://www.townofwingatenc.gov/departments/police/	city	543	78	Police Department 		704-233-1697		0	0	2013-10-19 21:49:47.348034-04	2013-11-18 14:13:30.436304-05	\N	1			
213	27	Waxhaw Police Reports	This data set would provide information about crime and police activity that cannot be found on the Waxhaw Police Department's website. 	This would tell us about crime and police activity.	http://www.waxhaw.com/index.aspx?nid=127	city	521	78	Police Department 		(704) 843-0353		0	0	2013-10-19 21:41:17.816987-04	2013-11-18 14:13:30.792444-05	\N	1			
212	27	Spencer Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Spencer Police Department's website. 	This would tell us about crime and police activity.	http://www.ci.spencer.nc.us/index.asp?Type=B_BASIC&SEC={1E9225B3-CFEC-46EA-86FE-5E66F3FB62A8}	city	456	53	Police Department 		policechief@ci.spencer.nc.us		0	0	2013-10-19 21:16:17.358398-04	2013-11-18 14:13:31.571868-05	\N	1			
211	27	Salisbury Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Salisbury Police Department's website. There was a scraperwiki for this data set, but it is no longer functional. 	This would tell us about crime and police activity.	http://www.salisburync.gov/Departments/Police/SupportServices/Pages/Police-Records.aspx	city	428	53	Police Department 		(704) 638-5333		0	0	2013-10-19 21:13:36.092683-04	2013-11-18 14:13:31.931601-05	\N	1			
210	27	Rockwell Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Rockwell Police Department's website. Currently, accident reports can only be picked up from the police department in person and cost $2 each.	This would tell us about crime and police activity.	http://www.rockwellnc.gov/html/police.html	city	410	53	Police Department 		(704) 279-3420		0	0	2013-10-19 21:07:07.239987-04	2013-11-18 14:13:32.271694-05	\N	1			
209	27	Landis Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Landis Police Department's website. Currently, police reports must be picked up in person at the Landis Police Department and cost $2 per report. 	This would tell us about crime and police activity.	http://www.townoflandis.com/police/	city	261	53	Police Department 		(704)-857-2129		0	0	2013-10-19 21:01:17.583646-04	2013-11-18 14:13:32.660285-05	\N	1			
208	27	Kure Beach Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Kure Beach Police Department's website. 	This would tell us about crime and police activity.	http://www.townofkurebeach.org/police-department.aspx	city	255	47	Police Department 		910-458-7586		0	0	2013-10-19 20:44:09.045615-04	2013-11-18 14:13:33.086846-05	\N	1			
206	27	Indian Beach Police Reports	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Indian Beach, N.C., website.	This would tell us about crime and police activity at Indian Beach, N.C.		city	234	16	Police Department		(252) 247-6700		0	0	2013-10-19 16:29:01.886081-04	2013-11-18 14:13:33.426193-05	\N	1			
205	27	Southport Police Reports	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Southport, N.C., website.	This would tell us about crime and police activity in Southport, N.C.		city	453	22	Police Department		(910) 457-7917		0	0	2013-10-19 16:25:22.651823-04	2013-11-18 14:13:33.81302-05	\N	1			
204	27	Rhodhiss Police Reports	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Rhodhiss, N.C., website.	This would tell us about crime and police activity in Rhodhiss, N.C.		city	400	34	Police Department		(828) 396-8401		0	0	2013-10-19 16:21:00.0386-04	2013-11-18 14:13:34.209749-05	\N	1			
202	27	Misenheimer Police Reports	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Misenheimer, N.C., website.	This would tell us about crime and police activity in Misenheimer, N.C.		city	320	4	Police Department		704-463-3000		0	0	2013-10-19 16:13:12.36134-04	2013-11-18 14:13:35.199367-05	\N	1			
201	27	Mount Airy Police Reports	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Mount Airy, N.C., website.	This would tell us about crime and police activity in Mount Airy, N.C.		city	331	66		Police Department	(336) 786-3535		0	0	2013-10-19 16:09:44.991936-04	2013-11-18 14:13:35.577984-05	\N	1			
200	27	King Police Reports	This data set would provide information on crime and police activity that cannot be found on the police department's page on the King, N.C., website. 	This would tell us about crime and police activity in King, N.C.		city	248	61	Police Department		336-944-6878		0	0	2013-10-19 16:06:28.296608-04	2013-11-18 14:13:36.049034-05	\N	1			
199	27	Monroe Police Reports	The data could provide information about crime and police activity in Monroe. The website provides information such as crime reports, crime statistics, and activity reports in map form, but you have to request individual reports in person. For example, in 2011, there were 2,077 part one crimes, according to part one crimes listed in the crime report. These include 11 rapes, 46 robberies, 18 aggravated assaults, 359 burglaries, 1,551 larcenies, 89 motor vehicle thefts, and three arsons. In 2010, there were 2,094 part one crimes, according to the crime report from the website.	The data provides information on crime and police activity. 		city	323	78	Department of Public Safety		704-282-4700		0	0	2013-10-19 16:04:02.553984-04	2013-11-18 14:13:36.479882-05	\N	1			
226	27	Warren County Food Establishment Inspections	Warren County does not make its food establishment inspection data readily available on its county website. WRAL.com has links to some reports.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://warrencountyhd.com/departments/environmental-health/	county	\N	92	Warren County Health Department		(252) 257-1185		0	0	2013-10-19 23:40:33.630741-04	2013-11-18 14:13:36.895163-05	\N	1			
225	27	Vance County Food Establishment Inspections 	Vance County does not make its food establishment inspection data readily available on its county website. WRAL.com has links to some reports.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://gvdhd.org/	county	\N	85	Vance County Health Department 		(252) 492-5263		0	0	2013-10-19 23:26:24.474672-04	2013-11-18 14:13:37.279436-05	\N	1			
224	27	Union County Food Establishment Inspections 	Union County does not make its food establishment inspection data readily available on its county website. WRAL.com has links to some reports.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.co.union.nc.us/Divisions/EnvironmentalHealth.aspx	county	\N	78	Union County Health Department		(704) 283-3553		0	0	2013-10-19 23:23:57.228612-04	2013-11-18 14:13:37.655275-05	\N	1			
223	27	Swain County Food Establishment Inspections 	Swain County County does not make its food establishment inspection data readily available on its county website. WRAL.com has links to some reports.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.swaincountync.gov/health-home.html	county	\N	42	Swain County Health Department 		alisonc@swaincountync.gov		0	0	2013-10-19 23:21:00.008114-04	2013-11-18 14:13:38.046605-05	\N	1			
222	27	Stokes County Food Establishment Inspections	Stokes County only makes a yearly report of food establishment grades available online. This report is not updated frequently, only includes the most recent inspection details, and does not include specific violations.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge.	http://www.co.stokes.nc.us/health/food.pdf	county	\N	61	Stokes County Health Department		(336)593-2403		0	0	2013-10-19 23:14:11.206253-04	2013-11-18 14:13:38.473225-05	4	1			
221	27	Sampson County Food Establishment Inspections 	Sampson County does not make its food establishment inspection data readily available on its county website. WRAL.com has links to some reports.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.sampsonnc.com/healthdept.asp?sub=health	county	\N	18	Sampson County Health Department		wrobinson@sampsonnc.com 		0	0	2013-10-19 22:19:15.911138-04	2013-11-18 14:13:39.095706-05	\N	1			
220	27	Rockingham County Food Establishment Inspections 	Rockingham County does not make its food establishment inspection data readily available on its county website. WRAL.com has links to some reports.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.rockinghamcountypublichealth.org/pView.aspx?id=15227&catid=414	county	\N	70	Rockingham County Health Department		336-342-8140 		0	0	2013-10-19 22:17:05.406064-04	2013-11-18 14:13:39.521054-05	\N	1			
219	27	Moore County Food Establishment Inspections 	Moore County does not make its food establishment inspection data readily available on its county website. WRAL.com has links to some reports.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.moorecountync.gov/index.php/mnu-envhealth	county	\N	1	Moore County Health Department		(910) 947-6283		0	0	2013-10-19 22:13:42.569812-04	2013-11-18 14:13:39.899335-05	\N	1			
265	27	Mount Olive Police Reports	The data would provide information on crime and police activity in Mount Olive, but this information is not available on the police department's website. The police chief is Chief Brian Rhodes, according to the website. 	The data would provide information on crime and police activity. 		city	334	76	Department of Public Safety		919-658-5031 ext. 102 (police chief)		0	0	2013-10-20 20:29:28.485081-04	2013-11-18 14:13:40.741608-05	\N	1			
217	27	Mitchell County Food Establishment Inspections 	Mitchell County does not make its food establishment inspection data readily available on its county website. The Toe River District website is currently under construction. WRAL.com has links to some reports.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://trhd.dst.nc.us/Mitchell_Environmental_Health_Restaurant_Inspections.asp	county	\N	21	Mitchell County Health Department 				0	0	2013-10-19 22:06:49.360166-04	2013-11-18 14:13:41.124821-05	\N	1			
216	27	State Capitol Police Reports 	This data set would provide information about crime and police activity that cannot be found on the State Capitol Police Department's website.	This would tell us about crime and police activity.	https://www.nccrimecontrol.org/index2.cfm?a=000003,001866	city	\N	8	Police Department		(919) 733-4646		0	0	2013-10-19 21:58:32.241714-04	2013-11-18 14:13:41.831612-05	\N	1			
242	27	Warrenton Police Reports	This data set would provide information about crime and police activity that cannot be found on the Warrenton Police Department website. 	This would tell us about crime and police activity in Warrenton, N.C.		city	516	92	Police Department		(252) 257-3123		0	0	2013-10-20 17:59:21.391446-04	2013-11-18 14:13:42.230486-05	\N	1			
231	27	Jacksonville Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Jacksonville Police Department website. Currently, the police department only publishes annual reports. 	This would tell us about crime and police activity.	https://jacksonvillenc.gov/index.aspx?NID=180	city	237	88	Police Department 		910-455-4000		0	0	2013-10-20 16:49:04.580144-04	2013-11-18 14:13:42.611613-05	\N	1			
232	27	North Topsail Beach Police Reports	This data set would provide information about crime and police activity that cannot be found on the North Topsail Beach Police Department's website.	This would tell us about crime and police activity.	http://ntbpd.org/	city	349	88	Police Department 		910-328-0042 		0	0	2013-10-20 16:55:38.589157-04	2013-11-18 14:13:43.25073-05	\N	1			
246	27	Sharpsburg Police Reports	This data set would provide information about crime and police activity that cannot be found on the Sharpsburg Police Department website. 	This would tell us about crime and police activity in Sharpsburg, N.C.		city	444	57	Police Department		(252) 977-1098		0	0	2013-10-20 18:14:14.581435-04	2013-11-18 14:13:43.633642-05	\N	1			
245	27	Taylortown Police Reports	This data set would provide information about crime and police activity that cannot be found on the Taylortown Police Department website. 	This would tell us about crime and police activity in Taylortown, N.C.		city	487	1	Police Department		910-295-1392		0	0	2013-10-20 18:09:08.361039-04	2013-11-18 14:13:44.014547-05	\N	1			
243	27	Plymouth Police Reports	This data set would provide information about crime and police activity that cannot be found on the Plymouth Police Department website. 	This would tell us about crime and police activity in Plymouth, N.C.		city	381	60	Police Department		(252) 793-4680		0	0	2013-10-20 18:01:38.339361-04	2013-11-18 14:13:44.366022-05	\N	1			
241	27	Rutherfordton Police Reports	This data set would provide information about crime and police activity that cannot be found on the Rutherfordton Police Department website. 	This would tell us about crime and police activity in Rutherfordton, N.C.		city	424	37	Police Department		(828) 287-5062		0	0	2013-10-20 17:50:07.238131-04	2013-11-18 14:13:44.734978-05	\N	1			
240	27	Spindale Police Reports	This data set would provide information about crime and police activity that cannot be found on the Spindale Police Department website. 	This would tell us about crime and police activity in Spindale, N.C.		city	458	37	Police Department		(828) 286-3464		0	0	2013-10-20 17:47:28.201512-04	2013-11-18 14:13:45.124298-05	\N	1			
239	27	Fountain Police Reports 	This data set would provide information about crime and police activity that cannot be found online. The police department does not currently have a website 	This would tell us about crime and police activity.		city	170	19	Police Department 		(252) 749-2881		0	0	2013-10-20 17:27:18.969148-04	2013-11-18 14:13:45.514697-05	\N	1			
238	27	Wilson's Mills Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Wilson's Mills Police Department website. 	This would tell us about crime and police activity.	http://www.wilsonsmillsnc.org/index.asp?Type=B_BASIC&SEC=%7B9A9E249E-F13B-4F3D-A558-D8218E40A68E%7D	city	540	12	Police Department 		919-938-3885 Ext. 24		0	0	2013-10-20 17:20:58.39872-04	2013-11-18 14:13:45.867081-05	\N	1			
237	27	Smithfield Police Reports	This data set would provide information about crime and police activity that cannot be found on the Smithfield Police Department's website. Currently, they only publish an annual report online and the police department must be contacted directly to obtain copies of individual reports. 	This would tell us about crime and police activity.	http://www.smithfieldpd.org/index.html	city	449	12	Police Department 		919-934-2121		0	0	2013-10-20 17:17:16.539848-04	2013-11-18 14:13:46.279522-05	\N	1			
236	27	Selma Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Selma Police Department's website. 	This would tell us about crime and police activity.	http://www.selma-nc.com/index.asp?Type=B_BASIC&SEC={6E0BBB91-B09C-45F7-85C0-1D1417B314DA}	city	439	12	Police Department 		(919) 965-8189 Ext. 211		0	0	2013-10-20 17:11:09.212321-04	2013-11-18 14:13:46.940812-05	\N	1			
235	27	Micro Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Micro Police department's website. Currently, the website is under construction.	This would tell us about crime and police activity.	http://www.micro-nc.com/	city	310	12	Police Department		(919) 284-2572		0	0	2013-10-20 17:07:59.565952-04	2013-11-18 14:13:47.285242-05	\N	1			
234	27	Kenly Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Kenly Police Department's website. Currently, the police department must be contacted directly to obtain reports. 	This would tell us about crime and police activity.	http://www.townofkenly.com/police.html	city	245	12	Police Department		josh.gibson@townofkenly.com		0	0	2013-10-20 17:05:08.632631-04	2013-11-18 14:13:47.670717-05	\N	1			
230	27	Cleveland Police Reports	This data set would provide information about crime and police activity that cannot be found online. Currently, the Cleveland Police Department does not have a website.	This would tell us about crime and police activity.		city	99	53	Police Department 		(704) 278-1900		0	0	2013-10-20 16:37:52.275492-04	2013-11-18 14:13:48.493593-05	\N	1			
258	27	St. Pauls Police Reports	This data set would provide information about crime and police activity that cannot be found on the St. Pauls Police Department website. 	This would tell us about crime and police activity in the Town of St. Pauls in N.C.		city	426	77	Police Department		910-865-5155		0	0	2013-10-20 18:59:36.029312-04	2013-11-18 14:13:48.857851-05	\N	1			
264	27	Ramseur Police Reports 	The data would provide information on crime and police activity in Ramseur, but this information is not available on the website. The police chief is Chief Larry Lewallen, according to the department's website. 	The data would provide information about the crime and police activity. 		city	391	11	Department of Public Safety		336-824-8663		0	0	2013-10-20 20:24:19.710197-04	2013-11-18 14:13:49.241694-05	\N	1			
263	27	Newton Police Reports	The data would provide information on crime and police activity in Newton. The telecommunicators answer approximately 150 administrative telephone calls and nine emergency 911 calls every day. The police chief is Chief Donald G. Brown, according to the department's website. 	The data could provide information on crime and police activity in Newton. 		city	345	41	Department of Public Safety		828-465-7430		0	0	2013-10-20 20:19:28.200042-04	2013-11-18 14:13:49.626392-05	\N	1			
262	27	Long View Police Reports	The data would provide information on crime and police activity in Long View, but the website does not provide this information. The police chief is Chief Cecil Rogers, according to the website. 	The data could provide information on crime and police activity. 		city	281	\N	Department of Public Safety		828-327-2343		0	0	2013-10-20 20:10:54.276157-04	2013-11-18 14:13:49.980105-05	\N	1			
261	27	Winterville Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Winterville Police Department's website. 	This would tell us about crime and police activity.	http://www.wintervillenc.com/department.aspx?dept=6&section=64	city	545	19	Police Department 		ryan.willhite@wintervillenc.com		0	0	2013-10-20 20:08:36.006163-04	2013-11-18 14:13:50.630417-05	\N	1			
257	27	Liberty Police Reports	This data set would provide information about crime and police activity that cannot be found on the Liberty Police Department website. 	This would tell us about crime and police activity in Liberty, N.C.		city	274	11	Police Department		336-622-9053		0	0	2013-10-20 18:52:40.477538-04	2013-11-18 14:13:51.414679-05	\N	1			
256	27	Burgaw Police Reports	This data set would provide information about crime and police activity that cannot be found on the Burgaw Police Department website. 	This would tell us about crime and police activity in Burgaw, N.C.		city	64	15	Police Department		910-259-4924		0	0	2013-10-20 18:48:45.181979-04	2013-11-18 14:13:51.811202-05	\N	1			
255	27	Conway Police Reports	This data set would provide information about crime and police activity that cannot be found on the Conway Police Department website. 	This would tell us about crime and police activity in Conway, N.C.		city	112	59	Police Department		(252) 585-1155		0	0	2013-10-20 18:46:17.286059-04	2013-11-18 14:13:52.414983-05	\N	1			
254	27	Middlesex Police Reports	This data set would provide information about crime and police activity that cannot be found on the Middlesex Police Department website. 	This would tell us about crime and police activity in Middlesex, N.C.		city	312	20	Police Department		252-235-4077		0	0	2013-10-20 18:43:32.79158-04	2013-11-18 14:13:52.74706-05	\N	1			
253	27	Spring Hope Police Reports	This data set would provide information about crime and police activity that cannot be found on the Spring Hope Police Department website. 	This would tell us about crime and police activity in Spring Hope, N.C.		city	459	20	Police Department		(252) 478-7347		0	0	2013-10-20 18:41:02.324538-04	2013-11-18 14:13:53.18997-05	\N	1			
252	27	Star Police Reports	This data set would provide information about crime and police activity that cannot be found on the Star Police Department website. 	This would tell us about crime and police activity in Star, N.C.		city	468	31	Police Department		(910) 428-9224		0	0	2013-10-20 18:34:22.036775-04	2013-11-18 14:13:53.587464-05	\N	1			
251	27	Mount Gilead Police Reports	This data set would provide information about crime and police activity that cannot be found on the Mount Gilead police department website.	This would tell us about crime and police activity in Mount Gilead, N.C.		city	332	31	Police Department		910-439-6711		0	0	2013-10-20 18:31:19.08144-04	2013-11-18 14:13:54.018568-05	\N	1			
250	27	Vass Police Reports	This data set would provide information about crime and police activity that cannot be found on the Vass Police Department website. 	This would tell us about crime and police activity in Vass, N.C.		city	504	1	Police Department		910-245-4676 ext. 4		0	0	2013-10-20 18:28:03.58835-04	2013-11-18 14:13:54.678869-05	\N	1			
249	27	Lillington Police Reports	This data set would provide information about crime and police activity that cannot be found on the Lillington Police Department website. 	This would tell us about crime and police activity in Lillington, N.C.		city	276	7	Police Department		(910) 893-3015		0	0	2013-10-20 18:25:33.72714-04	2013-11-18 14:13:55.065942-05	\N	1			
248	27	Raeford Police Reports	This data set would provide information about crime and police activity that cannot be found on the Raeford Police Department website. 	This would tell us about crime and police activity in Raeford, N.C.		city	389	96	Police Department		(910) 875-4251		0	0	2013-10-20 18:22:23.690803-04	2013-11-18 14:13:55.452117-05	\N	1			
276	27	Wagram Police Reports 	This data would provide information on crime and police activity in Wagram, but the website does not provide this information.	The data could provide information on crime and police activity. 		city	508	68	Department of Public Safety		910-369-2400 		0	0	2013-10-20 21:31:30.966686-04	2013-11-18 14:13:55.854009-05	\N	1			
279	27	Ocean Isle Beach Police Reports	The data would provide information on crime and police activity in Ocean Isle Beach, but the website does not provide this information. The police chief is Chief John W. Goodwin, according to the town's website. Programs include Operation Identification and Community Watch. 	The data could provide information on crime and police activity. 		city	357	22	Department of Public Safety		910-579-4221		0	0	2013-10-20 21:52:25.165836-04	2013-11-18 14:13:56.275695-05	\N	1			
277	27	Jefferson Police Reports	The data would provide information on crime and police activity in Jefferson, but the website does not provide this information.	The data could provide information about crime and police activity. 		city	240	91	Department of Public Safety		336-846-5529		0	0	2013-10-20 21:35:50.822466-04	2013-11-18 14:13:57.588931-05	\N	1			
275	27	Taylorsville Police Reports	The data would provide information on crime and police activity in Taylorsville, but the website does not provide this information. The police chief is Chief Tony Jones, according to the department's website. 	The data could provide information on crime and police activity. 		city	486	99	Department of Public Safety				0	0	2013-10-20 21:28:49.561275-04	2013-11-18 14:13:57.976839-05	\N	1			
274	27	Hamlet Police Reports 	This data set would provide information about crime and police activity that cannot be found online. Currently, the Hamlet Police Department does not have a website. 	This would tell us about crime and police activity.	http://www.hamletnc.us/gov.htm	city	205	65	Police Department 		910-582-2551		0	0	2013-10-20 21:20:23.114539-04	2013-11-18 14:13:58.350333-05	\N	1			
273	27	Littleton Police Reports	The data would provide information on crime and police activity in Littleton, but the website does not provide this information. 	The data could provide information on crime and police activity. 		city	279	75	Department of Public Safety		252-586-3413		0	0	2013-10-20 21:16:30.681333-04	2013-11-18 14:13:58.982635-05	\N	1			
272	27	Ellerbe Police Reports 	This data set would provide information about crime and police activity that cannot be found online. Currently, the Ellerbe Police Department does not have a website. 	This would tell us about crime and police activity.		city	147	65	Police Department 		(910) 652-6251		0	0	2013-10-20 21:15:24.836083-04	2013-11-18 14:13:59.339932-05	\N	1			
271	27	Maggie Valley Police Reports	The data would provide information on crime and police activity in Maggie Valley, but this information is not available on the website. The police chief is Chief R. Scott Sutton, according to the department's website. 	The data could provide information on crime and police activity. 		city	291	46	Department of Public Safety		828-926-0867 (during office hours) and 828-452-6666 (after hours)		0	0	2013-10-20 21:11:38.578007-04	2013-11-18 14:13:59.719041-05	\N	1			
270	27	Seagrove Police Reports 	This data set would provide information about crime and police activity that cannot be found online. Currently, the Seagrove Police Department does not have a website. 	This would tell us about crime and police activity.		city	437	11	Police Department 		(336) 873-8870		0	0	2013-10-20 21:04:11.710676-04	2013-11-18 14:14:00.113773-05	\N	1			
269	27	Pittsboro Police Reports	The data would provide information on crime and police activity in Pittsboro, but the website does not provide this information. The police chief is Chief Percy Crutchfield, according to the department's website. 	The data could provide information on crime and police activity. 		city	379	49	Department of Public Safety		919-542-3200 ext. 33 (police chief) 		0	0	2013-10-20 21:03:26.090223-04	2013-11-18 14:14:00.487019-05	\N	1			
268	27	Stantonsburg Police Reports	The data would provide information on crimes and police activity in Stantonsburg, but the website does not provide this information.	The data could provide information on crimes and police activity. 		city	467	32	Department of Public Safety		252-238-3534		0	0	2013-10-20 20:53:52.841358-04	2013-11-18 14:14:00.857772-05	\N	1			
267	27	Kings Mountain Police Reports	The data would provide information on crimes and police activity in Kings Mountain, but the website does not provide this information. The police chief is Chief Melvin Proctor, according to the website. There are 33 full-time police officers, eight part-time police officers, and one part-time telecommunicator at the police department. 	The data could provide information on crime and police activity. 		city	249	27	Department of Public Safety		704-734-0444		0	0	2013-10-20 20:47:25.401247-04	2013-11-18 14:14:01.287112-05	\N	1			
259	27	Thomasville Police Reports	This data provides information on crime and police activity in Thomasville. The website provides crime reports and statistics based on the month in 2012 and 2013, but there do not appear to be reports for every month. In August, there were 13 violent crimes, 106 property crimes, 201 total arrests, and 3,996 calls for service, according to the website's crime report. The reports also compare changes from previous months. Provides trend information but it is not a searchable database for all police reports.	The data provides information on crime and police activity. 	http://www.thomasville-nc.gov/Departments/Police/CrimeStat/CrimeStats.html	city	489	63	Department of Public Safety				0	0	2013-10-20 19:59:34.532083-04	2013-11-18 14:14:02.118404-05	\N	1			
247	27	Robersonville Police Reports	This data set would provide information about crime and police activity that cannot be found on the Robersonville Police Department website. 	This would tell us about crime and police activity in Robersonville, N.C.		city	408	24	Police Department		(252) 508-0312		0	0	2013-10-20 18:16:30.11935-04	2013-11-18 14:14:02.787223-05	\N	1			
244	27	Jonesville Police Reports	This data set would provide information about crime and police activity that cannot be found on the Jonesville Police Department website. 	This would tell us about crime and police activity in Jonesville, N.C.		city	241	36	Police Department		336-835-3426		0	0	2013-10-20 18:06:15.611726-04	2013-11-18 14:14:03.222275-05	\N	1			
229	27	Yancey County Food Establishment Inspections	Yancey County does not make its food establishment inspection data readily available on its county website. WRAL.com has links to some reports. Currently, the Toe River Health District website for health inspections is under construction, so it is possible that they are working on making the information available.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://trhd.dst.nc.us/Yancey_Environmental_Health.asp	county	\N	44	Yancey County Health Department		828 682-6118 		0	0	2013-10-20 00:05:00.154723-04	2013-11-18 14:14:03.644937-05	\N	1			
8	27	Columbus County Employee Salaries	The salaries of each person employed by Columbus County government, including their position, department, name and annual salary.	Understanding how much employees are paid helps us understand the county government's funding priorities and watch for any imbalances in salary distribution. 		county	\N	\N				salaries	0	0	2013-09-06 12:59:14.447578-04	2013-11-18 14:12:09.664063-05	3	1			
10	27	Police Reports	"The Zebulon Police Department Records Division is maintained by our Administrative Assistant, Eric Anderson. All report copies have a fee of $4.00. Report copies may be requested in person at the Police Department, or copies can be requested by mail. Copies may be faxed or mailed once a payment has been recieved. For questions regarding report copies please contact Eric by phone at 919-823-1818. Our vehicle accidents are available on the North Carolina DMV Crash Website for insurance agents who have access."	Access to police incident and arrest reports help us know more about the safety of Zebulon and the police officer's use of force and authority. 	http://www.townofzebulon.org/town-departments.php?cat=134	city	553	\N	Police Department	Records Division	Administrative Assistant Eric Anderson, 919-823-1818		0	0	2013-09-20 14:51:41.680964-04	2013-11-18 14:12:10.115108-05	1	1			
24	27	Beech Mountain Police Reports	The police department in Beech Mountain received about 17,000 calls for service in 2010, according to its website. This data set would provide information about crimes and police activity.	This would tell us about crimes and police activity.		city	31	\N	Police Department				0	0	2013-10-06 13:30:13.530523-04	2013-11-18 14:12:17.900555-05	\N	1			
34	27	Elkin Police Reports	This data would provide information on crimes and police activity. In 2012, there were 12,369 total calls for service, according to the department's website. There were 2,410 vehicle stops, 1,031 citations issued, and 315 traffic accidents. Regarding patrol, there was a 9.2 percent drop in index offenses from 2011. For CID, 264 cases were assigned and the closure rate equaled 87.5 percent.  	This helps understand crime and police activity. 		city	145	\N	Department of Public Safety				0	0	2013-10-06 19:06:14.780798-04	2013-11-18 14:12:22.424663-05	\N	1			
54	27	Cary Police Records	This data set would provide information on crime and police activity, which cannot be found on the Cary Police Department's website. They do have an employee who does crime analysis, but you would have to get in touch with her for her analysis.	This would tell us about crime and police activity.	http://www.townofcary.org/Departments/police/Records.htm	city	79	\N	Police Department		elise.pierce@townofcary.org		0	0	2013-10-07 16:25:55.587558-04	2013-11-18 14:12:27.29723-05	\N	1			
51	27	Caldwell County Restaurant Inspection Reports	Caldwell County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.caldwellcountync.org/caldwell-county-nc-departments/environmental-health/	county	\N	34	Caldwell County Department of Health		http://www.caldwellcountync.org/caldwell-county-nc-departments/environmental-health/contact-environmental-health/		0	0	2013-10-07 16:16:02.842471-04	2013-11-18 14:12:27.660512-05	\N	1			
60	27	Columbus County Food Establishment Inspections	Columbus County does not make its restaurant and food inspection reports readily available on its official website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.columbusco.org/dotnetnuke_2/health/Home/EnvironmentalHealth/tabid/694/Default.aspx	county	\N	35	Columbus County Health Department 		910-640-6617		0	0	2013-10-07 19:57:17.741034-04	2013-11-18 14:12:34.729752-05	\N	1			
228	27	Wilson County Food Establishment Inspections	Wilson County does not make its food establishment inspection data readily available on its county website. WRAL.com has links to some reports.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.wilson-co.com/index.aspx?NID=242	county	\N	32	Wilson County Health Department		(252) 291-5470		0	0	2013-10-20 00:00:06.911077-04	2013-11-18 14:14:04.030691-05	\N	1			
227	27	Wayne County Food Establishment Inspections	Wayne County does not have complete information available for its health department inspections. Inspections do not include specific violations or scores/grades. Without this information, the inspection reports do not give much helpful information to users.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.waynehealthdept.org/inspections	county	\N	76	Wayne County Health Department		304-272-6761		0	0	2013-10-19 23:54:16.70329-04	2013-11-18 14:14:04.42454-05	\N	1			
215	27	Raleigh Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Raleigh Police Department's website. Currently, reports must be picked up in person from the police department and only online report submissions (reports submitted by citizens online) can be viewed online. 	This would tell us about crime and police activity.	http://www.raleighnc.gov/home/content/Police/Articles/Requestreport.html	city	390	8	Police Department 		919-996-3325		0	0	2013-10-19 21:55:28.51515-04	2013-11-18 14:14:04.818064-05	\N	1			
198	27	Mayodan Police Reports	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Mayodan, N.C., website.	This would tell us about crime and police activity in Mayodan, N.C.		city	303	70	Police Department		(336) 548-6038		0	0	2013-10-19 15:59:13.091406-04	2013-11-18 14:14:05.19487-05	\N	1			
197	27	Randleman Police Reports	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Randleman, N.C., website.	This would tell us about crime and police activity in Randleman, N.C.		city	392	11	Police Department		(336) 495-7510		0	0	2013-10-19 15:54:18.224052-04	2013-11-18 14:14:05.572592-05	\N	1			
2	27	BETS Database of Food Establishment Inspections	This database, called BETS, contains records of health inspections of restaurants, school cafeterias and other food service establishments in all 100 counties. It shows the date and location of inspections, inspectors' names and individual comments and point deductions for each inspection. It is an Oracle database.\r\n\r\nA subset of the fields in the database has been published monthly in .ttx format at http://ehs.ncpublichealth.com/browsablemedia/ but it would be useful to have the entire database, especially these tables:\r\n\r\nDD_BETS_Form_Item_field\r\nDD_BETS_Form_Item\r\nDD_BETS_Activity_Item_Field\r\nDD_BETS_Activity_Item\r\nDD_Visit_Items_Marked\r\nDD_BETS_Form\r\nDD_BETS_Activity\r\n\r\nWe have a data dictionary that describes the tables and the fields they contain.	This data is used to determine the food safety of restaurants, and is used to create those restaurant scorecards with which all patrons are familiar. This database can help North Carolinians make healthy choices about the food they eat.	https://www.muckrock.com/foi/north-carolina-153/public-records-request-for-bets-database-4914/	state	\N	\N	Department of Health and Human Services	Division of Public Health	Kevin V. Howell		1	1	2013-08-22 00:00:00-04	2013-11-18 14:12:38.460873-05	\N	1			
78	27	Cramerton Police Records 	This data set would provide information on crime and police activity that cannot be found on the Cramerton Police Department website.	This would tell us about crime and police activity.		city	116	26	Police Department		(704)-824-7964		0	0	2013-10-07 23:39:41.416138-04	2013-11-18 14:12:41.069203-05	\N	1			
95	27	Hyde County Food Establishment Inspections	Hyde County has a link for restaurant grades on its county website - http://www.hydehealth.com/ehs-foodandlodging.htm - but clicking on the "Food Service Establishments" link brings the user to a PDF with the grades for just one quarter, October to December 2009.	The public deserves to know about restaurant sanitation and health grades, and these full reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.hydehealth.com/pdf/Hyde%20County%20Restaurant%20Sanitation%20Scores%20for%20the%202nd%20Quarter%20of%202009-2010.pdf	county	\N	\N	Hyde County Health Department		(252) 926-4380		0	0	2013-10-10 00:00:57.291112-04	2013-11-18 14:12:42.384807-05	\N	1			
103	27	Edenton Police Records	This data set would provide information about crime and police activity that cannot be found on the Edenton Police Department's page on the Edenton website.	This would tell us about crime and police activity.		city	141	71	Police Department		(252)482-5144		0	0	2013-10-10 14:30:44.398427-04	2013-11-18 14:12:49.912377-05	\N	1			
136	27	Jackson Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Jackson Police Department's website. 	This would tell us about crime and police activity.	http://historicjacksonnc.com/jackson_nc_police_fire_rescue.php	city	236	59	Police Department 		(252)-534-3811		0	0	2013-10-10 22:36:54.261288-04	2013-11-18 14:12:58.025958-05	\N	1			
140	27	Pamlico County Food Establishment Inspections	Pamilco County does not make its food establishment inspection data readily available on its county website. WRAL.com has links to some reports.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://pamlico.nc.us/environmental-health.aspx	county	\N	5	Pamlico County Health Department		252-745-5634		0	0	2013-10-11 22:38:44.736877-04	2013-11-18 14:13:04.693688-05	\N	1			
148	27	Spruce Pine Police Reports	This data is to provide information on crime and police activity, but this cannot be found on the department's website. 	The data would provide information on crime and police activity. 		city	461	21	Department of Public Safety		828-765-2233 (for administration)		0	0	2013-10-12 10:55:58.527136-04	2013-11-18 14:13:05.467741-05	\N	1			
149	27	Shelby Police Reports	This data is to provide information on crime and police activity. The Shelby Police Department is a full-service police agency. There are 85 full-time employees. In 2011, the Shelby Police Department handled more than 42,500 calls for service, according to the department's website. The website also has media releases about topics including investigations such as homicide investigations, incidents such as missing person incidents, and armed robberies. 	This data is to provide information on crime and police activity. 		city	445	27	Department of Public Safety		704-484-6845		0	0	2013-10-12 11:03:53.143313-04	2013-11-18 14:13:08.484229-05	\N	1			
166	27	Norlina Police Reports	The data would provide information on crime and police activity in Norlina, but this information is not available on the website. 	The data could provide information on crime and police activity. 		city	347	92	Department of Public Safety		252-456-3401 		0	0	2013-10-13 11:36:14.610966-04	2013-11-18 14:13:11.85133-05	\N	1			
174	27	Ranlo Police Reports	The data would provide information on crime and police activity in Ranlo. The town's website does not provide any information under "Police Department."	The data could provide information on crime and police activity in Ranlo.		city	393	26	Department of Public Safety		(704) 824-5721		0	0	2013-10-13 22:09:52.436689-04	2013-11-18 14:13:12.285646-05	\N	1			
175	27	Wrightsville Beach Police Reports	The data would provide information on crime and police activity at Wrightsville Beach. The website states that copies of accidents or case reports can be retrieved from the front desk at the Police Department.	The data could provide online information on crime and police activity at Wrightsville Beach. 		city	549	47	Department of Public Safety		910-256-7945		0	0	2013-10-13 22:17:37.808664-04	2013-11-18 14:13:19.597206-05	\N	1			
182	27	Pineville Police Reports	Pineville Police file incident and arrest reports more than 1,500 times per month.\r\n\r\n"The Records Division currently uses USA Software’s CrimeFile 2000 Incident Reporting software to generate the UCR reports and electronically submits them to the SBI in Raleigh. Data submitted includes, but is not limited to:\r\nClassification and scoring of offenses;\r\nClearances;\r\nProperty values;\r\nArrest counts; and\r\nSubmission of updated and/or corrected data."	This data would show us crime trends for specific locations, as well as the names of people whom the police are arresting. This data helps people stay safe. 	http://www.pinevillencpolice.com/CrimeStats.html	city	373	\N	Pineville Police Department	Records Division	Records Clerk Peggy Crenshaw		0	0	2013-10-15 12:14:54.714304-04	2013-11-18 14:13:24.323822-05	1	1			
\.


--
-- Data for Name: requests_request_categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY requests_request_categories (id, request_id, category_id) FROM stdin;
124	51	11
125	48	11
126	2	2
127	2	11
376	125	6
377	124	6
378	123	6
379	122	6
9	10	6
10	17	6
11	5	6
380	121	6
381	120	6
382	119	6
383	118	6
16	20	6
384	117	6
385	116	6
386	115	6
387	114	6
388	113	6
389	112	6
390	111	6
391	109	6
392	108	6
393	107	6
394	106	6
395	105	6
396	104	6
397	103	6
398	102	6
399	101	6
400	100	6
401	179	6
402	180	6
403	181	6
405	182	6
411	187	6
412	186	6
413	185	6
414	184	6
415	183	6
152	96	11
153	97	11
55	21	6
155	95	11
156	94	11
157	93	11
159	90	6
160	89	6
161	88	6
162	87	6
163	86	6
164	85	6
165	84	6
166	83	11
167	82	11
168	81	11
169	79	11
170	78	6
171	77	6
172	76	6
173	49	11
174	45	6
175	44	6
176	98	6
177	99	6
178	42	6
179	41	6
180	43	6
181	40	6
84	74	6
182	39	6
86	73	6
87	72	6
88	71	6
183	38	6
90	70	6
184	37	6
92	69	6
93	68	6
185	36	6
95	67	6
96	66	6
186	35	6
99	3	6
100	22	6
101	23	6
102	24	6
103	25	6
104	26	6
105	27	6
106	28	6
107	29	6
108	30	6
109	31	6
110	58	11
187	34	6
112	62	11
113	47	11
114	61	11
115	60	11
116	59	11
117	57	6
118	56	6
119	55	6
188	33	6
121	75	6
122	54	6
123	53	6
189	32	6
221	91	6
323	141	11
324	178	6
325	177	6
326	176	6
327	175	6
328	174	6
329	173	6
330	172	6
331	171	6
332	170	6
333	169	6
334	168	6
335	167	6
336	166	6
337	165	6
338	164	6
339	163	6
340	162	6
341	161	6
342	160	6
343	159	6
344	158	6
345	157	6
346	156	6
347	155	6
348	154	6
349	153	6
350	152	6
351	151	6
352	150	6
353	149	6
354	148	6
355	147	6
356	146	6
357	145	6
358	144	6
359	143	6
360	142	6
361	140	11
362	139	11
363	138	11
364	137	11
365	136	6
366	135	6
367	134	6
368	133	6
369	132	6
370	131	6
371	130	6
372	129	6
373	128	6
374	127	6
375	126	6
579	214	6
580	213	6
581	212	6
582	211	6
583	210	6
584	209	6
585	208	6
586	206	6
587	205	6
588	203	6
589	202	6
590	201	6
591	200	6
592	199	6
593	198	6
594	197	6
595	196	6
596	195	6
597	194	6
598	193	6
599	192	6
600	191	6
601	190	6
602	189	6
603	188	6
514	279	6
515	278	6
516	277	6
517	276	6
518	275	6
519	274	6
520	273	6
521	272	6
522	271	6
523	270	6
524	269	6
525	268	6
526	267	6
527	266	6
528	265	6
529	264	6
530	263	6
531	262	6
532	261	6
533	260	6
534	259	6
535	258	6
536	257	6
537	256	6
538	255	6
539	254	6
540	253	6
541	252	6
542	251	6
543	250	6
544	249	6
545	248	6
546	247	6
547	246	6
548	245	6
549	244	6
550	243	6
551	241	6
552	240	6
553	239	6
554	238	6
555	237	6
556	236	6
557	235	6
558	234	6
559	233	6
560	232	6
561	231	6
562	230	6
563	242	6
564	229	11
565	228	11
566	227	11
567	226	11
568	225	11
569	224	11
570	223	11
571	222	11
572	221	11
573	220	11
574	219	11
575	218	11
576	217	11
577	216	6
578	215	6
\.


--
-- Name: requests_request_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('requests_request_categories_id_seq', 603, true);


--
-- Name: requests_request_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('requests_request_id_seq', 279, true);


--
-- Data for Name: requests_request_resources; Type: TABLE DATA; Schema: public; Owner: -
--

COPY requests_request_resources (id, request_id, resource_id) FROM stdin;
9	124	93
10	112	82
11	111	67
12	101	87
15	222	117
16	191	111
\.


--
-- Name: requests_request_resources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('requests_request_resources_id_seq', 16, true);


--
-- Data for Name: scribbler_scribble; Type: TABLE DATA; Schema: public; Owner: -
--

COPY scribbler_scribble (id, created_time, modified_time, name, slug, url, content) FROM stdin;
2	2013-09-06 15:54:24.931272-04	2013-09-06 16:12:39.756248-04		faq-page	/faq/	\n\t    <ul>\n\t    \t<li><a href="#q1">Why was Open-NC.org created?</a></li>\n\t    \t<li><a href="#q2">Who created Open-NC.org?</a></li>\n\t    \t<li><a href="#q3">Who can join the Open N.C. community?</a></li>\n\t    \t<li><a href="#q4">Does Open N.C. release private information stored in government databases?</a></li>\n\t    \t<li><a href="#q5">Is Open N.C. an official state government website?</a></li>\n\t    \t<li><a href="#q6">How does Open N.C. gather and verify information that is published on the site?</a></li>\n    \t</ul>\n    \t<ul>\n\t    \t<li><a href="#q7">Did you make all these databases?</a></li>\n\t    \t<li><a href="#q8">I see an error in a database. What do I do?</a></li>\n\t    \t<li><a href="#q9">I see data that I want removed. What do I do?</a></li>\n\t    \t<li><a href="#q10">Why is information about some databases incomplete?</a></li>\n\t    \t<li><a href="#q11">Can I contribute money to Open N.C.?</a></li>\n            <li><a href="#q12">How do I contact you?</a></li>\n\t\t</ul>\n\n\t\t<h4 id="q1">Why was Open-NC.org created?</h4>\n\t\t<p>\n\t\tState, county and local government agencies throughout North Carolina create millions of database entries every year, but few are easily available for public inspection  &mdash;  \n          especially by rural residents who may live many miles from the county courthouses where the databases are stored. The N.C. General Assembly created statutes that say these databases should be open to public inspection. This site aims to help support that law.\n \t\t<br><br>\n\t\tAs part of a project to help rural newspapers in North Carolina develop new revenue streams in the digital age, University of North Carolina professors Penny Abernathy and Ryan Thornburg \n          discovered that journalists were having difficulties obtaining access to current and complete digital public data. These difficulties increase the legal and personnel expenses of \n          news organizations while also limiting their revenue opportunities.\n\t\t<br><br>\n\t\tThis site hopes to help make more digital public records readily available to journalists, entrepreneurs and engaged citizens who we hope might use this data to spur innovation in a variety of fields.\n\t\t<br><br>\n\t\t<a href="#FAQ">Back to Top</a>\n\t\t</p> \n\t\t<h4 id="q2">Who created Open-NC.org?</h4>\n\t\t<p>\n\t\tUNC Associate Professor Ryan Thornburg led the development of the site, which was created with funding from the John S. &amp; James L. Knight Foundation, a 501(c)3 tax-exempt \n          private foundation that supports transformational ideas that promote quality journalism, advance media innovation, engage communities and foster the arts. \n          Developers at Caktus Consulting Group in Carrboro, N.C., programmed the site using some code that was first created by Azavea for OpenDataPhilly.com. \n          The original site design was done by UNC journalism and mass communication student Matt Hayes.\n\t\t<br><br>\n\t\t<a href="#FAQ">Back to Top</a>\n\t\t</p>\n\t\t<h4 id="q3">Who can join the Open N.C. community?</h4>\n\t\t<p>\n\t\tAnyone. We welcome citizens, journalists, librarians, other information professionals, politicians, activists, business people, government agency workers, web developers and everyone else to our community.\n\t\t<br><br>\n\t\t<a href="#FAQ">Back to Top</a>\n\t\t</p>\n\t\t<h4 id="q4">Does Open N.C. release private information stored in government databases?</h4>\n\t\t<p>\n\t\tDefinitely not. We follow privacy laws that have been passed by federal and state lawmakers. State and federal law specifically requires government agencies to redact (or remove) private data if it's mixed with public data, and release the public portion.\n\t\t<br><br>\n\t\t<a href="#FAQ">Back to Top</a>\n\t\t</p>\n\t\t<h4 id="q5">Is Open N.C. an official state government website?</h4>\n\t\t<p>\n\t\tNo, Open-NC.org is not officially affiliated with state government agencies, with one distinction. Open N.C. was created by and is edited by a professor working at the University of \n          North Carolina. The University of North Carolina School of Journalism and Mass Communication receives funding from the N.C. General Assembly.\n\t\t<br><br>\n\t\t<a href="#FAQ">Back to Top</a>\n\t\t</p>\n\t\t<h4 id="q6">How does Open N.C. gather and verify information that is published on the site?</h4>\n\t\t<p>\n\t\tWhen you and other community members suggest a database for the catalog, we ask you to provide as much information as you can. We edit this information and check it for accuracy before making it available on the site.\n\t\t<br><br>\n\t\t<a href="#FAQ">Back to Top</a>\n\t\t</p>\n\t\t<h4 id="q7">Did you make all these databases?</h4>\n\t\t<p>\n\t\tNo. In fact, all of the public data listed on this site is hosted by government agencies or other organizations that have acquired and published digital public data online for you to use. Those sites are responsible for the accuracy and completeness of the data they host. Wherever possible we link directly to the public data that is hosted by government agencies because that is the best way to know that the information is in its original format. However, original data hosted on government sites is not always free of errors and may not be as current or complete as versions of the data that private contributors have acquired from primary sources that are not available on the Internet.\n\t\t<br><br>\n\t\t<a href="#FAQ">Back to Top</a>\n\t\t</p>\n\t\t<h4 id="q8">I see an error in a database. What do I do?</h4>\n\t\t<p>\n\t\tThe databases’ creator and publisher is ultimately responsible, but we want to know about it, too. You should first contact the person listed on each dataset’s catalog page, but also please let us know at <a href:"mailto:info@open-nc.org?subject=Error in data on Open-NC.org">info@open-nc.org</a>.\n\t\t<br><br>\n\t\t<a href="#FAQ">Back to Top</a>\n\t\t</p>\n\t\t<h4 id="q9">I see data that I want removed. What do I do?</h4>\n\t\t<p>\n\t\tWe only catalog public data that was originally created and made public by government agencies in North Carolina. If you feel that this data was collected or released in violation of state or federal privacy laws, please contact the person listed on each dataset’s catalog page, but also please let us know at <a href:"mailto:info@open-nc.org?subject=Request to remove data from Open-NC.org">info@open-nc.org</a>.\n\t\t<br><br>\n\t\t<a href="#FAQ">Back to Top</a>\n\t\t</p>\n\t\t<h4 id="q10">Why is information about some databases incomplete?</h4>\n\t\t<p>\n\t\tWe strive to give you as much information as possible. However, sometimes agencies will fail to provide complete information. We believe it's better to get as much information out about these databases. You can help us by providing details later.\n\t\t<br><br>\n\t\t<a href="#FAQ">Back to Top</a>\n\t\t</p>\n\t\t<h4 id="q11">Can I contribute money to Open N.C.?</h4>\n\t\t<p>\n\t\tIf you'd like to support open records, data and government, you can <a href="http://www.jomc.unc.edu/gift" target="_blank">make a gift</a> to the University of North Carolina’s School of Journalism and Mass Communication and designate your contribution to support the work of Open-NC.org if you choose.\n\t\t<br><br>\n\t\t<a href="#FAQ">Back to Top</a>\n        <h4 id="q12">How do I contact you?</h4>\n\t\n          <ul>\n            <li>Got data to contribute? Fill out the form on the <a href="https://open-nc.org/suggest-data/" target="_blank">Share Data</a> page.</li> \n            <li>Is data missing that you think should be available? Visit the <a href="https://open-nc.org/request-data/" target="_blank">Request Data</a> page to add your suggestion or vote on other users' ideas.</li> \n            <li>Have you used N.C. public data in useful and inspiring ways? Email it to <a href="mailto:info@open-nc.org">info@open-nc.org</a></li>\n            <li>Other questions or ideas? Contact us at <a href="mailto:info@open-nc.org">info@open-nc.org</a></li>\n</ul>\n\t<br><br>\n\t\t<a href="#FAQ">Back to Top</a>  \n          \n          \n          \n          \n          \n          \n          \n          \n          \n          \n          \n\t\t</p>\n        
4	2013-09-06 16:34:49.517106-04	2013-09-06 16:34:49.517149-04		links-page	/useful-links/	\n\t<p>This page is intended to help you either use data or find additional data sets not included in Open-NC.org.</p>\n\n\t<h3>Bring Open N.C. to Your State</h3>\n\t<p>Open-NC.org is a free and open-source Django Web app. You can fork the code on <a href="github.com" target="_blank">GitHub</a> at <a href="github.com/openrural/open-data-nc" target="_blank">https://github.com/openrural/open-data-nc</a></p>\n\n\t<h3>Free, Open Source Software</h3>\n\t<ul>\n\t\t<li><a href="http://www.openoffice.org/" target="_blank">OpenOffice</a> – for Mac, PC and Linux. Can work with Excel files, CSV and other delimited text files.</li>\n\t\t<!-- <li>– For Mac and PC. For working with .shp files.\n\t\t<li>- Useful for cleaning data . -->\n\t\t<li><a href="http://www.r-project.org/" target="_blank">R</a> – statistical analysis software.</li>\n\t</ul>\n\n\t<h3>Free, but Not Open Source Software</h3>\n\t<ul>\n\t\t<li><a href="http://www.esri.com/software/arcgis/explorer" target="_blank">ArcGIS Explorer Desktop</a> – for viewing .shp files</li>\n\t\t<!-- \t<li>– for viewing KML files -->\t\n\t\t<li><a href="https://public.tableau.com" target="_blank">Tableau Public</a> – for PC only, a free but limited version of Tableau, a tool for creating quick data visualizations such as maps and charts</li>\n\t</ul>\n\t \n\t<h3>Paid Proprietary Software</h3>\n\t<ul>\n\t\t<li><a href="http://office.microsoft.com/en-us/access/" target="_blank">Access</a></li>\n\t\t<li><a href="http://www.oracle.com/technetwork/database/enterprise-edition/downloads/index.html" target="_blank">Oracle</a></li>\n\t\t<li><a href="http://www.esri.com/software/arcgis/arcgis-for-desktop" target="_blank">ESRI ArcGIS for Desktop</a> - available at little or no cost for non-profit organizations. Freely available to UNC students and faculty via ITS.</li>\n\t</ul>\n\n\t<h3>Other Catalogs of Public Data</h3>\n\t<ul>\n\t\t<li><a href="data.gov" target="_blank">Data.gov</a></li>\n\t\t<li><a href="ncopenbook.com" target="_blank">NCOpenbook.com</a></li>\n\t\t<li><a href="http://www.lib.ncsu.edu/gis/" target="_blank">GIS Library at N.C. State University</a></li>\n\t\t<li><a href="http://census.ire.org/" target="_blank">Investigative Reporters & Editor’s Census.ire.org</a></li>\n\t </ul>\n\n\t<h3>Tools for Acquiring Data</h3>\n\t<ul>\n\t\t<li><a href="http://www.rcfp.org/foia" target="_blank">Freedom of Information Act letter generator</a> - from Reporter’s Committee for Freedom of the Press.</li>\n\t\t<li><a href="http://www.splc.org/legalassistance/foiletter.asp" target="_blank">State Open Records Law Request letter generator</a> - from the Student Press Law Center.</li>\n\t\t<li><a href="https://www.muckrock.com/" target="_blank">MuckRock.com</a> - a web-based serviced to help you generate and track public records requests.</li>\n\t\t<li><a href="http://www.foiamachine.org/wiki/" target="_blank">FOIAmachine.org</a> - a web-based service to help you generate and track public records requests.</li>\n\t\t<li><a href="http://www.outwit.com/" target="_blank">OutWit</a> – a downloadable program for the Mac and PC that helps scrape data off of HTML webpages. Available in a free or paid full-feature version.</li>\n\t\t<li><a href="http://www.screen-scraper.com/" target="_blank">ScreenScraper</a> – a downloadable program for Mac, Windows or Linux that helps scrape data off of HTML webpages. Available in a free or paid full-feature version.</li>\n\t\t<li><a href="https://scraperwiki.com/help/code-in-your-browser/" target="_blank">ScraperWiki</a> – a self-service web platform where you can create and host web scrapping applications that you write in Python, Ruby, PHP or another programming language.</li>\n\t</ul>\n\t \n\t<h3>Learn About Public Records</h3>\n\t<ul>\n\t\t<li><a href="https://www.elon.edu/docs/e-web/academics/communications/ncopengov/seekers/NCMediaLawHandbook2007.pdf" target="_blank">N.C. Media Law Handbook</a> (pdf)</li>\n\t\t<li><a href="http://www.ncga.state.nc.us/gascripts/statutes/statutelookup.pl?statute=132" target="_blank">N.C. Statutes, Chapter 132</a></li>\n\t\t<li><a href="http://www.ncdoj.gov/getdoc/ef04d580-eee7-4cfe-b2ec-06c26a6f95b9/AG-open-government-booklet-4-8-08.aspx" target="_blank">N.C. Attorney General’s Guide to Open Government and Public Records </a></li>\n\t\t<li><a href="http://www.elon.edu/e-web/academics/communications/ncopengov/innc/pubrec.xhtml" target="_blank">Sunshine Center at the North Carolina Open Government Coalition at Elon University</a></li>\n\t\t<li><a href="http://www.dmlp.org/legal-guide/access-public-records-north-carolina" target="_blank">Digital Media Law Project’s Access to Public Records in North Carolina</a></li>\n\t\t<li><a href="http://www.ncpress.com/ncpa/openmeetings.html" target="_blank">N.C. Press Association </a></li>\n\t\t<li><a href="http://sunlightfoundation.com/issues/freeing-federal-data/" target="_blank">Sunlight Foundation</a></li>\n\t</ul>\n\n\t<h3>Learn About Open Data Concepts</h3>\n\t<ul>\n\t\t<li><a href="http://schoolofdata.org/handbook/" target="_blank">The School of Data Handbook</a></li>\n\t\t<li><a href="http://opendatahandbook.org/" target="_blank">Open Data Handbook</a></li>\n\t\t<li><a href="http://datajournalismhandbook.org/" target="_blank">Data Journalism Handbook</a></li>\n\t\t<li><a href="http://getthedata.org/" target="_blank">GettheData.org</a></li>\n\t</ul>\n\n\t<h3>Technical Tutorials</h3>\n\t<ul>\n\t\t<li><a href="https://www.diigo.com/user/rtburg/excel" target="_blank">Excel</a></li>\n\t\t<li><a href="https://www.diigo.com/user/rtburg/access" target="_blank">Access</a></li>\n\t\t<li><a href="https://www.diigo.com/user/rtburg/refine" target="_blank">Refine</a></li>\n\t\t<li><a href="https://www.diigo.com/user/rtburg/google-fusion" target="_blank">Google Fusion Tables</a></li>\n\t\t<li><a href="https://www.diigo.com/user/rtburg/google-maps" target="_blank">Google Maps</a></li>\n\t\t<li><a href="https://www.diigo.com/user/rtburg/qgis" target="_blank">QGIS</a></li>\n\t\t<li><a href="http://guides.lib.unc.edu/content.php?pid=434273&sid=3553419" target="_blank">ArcGIS</a></li>\n\t</ul>\n\t<ul>\n\t\t<li><a href="https://www.diigo.com/user/rtburg/outwithub" target="_blank">OutWit</a></li>\n\t\t<li><a href="https://www.diigo.com/user/rtburg/tableau" target="_blank">Tableau</a></li>\n\t\t<li><a href="https://www.diigo.com/user/rtburg/sql" target="_blank">SQL</a></li>\n\t\t<li><a href="https://www.diigo.com/user/rtburg/scraping" target="_blank">Data Scraping</a></li>\n\t\t<li><a href="https://www.diigo.com/user/rtburg/data-visualization" target="_blank">Data Visulatization</a></li>\n\t\t<li><a href="http://www.w3schools.com/" target="_blank">W3Schools</a></li>\n\t\t<li><a href="http://www.codecademy.com/" target="_blank">Code Academy</a></li>\n\t</ul>\n    
5	2013-09-06 16:36:10.355602-04	2013-09-06 16:40:13.862761-04		privacy-page	/privacy/	\n    \t<p>\n    \tOpen-NC.org takes the privacy of you &#8212; our site visitors and community members &#8212; seriously. Please read this policy closely so you understand our practices. If you have any questions, please address them to privacy@open-nc.org. Our goal is to sustain a vibrant community while protecting your privacy. This policy may be updated from time to time, so we encourage you to visit this page often and become familiar with any changes. By using our website, you consent to information practices outlined in our <a href="{% url 'terms' %}">Terms of Use</a> and Privacy Policy.\n    \t</p>\n\n\t\t<h3>Normal Browsing</h3>\n\t\t<p>\n\t\tAs with many websites, we collect certain information, even when you are not logged in. When you browse, read, or download information from the Site, data is collected by Open-NC.org, \n          including but not limited to your IP address, URL request, browser type, and date and time of your request. The data are analyzed in various ways, including using a service called \n          Google Analytics. (Google Analytics is subject to the privacy policy of Google, Inc., which you can find on Google’s website. Information collected and processed by Google Analytics \n          includes the user’s IP address, network location, and geographic location. Google Analytics acquires all its information directly from the user, by installing a “cookie” on the user’s \n          computer. We do not share any information we collect with Google, and Google Analytics does not collect any personal identifying information such as names, contact information, social \n          security numbers or financial information.) We collect this information on an aggregate basis only. For example, we track which pages are most popular among visitors as a whole. We do not track information on which pages an individual user visits. We do not collect any other information without your knowledge and permission. We use this information to improve the usefulness of the site to our visitors. Unless you affirmatively provide additional information to us, we do not collect or store personally identifiable information such as name, mailing address, email address, phone number, or social security number.\n\t\t</p>\n\n\t\t<h3>Information You Provide</h3>\n\t\t<p>\n\t\tOpen-NC.org requests personally identifiable information when you register for an account. Information may be used or requested to perform research, improve usability of the site, administer mailing lists or online communities, or other activities related to the site’s services. This information may include, but is not limited to, your personal names, e-mail addresses and the user names you create when you register.\n\t\t</p>\n\n\t\t<h3>Disclosure of Information</h3>\n\t\t<p>\n\t\tAvailable log records, account information, and all data stored on our servers may be accessed by our system administrators and site editors. In the event that we are required by law (including a court order) to disclose the information you submit, we will provide you with notice (unless we are prohibited) that a request for your information has been made so that you may object to the disclosure. We will send this notice by email to the address you have given us. We prefer to independently object to over-broad requests for access to information about users of our site, but we cannot assure you that we will be able to do this in all cases. If you do not challenge the disclosure request yourself, we may be legally required to turn over your information.\n\t\t</p>\n\n\t\t<h3>Transfer of information</h3>\n\t\t<p>\n\t\tIn the event that Open N.C. is transferred to another organization, all website content will also be transferred.\n\t\t</p>\n\n\t\t<h3>Cookies</h3>\n\t\t<p>\n\t\tCookies are small text files that Open-NC.org and other websites can send to your browser for storage on your computer's hard drive. They make your use of Open-NC.org easier by saving your status and preferences and are refreshed every time you visit. We may use session cookies when you visit our website while your browser is open, or while you are logged into Open-NC.org. To facilitate our registration and login functions, we may use cookies to recognize when you return to the site. If you do not logout of your account, these cookies allow us to keep track of your username and password so that you do not have to resubmit the information to log into your account. If others will be using your computer, you should log out of your account so that your \n          login information is cleared. Most browsers are initially set to accept cookies, but you may be able to change the settings to refuse cookies or to be alerted when cookies are being sent.\n\t\t</p>\n\n\t\t<h3>Children's Privacy</h3>\n\t\t<p>\n\t\tThe site’s content is intended for adults and we will not knowingly collect personal information from children under 13 years of age. If you are a parent or legal guardian of a child under age 13 who you believe has submitted personal information to the site, please contact us immediately.\n\t\t</p>\n\n\t\t<h3>Posting</h3> \n\t\t<p>\n\t\tPosting or updating content on the site is a public action, and all content may be publicly visible. Identification of all contributed content may include, but is not limited to, display of your account name. All content may be retained for restorative, archival, or research purposes by Open-NC.org. Editing or deleting content may alter the displayed state of the content, but will not permanently delete the content from the site.\n\t\t</p>\n\n\t\t<h3>Security</h3>\n\t\t<p>\n\t\tThe site has security measures in place to protect the loss, misuse and alteration of the information under our control. However, your confidential use of the site cannot be guaranteed by Open-NC.org. Open-NC.org shall not be responsible for any harm that you or any person may suffer as a result of a breach of confidentiality in respect to your use of this site or any information you transmitted to the site.\n\t\t</p>\n\n\t\t<h3>Other Websites</h3>\n\t\t<p>\n\t\tMaterial on this website may link to independently run websites outside of the www.open-nc.org domain. Open-NC.org is not responsible for the privacy practices or content of such websites. We encourage you to read the privacy policies of any websites you visit from this website.\n\t\t</p>\n        
6	2013-09-30 23:42:26.846984-04	2013-09-30 23:42:26.84703-04		share-page-1	/suggest-data/	\n\n<div class="gray-card">\n\t<p>We realize that we haven't listed every North Carolina-based government data\n\t set in the Open N.C. catalog. If you have a specific data set that you've found\n\t and would like to share, let us know by completing and submitting the form\n\t below. We'll review the information and determine whether the data set\n\t should be included in Open N.C.. The data must be specific to North\n\t Carolina, available online, and contain information in columns and rows. Our\n\t goal is to catalog government datasets that adhere as closely as possible to\n\t the <a href="http://www.opengovdata.org/home/8principles" target="_blank">8 Principles of Open Government Data</a>. A full list of review criteria is\n\t available on the <a href="{% url 'faq' %}">FAQ</a> page.\n\t</p>\n\n\t<p>\n\tThis form is for recommending specific data sets, applications, or APIs.\n\tIf you'd like to nominate a general area where you think data should be more\n\teasily available, visit the Request Data page.\n\t</p>\n\n\t<p>\n\tIf the data is not already online, there are several ways you can help put it\n\tonline. Remember, though, that the more disconnected data becomes from its\n\toriginal source the less it adheres to the 8 Principles of Open Government\n\tData. Data sets that aren't as close to the source as possible and for which\n\tthe acquisition and publication processes aren't transparent will not be\n\tincluded in the catalog.\n\t</p>\n    
1	2013-08-30 11:17:03.923597-04	2013-10-08 12:01:45.914029-04		about-page	/about/	\n    \t<p>\n    \tOpen-NC.org is a catalog of digital public data created by state and local governments in North Carolina. It was created by Ryan Thornburg, an Associate Professor in the School of Journalism and Mass Communication at the University of North Carolina at Chapel Hill with funding from a Knight Foundation News Challenge grant.\n    \t</p>\n \n\t\t<p>\n\t\tThe site’s goal is to make it easier for you to to find, request and share information about digital public data in North Carolina. With easy access to this public data, we hope to support the transparency of North Carolina government, to lower the cost of watchdog reporting and to increase innovation and economic development.\n\t\t</p>\n \t\t\n \t\t\n\t\t<h3><a href="http://www.jomc.unc.edu/" target="_blank">The UNC School of Journalism and Mass Communication</a></h3>\n\t\t<p>\n\t\tThe UNC School of Journalism and Mass Communication’s responsibility is to train the next generation of media professionals &mdash; including journalists, strategic communicators, teachers and researchers &mdash; and to serve journalism and communication professionals.\n\t\t</p> \n\n\t\t\n\t\t<h3><a href="http://www.knightfoundation.org/" target="_blank">The Knight Foundation</a></h3>\n\t\t<p>\n\t\tThe John S. and James L. Knight Foundation is a 501(c)3 tax-exempt private foundation that supports transformational ideas that promote quality journalism, advance media innovation, engage communities and foster the arts.\n\t\t</p>\n        
7	2013-10-14 11:10:40.281388-04	2013-10-14 11:15:22.421513-04		share-page-3	/suggest-data/	\n<h2>Tools for Sharing Public Data</h2>\n\n<br>\n<div class="sharing_tools">\n\t<div class="row-fluid">\n\t\t<h3 class="span2"><a href="http://opendata.socrata.com">Socrata</a></h3>\n\t\t<div class="span10">If you have a single file in the .csv, .tsv, .xls, or .xlsx formats, you can upload it to Socrata, where users will be able to download it or access it with an API. Note that there's a 200MB limit to the size of the file you can upload.\n\t\t<ul>\n<li><a href="https://opendata.socrata.com/login">Sign up for Socrata</a></li>\n<li><a href="http://support.socrata.com/entries/494171-How-to-import-a-new-dataset-from-a-CSV-or-XLS-file-">Upload a file</a></li>\n<li><a href="http://dev.socrata.com/publishers/getting-started">Upload data via the API</a></li></ul>\n\n\t\tOnce you have your data in Socrata, return to this page and paste the URL in the form above.\n\t\t</div>\n\t</div>\n\n\t<hr>\n\n\t<div class="row-fluid">\n\t\t<h3 class="span2"><a href="http://www.outwit.com/products/hub/pro">OutWit</a></h3>\n\t\t<div class="span10">OutWit is an application called a scraper that you download to your PC or Macintosh computer. It helps you "scrape" data from government websites when they don't make it available in a fielded file format. After scraping a website, you will have a data file on your local computer that you would need to upload to a site such as Socrata.\n\t\t<ul>\n<li><a href="http://www.outwit.com/products/hub/pro">Download OutWit</a> (free or paid versions available)</li>\n<li><a href="http://www.outwit.com/support/help/tutorials/">Write your first scraper</a></li>\n<li><a href="https://leanpub.com/scrapingforjournalists">Scraping for Journalists</a></li>\n  </ul>\n\n\t\t</div>\n\t</div>\n\n\t<hr>\n\n\t<div class="row-fluid">\n\t\t<h3 class="span2"><a href="http://www.scraperwiki.com">Scraper<br class="hidden-phone">Wiki</a></h3>\n\t\t<div class="span10">If you know a programming language such as Python or Ruby, you can use it to write very complex scrapers and make the data available via API on ScraperWiki. ScraperWiki offers a limited free service as well as robust professional subscription plans.\n\t\t<ul>\n<li><a href="https://leanpub.com/scrapingforjournalists">Scraping for Journalists</a>   ebook by Paul Bradshaw </li><li class="c1 c5"><span class="c3"><a href="https://github.com/frabcus/code-scraper-in-browser-tool/wiki">ScraperWiki Tutorials</a></li>\n<li><a href="http://www.propublica.org/nerds/item/doc-dollars-guides-collecting-the-data">ProPublica&#39;s &quot;Scraping for Journalists&quot;</a></li></ul>\n</div>\n\t</div>\n\n\t<hr>\n\n\t<div class="row-fluid">\n\t\t<h3 class="span2"><a href="https://www.documentcloud.org">Document<br class="hidden-phone">Cloud</a></h3>\n\t\t<div class="span10">In cases where important public information isn't recorded or available in a structured data format, journalists can use DocumentCloud to upload PDFs and then annotate and publish them. Once documents are online, they can later be turned into data using a variety of techniques and tools. DocumentCloud is a project of an organization called Investigative Reporters and Editors, and use of the site requires their permission.\n\t\t<ul>\n<li><a href="https://www.documentcloud.org/home">Sign up for DocumentCloud</a></li></ul>\n\n\t\t</div>\n\t</div>\n\n\t<hr>\n\n\t<div class="row-fluid">\n\t\t<h3 class="span2"><a href="http://raleighpublicrecord.org/tag/dochive/">DocHive</a></h3>\n\t\t<div class="span10">Founded by the non-profit Raleigh Public Record, DocHive is an open-source Java application that takes PDF versions of paper forms and turns them into structured data. The result is a CSV file that can be uploaded and shared via Socrata.<ul>\n<li><a href="https://github.com/raleighpublicrecord/dochive/blob/master/dochive/README.txt">Download DocHive</a></li></ul>\n</div>\n\t</div>\n\n\t<hr>\n\n\t<div class="row-fluid">\n\t\t<h3 class="span2"><a href="https://www.muckrock.com">MuckRock</a></h3>\n\t\t<div class="span10">Many public records remain offline and available only by writing a public records request. Public records requests are a very specific type of request governed by North Carolina state law. And requests don't always yield the results you want or on a reasonable deadline. MuckRock's online service helps you track your records requests and make the disclosure process more transparent. Once digital public data are made available to you either online or on a CD-ROM, you may still need to use one or more of the other tools to share them here.\n\t\t<ul>\n<li><a href="https://www.muckrock.com/accounts/register/">Register for MuckRock</a></li>\n<li><a href="http://www.elon.edu/e-web/academics/communications/ncopengov/seekers/faq.xhtml">FAQ on North Carolina public records law</a>  , from the N.C. Open Government Coalition </li>\n<li><a href="http://www.elon.edu/e-web/academics/communications/ncopengov/seekers/handbooks.xhtml">North Carolina Media Law Handbook</a>   (PDF), by Cathy Packer, Hugh Stevens and C. Amanda Martin. </li></ul>\n</div>\n\t</div>\n</div>\n
\.


--
-- Name: scribbler_scribble_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('scribbler_scribble_id_seq', 7, true);


--
-- Data for Name: south_migrationhistory; Type: TABLE DATA; Schema: public; Owner: -
--

COPY south_migrationhistory (id, app_name, migration, applied) FROM stdin;
1	catalog	0001_initial	2013-08-13 14:39:22.774026-04
2	requests	0001_initial	2013-08-13 14:39:23.259473-04
3	suggestions	0001_initial	2013-08-13 14:39:23.483636-04
4	suggestions	0002_auto__add_field_suggestion_other_category	2013-08-13 14:39:23.548886-04
5	scribbler	0001_initial	2013-08-13 14:39:23.663987-04
6	scribbler	0002_auto__add_unique_scribble_url_slug	2013-08-13 14:39:23.686825-04
7	scribbler	0003_auto__chg_field_scribble_slug	2013-08-13 14:39:23.948038-04
8	djcelery	0001_initial	2013-08-13 14:39:24.413834-04
9	djcelery	0002_v25_changes	2013-08-13 14:39:24.608575-04
10	djcelery	0003_v26_changes	2013-08-13 14:39:24.675989-04
11	djcelery	0004_v30_changes	2013-08-13 14:39:24.696726-04
12	djangoratings	0001_initial	2013-08-13 14:39:24.975459-04
13	djangoratings	0002_add_mean_and_stddev	2013-08-13 14:39:25.709182-04
14	djangoratings	0003_add_correlations	2013-08-13 14:39:25.848725-04
15	djangoratings	0004_rethink_recommendations	2013-08-13 14:39:25.901792-04
16	djangoratings	0005_add_exclusions	2013-08-13 14:39:25.987054-04
17	djangoratings	0006_add_cookies	2013-08-13 14:39:26.167251-04
18	catalog	0002_auto__add_field_resource_agency_type	2013-08-15 12:36:15.668167-04
19	catalog	0003_auto__add_field_resource_keywords	2013-08-15 12:36:15.900576-04
20	catalog	0004_auto__add_division__add_department__del_field_resource_division__del_f	2013-08-15 12:36:16.037181-04
21	catalog	0005_auto__add_field_resource_department__add_field_resource_division	2013-08-15 12:36:16.203521-04
22	catalog	0006_auto__add_field_urlimage_resource	2013-08-15 12:36:16.393249-04
23	catalog	0007_auto__del_field_urlimage_url	2013-08-15 12:36:16.446754-04
24	catalog	0008_auto__add_field_resource_newest_record__add_field_resource_oldest_reco	2013-08-21 16:02:11.734097-04
25	requests	0002_auto__del_field_request_date__add_field_request_creation_date	2013-08-22 09:51:47.412774-04
26	requests	0003_auto__del_field_request_date_last_modified__add_field_request_last_mod	2013-08-22 09:51:47.661017-04
27	requests	0004_auto__del_field_request_update_frequency__add_field_request_updates	2013-08-23 16:15:22.678369-04
28	suggestions	0003_auto__del_field_suggestion_data_format	2013-08-23 16:15:22.917342-04
29	suggestions	0004_auto__add_field_suggestion_data_format	2013-08-23 16:15:22.947768-04
30	suggestions	0005_auto__del_field_suggestion_update_frequency	2013-08-23 16:15:22.963286-04
31	suggestions	0006_auto__add_field_suggestion_updates	2013-08-23 16:15:23.05588-04
32	requests	0005_auto__add_field_request_status	2013-09-06 11:13:40.44829-04
33	requests	0006_auto__add_field_request_contact_phone__add_field_request_contact_email	2013-11-14 17:40:15.435325-05
\.


--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('south_migrationhistory_id_seq', 33, true);


--
-- Data for Name: suggestions_suggestion; Type: TABLE DATA; Schema: public; Owner: -
--

COPY suggestions_suggestion (id, date, date_last_modified, title, short_description, description, url, other_format, agency_name, agency_division, agency_type, city_id, county_id, last_updated, keywords, contact_name, phone_number, street_address, contact_city, zipcode, email_address, other_category, data_format_id, updates_id) FROM stdin;
1	2013-08-21 12:28:50.813781-04	2013-08-21 12:28:50.813824-04	admin sugg	brief des	long de	http:suggestion.com2	none	agency	division	state	16	2	2013-08-21	1,2	contact	phone	street	city	zip	email	no, other category	\N	\N
2	2013-08-21 14:24:25.61737-04	2013-08-21 14:24:25.617412-04	Title New	THis is required	so is this	http://caktusgroup.com	other	Police	ANother	state	4	13	2013-01-01		Police	919-90209988	151 E Rosemary St	Chapel Hill	27514	vrocha@caktusgroup.com		\N	\N
\.


--
-- Data for Name: suggestions_suggestion_categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY suggestions_suggestion_categories (id, suggestion_id, category_id) FROM stdin;
1	1	2
2	1	4
3	2	3
4	2	4
\.


--
-- Name: suggestions_suggestion_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('suggestions_suggestion_categories_id_seq', 4, true);


--
-- Name: suggestions_suggestion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('suggestions_suggestion_id_seq', 2, true);


--
-- Data for Name: thumbnail_kvstore; Type: TABLE DATA; Schema: public; Owner: -
--

COPY thumbnail_kvstore (key, value) FROM stdin;
sorl-thumbnail||image||23583dc715e4eb394aa09199a373918b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/6/Screen Shot 2013-08-21 at 8_1.16", "size": [1015, 784]}
sorl-thumbnail||image||3a898446b41968e960221c54772cefab	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/01/0a/010afddf82e72ef2ee4fede7803c6442.jpg", "size": [400, 250]}
sorl-thumbnail||image||c3c1c026dfbfc0b394da073c805a9617	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/10/ab/10abcd170bd55d2a5bbdda1be1c11bd3.jpg", "size": [600, 400]}
sorl-thumbnail||image||4345d02da426ae51668ef207d15a7c17	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/5/Screen Shot 2013-08-21 at 7_1.58", "size": [824, 865]}
sorl-thumbnail||image||11bfa73ebebf6ee16d74cf411562df36	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/fb/c9/fbc9f459a150b657b71e0e3f7d8aac04.jpg", "size": [400, 250]}
sorl-thumbnail||image||083e650439c8cdc3702b95d240568533	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/8/Screen Shot 2013-08-21 at 9_1.13", "size": [981, 510]}
sorl-thumbnail||image||73142c86019ef3843bcc084c206607fc	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/50/dc/50dcdb4e47bd993230dec3e8cde6ec64.jpg", "size": [400, 250]}
sorl-thumbnail||image||17862384785b2925dbe36a59e8d89ebd	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/74/b4/74b4735c6855f6a4f7ee21c0b701818a.jpg", "size": [869, 400]}
sorl-thumbnail||image||9a57006f34c688131b143d61645a83b8	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/7/Screen Shot 2013-08-21 at 8_1.35", "size": [998, 843]}
sorl-thumbnail||image||4655f3fde78f4e79fbdb8b06b8bf9e27	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/da/16/da164bed4f211f5bac4aee79dec56138.jpg", "size": [400, 250]}
sorl-thumbnail||image||3b4a38fadef7f0112ce087fa1033a40c	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/8/Screen Shot 2013-08-21 at 9_1_1.13", "size": [704, 699]}
sorl-thumbnail||image||dca56eecd800b8f7086448f47d7359fb	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/68/6e/686e763b908810322b1c4499f68a0fdd.jpg", "size": [400, 250]}
sorl-thumbnail||image||1c7d636e20348e12c36ec452f866fd22	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/4/Screen Shot 2013-08-21 at 7_1.39", "size": [1572, 518]}
sorl-thumbnail||image||0c67e0e527a8f0676ab6ac5b283c84d7	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/bb/c6/bbc62b07fa2c1f72335517e4736dc69c.jpg", "size": [400, 250]}
sorl-thumbnail||image||1e32c9bbf876e4d3a3744d7c66d070ef	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/54/a7/54a75b8f61c87d3f8e5df61e99ed5401.jpg", "size": [96, 96]}
sorl-thumbnail||image||4502e1181fb9d0ea24f88aea08023573	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c6/d8/c6d89ef719bb56a1f9667a5dab12b619.jpg", "size": [869, 400]}
sorl-thumbnail||image||3f6c8bb9dbbedd6c2d2f559ee99fb5e9	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/5f/0e/5f0e6d9d8f8c96ba3c9b9f635ca3b4e0.jpg", "size": [869, 400]}
sorl-thumbnail||image||fc28017bcf214245ca6906c6d5712bf0	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/1d/c0/1dc09473ab7f92498e7952f23660444c.jpg", "size": [869, 400]}
sorl-thumbnail||image||3df3e443debae6d699c60f135d510259	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/55/d3/55d32e29eeff34b8a4184b3a414f1593.jpg", "size": [96, 96]}
sorl-thumbnail||image||a404a844d4ad2fea90aa88a268ed9a66	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/db/ea/dbead6cad1ef4672001dbe299df3360e.jpg", "size": [869, 400]}
sorl-thumbnail||image||59aaf0cf601f2953dedca6d42a11572e	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/e4/65/e465eea0ddbc307846a8e1699c28a012.jpg", "size": [869, 400]}
sorl-thumbnail||image||11be5e3154e8ea8694ea841d5cbd7542	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/eb/05/eb05c70cd57cd4fba89bb50fa173c822.jpg", "size": [600, 400]}
sorl-thumbnail||image||3fe55c58da05f7cf6a9ba9084b318541	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/d3/c3/d3c3523ce764212d1693dd07300a8a17.jpg", "size": [254, 254]}
sorl-thumbnail||image||879c20989903a94d8f14db35d3c1340a	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/9a/40/9a40a82c46bd4582b584f2e21150cfea.jpg", "size": [96, 96]}
sorl-thumbnail||image||65c40b4c197518e8fefd4523df9e7bb6	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/12/d9/12d997a825caab62dc3c3df11a4a083c.jpg", "size": [96, 96]}
sorl-thumbnail||image||3f8b503ff6569a5b1ac01dbe32cfda26	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/6d/d1/6dd1cba9b0aeb10879f4f3895dcd6a4f.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||1c7d636e20348e12c36ec452f866fd22	["d2f82f585fccfa08e55422af61a4ede3", "654a8095adaaab8cacfef6abeffc137e", "0c67e0e527a8f0676ab6ac5b283c84d7", "fe6fd9c2e722c40faf44e0f1ba18638a", "879c20989903a94d8f14db35d3c1340a", "4502e1181fb9d0ea24f88aea08023573"]
sorl-thumbnail||thumbnails||4345d02da426ae51668ef207d15a7c17	["926548da8928ecdd70f0a18a909693a9", "65c40b4c197518e8fefd4523df9e7bb6", "fc28017bcf214245ca6906c6d5712bf0", "c3c1c026dfbfc0b394da073c805a9617", "bf906dd5409b4c8d660ee83c7624c8ce", "11bfa73ebebf6ee16d74cf411562df36"]
sorl-thumbnail||image||8dc8ce7b490510c62fd7392c7371bb70	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/a4/ab/a4ab055cc44b11343a49aec50bfeb281.jpg", "size": [600, 400]}
sorl-thumbnail||thumbnails||9a57006f34c688131b143d61645a83b8	["7e340fafd78d005f36e295f515f67368", "11be5e3154e8ea8694ea841d5cbd7542", "3f8b503ff6569a5b1ac01dbe32cfda26", "3fe55c58da05f7cf6a9ba9084b318541", "4655f3fde78f4e79fbdb8b06b8bf9e27", "17862384785b2925dbe36a59e8d89ebd"]
sorl-thumbnail||image||d55274a61a2a04b7bb4abbe2c527706b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/7a/98/7a987416e64661c4b676fc7fb3366abc.jpg", "size": [600, 400]}
sorl-thumbnail||image||23f66ba9101e2ec8fb10ed4c27466b8d	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/52/Screen Shot 2013-10-05 at 3_1.41", "size": [899, 596]}
sorl-thumbnail||image||ea6857e8a605dab9b6886089968cd193	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/28/fd/28fdfd099881c74779345ca0987d6d97.jpg", "size": [254, 254]}
sorl-thumbnail||image||2f8301381241d86a21c925db7b916846	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c0/aa/c0aaf426a01284fe8b32c48ebf41756e.jpg", "size": [600, 400]}
sorl-thumbnail||image||5c98d90eaaba31bb10a9474e1c47567b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/9/Screen Shot 2013-09-06 at 2_1.54", "size": [758, 641]}
sorl-thumbnail||image||a66d6a3d47a999c079178542d65d8afd	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/26/14/2614c64f1adbd0ded84123f97705b15f.jpg", "size": [96, 96]}
sorl-thumbnail||image||8e79110b76b9addbe8182747ba2e2dab	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/10/Screen Shot 2013-09-06 at 3_1.19", "size": [783, 765]}
sorl-thumbnail||image||e81eb75708a9dc524f25a4a6a250aa15	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c0/13/c013958ddca03b3a6bfe44d390fb87e2.jpg", "size": [96, 96]}
sorl-thumbnail||image||95a2f94b842b96d9ee8560da596fdb76	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/de/3b/de3bb5ab86ccb64fb776f0505d19b808.jpg", "size": [254, 254]}
sorl-thumbnail||image||ebdd473dc903a9ff4dbb4ceba39d700b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/12/Screen Shot 2013-09-22 at 5_1.09", "size": [1542, 800]}
sorl-thumbnail||image||63efae016428f10f76a4d57f09c07204	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/bb/6d/bb6db4123bb51d1f8378f242684edde6.jpg", "size": [254, 254]}
sorl-thumbnail||image||0e2cc626feb3f1845807b8491b22d901	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/2b/67/2b676e911fbbe5f2818738cd00dd1453.jpg", "size": [600, 400]}
sorl-thumbnail||image||688e06c26ffaf6e684d086c4cd34db77	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/6a/43/6a434e58bfb1236bbf2d71d0a66007af.jpg", "size": [600, 400]}
sorl-thumbnail||image||654a8095adaaab8cacfef6abeffc137e	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/a1/cc/a1ccaaee90465938a139d32ac3c6166e.jpg", "size": [600, 400]}
sorl-thumbnail||image||c9cca6e9cc1f96fb6fdc8880e2f30868	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/f7/99/f7999c9c09ba94ea152d64cc7ecc5c43.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||d53ddf2ca65c7b6c263756666cde4e6b	["45acbca7be6ba0cc4278fdfde446eb9c", "2f45a06264cd5fce46e1dcc1fdcfabca", "5bfffcd2e9db6499933c26074cf435e7", "33d559d234b0ef077264faa11b57d1e2"]
sorl-thumbnail||image||d2f82f585fccfa08e55422af61a4ede3	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/f3/cb/f3cb7c5ee9b429e874fb5d0e129fa8d8.jpg", "size": [254, 254]}
sorl-thumbnail||image||bf906dd5409b4c8d660ee83c7624c8ce	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/cd/5f/cd5f2e7fffa6d75578f829732cb7a07a.jpg", "size": [254, 254]}
sorl-thumbnail||image||d53ddf2ca65c7b6c263756666cde4e6b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/11/Screen Shot 2013-09-15 at 6_1.26", "size": [763, 915]}
sorl-thumbnail||image||5bfffcd2e9db6499933c26074cf435e7	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c2/0f/c20fee50f62515ac98c1636d518a7c5e.jpg", "size": [96, 96]}
sorl-thumbnail||image||46230e4fe299b2de72ab0a575748b95e	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/cf/69/cf6967f437f19bf430635ca066e21d74.jpg", "size": [96, 96]}
sorl-thumbnail||image||45acbca7be6ba0cc4278fdfde446eb9c	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/27/f8/27f882755aa720279995d523fb0bbff3.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||ebdd473dc903a9ff4dbb4ceba39d700b	["a864fd8c60f86519a6a98d3258d65771", "dd62dfaf7862e287c7a508dee94139b7", "46230e4fe299b2de72ab0a575748b95e", "27364d7d2148606eb2a8bc750ef9feff"]
sorl-thumbnail||image||33d559d234b0ef077264faa11b57d1e2	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/2b/91/2b91f22338e7a9a09be8da2b0c47154b.jpg", "size": [600, 400]}
sorl-thumbnail||image||a864fd8c60f86519a6a98d3258d65771	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/09/c7/09c7d89a83bfcd040bca70212fe9281c.jpg", "size": [600, 400]}
sorl-thumbnail||image||6a236bf81c6dca66d2c5c3b3ff6ad06c	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/d9/51/d9510f4fe604e15583546a228315b554.jpg", "size": [869, 450]}
sorl-thumbnail||image||27364d7d2148606eb2a8bc750ef9feff	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/a9/6b/a96b19e688a176dca1490cd3e340bf88.jpg", "size": [254, 254]}
sorl-thumbnail||image||dd62dfaf7862e287c7a508dee94139b7	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/be/17/be17c424545b93dc7fae8e3596716330.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||8e79110b76b9addbe8182747ba2e2dab	["e81eb75708a9dc524f25a4a6a250aa15", "c9cca6e9cc1f96fb6fdc8880e2f30868", "688e06c26ffaf6e684d086c4cd34db77", "6a236bf81c6dca66d2c5c3b3ff6ad06c"]
sorl-thumbnail||image||2f45a06264cd5fce46e1dcc1fdcfabca	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/12/93/129386785e12828e412530976f9a8cf0.jpg", "size": [869, 450]}
sorl-thumbnail||image||926548da8928ecdd70f0a18a909693a9	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/0e/74/0e74fc3586dffeb501743c4c20142260.jpg", "size": [869, 450]}
sorl-thumbnail||image||c775a639901b4cd58435c1d35c4864c7	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/73/b7/73b703d872cc5df83b5e32b79dc76999.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||23583dc715e4eb394aa09199a373918b	["63efae016428f10f76a4d57f09c07204", "8dc8ce7b490510c62fd7392c7371bb70", "c775a639901b4cd58435c1d35c4864c7", "3a898446b41968e960221c54772cefab", "1e32c9bbf876e4d3a3744d7c66d070ef", "3f6c8bb9dbbedd6c2d2f559ee99fb5e9"]
sorl-thumbnail||image||e2a0af52ce3c3494a31ba3b4366b7889	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ea/48/ea489d6ceea24200b8d849d1a4b470e7.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||5c98d90eaaba31bb10a9474e1c47567b	["0e2cc626feb3f1845807b8491b22d901", "95a2f94b842b96d9ee8560da596fdb76", "a66d6a3d47a999c079178542d65d8afd", "e84982b9409e2bd4a8bbe2c28c9b81db"]
sorl-thumbnail||image||c87b592f25e41acb77c465a64b8398b7	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c4/8d/c48d8ec8491ab9eb246a580485d8bec4.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||3b4a38fadef7f0112ce087fa1033a40c	["e2a0af52ce3c3494a31ba3b4366b7889", "3df3e443debae6d699c60f135d510259", "dca56eecd800b8f7086448f47d7359fb", "59aaf0cf601f2953dedca6d42a11572e", "ea6857e8a605dab9b6886089968cd193", "d55274a61a2a04b7bb4abbe2c527706b"]
sorl-thumbnail||image||e84982b9409e2bd4a8bbe2c28c9b81db	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/d8/48/d84861e8760a4aea5fd457248efb2888.jpg", "size": [869, 450]}
sorl-thumbnail||image||d23c89eb748ecf6f557b06578ea6a922	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/45/73/4573cfbb7cd94fa5d4e1b92aeded2e05.jpg", "size": [869, 450]}
sorl-thumbnail||image||7e340fafd78d005f36e295f515f67368	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/2f/f7/2ff79428c97e37e874f4048cb410a2ca.jpg", "size": [869, 450]}
sorl-thumbnail||image||fe6fd9c2e722c40faf44e0f1ba18638a	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/df/87/df872b7d51db491953d554abf9528381.jpg", "size": [869, 450]}
sorl-thumbnail||image||af20a5ed00bb6ce597831b5b58f1ec57	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/13/Screen Shot 2013-09-30 at 10_1.35", "size": [893, 634]}
sorl-thumbnail||image||9815586beb24b76d87cecf0bf2fa859b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/19/61/1961a3afe13518ea549d316cd8d3029f.jpg", "size": [96, 96]}
sorl-thumbnail||image||cc186baf3777821f4873ed158ee059a3	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/f9/35/f935f7d5d10f14b5f466be2b1d007087.jpg", "size": [869, 450]}
sorl-thumbnail||image||1637f754ac330ae901752b8ea2034cc0	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/18/fc/18fc892cb05f0bc03245187799b4410c.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||af20a5ed00bb6ce597831b5b58f1ec57	["1637f754ac330ae901752b8ea2034cc0", "cc186baf3777821f4873ed158ee059a3", "9815586beb24b76d87cecf0bf2fa859b"]
sorl-thumbnail||image||dc6df2b9962ea94f2663779b93b9091d	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/11/Screen Shot 2013-09-30 at 11_1.01", "size": [775, 684]}
sorl-thumbnail||image||c5cf38c87faaa820102d872ef65b13bf	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/a8/d8/a8d81e79b536030ec2090c3e551cd295.jpg", "size": [96, 96]}
sorl-thumbnail||image||52db8e439ad1b016e59a16795b9a4557	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/18/IredellFoodInspections_1.JPG", "size": [987, 574]}
sorl-thumbnail||image||3ccbed0ea0fd2220cd6530e4e74f4375	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/af/c5/afc5223aaaaecc82d6b3a4dda89199bd.jpg", "size": [254, 254]}
sorl-thumbnail||image||b165ce0449f4df8478d5d0d62c12bf61	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/36/20/36202a282f2ab83a3c03aa5e0f627705.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||dc6df2b9962ea94f2663779b93b9091d	["b165ce0449f4df8478d5d0d62c12bf61", "c5cf38c87faaa820102d872ef65b13bf", "3ccbed0ea0fd2220cd6530e4e74f4375"]
sorl-thumbnail||image||44e6635915790336f3b34a6e17b7487d	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/16/Screen Shot 2013-10-04 at 11_1.15", "size": [871, 520]}
sorl-thumbnail||image||3b96a0fc0e20e1f5bcd4d7a61bff2935	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/35/0e/350e8d80d9e71589dedf7efa66a24a9c.jpg", "size": [96, 96]}
sorl-thumbnail||image||231dd1547cc4cc905cb706247d26e265	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/86/88/86888ceb5ea4b56609e7b5e5e57cd193.jpg", "size": [96, 96]}
sorl-thumbnail||image||8784b912cedc3b26c629c87f1a6d153c	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/91/e5/91e51ce6cbe56b872523ccd37ef4373f.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||e010dcbae79fec3a17693f4448c1040b	["d1c01094f42cac8e3d588df385368942", "83e38c0cd2649701c540342fb64e528b", "7f100b476f803fcab6b133fe694b50e5"]
sorl-thumbnail||image||e010dcbae79fec3a17693f4448c1040b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/15/Screen Shot 2013-10-04 at 11_1.19", "size": [905, 560]}
sorl-thumbnail||image||83e38c0cd2649701c540342fb64e528b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/6c/10/6c10f6d61d09da52191c9ede793e48dc.jpg", "size": [96, 96]}
sorl-thumbnail||image||96cdce44316ca02529d2edf506603076	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/4f/b5/4fb5285ecff1c9d2afae6ee6049a19b1.jpg", "size": [254, 254]}
sorl-thumbnail||image||84c2450a9529538f7c3cee7b2f2ea5af	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/6a/c2/6ac2dfe9e7f8b711944c7d2878b8bb5a.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||44e6635915790336f3b34a6e17b7487d	["281aff22943f71bbfe4fd78f46ddbc8b", "3b96a0fc0e20e1f5bcd4d7a61bff2935", "8784b912cedc3b26c629c87f1a6d153c"]
sorl-thumbnail||image||171fd654dc101734a3e95f29049135e8	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/19/Screen Shot 2013-10-04 at 11_1.27", "size": [926, 520]}
sorl-thumbnail||image||1620e4c9fc558119eeb8b7d83cb163d6	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/32/09/320912659b6d459d54dcd4c463094f85.jpg", "size": [96, 96]}
sorl-thumbnail||image||bb2939d1320681f1ce9ff3240ffdae96	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/17/Macon County SS_1.png", "size": [1366, 768]}
sorl-thumbnail||image||d1c01094f42cac8e3d588df385368942	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/9b/96/9b96209894ad681bf350c349a49893bb.jpg", "size": [254, 254]}
sorl-thumbnail||image||1b4b51f4a3ed582cddf1267f5322cc32	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/fd/7c/fd7c4d4bd5d1dd642159e461363cf92e.jpg", "size": [96, 96]}
sorl-thumbnail||image||a1e0bde2a75852a30290523712391bd7	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/41/6b/416b8afc01da9cffc7934ad53f79b47c.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||52db8e439ad1b016e59a16795b9a4557	["231dd1547cc4cc905cb706247d26e265", "84c2450a9529538f7c3cee7b2f2ea5af", "b4531cf1a2fdde83e369799c46587e31"]
sorl-thumbnail||image||633e7b49bd4f0020e22104e6d027c2ca	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/20/Screen Shot 2013-10-04 at 11_1.33", "size": [832, 597]}
sorl-thumbnail||image||6f31a41be6c37f748759d8c071576f18	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/2e/02/2e02fd933bdda3b256276a09e3aa71aa.jpg", "size": [96, 96]}
sorl-thumbnail||image||01ef40e7425a85e28addfad469e7c19c	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c8/db/c8db594503d48f252f5602e3471f4b59.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||bb2939d1320681f1ce9ff3240ffdae96	["a1e0bde2a75852a30290523712391bd7", "1b4b51f4a3ed582cddf1267f5322cc32", "01ef40e7425a85e28addfad469e7c19c"]
sorl-thumbnail||image||77ca041e92f5e48f712b8d02df655e05	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/8b/23/8b23e629cc10a02009633015e57f7dc8.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||e2809bdd5d2c431805d93dadf877b9eb	["4f1a058216c914cd13aaaf95573d9852", "b7da81a13e93aa6ae165efc36f97dabf", "4fe3fa7b75a5ac8ab30dd2a871c5d9c7"]
sorl-thumbnail||image||59c41d0054c9ec7b34e642561501f6c4	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/17/Macon County SS_1_1.png", "size": [863, 477]}
sorl-thumbnail||image||cb652128db27eafa42b92778fe8cee2d	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/89/d4/89d41be045de38eb2b5aa68c8913b9f3.jpg", "size": [96, 96]}
sorl-thumbnail||image||b974b003c4327536692efb73b672c22e	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/44/31/4431761039dc97f4323eb86e4e19cefd.jpg", "size": [96, 96]}
sorl-thumbnail||image||e17a41fcdf4c16809e011f2b967688a5	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/dc/b4/dcb48a76d320fc89804b02de293312da.jpg", "size": [254, 254]}
sorl-thumbnail||image||1b9dee88dec3cdad434898858fef50d9	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/21/Screen Shot 2013-10-04 at 11_1.48", "size": [877, 531]}
sorl-thumbnail||image||1f7fd26d2399a81362a06ab6a8ecfba5	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/19/6a/196a33b25ee8063dce15603f0b3dbdb4.jpg", "size": [96, 96]}
sorl-thumbnail||image||d6ea859af8c6c7aa16c34cc044f751e3	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/25/Screen Shot 2013-10-04 at 6_1.49", "size": [897, 596]}
sorl-thumbnail||image||ae1de1628cb8bcb4a85658bf15159d71	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/01/00/0100c23ac2cd12052f8f1ec149dcaf5f.jpg", "size": [254, 254]}
sorl-thumbnail||image||ca2fe58ae2a2dc8415bed82bb9037507	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/bf/e4/bfe4b765e86cd221a729ce634d756443.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||1b9dee88dec3cdad434898858fef50d9	["ae1de1628cb8bcb4a85658bf15159d71", "1f7fd26d2399a81362a06ab6a8ecfba5", "ca2fe58ae2a2dc8415bed82bb9037507"]
sorl-thumbnail||image||b4531cf1a2fdde83e369799c46587e31	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/22/33/223393b2b5c8b111738f688cc1d830bc.jpg", "size": [869, 450]}
sorl-thumbnail||image||281aff22943f71bbfe4fd78f46ddbc8b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/79/47/7947957f48ff9146b69d9cfba0479bf1.jpg", "size": [869, 450]}
sorl-thumbnail||image||8871012da35ec47d6d2288a69820e94b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/71/f9/71f94224ed64ae29ec93fd6d52d785a0.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||59c41d0054c9ec7b34e642561501f6c4	["cb652128db27eafa42b92778fe8cee2d", "e17a41fcdf4c16809e011f2b967688a5", "8871012da35ec47d6d2288a69820e94b"]
sorl-thumbnail||image||a03359625391e4a2ea47ca707e937b2e	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/22/Screen Shot 2013-10-04 at 6_1.14", "size": [809, 593]}
sorl-thumbnail||image||ba03309c787a0ab9b52482f1e2ccdd31	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c7/bb/c7bba88ce941ecbba18dda644aa4b4d2.jpg", "size": [96, 96]}
sorl-thumbnail||image||9fe0d7d0d299c3bbf1140865544ac4ea	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/69/dc/69dce5c3446c3630bb748ae27fbf227a.jpg", "size": [869, 450]}
sorl-thumbnail||image||56a5c0808cf46b73370076db7d158f97	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/70/32/7032e1c92e66ea71ec47e0762d1b9118.jpg", "size": [254, 254]}
sorl-thumbnail||image||fe264cc468bc915ab0f89e169723f066	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/23/Screen Shot 2013-10-04 at 6_1.29", "size": [951, 596]}
sorl-thumbnail||thumbnails||a03359625391e4a2ea47ca707e937b2e	["9fe0d7d0d299c3bbf1140865544ac4ea", "ba03309c787a0ab9b52482f1e2ccdd31", "56a5c0808cf46b73370076db7d158f97"]
sorl-thumbnail||image||51c61c20e74b9e24b42f027faf292c4a	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/72/5f/725f312e99801abef76307d077a60472.jpg", "size": [254, 254]}
sorl-thumbnail||image||e2809bdd5d2c431805d93dadf877b9eb	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/24/Screen Shot 2013-10-04 at 6_1.40", "size": [848, 598]}
sorl-thumbnail||image||4fe3fa7b75a5ac8ab30dd2a871c5d9c7	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/b6/4c/b64ca52ab15f576c1acf035aa6a03e40.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||633e7b49bd4f0020e22104e6d027c2ca	["b10cdb02be5961c2e8c53c0416594c3d", "77ca041e92f5e48f712b8d02df655e05", "6f31a41be6c37f748759d8c071576f18"]
sorl-thumbnail||image||544c4e934e5fb2a77c95fe6e6714125b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/f0/6c/f06c71ccdad65775b35870b75f8c56c8.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||fe264cc468bc915ab0f89e169723f066	["51c61c20e74b9e24b42f027faf292c4a", "b974b003c4327536692efb73b672c22e", "05fdb02222a12ec49d8ee5dc33b01fb6"]
sorl-thumbnail||image||99e0a9c73c802f20106c4bd9d5383661	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/26/Screen Shot 2013-10-04 at 6_1.58", "size": [898, 599]}
sorl-thumbnail||image||90292a0d8f3969ddbe421b0849891c86	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c7/0f/c70f2269886897f987b640d91f57bee3.jpg", "size": [96, 96]}
sorl-thumbnail||image||6965732fad70263883983dac80e27c20	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/27/Screen Shot 2013-10-04 at 7_1.05", "size": [941, 598]}
sorl-thumbnail||image||4992292d7eade3ff56e1ccb0645ab340	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/3a/3a/3a3a16cd27e897e030f0766cc818434d.jpg", "size": [96, 96]}
sorl-thumbnail||image||525ae2ae2f149f2810a4d2e4ee881d39	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/4b/24/4b24942e5f5217fa408cfdfc4e73803c.jpg", "size": [869, 450]}
sorl-thumbnail||image||75f7cf9863c46845db09a78a9366513e	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/42/0c/420ca44a2d7fda440b0bed3e03d0d9db.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||171fd654dc101734a3e95f29049135e8	["96cdce44316ca02529d2edf506603076", "75f7cf9863c46845db09a78a9366513e", "1620e4c9fc558119eeb8b7d83cb163d6"]
sorl-thumbnail||image||c86a02e6561c1e264de2ea38414bfcf8	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/28/Screen Shot 2013-10-04 at 9_1.20", "size": [851, 559]}
sorl-thumbnail||image||a7ade2fa815242a0ac3d90005b6c25a1	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/41/54/41544d067cb33c0081053766c7c2ea11.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||d6ea859af8c6c7aa16c34cc044f751e3	["525ae2ae2f149f2810a4d2e4ee881d39", "544c4e934e5fb2a77c95fe6e6714125b", "32f4854d1cc6fbb30f4859432ba36433"]
sorl-thumbnail||image||b491a625e6697328cd7a48c284dfcd6f	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/29/Screen Shot 2013-10-04 at 9_1.22", "size": [865, 553]}
sorl-thumbnail||image||17c2f17fb812afec6908cfa6b7293d3f	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/fc/2c/fc2c92efe037e86e61c6dc9d44d7527b.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||d056475f2833827a70209640207f44f6	["faaca739289e8c0160b90665ef6e94fc", "754644625477187030e454bf4e13c5fc", "d21180873902678d01ebac6a91e30a09"]
sorl-thumbnail||image||763d09b89ed29a7f80a202e57a40963b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/30/Screen Shot 2013-10-04 at 7_1.14", "size": [911, 596]}
sorl-thumbnail||image||17404033f9fc56617b61bc56414af355	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/6e/c7/6ec79ac22bd6a9cf161d4dadc09d2cfb.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||70e0ce2823225e21b00103885f91b7ac	["14c98e68997b737f291b57b006d49cfb", "eb5b0ca951a504ac9e5dcb7fd2349804", "2afb8b68aa1eb7e3e0953ac00fbbb67c"]
sorl-thumbnail||image||05fdb02222a12ec49d8ee5dc33b01fb6	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/30/99/309913eacbd82f6d75630efad0b391b8.jpg", "size": [869, 450]}
sorl-thumbnail||image||7f100b476f803fcab6b133fe694b50e5	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/cf/f1/cff1803107c72d80093101bd50afc18b.jpg", "size": [869, 450]}
sorl-thumbnail||image||c61c95b25c6ec980b916ba337bbb1391	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/17/ac/17ac138c52f59787166c2e30e35fa6ff.jpg", "size": [869, 450]}
sorl-thumbnail||image||7d2a580c49a66ca61deb6a98e1108e27	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/31/Screen Shot 2013-10-04 at 10_1.31", "size": [901, 599]}
sorl-thumbnail||image||946013d8af4e52c5abf7498fbc3667f1	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/73/a1/73a17fafdf731ba2ef1849c2f745d55d.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||505c5d5eae0c2209019ec94320212929	["19bac89fbdce158d78c4c62b565ec8c3", "d2340f63ee18a53f8dc9b7296d32ad65", "e9d5b5ba5397809f4b9bf225dae13a66"]
sorl-thumbnail||image||88bc62a1fb1cd4c39ae3f75e373c6997	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/32/Screen Shot 2013-10-04 at 10_1.47", "size": [878, 597]}
sorl-thumbnail||image||a01cfa5738dc2156ac09a0e9687cff8e	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/43/90/439053abe6a8a86681248827899f8a0d.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||c86a02e6561c1e264de2ea38414bfcf8	["1129123ae183ebe9423a706bc21fca35", "6013555ce6444a984b1d3f07b24822e9", "a7ade2fa815242a0ac3d90005b6c25a1"]
sorl-thumbnail||image||f3236ff78ed66b67bb069cd84b66d5c9	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/33/Screen Shot 2013-10-04 at 11_1.00", "size": [913, 597]}
sorl-thumbnail||image||ac68bcc80d9fa9e48fb0f17accbc3254	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/e7/ba/e7ba2bee03eed93917529f1eb93540a1.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||b491a625e6697328cd7a48c284dfcd6f	["eab70ea272e14b47ea570d21beebd2b9", "17c2f17fb812afec6908cfa6b7293d3f", "c96bcd4375b55150cd4741e4e52c1cba"]
sorl-thumbnail||image||70e0ce2823225e21b00103885f91b7ac	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/34/Screen Shot 2013-10-04 at 11_1.05", "size": [914, 598]}
sorl-thumbnail||image||14c98e68997b737f291b57b006d49cfb	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/4d/a5/4da5e230dcc1598268110330102757d4.jpg", "size": [96, 96]}
sorl-thumbnail||image||0442cb7ea363a91c5cd075a54ce02db0	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/35/Screen Shot 2013-10-04 at 11_1.28", "size": [873, 590]}
sorl-thumbnail||image||b56127456a73a95a5d3e4318efc9fe68	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/f3/b9/f3b92ea1625b87c4d3679e6cf05f2010.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||0442cb7ea363a91c5cd075a54ce02db0	["b56127456a73a95a5d3e4318efc9fe68", "e76721a7582955af53b8b7a5a05b359f", "3999e98c2918361ce3c0327d118fd710"]
sorl-thumbnail||image||505c5d5eae0c2209019ec94320212929	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/36/Screen Shot 2013-10-04 at 11_1.35", "size": [874, 597]}
sorl-thumbnail||image||e9d5b5ba5397809f4b9bf225dae13a66	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/e0/f4/e0f452cd7001f5b753b56ad84c2da7f6.jpg", "size": [96, 96]}
sorl-thumbnail||image||d056475f2833827a70209640207f44f6	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/37/Screen Shot 2013-10-04 at 11_1.43", "size": [908, 597]}
sorl-thumbnail||image||754644625477187030e454bf4e13c5fc	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/98/87/988755f70d11e8accab0a194afdc0959.jpg", "size": [96, 96]}
sorl-thumbnail||image||15fd3bddfe90919cf01f6a9185989bb7	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/38/Screen Shot 2013-10-04 at 11_1.49", "size": [827, 598]}
sorl-thumbnail||image||5bd734be32346d915c505b808a4a057f	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/92/92/929260fa89d4e730e6e7ecb10c092a97.jpg", "size": [96, 96]}
sorl-thumbnail||image||58aa51a5882aca50bb54d1e3fb67e413	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/39/Screen Shot 2013-10-04 at 11_1.53", "size": [898, 596]}
sorl-thumbnail||image||4c343cfd33140370095c70b393ee36ae	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/09/e5/09e5dfe9c2b73e5a7b844dd65ca5bd76.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||cd423b0d867db2e497dd304d5ec078cc	["58e509c6c7e63ea21f72b5e89f5fe311", "68da7c49f413d9c46960364e84a81a2a", "dd1456603a31bb40456e014a4c92a633"]
sorl-thumbnail||image||c23ec52596a479659c40ab1c7a5e0326	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/40/Screen Shot 2013-10-05 at 12_1.00", "size": [931, 600]}
sorl-thumbnail||image||8ad1806c3cf08e7d0e5215fc61da1467	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/b2/12/b2124b1645bb642b3d7ab0d80859e111.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||da32bbf766ac7ea7a561f96222391dfd	["31c78cf5c4237aa2f470087398499f8a", "d7e9c1fa0f7f902b2e4437d9ac80cef7", "1e108c3ca48231371295c85237ef8637"]
sorl-thumbnail||image||cd423b0d867db2e497dd304d5ec078cc	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/41/Screen Shot 2013-10-05 at 12_1.07", "size": [887, 599]}
sorl-thumbnail||image||58e509c6c7e63ea21f72b5e89f5fe311	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/00/c3/00c3f48a940225c9f64cedde312734e7.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||d29c9727afa30f511f5ca98de20e278f	["f92708c35d0e6b78a6a95a547851aba3", "6efcfd19d488404950e79a2617fe2854", "6092d4e413f06b9c840cee3ad4d1b9ae"]
sorl-thumbnail||image||0454ce92c50a552b80e0fa7fb11a477b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/42/Screen Shot 2013-10-05 at 8_1.35", "size": [1012, 598]}
sorl-thumbnail||image||1262ac47f6d22908432a0905dbf1d3f3	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/0e/bb/0ebb26f15c2a0b615337b692fa9bd7f0.jpg", "size": [96, 96]}
sorl-thumbnail||image||16a769d8d369ccea82507d9338239728	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/43/Screen Shot 2013-10-05 at 8_1.47", "size": [928, 595]}
sorl-thumbnail||image||6e6000fc47f9935c9ef3c0af57f45404	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/7c/3a/7c3a89af7472021efa078c9d4636cd9b.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||d0aa5b780f9ff6af2752fc3f8f0d7936	["a384929e9d66274cffb4a12b6c16e4b7", "b5ad45374b6ee75c3bfe463e52ef8bf4", "c6eb428b2d2b81f40ae9a86c8186bdef"]
sorl-thumbnail||image||6c13ac0b0df241432104440db1ab51f5	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/44/Screen Shot 2013-10-05 at 8_1.54", "size": [898, 602]}
sorl-thumbnail||image||a4d0abb6d4dd55d5ef1271729715b763	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/5d/42/5d42d971feeffc707b511f048e29fa6c.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||0454ce92c50a552b80e0fa7fb11a477b	["1262ac47f6d22908432a0905dbf1d3f3", "8501e937a8135f36fcfd66b6ee7b2abf", "df14918f77305ffec7c74505c887727e"]
sorl-thumbnail||image||da32bbf766ac7ea7a561f96222391dfd	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/45/Screen Shot 2013-10-05 at 8_1.58", "size": [832, 599]}
sorl-thumbnail||image||1e108c3ca48231371295c85237ef8637	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/00/76/0076f954247c68f40d1dd8a0c3b3f189.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||16a769d8d369ccea82507d9338239728	["ba7cc02c2788b53dd9f6a0e45ce99e64", "1c73ae9b05a87088a103387c87aa194a", "6e6000fc47f9935c9ef3c0af57f45404"]
sorl-thumbnail||image||3999e98c2918361ce3c0327d118fd710	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ee/1f/ee1fe08c32e5ac238e78c6f76de990bf.jpg", "size": [869, 450]}
sorl-thumbnail||image||882f0e9c5c307f8e26657fea56ed02d2	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/46/Screen Shot 2013-10-05 at 2_1.59", "size": [924, 596]}
sorl-thumbnail||image||5eed01ad49d17149c9b7d0cb3f59e6b4	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/91/13/9113438585a41657e1eafad3820ee141.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||6c13ac0b0df241432104440db1ab51f5	["5f23c5111f69e8d75bdd279318c8c9d6", "a4d0abb6d4dd55d5ef1271729715b763", "f70ae72196e08431ff0bdb4c8c15a0c4"]
sorl-thumbnail||image||5cd5b975b8066a37a89ef6f9c02f7cce	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/47/Screen Shot 2013-10-05 at 3_1.09", "size": [887, 598]}
sorl-thumbnail||image||8d8853fc300b964e3cea2e4e1820e3ce	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/d1/4e/d14e66f0825602597285d0cd7f68748c.jpg", "size": [96, 96]}
sorl-thumbnail||image||d29c9727afa30f511f5ca98de20e278f	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/48/Screen Shot 2013-10-05 at 3_1.17", "size": [850, 599]}
sorl-thumbnail||image||6efcfd19d488404950e79a2617fe2854	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/bd/4c/bd4c798b998369cbc44238d8b7aeaeb0.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||95152d80810bd2d7d2f18a227f373381	["c879840bc7afc6f628b719a5929c0f58", "c1111797d7233d5f92a321aca7085b60", "6689f68fb8b9e4d1161c1eaaeea9e686"]
sorl-thumbnail||image||29bdcccf1eb3b79066c7c8208cca904f	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/49/Screen Shot 2013-10-05 at 3_1.24", "size": [920, 596]}
sorl-thumbnail||image||84aad26a99a36b3d56301f4cd2503124	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/9c/f6/9cf610e3463f064047321f82f082f33d.jpg", "size": [96, 96]}
sorl-thumbnail||image||95152d80810bd2d7d2f18a227f373381	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/50/Screen Shot 2013-10-05 at 3_1.31", "size": [896, 599]}
sorl-thumbnail||image||6689f68fb8b9e4d1161c1eaaeea9e686	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/fb/e9/fbe9fdab74b859a56c7d1996cf9c6a08.jpg", "size": [96, 96]}
sorl-thumbnail||image||d0aa5b780f9ff6af2752fc3f8f0d7936	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/51/Screen Shot 2013-10-05 at 3_1.36", "size": [852, 601]}
sorl-thumbnail||image||a384929e9d66274cffb4a12b6c16e4b7	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/70/c9/70c9e9f8fb38040418d58c309b4e0304.jpg", "size": [96, 96]}
sorl-thumbnail||image||ac5fc08c0d1647b371e3d34857400d79	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ee/2c/ee2ca65d3d6710372bd9a87148a3c3bf.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||13e3997ec6e110d7e1df6406976acfea	["5a05a05104d0b5ff9b4fe16ddb899304", "9e9ffb0a367481269d5b2288563e0aeb", "1a3d4a0e822cf16da428f1c2b8ba7e90"]
sorl-thumbnail||image||c9a90fc138ee139f022dacc6eaccfcd2	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/53/Screen Shot 2013-10-05 at 3_1.47", "size": [830, 600]}
sorl-thumbnail||image||eb445971dd7a90a37ae69caae40e219e	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/98/96/98967afe8afd8f92ed782f17b2ffe603.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||5cd5b975b8066a37a89ef6f9c02f7cce	["4e114f3e339a352d3b80fa80795f722f", "8d8853fc300b964e3cea2e4e1820e3ce", "3ce359b09ad68b7970058de2242f4af5"]
sorl-thumbnail||image||98728444e1f370412fee5b02af28533d	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/54/Screen Shot 2013-10-05 at 3_1.53", "size": [880, 597]}
sorl-thumbnail||image||d43c71f373a64a8f1111e2c2806eccfc	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/68/40/68406a1ed0340edde95116d8b788f00f.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||a7cf044fe2344811b957242d51d14e2c	["79b37d7c6d8b93ac7f70dd604a1d9230", "1b53ba5adfd713c11b1ebfb2dda71236", "58ac6bb3da82f69422b57c116fa10746"]
sorl-thumbnail||image||3ce359b09ad68b7970058de2242f4af5	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/70/bb/70bb9f7c79f9ed8b23af7f2b3bcdab34.jpg", "size": [869, 450]}
sorl-thumbnail||image||6575d525aa8be88853a3243ce1d1f8a0	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/b6/f3/b6f37b61ae85cb9a00238845e7f14286.jpg", "size": [254, 254]}
sorl-thumbnail||image||a7cf044fe2344811b957242d51d14e2c	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/55/Screen Shot 2013-10-05 at 3_1.58", "size": [933, 601]}
sorl-thumbnail||image||1b53ba5adfd713c11b1ebfb2dda71236	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/04/fe/04fe7240314a2e5a6b360067351e48a8.jpg", "size": [96, 96]}
sorl-thumbnail||image||b61cf5736adc865cfae1af8418920dfd	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/56/Screen Shot 2013-10-05 at 4_1.07", "size": [859, 598]}
sorl-thumbnail||image||fe1fea24fb063dd57e8faa11a3e5545d	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/48/4d/484d99adfa1bb24c07e54029391599f9.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||f3236ff78ed66b67bb069cd84b66d5c9	["30c6760ed5fc048948121d39154a285b", "d28a799195744942150d55a395e9a0af", "ac68bcc80d9fa9e48fb0f17accbc3254"]
sorl-thumbnail||image||7e508468cb850b66b28f1a2edc6eacaf	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/57/Screen Shot 2013-10-05 at 4_1.13", "size": [889, 599]}
sorl-thumbnail||image||eff38b3c374ee5491496f463fd502c39	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/2d/59/2d59eb5021c6829d854f3ee40e5fcbef.jpg", "size": [96, 96]}
sorl-thumbnail||image||4ef0bf6e883201fe11d8ba01e552bbd7	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/61/Screen Shot 2013-10-05 at 8_1.57", "size": [891, 599]}
sorl-thumbnail||image||c879840bc7afc6f628b719a5929c0f58	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/5c/d7/5cd7ad16dee86fa722e2695e3a39996a.jpg", "size": [869, 450]}
sorl-thumbnail||image||d28a799195744942150d55a395e9a0af	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/17/25/17258cf2d6b7c2bfcf02313bb5998c35.jpg", "size": [869, 450]}
sorl-thumbnail||image||3cec3d5fcb9bd9d287da9682cd0c0918	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/58/Screen Shot 2013-10-05 at 7_1.14", "size": [763, 595]}
sorl-thumbnail||image||caaa60ea3c84aa9694520f611e112f66	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/43/ee/43eeaa6bb789c565a622ab712c62ac92.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||3cec3d5fcb9bd9d287da9682cd0c0918	["caaa60ea3c84aa9694520f611e112f66", "ec14b2b03f5c20cc0709e7856f8a5845", "dbdb9ce13e29287a528d499ec5bbbfa8"]
sorl-thumbnail||image||310fbf1163cc4287925cfaaa775768c1	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/4f/2e/4f2e56ea509267a66e37116b3140db99.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||98728444e1f370412fee5b02af28533d	["d43c71f373a64a8f1111e2c2806eccfc", "4d27e1daccedbc9a42369430d3126b68", "e9960255450e2f30d1de03238b00e054"]
sorl-thumbnail||image||13e3997ec6e110d7e1df6406976acfea	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/59/Screen Shot 2013-10-05 at 7_1.47", "size": [917, 599]}
sorl-thumbnail||image||9e9ffb0a367481269d5b2288563e0aeb	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/db/c3/dbc3da893344cbdcb2f427cc4668d0a8.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||4ef0bf6e883201fe11d8ba01e552bbd7	["e159a79ce13e1b3854ab08febd0ab8b8", "3b64539ba22acc9ad0d1a228085099a2", "802b052e98946297f4d663c80e30f760"]
sorl-thumbnail||image||b7fef3eac963b767fe0b2cd6019226b2	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/60/Screen Shot 2013-10-05 at 7_1.55", "size": [854, 599]}
sorl-thumbnail||image||d8f07483e2a75ceb1f27457ef592f14e	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c0/df/c0df1ef71a7fc59b8c34d4dad3546cbd.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||b7fef3eac963b767fe0b2cd6019226b2	["8f7bf364669879f2065199970fc677e5", "d8f07483e2a75ceb1f27457ef592f14e", "6a630f5cbea8dd7fcfa171fe210c0e01"]
sorl-thumbnail||image||e159a79ce13e1b3854ab08febd0ab8b8	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/02/c3/02c31cf102874a60d92c043faf82c14d.jpg", "size": [96, 96]}
sorl-thumbnail||image||b580579eb2b9c5915697afaf7a70779c	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/62/Screen Shot 2013-10-05 at 9_1.27", "size": [827, 602]}
sorl-thumbnail||image||8cfaeb757e616952c6999cd4ac2dadf2	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/f4/a2/f4a2796bc07991b9a8282004c68cc078.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||b61cf5736adc865cfae1af8418920dfd	["fe1fea24fb063dd57e8faa11a3e5545d", "12e2c90098d9db80e6f78780a004481d", "683b8135bea3c5d6e1e62cf3b54e6de8"]
sorl-thumbnail||image||dc212ce6548a27fd8f4555f436232c19	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/95/cb/95cb10ff7bc0baf9df2da5df218c57cb.jpg", "size": [869, 450]}
sorl-thumbnail||image||79b37d7c6d8b93ac7f70dd604a1d9230	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/58/26/5826b0859df9b53004e4ef226aa59168.jpg", "size": [869, 450]}
sorl-thumbnail||image||d050c9f63cd29563d81215a7ef02448b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/50/8f/508f8f452051d89e0dde9faf57cea31a.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||15fd3bddfe90919cf01f6a9185989bb7	["dc212ce6548a27fd8f4555f436232c19", "d050c9f63cd29563d81215a7ef02448b", "5bd734be32346d915c505b808a4a057f"]
sorl-thumbnail||image||d7e9c1fa0f7f902b2e4437d9ac80cef7	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c1/15/c1158df35fd2a2c12aabc3000f36d9eb.jpg", "size": [254, 254]}
sorl-thumbnail||image||f70ae72196e08431ff0bdb4c8c15a0c4	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c3/d6/c3d6f62e0dfffc79592f61bb5632fed3.jpg", "size": [254, 254]}
sorl-thumbnail||image||099981baf24eb92406ab6cc2e130b3a2	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/de/02/de029a82d7fb588a72d70a265e06419b.jpg", "size": [254, 254]}
sorl-thumbnail||image||88b92dfca379cb993573dea3af9659a6	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/94/59/9459cf0ec0d95cc7a48179a2c35f58d1.jpg", "size": [254, 254]}
sorl-thumbnail||image||68da7c49f413d9c46960364e84a81a2a	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c2/b9/c2b9e90fcb05826b2bb151156cb1f04d.jpg", "size": [254, 254]}
sorl-thumbnail||image||d21180873902678d01ebac6a91e30a09	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ce/ba/ceba83254ae71fa03a68607bdf8f1279.jpg", "size": [254, 254]}
sorl-thumbnail||image||ba7cc02c2788b53dd9f6a0e45ce99e64	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/e2/b4/e2b46a00a08e8e36b27ed092191b6839.jpg", "size": [254, 254]}
sorl-thumbnail||image||8501e937a8135f36fcfd66b6ee7b2abf	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/8c/cf/8ccf5f72b794c06103d95df18baf19e2.jpg", "size": [254, 254]}
sorl-thumbnail||image||e76721a7582955af53b8b7a5a05b359f	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/23/1b/231bf866c51bf452b09e7929d70de021.jpg", "size": [254, 254]}
sorl-thumbnail||image||683b8135bea3c5d6e1e62cf3b54e6de8	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/36/18/3618b7ed86ad61f63f05c4f337c2fc64.jpg", "size": [869, 450]}
sorl-thumbnail||image||d2340f63ee18a53f8dc9b7296d32ad65	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/bd/9f/bd9f76d32120ff13f38f9e16cbf99901.jpg", "size": [254, 254]}
sorl-thumbnail||image||5ef7206e72f85f95349e356161a3684c	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/dd/08/dd08e15f68c79a2ea287fd1e0321e9a5.jpg", "size": [254, 254]}
sorl-thumbnail||image||30c6760ed5fc048948121d39154a285b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/a5/42/a542358f637225eac3996e9553aaff95.jpg", "size": [254, 254]}
sorl-thumbnail||image||7f7d2a9efb2e002eb6e41280d5f1c0b1	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/2b/e0/2be084b2f5e06113043c06d716c01435.jpg", "size": [254, 254]}
sorl-thumbnail||image||6013555ce6444a984b1d3f07b24822e9	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/7b/33/7b335e54fc16b181aac7aa949e0d268a.jpg", "size": [254, 254]}
sorl-thumbnail||image||32f4854d1cc6fbb30f4859432ba36433	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/8b/72/8b72d59ae6cf779b876744f34e7ea503.jpg", "size": [254, 254]}
sorl-thumbnail||image||eab70ea272e14b47ea570d21beebd2b9	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/be/2d/be2d50651f3fb56930b293e0be7cf9ca.jpg", "size": [254, 254]}
sorl-thumbnail||image||fc72a3878e52010f7525d8a41ca84bfc	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/89/a9/89a940a461de8ade7b5aca263637e4af.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||99e0a9c73c802f20106c4bd9d5383661	["90292a0d8f3969ddbe421b0849891c86", "c61c95b25c6ec980b916ba337bbb1391", "fc72a3878e52010f7525d8a41ca84bfc"]
sorl-thumbnail||image||a799afa8251c9d41578b170be97c75f3	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/b1/9c/b19c33372ebcd6aab06bb21bd9b9ffa4.jpg", "size": [254, 254]}
sorl-thumbnail||image||f5be4fd2341764037bf59b669d783d72	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/e3/03/e30366320875a38f658dbe3c19757391.jpg", "size": [254, 254]}
sorl-thumbnail||image||b7da81a13e93aa6ae165efc36f97dabf	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/97/d0/97d0ed5c05d9116a5cb86288f398fa9b.jpg", "size": [254, 254]}
sorl-thumbnail||image||2afb8b68aa1eb7e3e0953ac00fbbb67c	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/e9/01/e901643741de7ebe20aeb5b533e774dc.jpg", "size": [254, 254]}
sorl-thumbnail||image||3b64539ba22acc9ad0d1a228085099a2	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/2a/e3/2ae3549e9ece889341fd9819cf761fc4.jpg", "size": [869, 450]}
sorl-thumbnail||image||5fc7f05bd90cc891e8df69eb5444c505	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/63/Screen Shot 2013-10-06 at 1_1.10", "size": [865, 546]}
sorl-thumbnail||image||42202069263cb298d8d3cd81576b2c71	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/b4/93/b49376c442fea31e5ad9f6ab22a8b8e0.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||5fc7f05bd90cc891e8df69eb5444c505	["a588771addc4fe157b27387f7b7a2da1", "d1175738894e4283f32318bf6c2d3fb0", "42202069263cb298d8d3cd81576b2c71"]
sorl-thumbnail||image||9da2b358f48294ae6558e51d5dbb0479	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/3e/58/3e58606cae52a971709c43b6420892e9.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||88bc62a1fb1cd4c39ae3f75e373c6997	["5ef7206e72f85f95349e356161a3684c", "a01cfa5738dc2156ac09a0e9687cff8e", "e2adb3738af33eb968f2513ded2257ef"]
sorl-thumbnail||thumbnails||58aa51a5882aca50bb54d1e3fb67e413	["c632469ce160bb078064960b21f12da7", "099981baf24eb92406ab6cc2e130b3a2", "4c343cfd33140370095c70b393ee36ae"]
sorl-thumbnail||thumbnails||763d09b89ed29a7f80a202e57a40963b	["475423b339be9237b0cfdcb6fbb8f6ed", "17404033f9fc56617b61bc56414af355", "f5be4fd2341764037bf59b669d783d72"]
sorl-thumbnail||thumbnails||c23ec52596a479659c40ab1c7a5e0326	["8ad1806c3cf08e7d0e5215fc61da1467", "88b92dfca379cb993573dea3af9659a6", "9da2b358f48294ae6558e51d5dbb0479"]
sorl-thumbnail||image||404bc62cdb161e8e7869d0397f3a873d	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/58/c2/58c2734e9b82ceb3de60efb73d9f3392.jpg", "size": [869, 450]}
sorl-thumbnail||image||eb5b0ca951a504ac9e5dcb7fd2349804	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/dd/af/ddafdeba5d4e88aa7263d57b11018461.jpg", "size": [869, 450]}
sorl-thumbnail||image||dd1456603a31bb40456e014a4c92a633	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/51/f5/51f5a6db66d80f489f2370f5b9ad5b6c.jpg", "size": [869, 450]}
sorl-thumbnail||image||31c78cf5c4237aa2f470087398499f8a	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/bc/0f/bc0fc49fc6e6761faadf189f7b1c0115.jpg", "size": [869, 450]}
sorl-thumbnail||image||58334b95b3f967c611f1c7ae7dfff4aa	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/66/Screen Shot 2013-10-06 at 6_1.37", "size": [828, 334]}
sorl-thumbnail||image||d72999678bef048552efec8b25d349be	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/64/1e/641e16c2865b2235eefa1951d8633010.jpg", "size": [96, 96]}
sorl-thumbnail||image||083b01385f5db3446f2486b194f15253	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/7d/70/7d703a1a1b5f2d94b16946dea63b1fb0.jpg", "size": [869, 450]}
sorl-thumbnail||image||4d27e1daccedbc9a42369430d3126b68	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/72/6f/726ff096760cb9d5b9c7d051185b13a0.jpg", "size": [869, 450]}
sorl-thumbnail||image||58ac6bb3da82f69422b57c116fa10746	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/e4/87/e48720eed479151f9f544fb018588375.jpg", "size": [254, 254]}
sorl-thumbnail||image||7ae6c6919c1cf007aa7dfdafd57cf208	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/0d/a5/0da520d1715101ac71e7fb44fe96e538.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||7e508468cb850b66b28f1a2edc6eacaf	["7ae6c6919c1cf007aa7dfdafd57cf208", "eff38b3c374ee5491496f463fd502c39", "310fbf1163cc4287925cfaaa775768c1"]
sorl-thumbnail||image||e9960255450e2f30d1de03238b00e054	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/68/30/6830e74931ab14d4b75f5e262d2a9254.jpg", "size": [254, 254]}
sorl-thumbnail||image||5a05a05104d0b5ff9b4fe16ddb899304	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/e8/4e/e84e3949e6f94c07b27bc0f0916a9145.jpg", "size": [254, 254]}
sorl-thumbnail||image||802b052e98946297f4d663c80e30f760	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/31/c8/31c89337ca0caff58acacd33d8679e45.jpg", "size": [254, 254]}
sorl-thumbnail||image||12e2c90098d9db80e6f78780a004481d	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/4c/e5/4ce5130f8fe2f4c778ad4cfd6db12e6f.jpg", "size": [254, 254]}
sorl-thumbnail||image||dbdb9ce13e29287a528d499ec5bbbfa8	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/33/66/336638eb234694c5d4f75d947b007fdb.jpg", "size": [254, 254]}
sorl-thumbnail||image||a3638a413b6e2d98b415aa06a415dec4	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/69/74/697433d1306bf0d29aafb18312fb9b05.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||b580579eb2b9c5915697afaf7a70779c	["8cfaeb757e616952c6999cd4ac2dadf2", "a3638a413b6e2d98b415aa06a415dec4", "404bc62cdb161e8e7869d0397f3a873d"]
sorl-thumbnail||image||8f7bf364669879f2065199970fc677e5	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/6e/6f/6e6fc83079dcc092e01b3de00658cbfb.jpg", "size": [254, 254]}
sorl-thumbnail||image||cdc95c2561bd3a04fa4ec8ba2e5ca9e2	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/a3/a5/a3a50a77d6cf01c38927f236046d4337.jpg", "size": [254, 254]}
sorl-thumbnail||image||b5ad45374b6ee75c3bfe463e52ef8bf4	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/bf/15/bf1529a19edb8ae31cad3069712ca855.jpg", "size": [254, 254]}
sorl-thumbnail||image||f92708c35d0e6b78a6a95a547851aba3	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/67/87/67876d5d632db521872a97fb25c63a9e.jpg", "size": [254, 254]}
sorl-thumbnail||image||4bf577309cdb4ed721755df1859e9c86	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c5/83/c583eec12f68f76660012d03370ef613.jpg", "size": [869, 450]}
sorl-thumbnail||image||e2adb3738af33eb968f2513ded2257ef	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/62/a7/62a7e0c10230f077fbdde96c2aa65fea.jpg", "size": [869, 450]}
sorl-thumbnail||image||b10cdb02be5961c2e8c53c0416594c3d	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/58/df/58df9b0c03002c5859e4dd0fcccd1935.jpg", "size": [869, 450]}
sorl-thumbnail||image||44e819a52638cade005d7dbdcd5f3831	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/14/Screen Shot 2013-10-07 at 1_1.21", "size": [822, 556]}
sorl-thumbnail||image||d72d8083f896212e79377cbab00b1541	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/46/84/4684d56b7ea8617f5f4f445f889f50bf.jpg", "size": [96, 96]}
sorl-thumbnail||image||1a3d4a0e822cf16da428f1c2b8ba7e90	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/e4/42/e4420e17df8ded820a933cf0b4bede5b.jpg", "size": [869, 450]}
sorl-thumbnail||image||640c1e1bf02d5838ef4b9bc3a5b0e7c1	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/5f/0a/5f0a0dad82fe8c9d40f1c0b725154b2d.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||c9a90fc138ee139f022dacc6eaccfcd2	["eb445971dd7a90a37ae69caae40e219e", "454f029ff967e400b273071c9d2a66e0", "4bf577309cdb4ed721755df1859e9c86"]
sorl-thumbnail||image||d3c96965693bb9f41971cbaf34614e39	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/e3/95/e395d44d170796fce79d9564888e4628.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||6965732fad70263883983dac80e27c20	["a799afa8251c9d41578b170be97c75f3", "d3c96965693bb9f41971cbaf34614e39", "4992292d7eade3ff56e1ccb0645ab340"]
sorl-thumbnail||image||816da1a80e390359a6b278f389fcde4a	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/4f/92/4f92e5242896da8a7f93e45fc38083bf.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||58334b95b3f967c611f1c7ae7dfff4aa	["1cc276e3495b4bfd2b8300f9a5c62eeb", "d72999678bef048552efec8b25d349be", "cdc95c2561bd3a04fa4ec8ba2e5ca9e2"]
sorl-thumbnail||thumbnails||44e819a52638cade005d7dbdcd5f3831	["d72d8083f896212e79377cbab00b1541", "640c1e1bf02d5838ef4b9bc3a5b0e7c1", "816da1a80e390359a6b278f389fcde4a"]
sorl-thumbnail||image||faaca739289e8c0160b90665ef6e94fc	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/3f/73/3f7304de6be968f542a7c6f21e8bb01a.jpg", "size": [869, 450]}
sorl-thumbnail||image||d1175738894e4283f32318bf6c2d3fb0	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/92/50/925018dd73d8f06007a1087862a4df0b.jpg", "size": [869, 450]}
sorl-thumbnail||image||5a9ac3a7f04c1fb15654b62ec4fb02fc	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/67/Screen Shot 2013-10-07 at 2_1.38", "size": [763, 624]}
sorl-thumbnail||image||19850b35ad0e2f2ce2ef7382a4ca6a7b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/4f/7d/4f7df190b635864ed1fbd0cdb1d59ec2.jpg", "size": [96, 96]}
sorl-thumbnail||image||c799591f86cd8e7b353fd4eb52e3d819	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/28/31/2831d8926a12af87dc237433207d8c4d.jpg", "size": [96, 96]}
sorl-thumbnail||image||5cb9aa589157bdf2443da0d82d0bb00c	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/0f/cb/0fcb2248330987b48873c36186ba75e1.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||8cba0120b1740420e30dab372ae563c0	["4461f5d8a370394d122ed20cf67560ba", "99446a450d3546fddd84cc7b60ebedff", "64e4a7b48d353335f921b9ce08a7f821"]
sorl-thumbnail||image||f33112c9931c396c18b7eb39ea236824	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/0e/a8/0ea8052ed8de0b8bcf77364eecb4e65b.jpg", "size": [254, 254]}
sorl-thumbnail||image||454f029ff967e400b273071c9d2a66e0	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/1c/ee/1cee4a8c1378dae12ab3556bde533d38.jpg", "size": [254, 254]}
sorl-thumbnail||image||c1111797d7233d5f92a321aca7085b60	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/0a/4d/0a4db5318845d917f54084feef9b6e03.jpg", "size": [254, 254]}
sorl-thumbnail||image||952730efd0dfdd653299803800a396f2	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/68/Cabarrus County food inspection_1.png", "size": [819, 460]}
sorl-thumbnail||image||dbffa1f3321823f98c9db3b5dac1f3a8	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/80/a4/80a43219ae7bc9f985ccb01861e971d1.jpg", "size": [96, 96]}
sorl-thumbnail||image||a588771addc4fe157b27387f7b7a2da1	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/0a/55/0a558e9ee6c190f4cf45585d9b61c99f.jpg", "size": [254, 254]}
sorl-thumbnail||image||3ec890adfbe4f25d346475f90e42918f	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/83/94/83945817678c7a4f8c0ad0a1bd201ff4.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||23f66ba9101e2ec8fb10ed4c27466b8d	["3ec890adfbe4f25d346475f90e42918f", "ac5fc08c0d1647b371e3d34857400d79", "083b01385f5db3446f2486b194f15253"]
sorl-thumbnail||image||4e114f3e339a352d3b80fa80795f722f	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/2c/98/2c987483a53bd55965058911843f598f.jpg", "size": [254, 254]}
sorl-thumbnail||image||d6054f7d6e950ec974f17fe4abe05117	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/69/Carteret County food inspection_1.png", "size": [819, 460]}
sorl-thumbnail||image||50f638f4bde62480a113cc5023af8266	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/80/0f/800f01b786223a907a2819343e2c445b.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||d6054f7d6e950ec974f17fe4abe05117	["50f638f4bde62480a113cc5023af8266", "e0dba858aec1efa18ccea42497f29dd6", "bac53cb7442d2cbbf282cce7d00dfd28"]
sorl-thumbnail||image||8857ff8b0ce27541a18dd91bd0510a78	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/f4/1b/f41be8dad2c2e943dbe40b3afa58ff1c.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||5a9ac3a7f04c1fb15654b62ec4fb02fc	["2dbb8be122c9e4ac08bbba5d050dfa8c", "19850b35ad0e2f2ce2ef7382a4ca6a7b", "5cb9aa589157bdf2443da0d82d0bb00c"]
sorl-thumbnail||image||af02ea00147ba7bc50272bd970d52986	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/1e/9e/1e9edaa12458b39a0a158b4fe5c303fb.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||7d2a580c49a66ca61deb6a98e1108e27	["7f7d2a9efb2e002eb6e41280d5f1c0b1", "af02ea00147ba7bc50272bd970d52986", "946013d8af4e52c5abf7498fbc3667f1"]
sorl-thumbnail||image||d853c97b9d6eecc78d3e6c23377234fc	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/70/Screen Shot 2013-10-07 at 11_1.56", "size": [779, 595]}
sorl-thumbnail||image||6a630f5cbea8dd7fcfa171fe210c0e01	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/21/f6/21f6ebcbc9508bc1b1163f2ca5f7b7ae.jpg", "size": [869, 450]}
sorl-thumbnail||image||07e70494c7660ecbf4759d66b1cd7be1	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/49/56/4956914f96be06440b7efdf8adb7c233.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||29bdcccf1eb3b79066c7c8208cca904f	["84aad26a99a36b3d56301f4cd2503124", "9fe47a80ef82c6f76320e72510caef58", "f33112c9931c396c18b7eb39ea236824"]
sorl-thumbnail||image||1129123ae183ebe9423a706bc21fca35	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/59/46/59466e2cc8d6c41fb12e630b267a0f80.jpg", "size": [869, 450]}
sorl-thumbnail||image||8cba0120b1740420e30dab372ae563c0	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/71/Screen Shot 2013-10-08 at 12_1.25", "size": [1353, 636]}
sorl-thumbnail||image||99446a450d3546fddd84cc7b60ebedff	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/d6/90/d690f038fc8f9eba42b43c4fd8f68038.jpg", "size": [96, 96]}
sorl-thumbnail||image||5f23c5111f69e8d75bdd279318c8c9d6	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/1b/8b/1b8bc97ac6198d77f1543ad9807c17b0.jpg", "size": [869, 450]}
sorl-thumbnail||image||64e4a7b48d353335f921b9ce08a7f821	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c2/21/c221ab7657b423441c13657df562aefc.jpg", "size": [254, 254]}
sorl-thumbnail||image||ec14b2b03f5c20cc0709e7856f8a5845	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/f0/d1/f0d1f55a8a865f19ee3cbc23bf0a089a.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||d853c97b9d6eecc78d3e6c23377234fc	["07e70494c7660ecbf4759d66b1cd7be1", "c799591f86cd8e7b353fd4eb52e3d819", "79e528c12e1c7a5f754f300f645978c3"]
sorl-thumbnail||image||95eafe2415eca5947d06724a99b75035	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/72/Pitt county food inspection_1.png", "size": [819, 460]}
sorl-thumbnail||image||c5f78e863e62cf210f29023715546110	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/91/c4/91c4dd028e9e4e983d884cbe3680a607.jpg", "size": [96, 96]}
sorl-thumbnail||image||bac53cb7442d2cbbf282cce7d00dfd28	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/23/96/239666c6564619aef8d7abddb324b9db.jpg", "size": [869, 450]}
sorl-thumbnail||image||149095d11d0b844b9a546a59c8ac190c	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/73/Screen Shot 2013-10-08 at 7_1.16", "size": [1357, 646]}
sorl-thumbnail||image||c8d59777dc2ca5741ab1d9aaeb16f902	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/99/62/9962a2b1e2827ce81c0a6592c3cfb7dd.jpg", "size": [96, 96]}
sorl-thumbnail||image||c632469ce160bb078064960b21f12da7	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/fe/4c/fe4cd45f1066ef4b14b5cfc345b3a2c1.jpg", "size": [869, 450]}
sorl-thumbnail||image||1cc276e3495b4bfd2b8300f9a5c62eeb	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/48/03/4803f19ca11c83172090f4588f33e83f.jpg", "size": [869, 450]}
sorl-thumbnail||image||be8fa604981077d7554d8b3c877bd49d	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/85/f5/85f5f2b3df3cba68019a2d54f4d91137.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||be67d349bb90588d7bfcf15d078fd28f	["b145e540e093a50eca7fcfea88de894b", "35df61f62517a98af0e02f865b0c99b0", "732abde21a249e34e6d3574fa6f8ab00"]
sorl-thumbnail||image||1c73ae9b05a87088a103387c87aa194a	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/6e/1c/6e1caf0acf572b8421e942012a164521.jpg", "size": [869, 450]}
sorl-thumbnail||image||a3af95ce14460a4698885fea2ad3da7e	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/74/Screen Shot 2013-10-08 at 7_1.28", "size": [1115, 513]}
sorl-thumbnail||image||f1f6a92744b85962e9dcc256f209f6e2	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/71/a0/71a0f033f9860ad2df50d49b5c25a8c7.jpg", "size": [96, 96]}
sorl-thumbnail||image||19bac89fbdce158d78c4c62b565ec8c3	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/06/73/0673ac7c92b9891ff6ea10c60193f957.jpg", "size": [869, 450]}
sorl-thumbnail||image||1d0d621bbd493532684aceae72c49f21	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/72/17/72170343899de64cf2a353e5717c5a05.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||69e8b072b585efe23fca241aeb37038b	["951fdbd66046c9a129f6717f2654b73f", "556aa3408a32339f33a4ef63bf20d3e2", "3227b035dc4882f6fc4234bfd0246468"]
sorl-thumbnail||image||475423b339be9237b0cfdcb6fbb8f6ed	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/54/ee/54ee1acb7cd6cd59ea2562d72234b1a8.jpg", "size": [869, 450]}
sorl-thumbnail||image||1674869a296a87076a68231101f0c534	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/75/Henderson county food inspection_1.png", "size": [953, 460]}
sorl-thumbnail||image||1a2b2b4aff09226ebb7ce9a3d78953cb	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/d9/8b/d98b1922a2a38b360117451470347037.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||95eafe2415eca5947d06724a99b75035	["545dbffcc8ec0feca475787206fe2466", "c5f78e863e62cf210f29023715546110", "e4ba5929b5e11f166d2646ed9812d89c"]
sorl-thumbnail||image||545dbffcc8ec0feca475787206fe2466	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/42/4c/424ccda098f3755667d1282d9714b586.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||a3af95ce14460a4698885fea2ad3da7e	["ac7f6b0dd9a241e01e3b8bd31e8c1502", "f1f6a92744b85962e9dcc256f209f6e2", "1d0d621bbd493532684aceae72c49f21"]
sorl-thumbnail||image||69e8b072b585efe23fca241aeb37038b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/76/Screen Shot 2013-10-08 at 7_1.41", "size": [753, 485]}
sorl-thumbnail||image||556aa3408a32339f33a4ef63bf20d3e2	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c9/61/c961474e2d19e6caa4a9bc12833fa70d.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||01477af0c0ff33cbab86282d55b0d71a	["9c25bbed57efe857875fb181bd3f3623", "09674cadce325bb774bfd9a75f376391", "1d0fce9a53a986124f0fcd80e731d5a8"]
sorl-thumbnail||image||e0dba858aec1efa18ccea42497f29dd6	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/32/f1/32f17c84950c628361543281921690c9.jpg", "size": [254, 254]}
sorl-thumbnail||image||be67d349bb90588d7bfcf15d078fd28f	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/78/Screen Shot 2013-10-09 at 9_1.46", "size": [649, 621]}
sorl-thumbnail||image||b145e540e093a50eca7fcfea88de894b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ce/a3/cea39cfd01f877c59fe061dcf83336fb.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||149095d11d0b844b9a546a59c8ac190c	["be8fa604981077d7554d8b3c877bd49d", "c8d59777dc2ca5741ab1d9aaeb16f902", "0efec87c102171777b7e9fdcef2e722f"]
sorl-thumbnail||image||01477af0c0ff33cbab86282d55b0d71a	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/79/Screen Shot 2013-10-09 at 9_1.53", "size": [240, 258]}
sorl-thumbnail||image||9c25bbed57efe857875fb181bd3f3623	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/69/15/6915994a1040e67e5ee82cb828dd51f5.jpg", "size": [96, 96]}
sorl-thumbnail||image||9ae34519c5cf0e841ba68e4df39ce8b1	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/80/Screen Shot 2013-10-09 at 10_1.07", "size": [893, 561]}
sorl-thumbnail||image||8071c27543a096e7d8e2acb840970959	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/63/f9/63f99041f37f7cea8822960be2877085.jpg", "size": [96, 96]}
sorl-thumbnail||image||b1f6a8055ed11201f66a3bd10a8baefc	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/81/Screen Shot 2013-10-09 at 10_1.24", "size": [438, 538]}
sorl-thumbnail||image||d9e6da998ab552f1d7775e2bbbaa99c5	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/80/2a/802ad3312b1eb9d653c9bf3cb9b8928b.jpg", "size": [96, 96]}
sorl-thumbnail||image||a7c290b4809cb2c9667b2f53d481a1de	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/82/Screen Shot 2013-10-09 at 10_1.33", "size": [852, 561]}
sorl-thumbnail||image||e1f925b234b7ac18f2d662ee3a6f69f1	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/79/83/79837e68a9658fd10194cc14f86aadcb.jpg", "size": [96, 96]}
sorl-thumbnail||image||b9c4ce8891ad7eb2616095bff3becec1	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/d2/7a/d27a845ccba64240fd1fcbded195b4fc.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||18767d71a7546e740dd441ea307209dc	["911e6460641e1d939a340dc77e63a72a", "e1f925b234b7ac18f2d662ee3a6f69f1", "3994ba15f8d221e6d43891f7959d1a28"]
sorl-thumbnail||image||4b873eb97fe4ba717c719965cd688561	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/98/64/9864bab13e927583b7b43fd93f67fc88.jpg", "size": [869, 450]}
sorl-thumbnail||image||09674cadce325bb774bfd9a75f376391	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c7/e2/c7e22e9f5fc696cf67a0861f1c746389.jpg", "size": [254, 254]}
sorl-thumbnail||image||732abde21a249e34e6d3574fa6f8ab00	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/db/55/db55079320fd83ecdff10e7af978f9d4.jpg", "size": [254, 254]}
sorl-thumbnail||image||becb8fa79029d68bcfd76c2b289ee407	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/99/4f/994f9ab613a09c01882d061813e49c48.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||9ae34519c5cf0e841ba68e4df39ce8b1	["becb8fa79029d68bcfd76c2b289ee407", "8071c27543a096e7d8e2acb840970959", "4b873eb97fe4ba717c719965cd688561"]
sorl-thumbnail||image||951fdbd66046c9a129f6717f2654b73f	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/f1/3c/f13cd02034c8363c59844d2e1b8fa288.jpg", "size": [254, 254]}
sorl-thumbnail||image||01f47e4c7acac2995afb2a673070c72e	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/fd/60/fd600491c6485d9362d76e3cad303367.jpg", "size": [254, 254]}
sorl-thumbnail||image||1d0fce9a53a986124f0fcd80e731d5a8	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/2a/4f/2a4f2e09e71a657abd24e019b3bffbb8.jpg", "size": [869, 450]}
sorl-thumbnail||image||bfdfa6b39449f138b4139631441174fd	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/f7/94/f794c538c68a45cf46389f6d3ab771fa.jpg", "size": [254, 254]}
sorl-thumbnail||image||db7a5ca359cc070cff4e1993fd988ef3	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/83/Johnston County food inspection_1.png", "size": [819, 460]}
sorl-thumbnail||image||7e2612aed75e21f4be49c9f6dc214c81	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/93/a0/93a01dde9019dc4aa8cc04154c69fdd4.jpg", "size": [96, 96]}
sorl-thumbnail||image||d851acaec58c82c1e8cf5c69e86cb4ab	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ed/12/ed12fa46f0509faee1058dd40b04bf83.jpg", "size": [254, 254]}
sorl-thumbnail||image||d0925eb1ac27d368b40423680a6b1af3	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/4a/bd/4abd5998e89b11ccb37b4125818e5f00.jpg", "size": [254, 254]}
sorl-thumbnail||image||6092d4e413f06b9c840cee3ad4d1b9ae	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/f8/ec/f8ec6ce0d0596563f0f644896c150b66.jpg", "size": [869, 450]}
sorl-thumbnail||image||e67a396fe570e93cda5e90d3056a65ad	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/84/Screen Shot 2013-10-10 at 10_1.16", "size": [1535, 762]}
sorl-thumbnail||image||74c3ee4e8c7237322d819b47b4594a4e	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/a6/b5/a6b558c4fefe9a8a1c2a6c22976b2956.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||e67a396fe570e93cda5e90d3056a65ad	["dfe7627e31aebb0d6cda4969da5d548e", "74c3ee4e8c7237322d819b47b4594a4e", "45d889725d48ec444576b7d5794f9f08"]
sorl-thumbnail||image||dfe7627e31aebb0d6cda4969da5d548e	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/66/53/6653b13c545b303560c87f0ad751b173.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||b1f6a8055ed11201f66a3bd10a8baefc	["01f47e4c7acac2995afb2a673070c72e", "d9e6da998ab552f1d7775e2bbbaa99c5", "b37d38c9852bf9f241587c4bc35b712b"]
sorl-thumbnail||image||18767d71a7546e740dd441ea307209dc	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/85/Screen Shot 2013-10-10 at 10_1.16", "size": [1535, 762]}
sorl-thumbnail||image||b576a8c70a3cc49397c260eff5ee8b8c	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/e0/08/e00830558525bf0eaf80e4d884a146f8.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||882f0e9c5c307f8e26657fea56ed02d2	["6575d525aa8be88853a3243ce1d1f8a0", "b576a8c70a3cc49397c260eff5ee8b8c", "5eed01ad49d17149c9b7d0cb3f59e6b4"]
sorl-thumbnail||image||c96bcd4375b55150cd4741e4e52c1cba	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/90/e7/90e7c7951cfca5e191090e6598306efc.jpg", "size": [869, 450]}
sorl-thumbnail||image||12faa2fea1dc57f06624b28abe1e18a3	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/86/Screen Shot 2013-10-10 at 1_1.30", "size": [1002, 602]}
sorl-thumbnail||image||a9b47837f9b129652810f9dfc760790c	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/d5/10/d510001ca57176278bea9e7b9ab0dbe7.jpg", "size": [96, 96]}
sorl-thumbnail||image||83a8d53ce71523a8f4dd9e866aaf1bae	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/9e/2b/9e2bad6ffcc3f3aeb9809eba1f55d63c.jpg", "size": [869, 450]}
sorl-thumbnail||image||29cf8d6bfe974b88adc106cf3cd558c5	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/18/35/183577ec66f4dce32f84a0b8132bb78d.jpg", "size": [254, 254]}
sorl-thumbnail||image||e4ba5929b5e11f166d2646ed9812d89c	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/30/ab/30ab6893d885b9b0a6c57739269c047c.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||db7a5ca359cc070cff4e1993fd988ef3	["83a8d53ce71523a8f4dd9e866aaf1bae", "7e2612aed75e21f4be49c9f6dc214c81", "d0925eb1ac27d368b40423680a6b1af3"]
sorl-thumbnail||image||a6f799179e3e67218c14626f34997bc6	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/89/Screen Shot 2013-10-10 at 2_1.37", "size": [1165, 512]}
sorl-thumbnail||image||f6ecd8bce3be596af2a4116670f3c81a	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/8c/64/8c647b0d2fd8d32062773fbfd08dbf35.jpg", "size": [96, 96]}
sorl-thumbnail||image||48036c9e2d27002b27cc509bc0178de3	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/d7/78/d7783189baf4f278f77cf049afdea374.jpg", "size": [869, 450]}
sorl-thumbnail||image||4f1a058216c914cd13aaaf95573d9852	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/29/50/2950b85cb9492f0285104a3a7fce8148.jpg", "size": [869, 450]}
sorl-thumbnail||image||6bef1fe4263af8d06648ba082f72e42c	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/90/Screen Shot 2013-10-10 at 3_1.02", "size": [1228, 601]}
sorl-thumbnail||image||a9154a0d043c1eb33b2327a47eeab1eb	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/41/2a/412af7bf8bf116ccf4edaed25123787e.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||a7c290b4809cb2c9667b2f53d481a1de	["48036c9e2d27002b27cc509bc0178de3", "b9c4ce8891ad7eb2616095bff3becec1", "c87b592f25e41acb77c465a64b8398b7"]
sorl-thumbnail||image||413cc45da4add6623bfa2bb183a1ced8	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/91/Screen Shot 2013-10-10 at 4_1.03", "size": [1278, 599]}
sorl-thumbnail||image||13c37bc0a4819cc29a733e9a6343a2c5	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/11/d0/11d0da7fba1ae512b409bbdb06d97429.jpg", "size": [96, 96]}
sorl-thumbnail||image||c3fc9fbbba00c13257f29fe2218d0295	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/92/Screen Shot 2013-10-10 at 9_1.13", "size": [761, 648]}
sorl-thumbnail||image||c066eab58e9faf605a7c743e475bdad8	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/1a/51/1a51ff7f6069e015146ff05f8d75f6e6.jpg", "size": [96, 96]}
sorl-thumbnail||image||d0128b30688fa79b0fb6782e55eebe9f	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/f7/23/f723620cb5d3101525b622fd61dcc27e.jpg", "size": [869, 450]}
sorl-thumbnail||image||dd69918d6188daf36426f1882eae0be5	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/93/Screen Shot 2013-10-10 at 9_1.45", "size": [761, 528]}
sorl-thumbnail||image||fa6f3a64a9cb9a541dc18521ea66cd90	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ee/93/ee9333afed5a2958f3d19686ea8037f9.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||413cc45da4add6623bfa2bb183a1ced8	["13c37bc0a4819cc29a733e9a6343a2c5", "d0128b30688fa79b0fb6782e55eebe9f", "18c87d232aab3c2979951b3215a7bbc0"]
sorl-thumbnail||image||d2511224a3aee79235d2b787b07c6162	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/48/04/480462ad951b1b2c2feafa8f2056dcac.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||1674869a296a87076a68231101f0c534	["1a2b2b4aff09226ebb7ce9a3d78953cb", "bfdfa6b39449f138b4139631441174fd", "d2511224a3aee79235d2b787b07c6162"]
sorl-thumbnail||image||41d81576444b3ebcf5fbc2f9174ea05e	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/1b/96/1b96a59c31a091651f8e13c30d213b1c.jpg", "size": [254, 254]}
sorl-thumbnail||image||cadf9ed1ce4a5f830c1723760c50c8b6	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/24/a7/24a7424983c869402415e208311d56fe.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||dd69918d6188daf36426f1882eae0be5	["fa6f3a64a9cb9a541dc18521ea66cd90", "41d81576444b3ebcf5fbc2f9174ea05e", "a21863a0afc7dbfec90b3182bb47406e"]
sorl-thumbnail||image||0cc6eff8cdba030101aae3aefd5cead3	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/7c/cd/7ccd736c4850aec36b259fe79cc38792.jpg", "size": [254, 254]}
sorl-thumbnail||image||8fac589c26ea70370993c7fe9dafe4cd	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/64/14/641425e32dffd6285d3b915d1daca456.jpg", "size": [869, 450]}
sorl-thumbnail||image||18c87d232aab3c2979951b3215a7bbc0	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/8d/29/8d293882b7c0a6569b8c81d173e88986.jpg", "size": [254, 254]}
sorl-thumbnail||image||45d889725d48ec444576b7d5794f9f08	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/eb/56/eb56f215be814aa392ce489dbb8c3a1c.jpg", "size": [869, 450]}
sorl-thumbnail||image||1ea2e2fc7d4ad7d1e9ede888b2a052d0	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c7/2e/c72e9a98f2b4a1c3d4f8b33202533108.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||5bf6e5a6f77418b4383f3fe2b2074bd3	["74a6f52269885d60ad0f78942cbc4a48", "5068196d3b8db4d3ad9ac89d5e21abcd", "af3d44a55d5c44b73077acd2d9180866"]
sorl-thumbnail||image||3994ba15f8d221e6d43891f7959d1a28	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/f0/90/f0905bf0c8b662113865e75286c60be8.jpg", "size": [254, 254]}
sorl-thumbnail||image||911e6460641e1d939a340dc77e63a72a	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/e5/52/e5529791d873e4e671be23f22d6b9318.jpg", "size": [869, 450]}
sorl-thumbnail||image||ac7f6b0dd9a241e01e3b8bd31e8c1502	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ac/c6/acc6c64a63f3535f478cd69682cabc7d.jpg", "size": [869, 450]}
sorl-thumbnail||image||5bf6e5a6f77418b4383f3fe2b2074bd3	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/94/randolph county food inspection_1.png", "size": [819, 474]}
sorl-thumbnail||image||5068196d3b8db4d3ad9ac89d5e21abcd	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ce/cd/cecdf3d7a8d9738581dacd528eaf296a.jpg", "size": [96, 96]}
sorl-thumbnail||image||79e528c12e1c7a5f754f300f645978c3	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/b2/fe/b2fe08728a5cdfabb059caa163e3b6c9.jpg", "size": [869, 450]}
sorl-thumbnail||image||af3d44a55d5c44b73077acd2d9180866	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/3b/d0/3bd0f943eb7b66e1c7d4aeea6df46fa5.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||c3fc9fbbba00c13257f29fe2218d0295	["c066eab58e9faf605a7c743e475bdad8", "cadf9ed1ce4a5f830c1723760c50c8b6", "5aeb88493e5f1b3d0fcd580ebd65b970"]
sorl-thumbnail||image||f8d657c261538ce6d63439a35a725b0b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/4e/17/4e177a41380714c0a71b3410c5145b00.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||6bef1fe4263af8d06648ba082f72e42c	["a9154a0d043c1eb33b2327a47eeab1eb", "0cc6eff8cdba030101aae3aefd5cead3", "f8d657c261538ce6d63439a35a725b0b"]
sorl-thumbnail||thumbnails||952730efd0dfdd653299803800a396f2	["8fac589c26ea70370993c7fe9dafe4cd", "8857ff8b0ce27541a18dd91bd0510a78", "dbffa1f3321823f98c9db3b5dac1f3a8"]
sorl-thumbnail||image||2dbb8be122c9e4ac08bbba5d050dfa8c	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/d6/30/d630fd8aa748febaffb9609cbaa839cd.jpg", "size": [869, 450]}
sorl-thumbnail||image||b37d38c9852bf9f241587c4bc35b712b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/41/31/41319b7cc97858fe80617926535e7d0e.jpg", "size": [869, 450]}
sorl-thumbnail||image||54e82157fca9c391627001a70e105039	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/13/7f/137fd008d5d2bcd78a9438f39c1ccc1c.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||12faa2fea1dc57f06624b28abe1e18a3	["29cf8d6bfe974b88adc106cf3cd558c5", "a9b47837f9b129652810f9dfc760790c", "54e82157fca9c391627001a70e105039"]
sorl-thumbnail||image||df14918f77305ffec7c74505c887727e	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/a8/9e/a89e93cdef72b639cf6e88cd8b336922.jpg", "size": [869, 450]}
sorl-thumbnail||image||3227b035dc4882f6fc4234bfd0246468	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/47/1b/471bf12de7f31ebce49420c74d812c81.jpg", "size": [869, 450]}
sorl-thumbnail||image||0efec87c102171777b7e9fdcef2e722f	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/e4/3a/e43a770170c3fc90d8e5d518379de153.jpg", "size": [869, 450]}
sorl-thumbnail||image||d37793b5799cac7f3774f368232df23f	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/95/Screen Shot 2013-10-14 at 3_1.21", "size": [945, 645]}
sorl-thumbnail||image||00a24991e92ccee77744263f59ecfc2e	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/74/bd/74bdf30c80f869429816cad09fe20690.jpg", "size": [96, 96]}
sorl-thumbnail||image||0bc73e141d2ca6bce27b1b66b21f3b02	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/2b/37/2b37a06a9233c4d27b204030549d7be4.jpg", "size": [96, 96]}
sorl-thumbnail||image||78bf65f9bf9adfef46a697e079c78bee	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c4/04/c404559bddc5ab0ef0864f4450477c29.jpg", "size": [869, 450]}
sorl-thumbnail||image||be7db467fd93667d79f6bf1ca2fa85fe	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/cb/fc/cbfc7fc9490c87d85903ae620f93e48d.jpg", "size": [869, 450]}
sorl-thumbnail||image||4e8d4ded4c17f6d9c252f24e0c86abc4	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/96/Screen Shot 2013-10-14 at 3_1.32", "size": [1045, 616]}
sorl-thumbnail||image||9bb20119d822d59abf3dfc8797a8166f	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ab/a9/aba9a1ab598ca7ed668460026c575818.jpg", "size": [96, 96]}
sorl-thumbnail||image||26168811c1121767cfd1fc90d7e9bf1d	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/32/02/32022a747f7f20a326de88390b8b2c5d.jpg", "size": [254, 254]}
sorl-thumbnail||image||d3a41506077c4d312031f4f53c450d9e	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/97/Screen Shot 2013-10-14 at 3_1.42", "size": [1364, 590]}
sorl-thumbnail||image||722a5db2f46e15882d04e8ac7b512768	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/fa/7d/fa7d715dedfc1369f9985bf02484d5d2.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||ca325f35639c4a687b6720f727e7ed0a	["0ac7bdeb7d7a5758a8784ea455548f39", "8198e5960f602cf2c3c2ae4d2bd8ce05", "236b94d789e13f9ddd2627e18660aea7"]
sorl-thumbnail||image||85e473910c6b7796a74a13e4e84c8541	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/34/89/348955709f14de18dfddcab93e6c7af8.jpg", "size": [869, 450]}
sorl-thumbnail||image||6660ce2dde0b342b801ffec7ff267236	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/e1/ea/e1ead7ef493bbc300b3393c87cb6174e.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||d3a41506077c4d312031f4f53c450d9e	["85e473910c6b7796a74a13e4e84c8541", "6660ce2dde0b342b801ffec7ff267236", "722a5db2f46e15882d04e8ac7b512768"]
sorl-thumbnail||image||35df61f62517a98af0e02f865b0c99b0	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/9d/12/9d128762397cbc8e2055231408d09009.jpg", "size": [869, 450]}
sorl-thumbnail||image||df513fb97928d39530b04c4f35ef4732	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/98/Screen Shot 2013-10-14 at 4_1.31", "size": [507, 440]}
sorl-thumbnail||image||bb1f5fb8bc6e49403078ab6c2ea982fe	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/63/0b/630bd9039fe5efcfd2db3a29d784e446.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||4e8d4ded4c17f6d9c252f24e0c86abc4	["bb1f5fb8bc6e49403078ab6c2ea982fe", "9bb20119d822d59abf3dfc8797a8166f", "26168811c1121767cfd1fc90d7e9bf1d"]
sorl-thumbnail||image||d7b7b83b8dff0576189e12d60852eb36	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/99/Screen Shot 2013-10-15 at 11_1.43", "size": [1279, 587]}
sorl-thumbnail||image||fc73339d0592a82f8dabb580409e505f	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ff/a2/ffa21e8f3e0e4d66976a95a56fe1c499.jpg", "size": [96, 96]}
sorl-thumbnail||image||b573c227b29e9a086784350f82addb0c	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/22/ea/22eaffd4609fe86f2ba9acbef5620ebf.jpg", "size": [254, 254]}
sorl-thumbnail||image||ca325f35639c4a687b6720f727e7ed0a	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/100/matthewscrimemap_1.tiff", "size": [752, 600]}
sorl-thumbnail||image||0ac7bdeb7d7a5758a8784ea455548f39	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/d0/9d/d09dd4d696aed8319f5787c0989edfcf.jpg", "size": [96, 96]}
sorl-thumbnail||image||236b94d789e13f9ddd2627e18660aea7	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ce/9b/ce9bed44da7c95ed2a2a1f7eb80b1121.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||df513fb97928d39530b04c4f35ef4732	["9f69710a2fb9646c85959521dc1f90e7", "aea28960e6888f97b3ee2ee4d6de567d", "0bc73e141d2ca6bce27b1b66b21f3b02"]
sorl-thumbnail||image||fe9a515d96d33a891898cc68d039249d	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/79/92/799229744765dbf90fb044d95a42442b.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||d37793b5799cac7f3774f368232df23f	["00a24991e92ccee77744263f59ecfc2e", "fe9a515d96d33a891898cc68d039249d", "78bf65f9bf9adfef46a697e079c78bee"]
sorl-thumbnail||thumbnails||d7b7b83b8dff0576189e12d60852eb36	["be7db467fd93667d79f6bf1ca2fa85fe", "fc73339d0592a82f8dabb580409e505f", "b573c227b29e9a086784350f82addb0c"]
sorl-thumbnail||image||00f465677231b865d328c1a4420c903f	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/101/alamance property_1.tiff", "size": [569, 441]}
sorl-thumbnail||image||c2bc02c2d7dfb8ba062c4a3067e329d2	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ff/37/ff37d0fa58ac91487b77a63c47157fbb.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||7e7b2ee1b75ed5c1b1620cf9a63e3d05	["4ff966f9655c5488de52450e3cf0f75b", "47a3b8b02fba37d38e992d006310005a"]
sorl-thumbnail||image||1c0024bd694e9055422c2fc4e8800fba	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/dc/c4/dcc49d629bd049d4b5983666e2fa31a3.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||bd3d08454db97e8ffaef915b7aeffb94	["94b8a1766432a4fad4af272c91ae02b1", "0b419851c494299a3c7fbad9decddafc", "53f0d358a9a1c5dd54e31667b4fad9a1"]
sorl-thumbnail||image||c4bb28d395689795ec49f55681f51c89	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/102/harnett property_1.tiff", "size": [613, 436]}
sorl-thumbnail||image||495cebd9f549227985ccab33eba069b8	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/66/a4/66a476d3e66d90781d3607b228608a74.jpg", "size": [96, 96]}
sorl-thumbnail||image||9f69710a2fb9646c85959521dc1f90e7	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/af/27/af2700ad6ccacb2b29bf40d7937f4d87.jpg", "size": [254, 254]}
sorl-thumbnail||image||52199075bc2a8801f457a8d1125162b2	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/82/95/8295f47bf324ce5179d95e17f58e6b6f.jpg", "size": [869, 450]}
sorl-thumbnail||image||53f0d358a9a1c5dd54e31667b4fad9a1	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/2f/dc/2fdc899d4906621dc57178f950216444.jpg", "size": [254, 254]}
sorl-thumbnail||image||5f8e03c88d380fb1626fd4333a6dc7de	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/af/eb/afeba51a45482de570a2399204eb57c8.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||c4bb28d395689795ec49f55681f51c89	["495cebd9f549227985ccab33eba069b8", "52199075bc2a8801f457a8d1125162b2", "5f8e03c88d380fb1626fd4333a6dc7de"]
sorl-thumbnail||image||d5de78883b9d9ece7a953ea2068afff7	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/103/Screen Shot 2013-10-17 at 10_1.34", "size": [699, 433]}
sorl-thumbnail||image||b7398567d250fc0225be09d6c5b80f07	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/93/4e/934e2efbe286741d39afd5a0dcb1a84c.jpg", "size": [96, 96]}
sorl-thumbnail||image||502d7569870925b76c2f2a4efb34c34e	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/107/Screen Shot 2013-10-18 at 3_1.46", "size": [457, 502]}
sorl-thumbnail||image||bd3d08454db97e8ffaef915b7aeffb94	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/104/Screen Shot 2013-10-17 at 11_1.17", "size": [524, 396]}
sorl-thumbnail||image||0b419851c494299a3c7fbad9decddafc	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/df/63/df631a81ca8d46b013355ad696fedec8.jpg", "size": [96, 96]}
sorl-thumbnail||image||9f757a3ed46d568e6fb68da6350f3748	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/105/Screen Shot 2013-10-17 at 11_1.43", "size": [835, 569]}
sorl-thumbnail||image||a174edf90bf1ace27a820595268bdbe6	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/5d/64/5d64f9469b9bb6451d62c5a10719ada4.jpg", "size": [96, 96]}
sorl-thumbnail||image||cd7fa7bd1195399542aa4bb927aaa2bc	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/7b/9e/7b9e0e22e3c661eba4b80eebc6c3e04e.jpg", "size": [96, 96]}
sorl-thumbnail||image||7e7b2ee1b75ed5c1b1620cf9a63e3d05	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/106/Screen Shot 2013-10-17 at 11_1.53", "size": [731, 589]}
sorl-thumbnail||image||47a3b8b02fba37d38e992d006310005a	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/9c/c5/9cc5d5aa5db2f0810be231dd90f57294.jpg", "size": [96, 96]}
sorl-thumbnail||image||4ff966f9655c5488de52450e3cf0f75b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/35/c6/35c6d79fd0b11e2894f05b6b547948af.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||9f757a3ed46d568e6fb68da6350f3748	["a174edf90bf1ace27a820595268bdbe6", "4cee0bda0b9b3b7c81e71e3f1ddd991b", "408622a2baca85af8f7a000c81152d54"]
sorl-thumbnail||image||408622a2baca85af8f7a000c81152d54	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/92/90/92906e29d10f7ffaa88241b6efd4f507.jpg", "size": [254, 254]}
sorl-thumbnail||image||32512f0d7f34ee3f8d728410f06f40e7	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/17/6f/176fa566b811c373a3f463cb29d1ca15.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||00f465677231b865d328c1a4420c903f	["c2bc02c2d7dfb8ba062c4a3067e329d2", "1c0024bd694e9055422c2fc4e8800fba", "2b5f42cd47c99c4a885301ddaccf54bd"]
sorl-thumbnail||image||8198e5960f602cf2c3c2ae4d2bd8ce05	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/f8/c0/f8c0fecbf23455b4a37f3f6d1289a81d.jpg", "size": [869, 450]}
sorl-thumbnail||image||54a8c2d5d0a112676d70cc57b5ff478a	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/1f/fc/1ffc9de715505264a6940052c0a8afd1.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||d5de78883b9d9ece7a953ea2068afff7	["54a8c2d5d0a112676d70cc57b5ff478a", "32512f0d7f34ee3f8d728410f06f40e7", "b7398567d250fc0225be09d6c5b80f07"]
sorl-thumbnail||image||f84c9d25ae9a49b25c325e78e235c6c4	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/108/Screen Shot 2013-10-18 at 3_1.57", "size": [964, 523]}
sorl-thumbnail||image||6fabaa07c7648803c91b4fb669af8bdf	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/fd/27/fd27286185307249ed8ed1c14ad86125.jpg", "size": [96, 96]}
sorl-thumbnail||image||1470dceb999fcc4c52d08e07c9f4edbf	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/109/Screen Shot 2013-10-18 at 4_1.08", "size": [880, 489]}
sorl-thumbnail||image||5428545dbdf58b0da77e6c2a945e8b5f	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/b3/46/b34618514005236aa756a846ccdc4ba7.jpg", "size": [96, 96]}
sorl-thumbnail||image||13cebb02befa0eeec0f748d54f0567c4	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/110/Screen Shot 2013-10-18 at 4_1.11", "size": [1359, 616]}
sorl-thumbnail||image||43510fa7f046c9d4dc2e58b3b94ccc23	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/39/87/39877b67b41770dc70f37ad275c79d27.jpg", "size": [96, 96]}
sorl-thumbnail||image||d806e9c6f2cb7d4fa27344c7712ca160	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/4e/19/4e19f96153877a94a803069b04fc4c48.jpg", "size": [96, 96]}
sorl-thumbnail||image||4f2e26034bff6338315b45751a96bad3	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/f6/85/f6851be3e3a31ab16071281036939eca.jpg", "size": [254, 254]}
sorl-thumbnail||image||2078dc59a6be82ff71281fc4d519d7b5	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/2a/18/2a18e8ea77404c8246a1ace4243c187a.jpg", "size": [254, 254]}
sorl-thumbnail||image||c2281c5abb00f7748ec3ab3534263869	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/b1/ac/b1acf903b40f67a55f18c60c13038cfa.jpg", "size": [254, 254]}
sorl-thumbnail||image||1cf8b65e58fd0085a23e9d16cc6991ec	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/111/Screen Shot 2013-10-18 at 4_1.25", "size": [909, 495]}
sorl-thumbnail||image||6997b6a6ea0d6bf8d2e4a076798be6fb	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/33/e0/33e0e5cc5cf8ce1e63f44b7c33e24e22.jpg", "size": [96, 96]}
sorl-thumbnail||image||bc97d9ee2f24536c3a1d1f619eb9b090	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/bd/1d/bd1dcb7112127904bc72235df9915cd6.jpg", "size": [869, 450]}
sorl-thumbnail||image||24941e245bbe7ee169a93fc07767ee62	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/112/Screen Shot 2013-10-18 at 4_1.34", "size": [624, 473]}
sorl-thumbnail||image||e4792872f54277202aec5e24f9ae1664	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ef/78/ef78c50594e1ce72985e7f880997f211.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||3ed8f1b863d0234ad0eb3de4c3711758	["bc97d9ee2f24536c3a1d1f619eb9b090", "54d5caaf7f017ffa777c71bab554e17d", "5f13092f27f7f6c76ca716c400e16759"]
sorl-thumbnail||image||45b466d8d7de8be31e628ab21195c268	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/a4/8d/a48ddc8a44960f84bce583e7d640b5dd.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||a6f799179e3e67218c14626f34997bc6	["f6ecd8bce3be596af2a4116670f3c81a", "1ea2e2fc7d4ad7d1e9ede888b2a052d0", "45b466d8d7de8be31e628ab21195c268"]
sorl-thumbnail||image||2b5f42cd47c99c4a885301ddaccf54bd	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/64/53/64532317584699f18ad37a35e4e48e97.jpg", "size": [869, 450]}
sorl-thumbnail||image||a4da818e7eac2d85461da5fc57163ba2	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/78/1d/781d1e49d4a046d6872253e2fa6cf8fd.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||1470dceb999fcc4c52d08e07c9f4edbf	["5428545dbdf58b0da77e6c2a945e8b5f", "a4da818e7eac2d85461da5fc57163ba2", "c2281c5abb00f7748ec3ab3534263869"]
sorl-thumbnail||image||74a6f52269885d60ad0f78942cbc4a48	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c1/4b/c14b84ae3be70870de3a392d653b6a4e.jpg", "size": [869, 450]}
sorl-thumbnail||image||3ed8f1b863d0234ad0eb3de4c3711758	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/113/Screen Shot 2013-10-18 at 6_1.07", "size": [1280, 581]}
sorl-thumbnail||image||54d5caaf7f017ffa777c71bab554e17d	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ae/fe/aefe9546c67016d2b4b05eaa2f7da0e3.jpg", "size": [96, 96]}
sorl-thumbnail||image||d32cb2b2bd812875e00bc561476de768	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/114/Screen Shot 2013-10-18 at 7_1.58", "size": [1275, 582]}
sorl-thumbnail||image||72e8be0262e79935ef33f9a266d730a7	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/bd/a2/bda24fcb6a7a7268ab24f29064872696.jpg", "size": [96, 96]}
sorl-thumbnail||image||60a6750afcf4fd43f094ebfea7080bf4	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/115/Screen Shot 2013-10-19 at 8_1.55", "size": [977, 560]}
sorl-thumbnail||image||5f13092f27f7f6c76ca716c400e16759	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/5a/f0/5af0808b919da30d5814196c105875ab.jpg", "size": [254, 254]}
sorl-thumbnail||image||507c93ead2b11724c30fb30066260552	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/d2/fd/d2fd8d234ee6aa84a716419ee2f82746.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||24941e245bbe7ee169a93fc07767ee62	["0395e01e3a2840d4e37ba1462c43082d", "0c79b028512b70bb8add2e5fa10e8bf6", "e4792872f54277202aec5e24f9ae1664"]
sorl-thumbnail||image||2d6611810d55032e4f94b3b462f3baa3	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/91/be/91beb2de38f0c2171d9d8874d1b01724.jpg", "size": [254, 254]}
sorl-thumbnail||image||d1b42fb1585f3ba41f68c90f6ba506b5	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/e6/c4/e6c4e357e4131c5a9f42d972bb5e8331.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||502d7569870925b76c2f2a4efb34c34e	["76c9f61dfe635ce911e9def8ee986e26", "cd7fa7bd1195399542aa4bb927aaa2bc", "2078dc59a6be82ff71281fc4d519d7b5"]
sorl-thumbnail||image||0395e01e3a2840d4e37ba1462c43082d	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/d1/94/d19433a2724795a660761a736615e401.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||13cebb02befa0eeec0f748d54f0567c4	["b08f8ad0c60752c98c45653e7650aa8c", "43510fa7f046c9d4dc2e58b3b94ccc23", "4f2e26034bff6338315b45751a96bad3"]
sorl-thumbnail||thumbnails||1cf8b65e58fd0085a23e9d16cc6991ec	["6997b6a6ea0d6bf8d2e4a076798be6fb", "507c93ead2b11724c30fb30066260552", "d062dfd43a409c53555820346e265512"]
sorl-thumbnail||image||61edde1c14da6ee4642c3f5a35326da0	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/116/Screen Shot 2013-10-19 at 9_1.36", "size": [691, 504]}
sorl-thumbnail||image||9ceb42826e2fb704b3c36d395a0e8f68	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/40/a7/40a7c23c064a0de33da09ed896219f02.jpg", "size": [96, 96]}
sorl-thumbnail||image||6b92f51f43fef0a3b3e227a57317feac	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/66/d3/66d384dc5ddc34518149cfb9d306197c.jpg", "size": [254, 254]}
sorl-thumbnail||image||1ba2f30baa2d9aa1a34fe5ac85a3cfff	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/117/Screen Shot 2013-10-19 at 10_1.31", "size": [802, 518]}
sorl-thumbnail||image||98336073ac5a1518e4a43c14a4c160f3	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/47/a9/47a906b6abaf0832f94187bb1b9f0aca.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||1ba2f30baa2d9aa1a34fe5ac85a3cfff	["729969a8be68b08a53b98adc8b30c266", "91b5868cd53f64624ea2d34bb579666d", "98336073ac5a1518e4a43c14a4c160f3"]
sorl-thumbnail||image||6dbe289d1eb8860a8b0959abd45b4248	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/118/Screen Shot 2013-10-19 at 11_1.48", "size": [1010, 595]}
sorl-thumbnail||image||6d15e38fdfdbdf15448bf0071ab06f23	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/12/18/12187755ed32dbdb2a013a2b09d7ca62.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||6dbe289d1eb8860a8b0959abd45b4248	["461360d7bc34e2730142f74316a3b958", "f00af950443363cfa8b1fc209b38014d", "6d15e38fdfdbdf15448bf0071ab06f23"]
sorl-thumbnail||image||842bd59224e1ab975391b60c1110e8be	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/119/haywood property_1.tiff", "size": [886, 550]}
sorl-thumbnail||image||d76dc528f43406fa1605443c235422ed	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/07/8c/078c4c38c83cfb928cf129154bf5d80e.jpg", "size": [96, 96]}
sorl-thumbnail||image||6a122714cc0dd2d94865eeabf43fd878	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/123/Screen Shot 2013-10-20 at 5_1.57", "size": [710, 559]}
sorl-thumbnail||image||7ae4357f70ac23f604e9097a6c0cd982	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/120/henderson property_1.tiff", "size": [518, 547]}
sorl-thumbnail||image||6a3eb46f7534a8306fef7f75bd2f8e19	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ff/3b/ff3b91efbd1d627afd02f3d04a0fbcc6.jpg", "size": [96, 96]}
sorl-thumbnail||image||d3c74b90aafa5ef1c8d44a178d1866b7	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/121/iredell property_1.tiff", "size": [722, 662]}
sorl-thumbnail||image||6fa84920ca879cebfffe0a9f85b79a92	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/54/19/54192069ba9d0acc4c1227696244a7ae.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||5309f4b358ed6d5be26c25a44b9549c1	["5dfd7dd259088291fb8117249cf37ee9", "47353ebccdad6823ff4dd17825effd81", "324e4fbde2b2bf7546847369c317f8fb"]
sorl-thumbnail||image||4461f5d8a370394d122ed20cf67560ba	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/20/48/2048c44a3eba29e8f18c9aa8e0a9927f.jpg", "size": [869, 450]}
sorl-thumbnail||image||43672c3c32d9aa910030738669b0f031	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/27/92/2792a4d8c77994a4da9c2a03d780ed7c.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||61edde1c14da6ee4642c3f5a35326da0	["43672c3c32d9aa910030738669b0f031", "9ceb42826e2fb704b3c36d395a0e8f68", "6b92f51f43fef0a3b3e227a57317feac"]
sorl-thumbnail||image||7512a6d03c540557292ec212000c37d3	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/122/lee property_1.tiff", "size": [812, 564]}
sorl-thumbnail||image||0f6d2c70a62f080eec0501db57eb0919	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/da/33/da332b96ad7137f5f8208de6b5903f7f.jpg", "size": [96, 96]}
sorl-thumbnail||image||bc147d7264623e6aecb68c4267c552c4	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/0b/f3/0bf3a649279cc3d3905e1eab0aff6f93.jpg", "size": [254, 254]}
sorl-thumbnail||image||034356ba6a55729d172bcf2fe226cfdd	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/79/3f/793f4fd6a7e51487d3ea5b97b953ea48.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||7ae4357f70ac23f604e9097a6c0cd982	["997a7f995e8d3c2753b95e39a5ca459b", "fe966d1d1e9b908af745542ce41c2da6", "6a3eb46f7534a8306fef7f75bd2f8e19"]
sorl-thumbnail||thumbnails||60a6750afcf4fd43f094ebfea7080bf4	["c1a422029c64e38556076e9328811aee", "d806e9c6f2cb7d4fa27344c7712ca160", "a40c07fb9503cce37eb9c5517abc5a11"]
sorl-thumbnail||image||5aeb88493e5f1b3d0fcd580ebd65b970	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/88/d7/88d79b39cfb0b5035ece2ca34db5b43a.jpg", "size": [869, 450]}
sorl-thumbnail||image||9f273efddaec50336621c13a17709eca	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/4c/82/4c82258f929b9cfbe139c243b1f7b823.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||7512a6d03c540557292ec212000c37d3	["0f6d2c70a62f080eec0501db57eb0919", "bc147d7264623e6aecb68c4267c552c4", "d36c3092721fa636f7be235d6cd27ecc"]
sorl-thumbnail||image||5309f4b358ed6d5be26c25a44b9549c1	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/124/Screen Shot 2013-10-20 at 5_1.52", "size": [817, 520]}
sorl-thumbnail||image||47353ebccdad6823ff4dd17825effd81	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/0f/3d/0f3d756f204a97adb1e1e97f173de994.jpg", "size": [96, 96]}
sorl-thumbnail||image||63cf3cc129d4e79d674acc9349923f29	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/125/Screen Shot 2013-10-20 at 5_1.52", "size": [727, 608]}
sorl-thumbnail||image||edea1dff15b4e06ac9af7700617560f9	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/65/fe/65fe0d1e618634602d73348fd3cea3ae.jpg", "size": [96, 96]}
sorl-thumbnail||image||0f0e31bdc6defaa3c8ad5743af77ea1d	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/126/Screen Shot 2013-10-20 at 5_1.53", "size": [1026, 606]}
sorl-thumbnail||image||48d4ef5bb000992a7ba998fbd2b47961	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/fb/8f/fb8f8cf010dc18195c84f7828953f3b2.jpg", "size": [96, 96]}
sorl-thumbnail||image||69bf87e78074c534376a73e882bef3ab	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/31/02/3102b47ae3ecab7c9fcdfbd16d393017.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||0f0e31bdc6defaa3c8ad5743af77ea1d	["69bf87e78074c534376a73e882bef3ab", "48d4ef5bb000992a7ba998fbd2b47961"]
sorl-thumbnail||image||7ab0f4d8e2014a5e9572f6bb92af3a04	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/d4/83/d483dca95046590b08f7552e86ee86c1.jpg", "size": [869, 450]}
sorl-thumbnail||image||c95c3b5890e5ba7003044a6291293557	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/fd/a5/fda5865ca2b3a1a578d531180d063d78.jpg", "size": [869, 450]}
sorl-thumbnail||image||31bfc309c0280091cafa8f5012799bbe	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/127/Screen Shot 2013-10-20 at 8_1.19", "size": [706, 398]}
sorl-thumbnail||image||af21030bb65b5f891a09a588a0987239	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/64/11/6411971017b8097a948d1da9373a46a2.jpg", "size": [96, 96]}
sorl-thumbnail||image||997a7f995e8d3c2753b95e39a5ca459b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/35/4c/354c525cb36f9b03229c0617c7d9c4f8.jpg", "size": [869, 450]}
sorl-thumbnail||image||48d7a918ac2faf2a440b7bf12dcdcbb1	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/128/Screen Shot 2013-10-20 at 8_1.26", "size": [1240, 582]}
sorl-thumbnail||image||8f280d91bebb0919e915f0b1e0f7120e	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/a1/41/a141d3088ee899d01a6d0a609056b939.jpg", "size": [96, 96]}
sorl-thumbnail||image||c1a422029c64e38556076e9328811aee	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/a1/be/a1be8e7c453c264a2dc5722cab87dd1c.jpg", "size": [254, 254]}
sorl-thumbnail||image||91b5868cd53f64624ea2d34bb579666d	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/78/c3/78c329b70e42e1e2bdefab7ee534858c.jpg", "size": [254, 254]}
sorl-thumbnail||image||461360d7bc34e2730142f74316a3b958	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ca/38/ca38ba3748d8aa9fdbf14d79dae9b2d0.jpg", "size": [254, 254]}
sorl-thumbnail||image||b8118ddbdb43e6f9998c2e38b988b2c5	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/e6/dd/e6dd0d5e97121320962950732b600583.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||842bd59224e1ab975391b60c1110e8be	["b8118ddbdb43e6f9998c2e38b988b2c5", "d76dc528f43406fa1605443c235422ed", "034356ba6a55729d172bcf2fe226cfdd"]
sorl-thumbnail||image||fe966d1d1e9b908af745542ce41c2da6	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/46/dd/46dd0150a0020f357eefc814c027ea25.jpg", "size": [254, 254]}
sorl-thumbnail||image||7fa8e3898a4926fcaa164e8195a8cfdc	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/d8/e1/d8e1674e38fd481709b8d6027b25d749.jpg", "size": [254, 254]}
sorl-thumbnail||image||13da29abc18d2c12e7590cb772bfaf68	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/129/Screen Shot 2013-10-20 at 8_1.52", "size": [703, 500]}
sorl-thumbnail||image||9cf7f6588560d8e16f0a85e0c7d34af6	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/7e/b7/7eb74fa9ea290af4c7149841c199c499.jpg", "size": [96, 96]}
sorl-thumbnail||image||0d8e9f57c41829bcaac82b903f46615e	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/116/Screen Shot 2013-10-19 at 9_1.32", "size": [928, 548]}
sorl-thumbnail||image||acabe2e40beda35f2518cdafcbee76f3	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/130/Screen Shot 2013-10-20 at 11_1.43", "size": [1238, 580]}
sorl-thumbnail||image||67b19e98c6ef12d0f98db46f60dc70d7	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/20/bb/20bb0b6ac5ba2d2b1738a85292563950.jpg", "size": [96, 96]}
sorl-thumbnail||image||9838fb5ea35981b8ab4e307577102fb3	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ce/d8/ced8e7574ce887dfeb5982f3afae426a.jpg", "size": [254, 254]}
sorl-thumbnail||image||fafb4f4e229997464c359313446275a3	{"storage": "django.core.files.storage.FileSystemStorage", "name": "url_images/131/lincoln property_1.tiff", "size": [778, 575]}
sorl-thumbnail||image||329f0b088b11457a8b61719ee9dca050	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/f8/59/f859c0a7bc23844c37a3339182ac60f1.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||31bfc309c0280091cafa8f5012799bbe	["2877ddfbd79a72564e040928dc952309", "f3b7f991f0678e113fffa0af0890abcd", "af21030bb65b5f891a09a588a0987239"]
sorl-thumbnail||image||2e12f9ed94f10263ddeec02ec940a666	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/42/98/42981dccad5b9daf759351b627990009.jpg", "size": [254, 254]}
sorl-thumbnail||image||94b8a1766432a4fad4af272c91ae02b1	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/1a/cd/1acdf68c33a2b746ad54d00efe784a06.jpg", "size": [869, 450]}
sorl-thumbnail||image||f3b7f991f0678e113fffa0af0890abcd	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/88/48/8848ebbc4bdc3bbb7e34a25cb6afdf1d.jpg", "size": [254, 254]}
sorl-thumbnail||image||770f38dd50bb74e461f7b13f9f6752d0	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/f0/0a/f00a377b0b04d43e9c2c72bfa525c2ec.jpg", "size": [254, 254]}
sorl-thumbnail||image||f10a4f18d1bcb0043b63774f389ed3a1	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/22/ca/22cadc87c6e02992dace2b84faafa6a9.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||f84c9d25ae9a49b25c325e78e235c6c4	["f10a4f18d1bcb0043b63774f389ed3a1", "6fabaa07c7648803c91b4fb669af8bdf", "2d6611810d55032e4f94b3b462f3baa3"]
sorl-thumbnail||image||0d5d6fe37b0a69d4855cae4dd1cdb678	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/26/85/26854675161713457208a0b4af74bdae.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||0d8e9f57c41829bcaac82b903f46615e	["0d5d6fe37b0a69d4855cae4dd1cdb678"]
sorl-thumbnail||image||c3cec1b4f571248a3f483cc4e3de3efa	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/06/9c/069c14431c70a9befea373c2a890c01e.jpg", "size": [869, 450]}
sorl-thumbnail||image||c6eb428b2d2b81f40ae9a86c8186bdef	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c0/19/c01997ae03dbc792562bdda211c7c7b6.jpg", "size": [869, 450]}
sorl-thumbnail||image||9fe47a80ef82c6f76320e72510caef58	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/f1/40/f140ed91ed731c99a9ecd25d685a0f96.jpg", "size": [869, 450]}
sorl-thumbnail||image||324e4fbde2b2bf7546847369c317f8fb	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/be/c5/bec5e54bacf17e62997befc2c8471fce.jpg", "size": [254, 254]}
sorl-thumbnail||image||b464c7e4a2404ff5277dda2888d91917	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/0a/ba/0aba7f6272c430b104d7497fb77568aa.jpg", "size": [254, 254]}
sorl-thumbnail||image||d227e91fecf434abd0b359f616382ab0	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/5d/02/5d020a01059b11b9764b5366ce6aa1ef.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||63cf3cc129d4e79d674acc9349923f29	["d227e91fecf434abd0b359f616382ab0", "c95c3b5890e5ba7003044a6291293557", "edea1dff15b4e06ac9af7700617560f9"]
sorl-thumbnail||image||bcd5875f1f3bb4ad66ec08c1f10c64f0	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/67/c1/67c15c0807fd1c14c86e8d8436028963.jpg", "size": [254, 254]}
sorl-thumbnail||image||d062dfd43a409c53555820346e265512	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/b0/a1/b0a11ee47d821a7ccf671f67674232ef.jpg", "size": [869, 450]}
sorl-thumbnail||image||aea28960e6888f97b3ee2ee4d6de567d	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/29/02/29026eb45c04bf61bcbbb2edce540a89.jpg", "size": [869, 450]}
sorl-thumbnail||image||5dfd7dd259088291fb8117249cf37ee9	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/86/2c/862cad0844b7eddeee29e26acd74ef9a.jpg", "size": [869, 450]}
sorl-thumbnail||image||f00af950443363cfa8b1fc209b38014d	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/03/1d/031d1f42d344b0926100e67470215bc7.jpg", "size": [869, 450]}
sorl-thumbnail||image||729969a8be68b08a53b98adc8b30c266	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/9e/5f/9e5f0defe93f77a032b8e10021c9b868.jpg", "size": [869, 450]}
sorl-thumbnail||image||2877ddfbd79a72564e040928dc952309	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/5c/a3/5ca34a7e24a546b3a09778ec09e782a8.jpg", "size": [869, 450]}
sorl-thumbnail||image||c65445c9d6c44bf7e76c4b1749c75b02	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/38/ca/38caa04403ffa9e21243a0290c4dae2a.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||6a122714cc0dd2d94865eeabf43fd878	["b464c7e4a2404ff5277dda2888d91917", "9f273efddaec50336621c13a17709eca", "c65445c9d6c44bf7e76c4b1749c75b02"]
sorl-thumbnail||image||1fd03b9e28390ae55ed3233447b249de	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/b8/48/b84868ffc6f9185ea48cce0cabb9d2ca.jpg", "size": [869, 450]}
sorl-thumbnail||image||a21863a0afc7dbfec90b3182bb47406e	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c4/44/c444a8de9eec7264176c91499830d501.jpg", "size": [869, 450]}
sorl-thumbnail||image||73d815a5fca55cd437ac759ac6a4ce7f	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/3e/6e/3e6e3db2befc998dbcf6e32d8c9d4a3c.jpg", "size": [869, 450]}
sorl-thumbnail||image||0c79b028512b70bb8add2e5fa10e8bf6	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/1b/bd/1bbdb572d6d7d44aea68681875df3326.jpg", "size": [869, 450]}
sorl-thumbnail||image||51a4387c11d224fb116a60e3241603ba	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/2e/25/2e25b749a37a72491538fcc984f16a52.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||d32cb2b2bd812875e00bc561476de768	["72e8be0262e79935ef33f9a266d730a7", "51a4387c11d224fb116a60e3241603ba", "d1b42fb1585f3ba41f68c90f6ba506b5"]
sorl-thumbnail||image||4cee0bda0b9b3b7c81e71e3f1ddd991b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c6/ac/c6ac917971b7a31aa0f04452594ffaa4.jpg", "size": [869, 450]}
sorl-thumbnail||image||d36c3092721fa636f7be235d6cd27ecc	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/1c/e8/1ce8e100eb04bb756f01afb5eae8c6d1.jpg", "size": [869, 450]}
sorl-thumbnail||image||76c9f61dfe635ce911e9def8ee986e26	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/34/6d/346d69f3874bc07e683ff0c064988b25.jpg", "size": [869, 450]}
sorl-thumbnail||image||b08f8ad0c60752c98c45653e7650aa8c	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c1/8c/c18cfec6c8035fc476b19604370813df.jpg", "size": [869, 450]}
sorl-thumbnail||image||1f6726ee21039158dfc7b8a42aa769cf	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ec/d1/ecd10af297b3367ac1ac3d0998a0af02.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||acabe2e40beda35f2518cdafcbee76f3	["2e12f9ed94f10263ddeec02ec940a666", "67b19e98c6ef12d0f98db46f60dc70d7", "c3cec1b4f571248a3f483cc4e3de3efa", "bca25a3479ad4e5ed494818b88174f46"]
sorl-thumbnail||thumbnails||fafb4f4e229997464c359313446275a3	["73d815a5fca55cd437ac759ac6a4ce7f", "329f0b088b11457a8b61719ee9dca050", "bcd5875f1f3bb4ad66ec08c1f10c64f0", "145e1e72902ac62f3bd68a28e5407906"]
sorl-thumbnail||image||0ab2161c0342bd5cc55d6a3aeaaac5c6	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/49/c5/49c5a9fc82e8770e3c940349a1b4a525.jpg", "size": [327, 254]}
sorl-thumbnail||thumbnails||48d7a918ac2faf2a440b7bf12dcdcbb1	["0ab2161c0342bd5cc55d6a3aeaaac5c6", "770f38dd50bb74e461f7b13f9f6752d0", "8f280d91bebb0919e915f0b1e0f7120e", "1fd03b9e28390ae55ed3233447b249de"]
sorl-thumbnail||image||bca25a3479ad4e5ed494818b88174f46	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c3/c0/c3c061dcecc709da82e218748d7c174b.jpg", "size": [327, 254]}
sorl-thumbnail||image||ba82832a1f26050a3cc9e001ba394762	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c2/a7/c2a7553b1553094969030c7d7ab9d8e3.jpg", "size": [327, 254]}
sorl-thumbnail||thumbnails||13da29abc18d2c12e7590cb772bfaf68	["9cf7f6588560d8e16f0a85e0c7d34af6", "9838fb5ea35981b8ab4e307577102fb3", "ba82832a1f26050a3cc9e001ba394762", "1f6726ee21039158dfc7b8a42aa769cf"]
sorl-thumbnail||image||5e71c734f5a6961c1fbf1341afae1a85	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/f8/c4/f8c4c8b7d0c1aaff49cfb78879e50e5c.jpg", "size": [327, 254]}
sorl-thumbnail||thumbnails||d3c74b90aafa5ef1c8d44a178d1866b7	["6fa84920ca879cebfffe0a9f85b79a92", "7ab0f4d8e2014a5e9572f6bb92af3a04", "7fa8e3898a4926fcaa164e8195a8cfdc", "5e71c734f5a6961c1fbf1341afae1a85"]
sorl-thumbnail||image||a40c07fb9503cce37eb9c5517abc5a11	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/db/93/db93e6e9bf29529c412dc31fca2afc2e.jpg", "size": [869, 450]}
sorl-thumbnail||image||145e1e72902ac62f3bd68a28e5407906	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/03/9e/039e03fffb5331e4b7dbcdb8d2df1bb9.jpg", "size": [327, 254]}
sorl-thumbnail||image||916bf9e26ecb0d8dd8248878298703e3	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/e9/8f/e98f7397996ef21622d72785d6dd62c6.jpg", "size": [96, 96]}
sorl-thumbnail||thumbnails||083e650439c8cdc3702b95d240568533	["d23c89eb748ecf6f557b06578ea6a922", "2f8301381241d86a21c925db7b916846", "916bf9e26ecb0d8dd8248878298703e3", "a404a844d4ad2fea90aa88a268ed9a66", "d851acaec58c82c1e8cf5c69e86cb4ab", "73142c86019ef3843bcc084c206607fc"]
\.


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: catalog_category_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_category
    ADD CONSTRAINT catalog_category_pkey PRIMARY KEY (id);


--
-- Name: catalog_city_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_city
    ADD CONSTRAINT catalog_city_pkey PRIMARY KEY (id);


--
-- Name: catalog_coordsystem_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_coordsystem
    ADD CONSTRAINT catalog_coordsystem_pkey PRIMARY KEY (id);


--
-- Name: catalog_county_cities_county_id_3199dc690a36b346_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_county_cities
    ADD CONSTRAINT catalog_county_cities_county_id_3199dc690a36b346_uniq UNIQUE (county_id, city_id);


--
-- Name: catalog_county_cities_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_county_cities
    ADD CONSTRAINT catalog_county_cities_pkey PRIMARY KEY (id);


--
-- Name: catalog_county_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_county
    ADD CONSTRAINT catalog_county_pkey PRIMARY KEY (id);


--
-- Name: catalog_datatype_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_datatype
    ADD CONSTRAINT catalog_datatype_pkey PRIMARY KEY (id);


--
-- Name: catalog_department_division_department_id_39f9cbe9db1d4714_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_department_divisions
    ADD CONSTRAINT catalog_department_division_department_id_39f9cbe9db1d4714_uniq UNIQUE (department_id, division_id);


--
-- Name: catalog_department_divisions_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_department_divisions
    ADD CONSTRAINT catalog_department_divisions_pkey PRIMARY KEY (id);


--
-- Name: catalog_department_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_department
    ADD CONSTRAINT catalog_department_pkey PRIMARY KEY (id);


--
-- Name: catalog_division_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_division
    ADD CONSTRAINT catalog_division_pkey PRIMARY KEY (id);


--
-- Name: catalog_resource_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_resource_categories
    ADD CONSTRAINT catalog_resource_categories_pkey PRIMARY KEY (id);


--
-- Name: catalog_resource_categories_resource_id_53ac8f8b3cbe75d6_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_resource_categories
    ADD CONSTRAINT catalog_resource_categories_resource_id_53ac8f8b3cbe75d6_uniq UNIQUE (resource_id, category_id);


--
-- Name: catalog_resource_cities_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_resource_cities
    ADD CONSTRAINT catalog_resource_cities_pkey PRIMARY KEY (id);


--
-- Name: catalog_resource_cities_resource_id_2451af359ee5738a_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_resource_cities
    ADD CONSTRAINT catalog_resource_cities_resource_id_2451af359ee5738a_uniq UNIQUE (resource_id, city_id);


--
-- Name: catalog_resource_coord_sys_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_resource_coord_sys
    ADD CONSTRAINT catalog_resource_coord_sys_pkey PRIMARY KEY (id);


--
-- Name: catalog_resource_coord_sys_resource_id_30c10da65df1830d_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_resource_coord_sys
    ADD CONSTRAINT catalog_resource_coord_sys_resource_id_30c10da65df1830d_uniq UNIQUE (resource_id, coordsystem_id);


--
-- Name: catalog_resource_counties_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_resource_counties
    ADD CONSTRAINT catalog_resource_counties_pkey PRIMARY KEY (id);


--
-- Name: catalog_resource_counties_resource_id_25bc529b8b7e664e_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_resource_counties
    ADD CONSTRAINT catalog_resource_counties_resource_id_25bc529b8b7e664e_uniq UNIQUE (resource_id, county_id);


--
-- Name: catalog_resource_data_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_resource_data_types
    ADD CONSTRAINT catalog_resource_data_types_pkey PRIMARY KEY (id);


--
-- Name: catalog_resource_data_types_resource_id_36049a106385e980_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_resource_data_types
    ADD CONSTRAINT catalog_resource_data_types_resource_id_36049a106385e980_uniq UNIQUE (resource_id, datatype_id);


--
-- Name: catalog_resource_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_resource
    ADD CONSTRAINT catalog_resource_pkey PRIMARY KEY (id);


--
-- Name: catalog_updatefrequency_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_updatefrequency
    ADD CONSTRAINT catalog_updatefrequency_pkey PRIMARY KEY (id);


--
-- Name: catalog_url_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_url
    ADD CONSTRAINT catalog_url_pkey PRIMARY KEY (id);


--
-- Name: catalog_urlimage_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_urlimage
    ADD CONSTRAINT catalog_urlimage_pkey PRIMARY KEY (id);


--
-- Name: catalog_urltype_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY catalog_urltype
    ADD CONSTRAINT catalog_urltype_pkey PRIMARY KEY (id);


--
-- Name: celery_taskmeta_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY celery_taskmeta
    ADD CONSTRAINT celery_taskmeta_pkey PRIMARY KEY (id);


--
-- Name: celery_taskmeta_task_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY celery_taskmeta
    ADD CONSTRAINT celery_taskmeta_task_id_key UNIQUE (task_id);


--
-- Name: celery_tasksetmeta_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY celery_tasksetmeta
    ADD CONSTRAINT celery_tasksetmeta_pkey PRIMARY KEY (id);


--
-- Name: celery_tasksetmeta_taskset_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY celery_tasksetmeta
    ADD CONSTRAINT celery_tasksetmeta_taskset_id_key UNIQUE (taskset_id);


--
-- Name: comments_commentwithrating_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY comments_commentwithrating
    ADD CONSTRAINT comments_commentwithrating_pkey PRIMARY KEY (comment_ptr_id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_comment_flags_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_pkey PRIMARY KEY (id);


--
-- Name: django_comment_flags_user_id_comment_id_flag_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_user_id_comment_id_flag_key UNIQUE (user_id, comment_id, flag);


--
-- Name: django_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_key UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: djangoratings_ignoredobject_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djangoratings_ignoredobject
    ADD CONSTRAINT djangoratings_ignoredobject_pkey PRIMARY KEY (id);


--
-- Name: djangoratings_score_content_type_id_34080b82db03891b_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djangoratings_score
    ADD CONSTRAINT djangoratings_score_content_type_id_34080b82db03891b_uniq UNIQUE (content_type_id, object_id, key);


--
-- Name: djangoratings_score_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djangoratings_score
    ADD CONSTRAINT djangoratings_score_pkey PRIMARY KEY (id);


--
-- Name: djangoratings_similaruser_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djangoratings_similaruser
    ADD CONSTRAINT djangoratings_similaruser_pkey PRIMARY KEY (id);


--
-- Name: djangoratings_vote_content_type_id_69d497af3324806f_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djangoratings_vote
    ADD CONSTRAINT djangoratings_vote_content_type_id_69d497af3324806f_uniq UNIQUE (content_type_id, object_id, cookie, user_id, key, ip_address);


--
-- Name: djangoratings_vote_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djangoratings_vote
    ADD CONSTRAINT djangoratings_vote_pkey PRIMARY KEY (id);


--
-- Name: djcelery_crontabschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djcelery_crontabschedule
    ADD CONSTRAINT djcelery_crontabschedule_pkey PRIMARY KEY (id);


--
-- Name: djcelery_intervalschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djcelery_intervalschedule
    ADD CONSTRAINT djcelery_intervalschedule_pkey PRIMARY KEY (id);


--
-- Name: djcelery_periodictask_name_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictask_name_key UNIQUE (name);


--
-- Name: djcelery_periodictask_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictask_pkey PRIMARY KEY (id);


--
-- Name: djcelery_periodictasks_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djcelery_periodictasks
    ADD CONSTRAINT djcelery_periodictasks_pkey PRIMARY KEY (ident);


--
-- Name: djcelery_taskstate_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djcelery_taskstate
    ADD CONSTRAINT djcelery_taskstate_pkey PRIMARY KEY (id);


--
-- Name: djcelery_taskstate_task_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djcelery_taskstate
    ADD CONSTRAINT djcelery_taskstate_task_id_key UNIQUE (task_id);


--
-- Name: djcelery_workerstate_hostname_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djcelery_workerstate
    ADD CONSTRAINT djcelery_workerstate_hostname_key UNIQUE (hostname);


--
-- Name: djcelery_workerstate_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY djcelery_workerstate
    ADD CONSTRAINT djcelery_workerstate_pkey PRIMARY KEY (id);


--
-- Name: registration_registrationprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY registration_registrationprofile
    ADD CONSTRAINT registration_registrationprofile_pkey PRIMARY KEY (id);


--
-- Name: registration_registrationprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY registration_registrationprofile
    ADD CONSTRAINT registration_registrationprofile_user_id_key UNIQUE (user_id);


--
-- Name: requests_request_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY requests_request_categories
    ADD CONSTRAINT requests_request_categories_pkey PRIMARY KEY (id);


--
-- Name: requests_request_categories_request_id_60d814e2f6a1898a_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY requests_request_categories
    ADD CONSTRAINT requests_request_categories_request_id_60d814e2f6a1898a_uniq UNIQUE (request_id, category_id);


--
-- Name: requests_request_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY requests_request
    ADD CONSTRAINT requests_request_pkey PRIMARY KEY (id);


--
-- Name: requests_request_resources_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY requests_request_resources
    ADD CONSTRAINT requests_request_resources_pkey PRIMARY KEY (id);


--
-- Name: requests_request_resources_request_id_75c92e7ee85f7aba_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY requests_request_resources
    ADD CONSTRAINT requests_request_resources_request_id_75c92e7ee85f7aba_uniq UNIQUE (request_id, resource_id);


--
-- Name: scribbler_scribble_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY scribbler_scribble
    ADD CONSTRAINT scribbler_scribble_pkey PRIMARY KEY (id);


--
-- Name: scribbler_scribble_url_6e7518efcb758418_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY scribbler_scribble
    ADD CONSTRAINT scribbler_scribble_url_6e7518efcb758418_uniq UNIQUE (url, slug);


--
-- Name: south_migrationhistory_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY south_migrationhistory
    ADD CONSTRAINT south_migrationhistory_pkey PRIMARY KEY (id);


--
-- Name: suggestions_suggestion_cate_suggestion_id_45b080e8781aa4b8_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY suggestions_suggestion_categories
    ADD CONSTRAINT suggestions_suggestion_cate_suggestion_id_45b080e8781aa4b8_uniq UNIQUE (suggestion_id, category_id);


--
-- Name: suggestions_suggestion_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY suggestions_suggestion_categories
    ADD CONSTRAINT suggestions_suggestion_categories_pkey PRIMARY KEY (id);


--
-- Name: suggestions_suggestion_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY suggestions_suggestion
    ADD CONSTRAINT suggestions_suggestion_pkey PRIMARY KEY (id);


--
-- Name: thumbnail_kvstore_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY thumbnail_kvstore
    ADD CONSTRAINT thumbnail_kvstore_pkey PRIMARY KEY (key);


--
-- Name: auth_group_name_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_group_name_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_user_username_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: catalog_county_cities_city_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_county_cities_city_id ON catalog_county_cities USING btree (city_id);


--
-- Name: catalog_county_cities_county_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_county_cities_county_id ON catalog_county_cities USING btree (county_id);


--
-- Name: catalog_department_divisions_department_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_department_divisions_department_id ON catalog_department_divisions USING btree (department_id);


--
-- Name: catalog_department_divisions_division_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_department_divisions_division_id ON catalog_department_divisions USING btree (division_id);


--
-- Name: catalog_resource_categories_category_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_categories_category_id ON catalog_resource_categories USING btree (category_id);


--
-- Name: catalog_resource_categories_resource_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_categories_resource_id ON catalog_resource_categories USING btree (resource_id);


--
-- Name: catalog_resource_cities_city_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_cities_city_id ON catalog_resource_cities USING btree (city_id);


--
-- Name: catalog_resource_cities_resource_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_cities_resource_id ON catalog_resource_cities USING btree (resource_id);


--
-- Name: catalog_resource_coord_sys_coordsystem_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_coord_sys_coordsystem_id ON catalog_resource_coord_sys USING btree (coordsystem_id);


--
-- Name: catalog_resource_coord_sys_resource_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_coord_sys_resource_id ON catalog_resource_coord_sys USING btree (resource_id);


--
-- Name: catalog_resource_counties_county_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_counties_county_id ON catalog_resource_counties USING btree (county_id);


--
-- Name: catalog_resource_counties_resource_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_counties_resource_id ON catalog_resource_counties USING btree (resource_id);


--
-- Name: catalog_resource_created_by_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_created_by_id ON catalog_resource USING btree (created_by_id);


--
-- Name: catalog_resource_data_types_datatype_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_data_types_datatype_id ON catalog_resource_data_types USING btree (datatype_id);


--
-- Name: catalog_resource_data_types_resource_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_data_types_resource_id ON catalog_resource_data_types USING btree (resource_id);


--
-- Name: catalog_resource_department_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_department_id ON catalog_resource USING btree (department_id);


--
-- Name: catalog_resource_division_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_division_id ON catalog_resource USING btree (division_id);


--
-- Name: catalog_resource_last_updated_by_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_last_updated_by_id ON catalog_resource USING btree (last_updated_by_id);


--
-- Name: catalog_resource_slug; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_slug ON catalog_resource USING btree (slug);


--
-- Name: catalog_resource_slug_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_slug_like ON catalog_resource USING btree (slug varchar_pattern_ops);


--
-- Name: catalog_resource_updates_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_resource_updates_id ON catalog_resource USING btree (updates_id);


--
-- Name: catalog_url_resource_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_url_resource_id ON catalog_url USING btree (resource_id);


--
-- Name: catalog_url_url_type_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_url_url_type_id ON catalog_url USING btree (url_type_id);


--
-- Name: catalog_urlimage_resource_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX catalog_urlimage_resource_id ON catalog_urlimage USING btree (resource_id);


--
-- Name: celery_taskmeta_hidden; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX celery_taskmeta_hidden ON celery_taskmeta USING btree (hidden);


--
-- Name: celery_taskmeta_task_id_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX celery_taskmeta_task_id_like ON celery_taskmeta USING btree (task_id varchar_pattern_ops);


--
-- Name: celery_tasksetmeta_hidden; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX celery_tasksetmeta_hidden ON celery_tasksetmeta USING btree (hidden);


--
-- Name: celery_tasksetmeta_taskset_id_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX celery_tasksetmeta_taskset_id_like ON celery_tasksetmeta USING btree (taskset_id varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_admin_log_content_type_id ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_admin_log_user_id ON django_admin_log USING btree (user_id);


--
-- Name: django_comment_flags_comment_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_comment_flags_comment_id ON django_comment_flags USING btree (comment_id);


--
-- Name: django_comment_flags_flag; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_comment_flags_flag ON django_comment_flags USING btree (flag);


--
-- Name: django_comment_flags_flag_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_comment_flags_flag_like ON django_comment_flags USING btree (flag varchar_pattern_ops);


--
-- Name: django_comment_flags_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_comment_flags_user_id ON django_comment_flags USING btree (user_id);


--
-- Name: django_comments_content_type_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_comments_content_type_id ON django_comments USING btree (content_type_id);


--
-- Name: django_comments_site_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_comments_site_id ON django_comments USING btree (site_id);


--
-- Name: django_comments_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_comments_user_id ON django_comments USING btree (user_id);


--
-- Name: django_session_expire_date; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_session_expire_date ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_session_session_key_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: djangoratings_ignoredobject_content_type_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djangoratings_ignoredobject_content_type_id ON djangoratings_ignoredobject USING btree (content_type_id);


--
-- Name: djangoratings_ignoredobject_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djangoratings_ignoredobject_user_id ON djangoratings_ignoredobject USING btree (user_id);


--
-- Name: djangoratings_score_content_type_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djangoratings_score_content_type_id ON djangoratings_score USING btree (content_type_id);


--
-- Name: djangoratings_similaruser_from_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djangoratings_similaruser_from_user_id ON djangoratings_similaruser USING btree (from_user_id);


--
-- Name: djangoratings_similaruser_to_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djangoratings_similaruser_to_user_id ON djangoratings_similaruser USING btree (to_user_id);


--
-- Name: djangoratings_vote_content_type_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djangoratings_vote_content_type_id ON djangoratings_vote USING btree (content_type_id);


--
-- Name: djangoratings_vote_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djangoratings_vote_user_id ON djangoratings_vote USING btree (user_id);


--
-- Name: djcelery_periodictask_crontab_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_periodictask_crontab_id ON djcelery_periodictask USING btree (crontab_id);


--
-- Name: djcelery_periodictask_interval_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_periodictask_interval_id ON djcelery_periodictask USING btree (interval_id);


--
-- Name: djcelery_periodictask_name_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_periodictask_name_like ON djcelery_periodictask USING btree (name varchar_pattern_ops);


--
-- Name: djcelery_taskstate_hidden; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_taskstate_hidden ON djcelery_taskstate USING btree (hidden);


--
-- Name: djcelery_taskstate_name; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_taskstate_name ON djcelery_taskstate USING btree (name);


--
-- Name: djcelery_taskstate_name_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_taskstate_name_like ON djcelery_taskstate USING btree (name varchar_pattern_ops);


--
-- Name: djcelery_taskstate_state; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_taskstate_state ON djcelery_taskstate USING btree (state);


--
-- Name: djcelery_taskstate_state_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_taskstate_state_like ON djcelery_taskstate USING btree (state varchar_pattern_ops);


--
-- Name: djcelery_taskstate_task_id_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_taskstate_task_id_like ON djcelery_taskstate USING btree (task_id varchar_pattern_ops);


--
-- Name: djcelery_taskstate_tstamp; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_taskstate_tstamp ON djcelery_taskstate USING btree (tstamp);


--
-- Name: djcelery_taskstate_worker_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_taskstate_worker_id ON djcelery_taskstate USING btree (worker_id);


--
-- Name: djcelery_workerstate_hostname_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_workerstate_hostname_like ON djcelery_workerstate USING btree (hostname varchar_pattern_ops);


--
-- Name: djcelery_workerstate_last_heartbeat; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX djcelery_workerstate_last_heartbeat ON djcelery_workerstate USING btree (last_heartbeat);


--
-- Name: requests_request_categories_category_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX requests_request_categories_category_id ON requests_request_categories USING btree (category_id);


--
-- Name: requests_request_categories_request_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX requests_request_categories_request_id ON requests_request_categories USING btree (request_id);


--
-- Name: requests_request_city_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX requests_request_city_id ON requests_request USING btree (city_id);


--
-- Name: requests_request_county_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX requests_request_county_id ON requests_request USING btree (county_id);


--
-- Name: requests_request_resources_request_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX requests_request_resources_request_id ON requests_request_resources USING btree (request_id);


--
-- Name: requests_request_resources_resource_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX requests_request_resources_resource_id ON requests_request_resources USING btree (resource_id);


--
-- Name: requests_request_suggested_by_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX requests_request_suggested_by_id ON requests_request USING btree (suggested_by_id);


--
-- Name: requests_request_updates_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX requests_request_updates_id ON requests_request USING btree (updates_id);


--
-- Name: scribbler_scribble_slug; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX scribbler_scribble_slug ON scribbler_scribble USING btree (slug);


--
-- Name: scribbler_scribble_slug_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX scribbler_scribble_slug_like ON scribbler_scribble USING btree (slug varchar_pattern_ops);


--
-- Name: suggestions_suggestion_categories_category_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX suggestions_suggestion_categories_category_id ON suggestions_suggestion_categories USING btree (category_id);


--
-- Name: suggestions_suggestion_categories_suggestion_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX suggestions_suggestion_categories_suggestion_id ON suggestions_suggestion_categories USING btree (suggestion_id);


--
-- Name: suggestions_suggestion_city_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX suggestions_suggestion_city_id ON suggestions_suggestion USING btree (city_id);


--
-- Name: suggestions_suggestion_county_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX suggestions_suggestion_county_id ON suggestions_suggestion USING btree (county_id);


--
-- Name: suggestions_suggestion_data_format_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX suggestions_suggestion_data_format_id ON suggestions_suggestion USING btree (data_format_id);


--
-- Name: suggestions_suggestion_updates_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX suggestions_suggestion_updates_id ON suggestions_suggestion USING btree (updates_id);


--
-- Name: thumbnail_kvstore_key_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX thumbnail_kvstore_key_like ON thumbnail_kvstore USING btree (key varchar_pattern_ops);


--
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: category_id_refs_id_52997a64; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY requests_request_categories
    ADD CONSTRAINT category_id_refs_id_52997a64 FOREIGN KEY (category_id) REFERENCES catalog_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: category_id_refs_id_79b2276b; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_categories
    ADD CONSTRAINT category_id_refs_id_79b2276b FOREIGN KEY (category_id) REFERENCES catalog_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: category_id_refs_id_e1e66a7f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY suggestions_suggestion_categories
    ADD CONSTRAINT category_id_refs_id_e1e66a7f FOREIGN KEY (category_id) REFERENCES catalog_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: city_id_refs_id_2d99f755; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY requests_request
    ADD CONSTRAINT city_id_refs_id_2d99f755 FOREIGN KEY (city_id) REFERENCES catalog_city(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: city_id_refs_id_63cbde27; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_county_cities
    ADD CONSTRAINT city_id_refs_id_63cbde27 FOREIGN KEY (city_id) REFERENCES catalog_city(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: city_id_refs_id_c7bc2909; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_cities
    ADD CONSTRAINT city_id_refs_id_c7bc2909 FOREIGN KEY (city_id) REFERENCES catalog_city(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: city_id_refs_id_fb88dd47; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY suggestions_suggestion
    ADD CONSTRAINT city_id_refs_id_fb88dd47 FOREIGN KEY (city_id) REFERENCES catalog_city(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: comments_commentwithrating_comment_ptr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY comments_commentwithrating
    ADD CONSTRAINT comments_commentwithrating_comment_ptr_id_fkey FOREIGN KEY (comment_ptr_id) REFERENCES django_comments(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_bc7f6186; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY djangoratings_score
    ADD CONSTRAINT content_type_id_refs_id_bc7f6186 FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_c2843220; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY djangoratings_vote
    ADD CONSTRAINT content_type_id_refs_id_c2843220 FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_d043b34a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_d043b34a FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_f28bca0f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY djangoratings_ignoredobject
    ADD CONSTRAINT content_type_id_refs_id_f28bca0f FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: coordsystem_id_refs_id_45a16939; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_coord_sys
    ADD CONSTRAINT coordsystem_id_refs_id_45a16939 FOREIGN KEY (coordsystem_id) REFERENCES catalog_coordsystem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: county_id_refs_id_1729b5f2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_county_cities
    ADD CONSTRAINT county_id_refs_id_1729b5f2 FOREIGN KEY (county_id) REFERENCES catalog_county(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: county_id_refs_id_5d35ae45; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY requests_request
    ADD CONSTRAINT county_id_refs_id_5d35ae45 FOREIGN KEY (county_id) REFERENCES catalog_county(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: county_id_refs_id_a2998ca6; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY suggestions_suggestion
    ADD CONSTRAINT county_id_refs_id_a2998ca6 FOREIGN KEY (county_id) REFERENCES catalog_county(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: county_id_refs_id_fe34ca12; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_counties
    ADD CONSTRAINT county_id_refs_id_fe34ca12 FOREIGN KEY (county_id) REFERENCES catalog_county(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: created_by_id_refs_id_e6ae9264; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource
    ADD CONSTRAINT created_by_id_refs_id_e6ae9264 FOREIGN KEY (created_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: crontab_id_refs_id_286da0d1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY djcelery_periodictask
    ADD CONSTRAINT crontab_id_refs_id_286da0d1 FOREIGN KEY (crontab_id) REFERENCES djcelery_crontabschedule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: data_format_id_refs_id_11a65d94; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY suggestions_suggestion
    ADD CONSTRAINT data_format_id_refs_id_11a65d94 FOREIGN KEY (data_format_id) REFERENCES catalog_urltype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: datatype_id_refs_id_7e7300ee; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_data_types
    ADD CONSTRAINT datatype_id_refs_id_7e7300ee FOREIGN KEY (datatype_id) REFERENCES catalog_datatype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: department_id_refs_id_1d423ba1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_department_divisions
    ADD CONSTRAINT department_id_refs_id_1d423ba1 FOREIGN KEY (department_id) REFERENCES catalog_department(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: department_id_refs_id_bf0b39ad; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource
    ADD CONSTRAINT department_id_refs_id_bf0b39ad FOREIGN KEY (department_id) REFERENCES catalog_department(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: division_id_refs_id_e01d1338; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource
    ADD CONSTRAINT division_id_refs_id_e01d1338 FOREIGN KEY (division_id) REFERENCES catalog_division(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: division_id_refs_id_f967fce3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_department_divisions
    ADD CONSTRAINT division_id_refs_id_f967fce3 FOREIGN KEY (division_id) REFERENCES catalog_division(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comment_flags_comment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_comment_id_fkey FOREIGN KEY (comment_id) REFERENCES django_comments(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comment_flags_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_site_id_fkey FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: from_user_id_refs_id_ff79a0a1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY djangoratings_similaruser
    ADD CONSTRAINT from_user_id_refs_id_ff79a0a1 FOREIGN KEY (from_user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_f4b32aac; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_f4b32aac FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: interval_id_refs_id_1829f358; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY djcelery_periodictask
    ADD CONSTRAINT interval_id_refs_id_1829f358 FOREIGN KEY (interval_id) REFERENCES djcelery_intervalschedule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: last_updated_by_id_refs_id_e6ae9264; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource
    ADD CONSTRAINT last_updated_by_id_refs_id_e6ae9264 FOREIGN KEY (last_updated_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: registration_registrationprofile_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY registration_registrationprofile
    ADD CONSTRAINT registration_registrationprofile_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: request_id_refs_id_6e0b99c0; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY requests_request_categories
    ADD CONSTRAINT request_id_refs_id_6e0b99c0 FOREIGN KEY (request_id) REFERENCES requests_request(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: request_id_refs_id_e884bfc6; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY requests_request_resources
    ADD CONSTRAINT request_id_refs_id_e884bfc6 FOREIGN KEY (request_id) REFERENCES requests_request(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: resource_id_refs_id_002a62ac; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_categories
    ADD CONSTRAINT resource_id_refs_id_002a62ac FOREIGN KEY (resource_id) REFERENCES catalog_resource(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: resource_id_refs_id_193497b7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_cities
    ADD CONSTRAINT resource_id_refs_id_193497b7 FOREIGN KEY (resource_id) REFERENCES catalog_resource(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: resource_id_refs_id_29105c18; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_urlimage
    ADD CONSTRAINT resource_id_refs_id_29105c18 FOREIGN KEY (resource_id) REFERENCES catalog_resource(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: resource_id_refs_id_6d0fb48c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_data_types
    ADD CONSTRAINT resource_id_refs_id_6d0fb48c FOREIGN KEY (resource_id) REFERENCES catalog_resource(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: resource_id_refs_id_dede1b38; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_counties
    ADD CONSTRAINT resource_id_refs_id_dede1b38 FOREIGN KEY (resource_id) REFERENCES catalog_resource(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: resource_id_refs_id_ed4c6da7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_url
    ADD CONSTRAINT resource_id_refs_id_ed4c6da7 FOREIGN KEY (resource_id) REFERENCES catalog_resource(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: resource_id_refs_id_f139139d; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY requests_request_resources
    ADD CONSTRAINT resource_id_refs_id_f139139d FOREIGN KEY (resource_id) REFERENCES catalog_resource(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: resource_id_refs_id_fa56d5f5; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource_coord_sys
    ADD CONSTRAINT resource_id_refs_id_fa56d5f5 FOREIGN KEY (resource_id) REFERENCES catalog_resource(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: suggested_by_id_refs_id_08212898; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY requests_request
    ADD CONSTRAINT suggested_by_id_refs_id_08212898 FOREIGN KEY (suggested_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: suggestion_id_refs_id_5d7c4277; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY suggestions_suggestion_categories
    ADD CONSTRAINT suggestion_id_refs_id_5d7c4277 FOREIGN KEY (suggestion_id) REFERENCES suggestions_suggestion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: to_user_id_refs_id_ff79a0a1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY djangoratings_similaruser
    ADD CONSTRAINT to_user_id_refs_id_ff79a0a1 FOREIGN KEY (to_user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: updates_id_refs_id_3a4e622b; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY requests_request
    ADD CONSTRAINT updates_id_refs_id_3a4e622b FOREIGN KEY (updates_id) REFERENCES catalog_updatefrequency(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: updates_id_refs_id_3e5079e5; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY suggestions_suggestion
    ADD CONSTRAINT updates_id_refs_id_3e5079e5 FOREIGN KEY (updates_id) REFERENCES catalog_updatefrequency(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: updates_id_refs_id_5c42f832; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_resource
    ADD CONSTRAINT updates_id_refs_id_5c42f832 FOREIGN KEY (updates_id) REFERENCES catalog_updatefrequency(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: url_type_id_refs_id_9e1e46c6; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY catalog_url
    ADD CONSTRAINT url_type_id_refs_id_9e1e46c6 FOREIGN KEY (url_type_id) REFERENCES catalog_urltype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_40c41112; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_40c41112 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_4ce71293; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY djangoratings_vote
    ADD CONSTRAINT user_id_refs_id_4ce71293 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_4cea1bfb; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY djangoratings_ignoredobject
    ADD CONSTRAINT user_id_refs_id_4cea1bfb FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_4dc23c39; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_4dc23c39 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: worker_id_refs_id_6fd8ce95; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY djcelery_taskstate
    ADD CONSTRAINT worker_id_refs_id_6fd8ce95 FOREIGN KEY (worker_id) REFERENCES djcelery_workerstate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

