--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.djcelery_taskstate DROP CONSTRAINT worker_id_refs_id_6fd8ce95;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT user_id_refs_id_4dc23c39;
ALTER TABLE ONLY public.djangoratings_ignoredobject DROP CONSTRAINT user_id_refs_id_4cea1bfb;
ALTER TABLE ONLY public.djangoratings_vote DROP CONSTRAINT user_id_refs_id_4ce71293;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT user_id_refs_id_40c41112;
ALTER TABLE ONLY public.catalog_url DROP CONSTRAINT url_type_id_refs_id_9e1e46c6;
ALTER TABLE ONLY public.catalog_resource DROP CONSTRAINT updates_id_refs_id_5c42f832;
ALTER TABLE ONLY public.suggestions_suggestion DROP CONSTRAINT updates_id_refs_id_3e5079e5;
ALTER TABLE ONLY public.requests_request DROP CONSTRAINT updates_id_refs_id_3a4e622b;
ALTER TABLE ONLY public.djangoratings_similaruser DROP CONSTRAINT to_user_id_refs_id_ff79a0a1;
ALTER TABLE ONLY public.suggestions_suggestion_categories DROP CONSTRAINT suggestion_id_refs_id_5d7c4277;
ALTER TABLE ONLY public.requests_request DROP CONSTRAINT suggested_by_id_refs_id_08212898;
ALTER TABLE ONLY public.catalog_resource_coord_sys DROP CONSTRAINT resource_id_refs_id_fa56d5f5;
ALTER TABLE ONLY public.requests_request_resources DROP CONSTRAINT resource_id_refs_id_f139139d;
ALTER TABLE ONLY public.catalog_url DROP CONSTRAINT resource_id_refs_id_ed4c6da7;
ALTER TABLE ONLY public.catalog_resource_counties DROP CONSTRAINT resource_id_refs_id_dede1b38;
ALTER TABLE ONLY public.catalog_resource_data_types DROP CONSTRAINT resource_id_refs_id_6d0fb48c;
ALTER TABLE ONLY public.catalog_urlimage DROP CONSTRAINT resource_id_refs_id_29105c18;
ALTER TABLE ONLY public.catalog_resource_cities DROP CONSTRAINT resource_id_refs_id_193497b7;
ALTER TABLE ONLY public.catalog_resource_categories DROP CONSTRAINT resource_id_refs_id_002a62ac;
ALTER TABLE ONLY public.requests_request_resources DROP CONSTRAINT request_id_refs_id_e884bfc6;
ALTER TABLE ONLY public.requests_request_categories DROP CONSTRAINT request_id_refs_id_6e0b99c0;
ALTER TABLE ONLY public.registration_registrationprofile DROP CONSTRAINT registration_registrationprofile_user_id_fkey;
ALTER TABLE ONLY public.catalog_resource DROP CONSTRAINT last_updated_by_id_refs_id_e6ae9264;
ALTER TABLE ONLY public.djcelery_periodictask DROP CONSTRAINT interval_id_refs_id_1829f358;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT group_id_refs_id_f4b32aac;
ALTER TABLE ONLY public.djangoratings_similaruser DROP CONSTRAINT from_user_id_refs_id_ff79a0a1;
ALTER TABLE ONLY public.django_comments DROP CONSTRAINT django_comments_user_id_fkey;
ALTER TABLE ONLY public.django_comments DROP CONSTRAINT django_comments_site_id_fkey;
ALTER TABLE ONLY public.django_comments DROP CONSTRAINT django_comments_content_type_id_fkey;
ALTER TABLE ONLY public.django_comment_flags DROP CONSTRAINT django_comment_flags_user_id_fkey;
ALTER TABLE ONLY public.django_comment_flags DROP CONSTRAINT django_comment_flags_comment_id_fkey;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_fkey;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_fkey;
ALTER TABLE ONLY public.catalog_department_divisions DROP CONSTRAINT division_id_refs_id_f967fce3;
ALTER TABLE ONLY public.catalog_resource DROP CONSTRAINT division_id_refs_id_e01d1338;
ALTER TABLE ONLY public.catalog_resource DROP CONSTRAINT department_id_refs_id_bf0b39ad;
ALTER TABLE ONLY public.catalog_department_divisions DROP CONSTRAINT department_id_refs_id_1d423ba1;
ALTER TABLE ONLY public.catalog_resource_data_types DROP CONSTRAINT datatype_id_refs_id_7e7300ee;
ALTER TABLE ONLY public.suggestions_suggestion DROP CONSTRAINT data_format_id_refs_id_11a65d94;
ALTER TABLE ONLY public.djcelery_periodictask DROP CONSTRAINT crontab_id_refs_id_286da0d1;
ALTER TABLE ONLY public.catalog_resource DROP CONSTRAINT created_by_id_refs_id_e6ae9264;
ALTER TABLE ONLY public.catalog_resource_counties DROP CONSTRAINT county_id_refs_id_fe34ca12;
ALTER TABLE ONLY public.suggestions_suggestion DROP CONSTRAINT county_id_refs_id_a2998ca6;
ALTER TABLE ONLY public.requests_request DROP CONSTRAINT county_id_refs_id_5d35ae45;
ALTER TABLE ONLY public.catalog_county_cities DROP CONSTRAINT county_id_refs_id_1729b5f2;
ALTER TABLE ONLY public.catalog_resource_coord_sys DROP CONSTRAINT coordsystem_id_refs_id_45a16939;
ALTER TABLE ONLY public.djangoratings_ignoredobject DROP CONSTRAINT content_type_id_refs_id_f28bca0f;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT content_type_id_refs_id_d043b34a;
ALTER TABLE ONLY public.djangoratings_vote DROP CONSTRAINT content_type_id_refs_id_c2843220;
ALTER TABLE ONLY public.djangoratings_score DROP CONSTRAINT content_type_id_refs_id_bc7f6186;
ALTER TABLE ONLY public.comments_commentwithrating DROP CONSTRAINT comments_commentwithrating_comment_ptr_id_fkey;
ALTER TABLE ONLY public.suggestions_suggestion DROP CONSTRAINT city_id_refs_id_fb88dd47;
ALTER TABLE ONLY public.catalog_resource_cities DROP CONSTRAINT city_id_refs_id_c7bc2909;
ALTER TABLE ONLY public.catalog_county_cities DROP CONSTRAINT city_id_refs_id_63cbde27;
ALTER TABLE ONLY public.requests_request DROP CONSTRAINT city_id_refs_id_2d99f755;
ALTER TABLE ONLY public.suggestions_suggestion_categories DROP CONSTRAINT category_id_refs_id_e1e66a7f;
ALTER TABLE ONLY public.catalog_resource_categories DROP CONSTRAINT category_id_refs_id_79b2276b;
ALTER TABLE ONLY public.requests_request_categories DROP CONSTRAINT category_id_refs_id_52997a64;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_permission_id_fkey;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_fkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_permission_id_fkey;
DROP INDEX public.thumbnail_kvstore_key_like;
DROP INDEX public.suggestions_suggestion_updates_id;
DROP INDEX public.suggestions_suggestion_data_format_id;
DROP INDEX public.suggestions_suggestion_county_id;
DROP INDEX public.suggestions_suggestion_city_id;
DROP INDEX public.suggestions_suggestion_categories_suggestion_id;
DROP INDEX public.suggestions_suggestion_categories_category_id;
DROP INDEX public.scribbler_scribble_slug_like;
DROP INDEX public.scribbler_scribble_slug;
DROP INDEX public.requests_request_updates_id;
DROP INDEX public.requests_request_suggested_by_id;
DROP INDEX public.requests_request_resources_resource_id;
DROP INDEX public.requests_request_resources_request_id;
DROP INDEX public.requests_request_county_id;
DROP INDEX public.requests_request_city_id;
DROP INDEX public.requests_request_categories_request_id;
DROP INDEX public.requests_request_categories_category_id;
DROP INDEX public.djcelery_workerstate_last_heartbeat;
DROP INDEX public.djcelery_workerstate_hostname_like;
DROP INDEX public.djcelery_taskstate_worker_id;
DROP INDEX public.djcelery_taskstate_tstamp;
DROP INDEX public.djcelery_taskstate_task_id_like;
DROP INDEX public.djcelery_taskstate_state_like;
DROP INDEX public.djcelery_taskstate_state;
DROP INDEX public.djcelery_taskstate_name_like;
DROP INDEX public.djcelery_taskstate_name;
DROP INDEX public.djcelery_taskstate_hidden;
DROP INDEX public.djcelery_periodictask_name_like;
DROP INDEX public.djcelery_periodictask_interval_id;
DROP INDEX public.djcelery_periodictask_crontab_id;
DROP INDEX public.djangoratings_vote_user_id;
DROP INDEX public.djangoratings_vote_content_type_id;
DROP INDEX public.djangoratings_similaruser_to_user_id;
DROP INDEX public.djangoratings_similaruser_from_user_id;
DROP INDEX public.djangoratings_score_content_type_id;
DROP INDEX public.djangoratings_ignoredobject_user_id;
DROP INDEX public.djangoratings_ignoredobject_content_type_id;
DROP INDEX public.django_session_session_key_like;
DROP INDEX public.django_session_expire_date;
DROP INDEX public.django_comments_user_id;
DROP INDEX public.django_comments_site_id;
DROP INDEX public.django_comments_content_type_id;
DROP INDEX public.django_comment_flags_user_id;
DROP INDEX public.django_comment_flags_flag_like;
DROP INDEX public.django_comment_flags_flag;
DROP INDEX public.django_comment_flags_comment_id;
DROP INDEX public.django_admin_log_user_id;
DROP INDEX public.django_admin_log_content_type_id;
DROP INDEX public.celery_tasksetmeta_taskset_id_like;
DROP INDEX public.celery_tasksetmeta_hidden;
DROP INDEX public.celery_taskmeta_task_id_like;
DROP INDEX public.celery_taskmeta_hidden;
DROP INDEX public.catalog_urlimage_resource_id;
DROP INDEX public.catalog_url_url_type_id;
DROP INDEX public.catalog_url_resource_id;
DROP INDEX public.catalog_resource_updates_id;
DROP INDEX public.catalog_resource_slug_like;
DROP INDEX public.catalog_resource_slug;
DROP INDEX public.catalog_resource_last_updated_by_id;
DROP INDEX public.catalog_resource_division_id;
DROP INDEX public.catalog_resource_department_id;
DROP INDEX public.catalog_resource_data_types_resource_id;
DROP INDEX public.catalog_resource_data_types_datatype_id;
DROP INDEX public.catalog_resource_created_by_id;
DROP INDEX public.catalog_resource_counties_resource_id;
DROP INDEX public.catalog_resource_counties_county_id;
DROP INDEX public.catalog_resource_coord_sys_resource_id;
DROP INDEX public.catalog_resource_coord_sys_coordsystem_id;
DROP INDEX public.catalog_resource_cities_resource_id;
DROP INDEX public.catalog_resource_cities_city_id;
DROP INDEX public.catalog_resource_categories_resource_id;
DROP INDEX public.catalog_resource_categories_category_id;
DROP INDEX public.catalog_department_divisions_division_id;
DROP INDEX public.catalog_department_divisions_department_id;
DROP INDEX public.catalog_county_cities_county_id;
DROP INDEX public.catalog_county_cities_city_id;
DROP INDEX public.auth_user_username_like;
DROP INDEX public.auth_user_user_permissions_user_id;
DROP INDEX public.auth_user_user_permissions_permission_id;
DROP INDEX public.auth_user_groups_user_id;
DROP INDEX public.auth_user_groups_group_id;
DROP INDEX public.auth_permission_content_type_id;
DROP INDEX public.auth_group_permissions_permission_id;
DROP INDEX public.auth_group_permissions_group_id;
DROP INDEX public.auth_group_name_like;
ALTER TABLE ONLY public.thumbnail_kvstore DROP CONSTRAINT thumbnail_kvstore_pkey;
ALTER TABLE ONLY public.suggestions_suggestion DROP CONSTRAINT suggestions_suggestion_pkey;
ALTER TABLE ONLY public.suggestions_suggestion_categories DROP CONSTRAINT suggestions_suggestion_categories_pkey;
ALTER TABLE ONLY public.suggestions_suggestion_categories DROP CONSTRAINT suggestions_suggestion_cate_suggestion_id_45b080e8781aa4b8_uniq;
ALTER TABLE ONLY public.south_migrationhistory DROP CONSTRAINT south_migrationhistory_pkey;
ALTER TABLE ONLY public.scribbler_scribble DROP CONSTRAINT scribbler_scribble_url_6e7518efcb758418_uniq;
ALTER TABLE ONLY public.scribbler_scribble DROP CONSTRAINT scribbler_scribble_pkey;
ALTER TABLE ONLY public.requests_request_resources DROP CONSTRAINT requests_request_resources_request_id_75c92e7ee85f7aba_uniq;
ALTER TABLE ONLY public.requests_request_resources DROP CONSTRAINT requests_request_resources_pkey;
ALTER TABLE ONLY public.requests_request DROP CONSTRAINT requests_request_pkey;
ALTER TABLE ONLY public.requests_request_categories DROP CONSTRAINT requests_request_categories_request_id_60d814e2f6a1898a_uniq;
ALTER TABLE ONLY public.requests_request_categories DROP CONSTRAINT requests_request_categories_pkey;
ALTER TABLE ONLY public.registration_registrationprofile DROP CONSTRAINT registration_registrationprofile_user_id_key;
ALTER TABLE ONLY public.registration_registrationprofile DROP CONSTRAINT registration_registrationprofile_pkey;
ALTER TABLE ONLY public.djcelery_workerstate DROP CONSTRAINT djcelery_workerstate_pkey;
ALTER TABLE ONLY public.djcelery_workerstate DROP CONSTRAINT djcelery_workerstate_hostname_key;
ALTER TABLE ONLY public.djcelery_taskstate DROP CONSTRAINT djcelery_taskstate_task_id_key;
ALTER TABLE ONLY public.djcelery_taskstate DROP CONSTRAINT djcelery_taskstate_pkey;
ALTER TABLE ONLY public.djcelery_periodictasks DROP CONSTRAINT djcelery_periodictasks_pkey;
ALTER TABLE ONLY public.djcelery_periodictask DROP CONSTRAINT djcelery_periodictask_pkey;
ALTER TABLE ONLY public.djcelery_periodictask DROP CONSTRAINT djcelery_periodictask_name_key;
ALTER TABLE ONLY public.djcelery_intervalschedule DROP CONSTRAINT djcelery_intervalschedule_pkey;
ALTER TABLE ONLY public.djcelery_crontabschedule DROP CONSTRAINT djcelery_crontabschedule_pkey;
ALTER TABLE ONLY public.djangoratings_vote DROP CONSTRAINT djangoratings_vote_pkey;
ALTER TABLE ONLY public.djangoratings_vote DROP CONSTRAINT djangoratings_vote_content_type_id_69d497af3324806f_uniq;
ALTER TABLE ONLY public.djangoratings_similaruser DROP CONSTRAINT djangoratings_similaruser_pkey;
ALTER TABLE ONLY public.djangoratings_score DROP CONSTRAINT djangoratings_score_pkey;
ALTER TABLE ONLY public.djangoratings_score DROP CONSTRAINT djangoratings_score_content_type_id_34080b82db03891b_uniq;
ALTER TABLE ONLY public.djangoratings_ignoredobject DROP CONSTRAINT djangoratings_ignoredobject_pkey;
ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_key;
ALTER TABLE ONLY public.django_comments DROP CONSTRAINT django_comments_pkey;
ALTER TABLE ONLY public.django_comment_flags DROP CONSTRAINT django_comment_flags_user_id_comment_id_flag_key;
ALTER TABLE ONLY public.django_comment_flags DROP CONSTRAINT django_comment_flags_pkey;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
ALTER TABLE ONLY public.comments_commentwithrating DROP CONSTRAINT comments_commentwithrating_pkey;
ALTER TABLE ONLY public.celery_tasksetmeta DROP CONSTRAINT celery_tasksetmeta_taskset_id_key;
ALTER TABLE ONLY public.celery_tasksetmeta DROP CONSTRAINT celery_tasksetmeta_pkey;
ALTER TABLE ONLY public.celery_taskmeta DROP CONSTRAINT celery_taskmeta_task_id_key;
ALTER TABLE ONLY public.celery_taskmeta DROP CONSTRAINT celery_taskmeta_pkey;
ALTER TABLE ONLY public.catalog_urltype DROP CONSTRAINT catalog_urltype_pkey;
ALTER TABLE ONLY public.catalog_urlimage DROP CONSTRAINT catalog_urlimage_pkey;
ALTER TABLE ONLY public.catalog_url DROP CONSTRAINT catalog_url_pkey;
ALTER TABLE ONLY public.catalog_updatefrequency DROP CONSTRAINT catalog_updatefrequency_pkey;
ALTER TABLE ONLY public.catalog_resource DROP CONSTRAINT catalog_resource_pkey;
ALTER TABLE ONLY public.catalog_resource_data_types DROP CONSTRAINT catalog_resource_data_types_resource_id_36049a106385e980_uniq;
ALTER TABLE ONLY public.catalog_resource_data_types DROP CONSTRAINT catalog_resource_data_types_pkey;
ALTER TABLE ONLY public.catalog_resource_counties DROP CONSTRAINT catalog_resource_counties_resource_id_25bc529b8b7e664e_uniq;
ALTER TABLE ONLY public.catalog_resource_counties DROP CONSTRAINT catalog_resource_counties_pkey;
ALTER TABLE ONLY public.catalog_resource_coord_sys DROP CONSTRAINT catalog_resource_coord_sys_resource_id_30c10da65df1830d_uniq;
ALTER TABLE ONLY public.catalog_resource_coord_sys DROP CONSTRAINT catalog_resource_coord_sys_pkey;
ALTER TABLE ONLY public.catalog_resource_cities DROP CONSTRAINT catalog_resource_cities_resource_id_2451af359ee5738a_uniq;
ALTER TABLE ONLY public.catalog_resource_cities DROP CONSTRAINT catalog_resource_cities_pkey;
ALTER TABLE ONLY public.catalog_resource_categories DROP CONSTRAINT catalog_resource_categories_resource_id_53ac8f8b3cbe75d6_uniq;
ALTER TABLE ONLY public.catalog_resource_categories DROP CONSTRAINT catalog_resource_categories_pkey;
ALTER TABLE ONLY public.catalog_division DROP CONSTRAINT catalog_division_pkey;
ALTER TABLE ONLY public.catalog_department DROP CONSTRAINT catalog_department_pkey;
ALTER TABLE ONLY public.catalog_department_divisions DROP CONSTRAINT catalog_department_divisions_pkey;
ALTER TABLE ONLY public.catalog_department_divisions DROP CONSTRAINT catalog_department_division_department_id_39f9cbe9db1d4714_uniq;
ALTER TABLE ONLY public.catalog_datatype DROP CONSTRAINT catalog_datatype_pkey;
ALTER TABLE ONLY public.catalog_county DROP CONSTRAINT catalog_county_pkey;
ALTER TABLE ONLY public.catalog_county_cities DROP CONSTRAINT catalog_county_cities_pkey;
ALTER TABLE ONLY public.catalog_county_cities DROP CONSTRAINT catalog_county_cities_county_id_3199dc690a36b346_uniq;
ALTER TABLE ONLY public.catalog_coordsystem DROP CONSTRAINT catalog_coordsystem_pkey;
ALTER TABLE ONLY public.catalog_city DROP CONSTRAINT catalog_city_pkey;
ALTER TABLE ONLY public.catalog_category DROP CONSTRAINT catalog_category_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_key;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_key;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_key;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_key;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
ALTER TABLE public.suggestions_suggestion_categories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.suggestions_suggestion ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.south_migrationhistory ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.scribbler_scribble ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.requests_request_resources ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.requests_request_categories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.requests_request ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.registration_registrationprofile ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.djcelery_workerstate ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.djcelery_taskstate ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.djcelery_periodictask ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.djcelery_intervalschedule ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.djcelery_crontabschedule ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.djangoratings_vote ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.djangoratings_similaruser ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.djangoratings_score ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.djangoratings_ignoredobject ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_comments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_comment_flags ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.celery_tasksetmeta ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.celery_taskmeta ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_urltype ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_urlimage ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_url ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_updatefrequency ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_resource_data_types ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_resource_counties ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_resource_coord_sys ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_resource_cities ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_resource_categories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_resource ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_division ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_department_divisions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_department ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_datatype ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_county_cities ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_county ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_coordsystem ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_city ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_category ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
DROP TABLE public.thumbnail_kvstore;
DROP SEQUENCE public.suggestions_suggestion_id_seq;
DROP SEQUENCE public.suggestions_suggestion_categories_id_seq;
DROP TABLE public.suggestions_suggestion_categories;
DROP TABLE public.suggestions_suggestion;
DROP SEQUENCE public.south_migrationhistory_id_seq;
DROP TABLE public.south_migrationhistory;
DROP SEQUENCE public.scribbler_scribble_id_seq;
DROP TABLE public.scribbler_scribble;
DROP SEQUENCE public.requests_request_resources_id_seq;
DROP TABLE public.requests_request_resources;
DROP SEQUENCE public.requests_request_id_seq;
DROP SEQUENCE public.requests_request_categories_id_seq;
DROP TABLE public.requests_request_categories;
DROP TABLE public.requests_request;
DROP SEQUENCE public.registration_registrationprofile_id_seq;
DROP TABLE public.registration_registrationprofile;
DROP SEQUENCE public.djcelery_workerstate_id_seq;
DROP TABLE public.djcelery_workerstate;
DROP SEQUENCE public.djcelery_taskstate_id_seq;
DROP TABLE public.djcelery_taskstate;
DROP TABLE public.djcelery_periodictasks;
DROP SEQUENCE public.djcelery_periodictask_id_seq;
DROP TABLE public.djcelery_periodictask;
DROP SEQUENCE public.djcelery_intervalschedule_id_seq;
DROP TABLE public.djcelery_intervalschedule;
DROP SEQUENCE public.djcelery_crontabschedule_id_seq;
DROP TABLE public.djcelery_crontabschedule;
DROP SEQUENCE public.djangoratings_vote_id_seq;
DROP TABLE public.djangoratings_vote;
DROP SEQUENCE public.djangoratings_similaruser_id_seq;
DROP TABLE public.djangoratings_similaruser;
DROP SEQUENCE public.djangoratings_score_id_seq;
DROP TABLE public.djangoratings_score;
DROP SEQUENCE public.djangoratings_ignoredobject_id_seq;
DROP TABLE public.djangoratings_ignoredobject;
DROP SEQUENCE public.django_site_id_seq;
DROP TABLE public.django_site;
DROP TABLE public.django_session;
DROP SEQUENCE public.django_content_type_id_seq;
DROP TABLE public.django_content_type;
DROP SEQUENCE public.django_comments_id_seq;
DROP TABLE public.django_comments;
DROP SEQUENCE public.django_comment_flags_id_seq;
DROP TABLE public.django_comment_flags;
DROP SEQUENCE public.django_admin_log_id_seq;
DROP TABLE public.django_admin_log;
DROP TABLE public.comments_commentwithrating;
DROP SEQUENCE public.celery_tasksetmeta_id_seq;
DROP TABLE public.celery_tasksetmeta;
DROP SEQUENCE public.celery_taskmeta_id_seq;
DROP TABLE public.celery_taskmeta;
DROP SEQUENCE public.catalog_urltype_id_seq;
DROP TABLE public.catalog_urltype;
DROP SEQUENCE public.catalog_urlimage_id_seq;
DROP TABLE public.catalog_urlimage;
DROP SEQUENCE public.catalog_url_id_seq;
DROP TABLE public.catalog_url;
DROP SEQUENCE public.catalog_updatefrequency_id_seq;
DROP TABLE public.catalog_updatefrequency;
DROP SEQUENCE public.catalog_resource_id_seq;
DROP SEQUENCE public.catalog_resource_data_types_id_seq;
DROP TABLE public.catalog_resource_data_types;
DROP SEQUENCE public.catalog_resource_counties_id_seq;
DROP TABLE public.catalog_resource_counties;
DROP SEQUENCE public.catalog_resource_coord_sys_id_seq;
DROP TABLE public.catalog_resource_coord_sys;
DROP SEQUENCE public.catalog_resource_cities_id_seq;
DROP TABLE public.catalog_resource_cities;
DROP SEQUENCE public.catalog_resource_categories_id_seq;
DROP TABLE public.catalog_resource_categories;
DROP TABLE public.catalog_resource;
DROP SEQUENCE public.catalog_division_id_seq;
DROP TABLE public.catalog_division;
DROP SEQUENCE public.catalog_department_id_seq;
DROP SEQUENCE public.catalog_department_divisions_id_seq;
DROP TABLE public.catalog_department_divisions;
DROP TABLE public.catalog_department;
DROP SEQUENCE public.catalog_datatype_id_seq;
DROP TABLE public.catalog_datatype;
DROP SEQUENCE public.catalog_county_id_seq;
DROP SEQUENCE public.catalog_county_cities_id_seq;
DROP TABLE public.catalog_county_cities;
DROP TABLE public.catalog_county;
DROP SEQUENCE public.catalog_coordsystem_id_seq;
DROP TABLE public.catalog_coordsystem;
DROP SEQUENCE public.catalog_city_id_seq;
DROP TABLE public.catalog_city;
DROP SEQUENCE public.catalog_category_id_seq;
DROP TABLE public.catalog_category;
DROP SEQUENCE public.auth_user_user_permissions_id_seq;
DROP TABLE public.auth_user_user_permissions;
DROP SEQUENCE public.auth_user_id_seq;
DROP SEQUENCE public.auth_user_groups_id_seq;
DROP TABLE public.auth_user_groups;
DROP TABLE public.auth_user;
DROP SEQUENCE public.auth_permission_id_seq;
DROP TABLE public.auth_permission;
DROP SEQUENCE public.auth_group_permissions_id_seq;
DROP TABLE public.auth_group_permissions;
DROP SEQUENCE public.auth_group_id_seq;
DROP TABLE public.auth_group;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


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
23	pbkdf2_sha256$10000$l1jYuAFYYLi4$L0lvXzJeaFPRaEbxMhrZENL6xA1K5QrpRPzVD5hBZEI=	2013-10-19 19:44:36.420571+00	f	amulyau			amulyau@live.unc.edu	t	t	2013-10-04 15:15:19+00
3	pbkdf2_sha256$10000$nahvdz7S9fiH$YtnSLBW3TeqlgWAAACgGV9PgrNME1YjtkLGPn9ZId00=	2013-08-15 16:44:24.045565+00	t	ben				t	t	2013-08-15 16:40:30+00
9	pbkdf2_sha256$10000$1c6lAZRauJu9$oPQXlTgNsOIf82RT5rlKWu2zEKXIGEhpJpvAGjraNxc=	2013-09-23 00:00:28.446798+00	f	dajones716			dajones716@gmail.com	f	t	2013-09-23 00:00:27.992044+00
10	pbkdf2_sha256$10000$n3jDzQiN6ujp$ZGVxG/yZrFdP0TbYSb1BtM1bJtMslSuOsMXhQXkVyX0=	2013-09-23 00:00:49.608464+00	f	stacic			stacic@live.unc.edu	f	t	2013-09-23 00:00:49.094415+00
4	pbkdf2_sha256$10000$u4QJHSJyiu7M$zmnh9zGRj5oNcpk14yDtkIUMMSDhmmUrC6mTv/L/CuY=	2013-08-16 14:51:30.866763+00	t	copelco				t	t	2013-08-15 17:13:26+00
25	pbkdf2_sha256$10000$LffsjDtoYrze$6K4HLCAMj/mEsZgpCoNFrV5S5Enj6IUcV4J2DetQGKU=	2013-10-13 19:11:57.267162+00	f	PSel	Paula	Seligson	PaulaSeligson@gmail.com	f	t	2013-10-13 19:11:36.687271+00
11	pbkdf2_sha256$10000$qhmineokapk3$OSNWJ+lZ2Wk7r7Ta4dHPheUBI8xwoNYwgOe/0mE0mU0=	2013-09-26 15:49:04.284114+00	f	cmhayes			cmhayes09@yahoo.com	f	t	2013-09-26 15:48:43.376812+00
19	pbkdf2_sha256$10000$nV9iucslUKVt$ajRX1zXElS3vdJsBsNF72DQXYZS3SbvSki4ox44YaVM=	2013-10-20 00:32:59.506324+00	f	emmann	Emily	Mann	emmaelizabethmann@gmail.com	t	t	2013-10-04 14:07:29+00
20	pbkdf2_sha256$10000$4S1rRqY4w86e$aPud76qe9sU6vS+uXI3aoLLeA5IVVT9no2aF6WtND2g=	2013-10-20 21:42:50.063476+00	f	wendylu92	Wendy	Lu	wendylu@live.unc.edu	t	t	2013-10-04 14:10:14+00
7	pbkdf2_sha256$10000$jecsEdw8S5nv$qcZkmKArt6sENJrA5lyEdfk12wFniKLpuF1+LcBllY0=	2013-10-28 04:22:11.922882+00	f	Andrew.Stern	Andrew	Stern	ajs222@live.unc.edu	t	t	2013-08-30 15:43:33+00
5	pbkdf2_sha256$10000$iFfzthS1AW5M$zC7/xALNfqsSfiZZH/Nwld/0NOOFf933z7PQQ6YKNh8=	2013-08-21 16:49:06.931402+00	f	ryan_thornburg			ryan_thornburg@yahoo.com	t	t	2013-08-21 15:38:33+00
8	pbkdf2_sha256$10000$3sg24pPywxcS$2gubvO/7jHud1D+as6NJJP8hhmyGwHnqXnxf5Zpvuo4=	2013-09-12 17:12:20+00	f	mtdukes	Tyler	Dukes	tyler.dukes@gmail.com	f	t	2013-09-12 17:12:19+00
2	pbkdf2_sha256$10000$RRi9hgeu4nFC$+ogzFt9Fv0iinqS/BnmQFVN6Z2Od0i/a98osisjArzk=	2013-11-10 21:38:50.876732+00	t	ryan	Ryan	Thornburg	ryan.thornburg@unc.edu	t	t	2013-08-14 18:10:26+00
14	pbkdf2_sha256$10000$YU4dh8ckEBTI$d4tPprLt1eW14v1o6T+n/NLxBN5cXSB04E1D3Vifwj4=	2013-10-01 03:51:35.736338+00	f	rtburg			ryan.thornburg@unc.edu	f	t	2013-10-01 03:51:35.212656+00
16	pbkdf2_sha256$10000$p40AwsTV9jn3$VHaq/xBr0HaX1FPZGuOMfaSbsIKL5dm98WsqjWqkJ6M=	2013-10-04 14:20:41+00	f	jmoroney	Julie	Moroney	juliecmoroney@gmail.com	t	t	2013-10-04 14:06:25+00
21	pbkdf2_sha256$10000$OSDJIxXUAHje$qerbpXLX3jlm04akujpXy5XhERAty3tfhGrUR5tIEo8=	2013-10-04 14:20:07+00	f	jrskennedy	Jessica	Kennedy	jessicarskennedy@gmail.com	t	t	2013-10-04 14:17:20+00
17	pbkdf2_sha256$10000$EASpUoaf5aRf$k1/lhvARLP3vn7f2jG1rgrghPZRulmtnsdpWSoKN66Y=	2013-10-04 14:20:25.529857+00	f	rharms93	Robbie	Harms	rharms93@gmail.com	t	t	2013-10-04 14:06:40+00
12	pbkdf2_sha256$10000$gXP59Zncn1If$e2NdhlE4ZL7gin+FxR4DHa3UaSWEDY0uBX7IZ3x7yNE=	2013-10-02 19:43:36.306139+00	f	bennc			benr@caktusgroup.com	f	t	2013-09-27 13:49:56.42921+00
26	pbkdf2_sha256$10000$HoOxkPsOEqOH$lQHF/enHsjdAhdIJVg9jT8KB+9vQBLKcbPG5wpmZyzg=	2013-10-15 15:37:43.607918+00	f	JennaJ92	Jenna	Jordan	jenna.jrdn@gmail.com	t	t	2013-10-15 15:36:00+00
18	pbkdf2_sha256$10000$iZf2lFNPumrb$w3nxGzlpHdZOA9gjtGyh/pscJH9LFgV1c5F9QwoOg5c=	2013-10-18 19:39:24.989649+00	f	castrora			jessicacastrorappl@gmail.com	t	t	2013-10-04 14:06:45+00
22	pbkdf2_sha256$10000$lGYypw3Njyym$Ke0eaKD4I7TNN2l/QVeZXMvrBQnMOKhXg2rQ2pEIhl8=	2013-10-18 21:44:53.282364+00	f	paris_alston	Paris	Alston	pcalston@live.unc.edu	t	t	2013-10-04 15:00:17+00
1	pbkdf2_sha256$10000$LOiZ6YuhscME$SG15ZY9KwC0blmqEFrtd7MdCNwlXK2bKHq/eIXU/UEk=	2013-10-19 03:07:29.020669+00	t	vrocha			vrocha@caktusgroup.com	t	t	2013-08-14 18:02:14.847135+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
2	5	1
4	7	1
5	20	1
6	17	1
10	18	1
12	23	1
13	22	1
14	19	1
15	16	1
16	21	1
17	26	1
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 17, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_user_id_seq', 26, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
1	7	72
2	7	71
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
7	Davie County Real Property Tax Data	real-property-tax-data	ArcGIS geodatabase of property data, including sales	\N			"Each geodatabase consists of a polygon layer(bitek_view_fc) and (5) tables(buildings, building sub ‐ areas, sale, land, and obxf). The records in each table are related to the parcel polygons through a Parcelid field. In this way, the parcels can be viewed on the map, and each table can be opened and queried for specific data like number of bedrooms, number of bathrooms, year built, etc... The geodatabase was selected as the preferred method of distributing the data in order to preserve the one ‐ to ‐ many relationship between parcel polygons and the appraisal data. In addition, the Appraisal Manual is also available for download. The manual lists code values and descriptions for the content in the appraisal tables."	336 ‐ 753 ‐ 6056	john.gallimore @ co.davie.nc.us	http://www.daviecountync.gov/index.aspx?NID=322	3		t	2	2	2013-08-22 00:36:31.880534+00	2013-10-01 03:21:35.525868+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		105	359	2013-08-21	\N
4	DHHS Restaurant Inspections	dhhs-restaurant-inspections	Spreadsheet of restaurant inspections in all counties.	\N			The state Department of Health and Human Services has an Oracle database called BETS. \r\n\r\nAt the department's discretion it posts to the Web two tab-delimited .ttx files that contain a subset of the data within BETS. \r\n\r\nEach month the file receives a new, unique name based on the date. The file names that contain the string "Part1" contain data about the restaurants themselves. The files with "Part2" in the name includes information about the inspection events. Each row in the file is an individual inspection item, so there may be several rows for a single inspection if there were multiple point deductions at that inspection.\r\n\r\n	919-855-4816	kevin.howell@dhhs.nc.gov	http://ehs.ncpublichealth.com/	4		t	2	2	2013-08-21 23:40:47.941955+00	2013-08-21 23:44:56.332118+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	state		40	218	2013-03-12	2009-05-28
5	N.C. Master Addresses Dataset	nc-master-addresses-dataset	"the best available representation of situs addresses and their location"	\N			"The NC Master Address Dataset represents a compilation of the best available representation of situs addresses and their location. CGIA contacted county and municipal governments to acquire this information, and insight on how each local jurisdiction manages address assignment and maintenance."\r\n\r\n"The NC Master Address Dataset products are available in the Census Master Address File (MAF) file format (a pipe delimited ASCII file) and as shapefile in a GIS-ready form. The state has been broken into ten regions to accommodate the volume of data. "\r\n\r\n	(919) 754-6580	tim.johnson@nc.gov	http://www.cgia.state.nc.us/ContactUs/tabid/72/Default.aspx	5		t	2	2	2013-08-21 23:59:13.738598+00	2013-08-21 23:59:13.739374+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	state		104	358	2009-10-31	2009-10-31
11	Belmont Police Reports	belmont-police-reports	Database to request police reports for Belmont, NC	\N			Searchable database from the Belmont Police Department. You can search by report number, date, or victim's name. Each report costs money and is available via .pdf download.	(704) 829-4018		http://www.cityofbelmont.org/ContactUs.aspx	1		t	7	2	2013-09-15 22:46:58.437306+00	2013-10-01 03:03:18.985882+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			1	1	city		21	\N	2013-09-15	2008-01-01
12	Crime Mapping App	crime-mapping-app	Interactive maps showing incidents and arrests graphically with brief descriptions	\N			Crimereports.com allows participating cities and towns to graphically display the location and type of crime overlaid on top of a map.				1		f	7	2	2013-09-22 21:11:07.477362+00	2013-10-01 02:37:28.35136+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	360	2013-09-22	2013-09-22
8	Chapel Hill Police Reports	police-reports	Incident, arrest and accident	\N			The RMS of the Chapel Hill Police Department contains information about arrests, incidents and accidents. The name of the database is the ONESolution Records Management System and the vendor is SunGard Public Sector. \r\n\r\nThe website allows visitors to search accidents, incidents and arrests. Results of report index information are returned in HTML format with links to PDF versions of the paper reports. PDFs of accident reports are not available online.	919-968-2760	kgunter@townofchapelhill.org	http://www.ci.chapel-hill.nc.us/index.aspx?page=668	1		t	2	2	2013-08-22 01:14:12.276525+00	2013-10-01 03:21:16.071583+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-08-21	2011-08-31
9	Winston-Salem Police Reports	police-reports	Incident, arrest and accident reports	\N			The Winston-Salem police department provides a web search application to find incident and arrest reports. It is "powered by Sungard Public Sector OSSI 's P2C engine."	(336)773-7700		http://www.cityofws.org/departments/police	1		t	2	2	2013-09-06 18:55:32.435494+00	2013-10-01 03:21:09.298368+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			1	5	city		21	\N	2013-09-06	2007-12-06
6	Statewide Corporations List	corporations-list	Daily list of new corporations registered with the Secretary of State	\N			This web search form can be used to query the N.C. Secretary of State's database of corporations and retrieve up to a year's worth of records. The results can be downloaded in a tab-delimited zipped text file.\r\n\r\nData includes the corporation name, date of incorporation, registrant's name and address, principle's name and address, whether it is foreign or domestically controlled, and the type of corporation. It does not include information about the actual physical location of the corporations or the types of industries they are in.	919-807-2225		http://www.secretary.state.nc.us/corporations/	1		t	2	2	2013-08-22 00:16:29.691688+00	2013-10-01 03:21:58.850403+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	state		28	4	2013-08-21	1929-08-24
2	Columbus County Land Parcels	parcels	Parcel data for Columbus County	\N			Parcel data for Columbus County				2		f	4	2	2013-08-16 15:04:33.743972+00	2013-10-01 03:22:16.582758+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			1	2	county		36	127	\N	\N
1	Columbus County Property Sales	property-sales	Property sales in Columbus County	\N			Property sales in Columbus County				1		t	4	2	2013-08-16 14:56:13.332506+00	2013-10-01 03:22:35.517257+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	\N	\N
105	Wake Forest Police Records	wake-forest-police-records	Searchable web app of incident reports for Wake Forest	\N			This data set contains a searchable web app of incident reports from Wake Forest. You can search for accidents, incidents, or arrests and search by date, name, and location. 				1		t	16	16	2013-10-18 03:43:46.194476+00	2013-10-18 03:43:46.195239+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-17	1991-11-19
18	Iredell County Food Establishment Inspections	iredell-county-food-establishment-inspections	Food safety inspections of restaurants in Iredell County, N.C.	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.\r\n\r\nThe third page shows a description of each specific violation, along with the inspector's comments. Each violation includes a "violation item" number and the number of points deducted for each violation.	(704) 878-5358		http://www.co.iredell.nc.us/Departments/Health/EVHealth/	1		t	20	20	2013-10-04 15:26:52.75744+00	2013-10-04 15:26:52.758376+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2009-04-16
10	Winston-Salem Police Warrants	warrants	List of people wanted by the Winston-Salem Police	\N			The Winston-Salem Police keep a running list of people who are wanted for failure to appear, for arrest, and for other reasons. Includes the person's name, race, gender, age, charge, home address and "paper type." The site says this list may include the names of people who've already been served by other agencies. To access a more scrapeable list, click on the "Show all wanted" list in the upper right corner of the page. 	(336)773-7700		http://www.cityofws.org/departments/police	1		t	2	2	2013-09-06 19:20:20.690477+00	2013-10-01 03:20:48.879127+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-09-06	2013-09-06
14	Jackson County Food Establishment Inspections	jackson-county-food-establishment-inspections	Health department food inspections	\N			Webpage allows users to search for county health department inspections of restaurants and other food establishments by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Click on "inspections" to see details about specific times that inspectors graded the restaurant.\r\n\r\nSecond page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Click on "violations" to see further details about specific violations found during each inspection.\r\n\r\nThird page shows a description of each specific violation, along with the inspector's comments. Each violation includes a "violation item" number and the number of points deducted for each violation.	(828) 586-8994	jaimedellinger@jacksonnc.org	http://health.jacksonnc.org/	1		t	21	21	2013-10-04 15:14:57.400403+00	2013-10-07 17:33:24.348542+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2010-07-06
15	Lincoln County Food Establishment Inspections	lincoln-county-food-establishment-inspections	Food safety inspections for establishments in Lincoln County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.\r\n\r\nThe third page shows a description of each specific violation, along with the inspector's comments. Each violation includes a "violation item" number and the number of points deducted for each violation.	(704) 736-8426		http://www.lincolncounty.org/index.aspx?NID=451	1		t	16	16	2013-10-04 15:15:31.908544+00	2013-10-04 15:21:57.986059+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2005-10-01
16	Madison County Food Establishment Inspections	madison-county-public-health-inspections	Inspections of food establishments in Madison County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant.\r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.\r\n\r\nThe third page shows a description of each specific violation, along with the inspector's comments. Each violation includes a "violation item" number and the number of points deducted for each violation.				1		t	18	18	2013-10-04 15:16:28.085907+00	2013-10-04 15:22:26.293169+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-09-30	2005-05-25
19	McDowell County Food Establishment Inspections	mcdowell-county-food-establishment-inspections	Inspections of food establishments in McDowell County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant.\r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.\r\n\r\nThe third page shows a description of each specific violation, along with the inspector's comments. Each violation includes a "violation item" number and the number of points deducted for each violation.				1		t	18	18	2013-10-04 15:27:58.192987+00	2013-10-04 15:27:58.194019+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-09-30	2000-10-18
72	Pitt County Food Establishment Inspections	pitt-county-food-establishment-inspections	Health Department inspections for Pitt County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. It explains the different inspection categories, techniques and ratings. Users can search by establishment name.\r\n\r\nThe inspection report - which can be accessed by simply clicking on the establishment name - shows the inspection date, score and frequency, and the type and number of violations. 	252.902.3200	http://www.pittcountync.gov/apps/email/?address=pittinfo	http://www.pittcountync.gov/apps/email/?address=pittinfo	2		t	17	17	2013-10-08 23:11:01.922666+00	2013-10-08 23:21:19.878293+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2010-11-30
110	Onslow County GIS	onslow-county-gis	Property records for Onslow County	\N			Onslow County offers both an interactive online map and downloadable GIS data. Data downloads include address points, parcel lines, etc. With the interactive map, users can search parcels by owner, map number, PARID, NC PIN, or deed book and page. Users can also navigate with the map and select a parcel using the "Identify Map Layers" tool in the top left box. The map provides parcel information such as owner name, address, value, and acreage.	910.937.1190			\N		t	18	18	2013-10-18 20:17:13.762076+00	2013-10-18 20:18:12.446943+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	359	2013-10-18	\N
17	Macon County Food Establishment Inspections	macon-county-food-establishment-inspections	Macon County health department inspections	\N			What it is:\r\n- Web page that allows users to search for county health department inspections of restaurants and other food establishments\r\n- Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nDetails: \r\n- First page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n- The second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.\r\n- The third page shows a description of each specific violation, along with the inspector's comments. Each violation includes a "violation item" number and the number of points deducted for each violation.	(828) 349-2490	bpatterson@maconnc.org	http://www.maconnc.org/environmental-food.html	1		t	17	17	2013-10-04 15:25:34.317298+00	2013-10-04 15:43:50.934384+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2006-07-05
80	Granville County GIS	granville-county-gis	Property data for Granville County	\N			Granville County offers both an interactive map and GIS data downloads. Downloads include parcels, streets and roads, place names, etc. In the interactive map, users can click "Tasks" and then "Attribute Query" in the top right corner of the screen to search for properties by a variety of fields, including owner name, address, and sale price. Users can also navigate with the map and select properties using the "identify" tool in the top toolbar. By clicking "PRC" on the right side of the screen, users can access the selected property's property card. The service provides information such as owner name, address, real value, and sale price.				\N		t	18	18	2013-10-09 14:18:59.615929+00	2013-10-09 14:18:59.616688+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	2013-10-09	\N
106	Carrboro Police Records	carrboro-police-records	Bulletin of Carrboro police records from current week and past week	\N			This resource links to a list of bulletins from this week and the week before. The bulletins are PDF files containing the police records from specific days. The bulletin gives the case number, description, and officer relating to each specific police report. 				1		t	16	16	2013-10-18 03:54:04.537461+00	2013-10-18 03:54:04.538414+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-16	2013-10-08
107	Durham County GIS	durham-county-gis	Property records for Durham County	\N			Durham County offers both an interactive online map and downloadable GIS data.\r\n\r\nEach layer of downloadable GIS data costs money to access.\r\n\r\nUsers can search parcels using the interactive map by parcel number, address, and several other fields. Users can also navigate with the map and find information on parcels using the "identify" tool in the top left toolbar. The map offers data such as parcel ID, address, owner name, acreage, etc.	919.560.4122 (GIS Division)	gis@durhamnc.gov		\N		t	18	18	2013-10-18 19:48:11.526694+00	2013-10-18 19:48:22.562144+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	\N	\N
108	Gaston County GIS	gaston-county-gis	Property records for Gaston County	\N			Gaston County offers both an interactive online map and downloadable GIS data.\r\n\r\nThe downloadable data costs money to access. Users can contact IT GIS using the contact information provided below for information and pricing on GIS data.\r\n\r\nIn the interactive map, users can search by parcel number, owner name, address, and several other fields. Users can also navigate with the map and select parcels using the "Identify Parcel" tool in the top toolbar. The map provides information on parcels such as owner name, acreage, total value, etc.	704.810.5820	gis@co.gaston.nc.us		\N		t	18	18	2013-10-18 20:00:46.001756+00	2013-10-18 20:00:46.00251+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	\N	\N
111	Cabarrus County GIS	cabarrus-county-gis	Property records for Cabarrus County	\N			Cabarrus County offers both an interactive online map and downloadable GIS data. Data downloads are in Shapefile format and include addresses, county zoning, park areas, etc. In the interactive map, users can search parcels by owner name, address, and property ID number. Users can also navigate with the map and select parcels by clicking on them. The map provides information such as owner name, address, property value, and sale records.				\N		t	18	18	2013-10-18 20:25:28.704794+00	2013-10-18 20:25:28.705541+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	359	2013-10-18	\N
20	Lee County Food Establishment Inspections	lee-county-food-establishment-inspections	Health Department inspections for Lee County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.\r\n\r\nAs of October 3, 2013, it has not the web page has not been updated 2009. \r\n	(919) 718-4641	hcain@leecountync.gov	http://leecountync.gov/Departments/PublicHealth/EnviromentalHealth.aspx	5		t	19	19	2013-10-04 15:35:48.007844+00	2013-10-04 22:05:15.198249+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2009-06-18	2006-03-31
22	Wake County Restaurant and Sanitation Inspections	wake-county-restaurant-and-sanitation-inspections	Health Department inspections for Wake County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, address, city, zip code, establishment type, inspection type, violations, score range, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on the name of the restaurant to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the location of the establishment, the establishment type, the total score, and the specific violations. Users can download specific reports by clicking on "Inspection". 	919-856-7400	apierce@wakegov.com	http://www.wakegov.com/food/Pages/default.aspx	1		t	19	19	2013-10-04 22:15:35.60528+00	2013-10-04 22:15:35.60672+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	1994-01-20
23	Ashe County Food Establishment Inspections	ashe-county-food-establishment-inspections	Health Department inspections for Ashe County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(336) 246-3356	info@apphealth.com	http://www.apphealth.com/locations/ashe/	1		t	19	19	2013-10-04 22:31:55.428349+00	2013-10-04 22:31:55.429194+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-02	2013-05-24
24	Beaufort County Food Establishment Inspections	beaufort-county-food-establishment-inspections	Health Department inspections for Beaufort County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(252) 946-1902		http://www.bchd.net/services/environmental-health/	1		t	19	19	2013-10-04 22:43:08.538157+00	2013-10-04 22:43:08.539722+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2007-04-01
25	Bertie County Food Establishment Inspections 	bertie-county-food-establishment-inspections	Health Department inspections for Bertie County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(252) 794-5322	jparks@arhs-nc.org	http://www.arhs-nc.org/	1		t	19	19	2013-10-04 22:53:16.60029+00	2013-10-04 22:53:16.60124+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-09-25	2012-03-28
26	Alamance County Food Establishment Inspections	alamance-county-food-establishment-inspections	Health Department inspections for Alamance County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	336-570-6367	carl.carroll@alamance-nc.com	http://www.alamance-nc.com/d/environmental-health.html	1		t	19	19	2013-10-04 22:59:57.693947+00	2013-10-04 22:59:57.694676+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2005-12-20
75	Henderson County Food Establishment Inspections	henderson-county-food-establishment-inspections	Health Department inspections for Pender County	\N			These web pages that open as PDF files - one for restaurant grades and another for food stand grades - give establishment names, inspection dates and scores for restaurants and other food establishments in Henderson County. \r\n\r\nThe data ranges from April to June 2013.	(828) 692-4223			5		t	17	17	2013-10-08 23:31:36.457506+00	2013-10-08 23:31:36.458265+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-06-26	2013-04-01
81	Greene County GIS Data Downloads	greene-county-gis-data-downloads	Property data for Greene County	\N			Greene County offers downloadable GIS data, including boundaries, taxparcels, roads, etc. 	252.747.4398 (Rich Elkins, Greene Co. GIS Coord.)	relkins@co.greene.nc.us		\N		t	18	18	2013-10-09 14:25:14.740436+00	2013-10-09 14:25:14.741242+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	2012-01-20	\N
27	Alleghany County Food Establishment Inspections	alleghany-county-food-establishment-inspections	Health Department inspections for Alleghany County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	412-687-2243		http://www.achd.net/newweb/environmental.html	1		t	19	19	2013-10-04 23:05:00.362971+00	2013-10-04 23:09:08.088692+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-01	2013-06-06
28	Catawba County Food Establishment Inspection	catawba-county-food-establishment-inspection	Food safety inspections for Catawba County establishments	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.\r\n\r\nThe third page shows a description of each specific violation, along with the inspector's comments. Each violation includes a "violation item" number and the number of points deducted for each violation.	(828) 465-8258	scarpenter@catawbacountync.gov	http://www.catawbacountync.gov/Environmentalhealth/	1		t	16	16	2013-10-05 01:21:54.949646+00	2013-10-05 01:21:55.01137+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2007-01-01
29	Chatham County Food Establishment Inspections	chatham-county-food-establishment-inspections	Food safety inspections for Chatham County establishments	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.\r\n\r\nThe third page shows a description of each specific violation, along with the inspector's comments. Each violation includes a "violation item" number and the number of points deducted for each violation.		howard.surface@chathamnc.org	http://www.chathamnc.org/Index.aspx?page=542	1		t	16	16	2013-10-05 01:29:34.930903+00	2013-10-05 01:29:34.93163+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2007-03-01
30	Brunswick County Food Establishment Inspections	brunswick-county-food-establishment-inspections	Health Department inspections for Brunswick County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	910.253.2250	env-health@brunsco.net	http://www.brunswickcountync.gov/Departments/HealthRelated/EnvironmentalHealth.aspx	1		t	19	19	2013-10-05 01:57:15.829866+00	2013-10-05 01:57:15.830661+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2010-02-18
31	Camden County Food Establishment Inspections 	camden-county-food-establishment-inspections	Health Department inspections for Camden County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	252-338-4460		http://www.arhs-nc.org/	2		t	19	19	2013-10-05 02:35:57.365107+00	2013-10-05 02:35:57.365998+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-01	2012-08-03
32	Clay County Food Establishment Inspections 	clay-county-food-establishment-inspections	Health Department inspections for Clay County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(828) 389-8052	clayhd@clayhdnc.us	http://www.clayhdnc.us/	1		t	19	19	2013-10-05 02:54:02.586142+00	2013-10-05 02:54:02.586904+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2007-07-05
33	Craven County Food Establishment Inspections	craven-county-food-establishment-inspections	Health Department inspections for Craven County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(252) 636-4936	envhealth@cravencountync.gov	http://www.cravencounty.com/departments/hth/env/fli/flimain.cfm	1		t	19	19	2013-10-05 03:02:02.737532+00	2013-10-05 03:02:02.738291+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2009-09-10
34	Cumberland County Food Establishment Inspections	cumberland-county-food-establishment-inspections	Health Department inspections for Cumberland County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	910-433-3622		http://www.co.cumberland.nc.us/health/services/environmental.aspx	1		t	19	19	2013-10-05 03:11:32.665026+00	2013-10-05 03:11:32.665769+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2011-02-25
36	Dare County Food Establishment Inspections	dare-county-food-establishment-inspections	Health Department inspections for Dare County 	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	252.475.5092	jackf@darenc.com	http://www.darenc.com/health/enviro.asp	1		t	19	19	2013-10-05 03:38:51.153473+00	2013-10-05 03:38:51.154283+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-02	2007-12-05
37	Davidson County Food Establishment Inspections	davidson-county-food-establishment-inspections	Health Department inspections for Davidson County 	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	336-242-2300		http://www.dchdnc.com/Environmental%20Health.html	1		t	19	19	2013-10-05 03:47:05.696639+00	2013-10-05 03:47:05.697512+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2006-03-08
38	Davie County Food Establishment Inspections	davie-county-food-establishment-inspections	Health Department inspections for Davie County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(336) 753-6780	Tracie.Lakey@co.davie.nc.us	http://www.daviecountync.gov/index.aspx?NID=153	1		t	19	19	2013-10-05 03:51:40.15433+00	2013-10-05 03:51:40.155163+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2007-09-25
39	Duplin County Food Establishment Inspections	duplin-county-food-establishment-inspections	Health Department inspections for Duplin County 	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(910) 296-2104		http://www.duplincounty.org/dcp_health_envh.htm	1		t	19	19	2013-10-05 03:59:24.764894+00	2013-10-05 03:59:24.765662+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-02	2013-02-28
40	Durham County Food Establishment Inspections	durham-county-food-establishment-inspections	Health Department inspections for Durham County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(919) 560-7800	healthinspector@dconc.gov	http://dconc.gov/index.aspx?page=800	1		t	19	19	2013-10-05 04:05:18.812902+00	2013-10-05 04:05:18.81365+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2004-04-24
78	City of Winston-Salem/Forsyth County GIS Data Download	test	Property records for Winston-Salem/Forsyth County	\N			The City of Winston-Salem and Forsyth County offer downloadable GIS data, including street centerlines, tax parcels, tax record polygons, zoning districts, etc.			http://www.cityofws.org/departments/planning/gis/gis-contact-us	4		t	18	18	2013-10-09 13:43:17.611665+00	2013-10-09 13:46:29.46902+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	2013-03-17	2005-02-01
82	Halifax County Property Records	halifax-county-property-records	Property records for Halifax County	\N			Halifax County offers both downloadable GIS data and a property search tool which leads to an interactive online map. The GIS data is bundled into a single ZIP file that includes parcel and road data. With the property search tool, users can search properties by address, owner name, parcel number, etc. Users can also "search by map," which directs to an interactive map. Users can navigate with the map and select properties using the "Get Info" tool in the top toolbar. The service provides information such as owner name, address, assessed land value, and assessed building value.	252.583.2121 (Halifax Co. Tax Office)	hawkinsd@halifaxnc.com (Doris Hawkins, GIS Coord.)		2		t	18	18	2013-10-09 14:38:49.623338+00	2013-10-09 14:38:49.624144+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		106	\N	2013-10-05	\N
41	Forsyth County Food Establishment Inspections	forsyth-county-food-establishment-inspections	Health Department inspections for Forsyth County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(336) 703-3225		http://www.co.forsyth.nc.us/publichealth/environmentalhealth/	1		t	19	19	2013-10-05 04:11:54.733034+00	2013-10-05 04:11:54.733779+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-02	2001-01-04
42	Mecklenburg County Food Establishment Inspections	mecklenburg-county-food-establishment-inspections	Health Department inspections for Mecklenburg County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	704-336-7600		http://charmeck.org/mecklenburg/county/healthdepartment/environmentalhealth/Pages/Default.aspx	1		t	19	19	2013-10-05 12:42:02.670562+00	2013-10-05 12:42:02.671375+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2013-03-05
43	Guilford County Food Establishment Inspections	guilford-county-food-establishment-inspections	Health Department inspections for Guilford County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	336.641.3771 		http://www.co.guilford.nc.us/gheh_cms/	1		t	19	19	2013-10-05 12:49:11.747231+00	2013-10-05 12:49:11.748016+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	1998-05-23
35	Currituck County Food Establishment Inspections	currituck-county-food-establishment-inspections	Health Department inspections for Currituck County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	252-232-2271		http://www.arhs-nc.org/	2		t	19	19	2013-10-05 03:31:05.008279+00	2013-10-05 12:49:31.202786+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-09-26	2012-06-20
44	Gaston County Food Establishment Inspections	gaston-county-food-establishment-inspections	Health Department inspections for Gaston County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	704-853-5200		http://www.gastongov.com/departments/health/environmental-health	1		t	19	19	2013-10-05 12:56:33.413264+00	2013-10-05 12:56:33.414005+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2001-11-13
45	Gates County Food Establishment Inspections	gates-county-food-establishment-inspections	Health Department inspections for Gates Couny	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	252-357-1380		http://www.arhs-nc.org/	2		t	19	19	2013-10-05 13:02:52.359646+00	2013-10-05 13:02:52.360427+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-09-26	2012-09-09
79	Gates County GIS	gates-county-gis	Property data for Gates County	\N			Gates County offers both an interactive map and downloadable GIS data. Downloads include roads, zoning, parcels, and parlines.\r\n\r\nTo search for a property using the interactive map, users can use the "attribute query" box on the right side of the screen to choose which field to search in (such as owner name or address) and type in their search term in the "attribute value" section. Users can also navigate with the map to choose a property and can find information about that property using the "identify" tool in the top toolbar. The service offers information such as owner name, address, sale date, and total value. By clicking "Get PRC" on the right side, users can access the property's property card.				\N		t	18	18	2013-10-09 14:02:58.035828+00	2013-10-09 14:02:58.036612+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	2013-03-08	\N
83	Johnston County Food Establishment Inspections	johnston-county-food-establishment-inspections	Health Department inspections for Johnston County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, address, city, type, zipcode, and violations. \r\n\r\nThe inspection report - which can be accessed by simply clicking on the establishment name - shows the inspection date, score and frequency, and the type and number of violations. 	Phone: (919) 989-5200	health_dept@johnstonnc.com	http://johnston.nc.gegov.com/contact.cfm	1		t	17	17	2013-10-10 04:18:55.544261+00	2013-10-10 04:18:55.545031+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-09	1993-01-05
46	Harnett County Food Establishment Inspections	harnett-county-food-establishment-inspections	Health Department inspections for Harnett County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	910-893-7547	gbyrd@harnett.org	http://www.harnett.org/health/environmental-health.asp	1		t	19	19	2013-10-05 19:00:29.998834+00	2013-10-05 19:00:52.407635+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-02	2007-07-02
47	Northampton County Food Establishment Inspections 	northampton-county-food-establishment-inspections	Health Department inspections for Northampton County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(252) 534-5841 (ext) 619		http://www.northamptonhd.com/index.php?option=com_alphacontent&view=alphacontent&Itemid=115	5		t	19	19	2013-10-05 19:12:45.635631+00	2013-10-05 19:12:45.636411+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2011-05-24	2006-03-14
48	Polk County Food Establishment Inspections	polk-county-food-establishment-inspections	Health Department inspections for Polk County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(828) 894-8271		http://www.rpmhd.org/index.php/environmental-services	1		t	19	19	2013-10-05 19:20:20.186285+00	2013-10-05 19:20:20.187117+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	1996-12-18
49	Richmond County Food Establishment Inspections	richmond-county-food-establishment-inspections	Health Department inspections for Richmond County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(910) 997-8365	tommy.jarrell@richmondnc.com	http://www.richmondnc.com/dept_health.aspx	1		t	19	19	2013-10-05 19:25:49.430183+00	2013-10-05 19:25:49.430928+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2006-08-22
50	Robeson County Food Establishment Inspections	robeson-county-food-establishment-inspections	Health Department inspections for Robeson County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(910) 272-6560	William.smith@robeson.nc.gov 	http://publichealth.southernregionalahec.org/robeson/envir.html	1		t	19	19	2013-10-05 19:33:05.004918+00	2013-10-05 19:33:05.005789+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2006-09-05
51	Rowan County Food Establishment Inspections	rowan-county-food-establishment-inspections	Health Department inspections for Rowan County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	704-216-8525	Barbara.Ellis@rowancountync.gov	http://www.rowancountync.gov/GOVERNMENT/Departments/HealthDepartment/EnvironmentalHealth.aspx	1		t	19	19	2013-10-05 19:38:01.969213+00	2013-10-05 19:38:01.970001+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2009-01-06
52	Rutherford County Food Establishment Inspections	rutherford-county-food-establishment-inspections	Health Department inspections for Rutherford County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(828) 287-6100		http://www.rpmhd.org/index.php/environmental-services	1		t	19	19	2013-10-05 19:43:05.579413+00	2013-10-05 19:43:05.580223+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2001-04-09
109	Union County GIS	union-county-gis	Property records for Union County	\N			Union County offers both an interactive online map and downloadable GIS data. Downloadable data is available in Shapefile format and includes files such as roads, parcels, structures, etc. With the interactive map, users can search parcels by owner name, account number, address, road, etc. Users can also navigate with the map and double-click on parcels to learn more about them. The map offers parcel data such as owner name, tax value, sale records, etc.		gishelp@co.union.nc.us		\N		t	18	18	2013-10-18 20:09:17.622433+00	2013-10-18 20:09:17.623228+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	359	2013-09-17	\N
53	Scotland County Food Establishment Inspections	scotland-county-food-establishment-inspections	Health Department inspections for Scotland County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	910-277-2415	inspections@scotlandcounty.org	http://www.scotlandcounty.org/inspections.aspx	1		t	19	19	2013-10-05 19:48:19.29785+00	2013-10-05 19:48:19.298731+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-09-30	2007-02-19
54	Stanly County Food Establishment Inspections	stanly-county-food-establishment-inspections	Health Department inspections for Stanly County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	704-986-3675	DEzzell@stanlycountync.gov	http://www.stanlycountync.gov/environmental-health/	1		t	19	19	2013-10-05 19:54:57.054073+00	2013-10-05 19:54:57.054836+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2012-12-06
55	Surry County Food Establishment Inspections	surry-county-food-establishment-inspections	Health Department inspections for Surry County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	336-401-8400	anges@co.surry.nc.us	http://www.surry.com/Food--Lodging-and-Institutional-Sanitation	\N		t	19	19	2013-10-05 20:02:24.434214+00	2013-10-05 20:02:24.434948+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	state		8	362	\N	\N
56	Watauga County Food Establishment Inspections	watauga-county-food-establishment-inspections	Health Department inspections for Watauga County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(828) 264-4995	info@apphealth.com	http://www.apphealth.com/environmental-health/	1		t	19	19	2013-10-05 20:09:20.727686+00	2013-10-05 20:09:20.72843+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2013-05-24
57	Wilkes County Food Establishment Inspections	wilkes-county-food-establishment-inspections	Health Department inspections for Wilkes County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(336) 651-7450		http://wilkeshealth.com/environmental-health/environmental-health-programs/	1		t	19	19	2013-10-05 20:15:15.667298+00	2013-10-05 20:15:15.668046+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-09-30	2008-02-04
58	Buncombe County Food Establishment Inspections	buncombe-county-food-establishment-inspections	Health Department inspections for Buncombe County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, address, city, zip code, establishment type, inspection type, violations, score range, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on the name of the restaurant to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the location of the establishment, the establishment type, the total score, and the specific violations. Users can download specific reports by clicking on "Inspection". 	828.250.5016	marc.fowler@buncombecounty.org	http://www.buncombecounty.org/Governing/Depts/Health/EnvironmentalHealth.aspx	1		t	19	19	2013-10-05 23:22:05.093555+00	2013-10-05 23:22:05.094425+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2002-07-01
59	Orange County Food Establishment Inspections 	orange-county-food-establishment-inspections	Health Department inspections for Orange County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	(919) 245-2360	cbridger@orangecountync.gov	http://www.co.orange.nc.us/envhlth/	1		t	19	19	2013-10-05 23:49:31.057896+00	2013-10-05 23:49:31.058647+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-04	2000-06-22
104	Morrisville Crime Records	morrisville-crime-records	Arrest records for Morrisville	\N			This data set contains arrest reports for Morrisville, provided by SpotCrime. You can search from crimes by city and enter your email to get updates. If you click on an individual record, the website will tell you the date, time, location, and charge of the arrest.				3		t	16	16	2013-10-18 03:16:13.333911+00	2013-10-18 03:19:19.185534+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-14	2013-08-07
60	Pasquotank County Food Establishment Inspections	pasquotank-county-food-establishment-inspections	Health Department inspections for Pasquotank County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	252-338-4400		http://www.arhs-nc.org/services/ehs/	2		t	19	19	2013-10-05 23:56:32.797497+00	2013-10-05 23:56:32.798251+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-09-27	2012-07-04
61	Pender County Food Establishment Inspections	pender-county-food-establishment-inspections	Health Department inspections for Pender County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	910-259-1499	cmoser@pendercountync.gov	http://www.pendercountync.gov/government/departments/healthdept/Programs/EnvironmentalHealth.aspx	1		t	19	19	2013-10-06 00:58:54.311981+00	2013-10-06 00:58:54.312744+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-03	2010-01-05
62	Perquimans County Food Establishment Inspections	perquimans-county-food-establishment-inspections	Health Department inspections for Perquimans County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.	252-426-2100		http://www.arhs-nc.org/services/ehs/	2		t	19	19	2013-10-06 01:29:10.757546+00	2013-10-06 01:29:10.758455+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-09-30	2012-08-02
64	Transylvania County Food Establishment Inspections	transylvania-county-food-establishment-inspections	Health department inspections of places that sell and distribute food in Transylvania County.	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.\r\n\r\nThe third page shows a description of each specific violation, along with the inspector's comments. Each violation includes a "violation item" number and the number of points deducted for each violation.	828-884-3135	steve.smith@transylvaniacounty.org	http://health.transylvaniacounty.org/	2		t	22	22	2013-10-06 19:22:25.536879+00	2013-10-06 19:22:25.537707+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-09-30	2007-05-24
65	Tyrrell County Food Establishment Inspections	tyrrell-county-food-establishment-inspections	Health Department inspections for Tyrrell County	\N			-News station web page containing restaurant ratings of establishments that sell and distribute food searchable by beginning letter of establishment name, date of inspection visit, zip code and county. Each listing includes grade, list of violations, and comments on the violation if applicable. \r\n\r\n-Additionally, this page contains videos of newscasts that go through sanitation ratings and reasons for ratings of various places that sell and distribute food searchable by date of newscast. Each video is detailed with food establishment location, health inspection grade, reasons for that grade being given, and grades that the establishment had received in previous months. This includes newscasts from 8/30/2013-10/4/2013.\r\n				3		t	22	22	2013-10-06 20:13:26.272901+00	2013-10-06 20:13:26.27383+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2012-08-13	2012-05-11
63	Cherokee County Food Establishment Inspections	cherokee-county-food-establishment-inspections	Food safety inspections for establishments in Cherokee County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant. \r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.\r\n\r\nThe third page shows a description of each specific violation, along with the inspector's comments. Each violation includes a "violation item" number and the number of points deducted for each violation.	828-835-3853		http://www.cherokeecounty-nc.gov/index.aspx?page=112	5		t	16	2	2013-10-06 17:14:37.730462+00	2013-10-14 16:58:27.498958+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2010-03-01	2006-01-01
71	Alexander County Property Sales	alexander-county-property-sales	Property sales in Alexander County	\N			Searchable map of property in Alexander County. Properties are searchable by owner name, PIN, parcel ID, and address. Properties are also selectable by navigating with the map. The app offers information such as acreage, building and land value, last sale date, and last sale price.				1		t	18	18	2013-10-08 16:25:41.624741+00	2013-10-14 19:03:34.090144+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	\N	\N
67	Cape Carteret Police Reports	cape-carteret-police-reports	Database to request police reports for Cape Carteret, NC	\N			Searchable database from the Cape Carteret Police Department. You can search by report number, date, or victim's name. Each report costs money and is available via .pdf download.	252-393-2183		http://www.townofcapecarteret.org/public-safety-home.html	5		t	21	21	2013-10-07 18:39:25.011157+00	2013-10-07 18:39:25.011961+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2011-09-20	2010-12-01
68	Cabarrus County Food Establishment Inspections	cabarrus-county-food-establishment-inspections	Health Department inspections for Cabarrus County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, score range, violation, and inspection date.\r\n\r\nIf the page is blank, the user can press "search" on the right side of the page, and the inspections for all of the restaurants and establishments in the county will appear. If the user searches by one of the criteria mentioned above, the site filters the results. 	704-920-1000		http://www.cabarrushealth.org/234/Contact	1		t	17	17	2013-10-07 20:10:21.16199+00	2013-10-07 20:10:21.162713+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-07	2004-06-25
69	Carteret County Food Establishment Inspections	carteret-county-food-establishment-inspections	Health Department inspections for Carteret County	\N			This PDF report has data on a number of restaurants, school lunchrooms, hotels, child-care centers, and more. \r\n\r\nIt gives the name of the facility, the date of the inspection, a number grade, and a letter grade. At the top, it explains what each of the grades mean and summarizes the inspection frequency for each type of facility. 	252.728.8499	EHcustomerservice@carteretcountygov.org	http://www.carteretcountyhealth.org/EH/	3		t	17	17	2013-10-07 20:28:40.46095+00	2013-10-07 20:28:40.461749+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-08-02	2010-05-17
70	Charlotte-Mecklenburg Police Reports 	charlotte-mecklenburg-police-records	Police reports for the Charlotte-Mecklenburg Police Department	\N			-Database from the Charlotte-Mecklenburg Police Department searchable by complaint number AND victim's last name. \r\n-Sexual assault, vice and narcotics, domestic violence, suicide crime reports are only available by phone contact.\r\n-Reports are in PDF format.	(704) 336-2848		http://cmpdcrime.policereports.us/index.html	1		t	22	22	2013-10-08 03:57:05.247231+00	2013-10-08 15:32:01.068857+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			1	3	city		21	\N	2013-10-07	\N
73	Buncombe County GIS	buncombe-county-gis	Property records for Buncombe County	\N			Buncombe County offers a web-based map application and downloadable data in both ShapeFile (ArcGIS) and HTML formats.\r\n\r\nThe "Access Full GIS" tab directs the user to a searchable map web application. Properties are searchable by PIN, owner, address, street, deed book/page, and plat book/page. Users can also navigate via the map. Once the user has located a property, clicking "property card" redirects to a page with information such as ownership history (purchase records) and assessment history.\r\n\r\nThe "Download Digital Data" tab allows users to download ShapeFiles of datasets such as election precincts, parcels, county zoning, etc. Users can also view HTML metadata.	828.250.6860	gishelp@buncombecounty.org		2		t	18	18	2013-10-08 23:16:37.779146+00	2013-10-08 23:16:37.7809+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	\N	\N
74	Currituck County Governmental Maps	currituck-county-governmental-maps	Property records for Currituck County	\N			Currituck County offers property data both in a web-based map format and as downloadable GIS data. With the interactive map, users can search properties by parcel ID number, global PIN, owner, address, street, subdivision, and sale information. Users can also select properties by navigating the map itself. The "identify" feature of the left-side toolbar allows users to pick properties from the map and view information about them. Currituck County also offers downloadable GIS parcel data and street centerline data. As of Oct. 8, 2013, the downloadable data had last been updated in April 2013.				\N		t	18	18	2013-10-08 23:30:09.164791+00	2013-10-08 23:30:09.166392+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	\N	\N
76	Davie County GIS Data Download	davie-county-gis-data-download	Property data for Davie County	\N			Davie County offers downloadable GIS data, including address points and driveways, municipal boundaries, school districts, etc. 				\N		t	18	18	2013-10-08 23:41:40.236572+00	2013-10-08 23:41:40.237386+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	\N	\N
66	Yadkin County Food Establishment Inspections	yadkin-county-food-establishment-inspections	Inspections of food establishments in Yadkin County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant.\r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.\r\n\r\nThe third page shows a description of each specific violation, along with the inspector's comments. Each violation includes a "violation item" number and the number of points deducted for each violation.	(336) 679-4203 	jwall@yadkincountync.gov	http://www.yadkincountync.gov/index.aspx?nid=90	2		t	23	23	2013-10-06 22:44:27.086867+00	2013-10-12 14:06:58.899132+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-08	2009-10-13
85	Durham County Sheriff Incidents	durham-county-sheriff-incidents	Limited information on limited set of recent incidents	\N			Durham County Sheriff  and Durham city Police and share two sites on which they produce incomplete records about incidents. \r\n\r\nOn the "Durham Crime Mapper" site, users can find some information about the following incident types:\r\n<p>\r\n* Arson\r\n* Assault\r\n* Burglary \r\n* Homicide\r\n* Larceny\r\n* Motor Vehicle Theft\r\n* Robbery\r\n* Rape\r\n<p>\r\nOn this site, the Sheriff department information does not include dates of incidents. Police data begins on Jan. 1, 2009 and appears to be updated daily. \r\n\r\nHTML tables include the following fields:\r\n* Date\r\n* Street address of incident\r\n* "General Type of Crime"\r\n* "Specific Category"\r\n* Incident Number\r\n\r\nThere is no arrest data.\r\n\r\nThe two agencies also post incident data to a website run by their RMS vendor, Bair Analytics, at http://www.raidsonline.com/?agency=Durham,NC. \r\n\r\nPolice information on this site is delayed by seven days. You can browse through a maximum of 500 records at a time. \r\n\r\nIt has one record from 1986, but doesn't appear to have more complete incident reports until about 2009.	919-560-7115	LACash@durhamsheriff.org	http://dconc.gov/index.aspx?page=475	2		t	2	2	2013-10-10 14:32:10.676683+00	2013-10-10 14:32:10.677445+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		5	\N	2013-10-03	2009-01-01
84	Durham Police Incidents	durham-police-incidents	Limited information on limited set of recent incidents	\N			Durham city Police and Durham County Sheriff share two sites on which they produce incomplete records about incidents. \r\n\r\nOn the "Durham Crime Mapper" site, users can find some information about the following incident types:\r\n<p>\r\n* Arson\r\n* Assault\r\n* Burglary \r\n* Homicide\r\n* Larceny\r\n* Motor Vehicle Theft\r\n* Robbery\r\n* Rape\r\n<p>\r\nOn this site, the Sheriff department information does not include dates of incidents. Police data begins on Jan. 1, 2009 and appears to be updated daily. \r\n\r\nHTML tables include the following fields:\r\n* Date\r\n* Street address of incident\r\n* "General Type of Crime"\r\n* "Specific Category"\r\n* Incident Number\r\n\r\nThere is no arrest data.\r\n\r\n\r\nThe two agencies also post incident data to a website run by their RMS vendor, Bair Analytics, at http://www.raidsonline.com/?agency=Durham,NC. \r\n\r\nPolice information on this site is delayed by seven days. You can browse through a maximum of 500 records at a time. \r\n\r\nIt has one record from 1986, but doesn't appear to have more complete incident reports until about 2009.	(919) 560-4322, ext. 29195	eric.arrington@durhamnc.gov	http://durhamnc.gov/ich/op/DPD/Pages/CrimeInfo.aspx	2		t	2	2	2013-10-10 14:17:33.978502+00	2013-10-10 14:32:14.223101+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-08	2009-01-01
87	East Spencer Police Reports 	east-spencer-police-reports	Blog website for the East Spencer Police Department .	\N			-The homepage has a list of police write-ups for charges and arrests of individuals identifiable by photograph, name, age, and residence. Write-ups are listed by date of incident. \r\n-Other pages include lists of individuals with warrants for arrest and bans from certain locations.\r\n-There is no searchable database. 	(704) 637-1660	espdchief@gmail.com	http://www.townofeastspencer.org/police-dept.html	\N		t	22	22	2013-10-10 18:09:46.923551+00	2013-10-10 18:09:46.925203+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	\N	\N
93	Huntersville Police Reports 	huntersville-police-reports	Incident Reports from Huntersville	\N			Database of searchable police reports. Users can only search if they have a report number. 	704-464-5400	mkee@huntersville.org	http://huntersville.org/Departments/Police.aspx	1		t	19	19	2013-10-11 01:46:11.165283+00	2013-10-11 01:46:11.166046+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-10	\N
94	Randolph County Food Establishment Inspections	randolph-county-food-establishment-inspections	Health Department inspections for Randolph County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can filter by establishment name, address, city, inspection date, score, grade and type.	336.318.6262		http://www.co.randolph.nc.us/ph/grade.aspx	1		t	17	17	2013-10-12 02:51:01.851862+00	2013-10-12 02:51:01.853579+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-11	2012-09-21
91	Goldsboro Police Reports	goldsboro-police-reports	Database of police reports for Goldsboro, NC	\N			-Database of police reports searchable by report number, last name, date, and location.\r\n-Results are available online or in PDF format. \r\n-Results must be paid for. 	 (919)-580-4239			1		t	22	22	2013-10-10 20:05:23.272689+00	2013-10-10 20:05:23.273651+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-09	\N
89	Fayetteville Police Reports	fayetteville-police-reports	Incident Reports from Fayetteville	\N			Web page includes a searchable database for incident reports in Fayetteville. Users can search by date, name, location, city, case number, and patrol zone.\r\n\r\nFirst page shows date, case number, primary offense, location, and a PDF of the report. \r\n\r\nPDF shows the detailed report. 	(910) 433-1819		http://police.ci.fayetteville.nc.us/	1		t	19	22	2013-10-10 18:41:34.49124+00	2013-10-10 20:05:47.120321+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-09	2005-10-06
90	Elon Police Reports	elon-police-reports	Database of police reports in Elon, NC	\N			-Database of police reports searchable by report number, last name, date, and location.\r\n-Results are available online or in PDF format.\r\n	(336) 584-1301			1		t	22	22	2013-10-10 19:02:27.566151+00	2013-10-10 20:06:41.910623+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-04	\N
92	Graham Accident Reports 	graham-accident-reports	Incident Reports from Graham 	\N			Searchable database from the Graham Police Department. Users can search by report number, date, driver's name, and location.\r\n\r\nFirst page shows report number, date, driver's name, location, and price of the file.\r\n\r\nFiles must be paid for before they can be downloaded. 	336-570-6711	jprichard@cityofgraham.com	http://www.cityofgraham.com/departments/police/	1		t	19	19	2013-10-11 01:14:05.334968+00	2013-10-11 01:14:05.335967+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-10	2008-02-01
21	Chowan County Food Establishment Inspections	chowan-county-food-establishment-inspections	Inspections of food establishments in Chowan County	\N			Web page that allows users to search for county health department inspections of restaurants and other food establishments. Users can search by establishment name, city, zip code, establishment type, and inspection date.\r\n\r\nFirst page shows establishment names. Users click on "inspections" to see details about specific times that inspectors graded the restaurant.\r\n\r\nThe second page shows individual inspection visits, including the date of the inspection, the total score, the overall grade and the ID number of the inspector. Users click on "violations" to see further details about specific violations found during each inspection.\r\n\r\nThe third page shows a description of each specific violation, along with the inspector's comments. Each violation includes a "violation item" number and the number of points deducted for each violation.	(252) 482-6003	jparks@arhs-nc.org	www.arhs-nc.org	2		t	23	23	2013-10-04 15:58:54.863829+00	2013-10-12 14:07:40.850184+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-10-08	2012-01-04
95	Mecklenburg County GIS and Mapping Data	mecklenburg-county-gis-and-mapping-data	Property records for Mecklenburg County	\N			Mecklenburg County offers both downloadable mapping data and an interactive web map. Downloadable data includes parcel lines, districts, aerial imagery, etc. Some, but not all, data can be viewed without being downloaded by using the "View" tool.\r\n\r\nWith the interactive map, users can search by address, parcel ID, street intersection, point of interest, or facilities. This notably lacks the ability to search by owner name; however, a separate webpage allows lookup by owner name--see the "Resources" section of this page. Users can navigate using the map and find information on parcels using the "identify" tool on the left side of the map. The map provides information such as owner name, tax value, square footage, etc.		gis@charlottechamber.com		3		t	18	18	2013-10-14 19:21:43.467367+00	2013-10-14 19:21:43.468641+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	2013-09-13	\N
96	Wake County GIS	wake-county-gis	Property records for Wake County	\N			Wake County offers both downloadable GIS data and an interactive online map. Downloads include topography, property data, electoral data, etc. The online map allows users to search properties by owner name, address, PIN, and real estate ID. Users can also navigate with the map and use the "identify" feature in the top left corner to find information about a property. The map provides information such as owner name, building and land value, etc. 		mike.ping@wakegov.com		4		t	18	18	2013-10-14 19:33:16.243422+00	2013-10-14 19:33:16.245063+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	\N	\N
97	Guilford County GIS	guilford-county-gis	Property records for Guilford County	\N			Guilford County offers both a GIS data download and an interactive online map. Downloadable data includes parcel data, school data, governmental units, etc. With the online map, users can search for properties in the search bar at the top of the map. (NOTE: This search bar does not seem to work for all browsers. If you're experiencing problems, try another browser.) Properties are searchable by legal description, owner, parcel number, PIN, address, and short parcel ID. Users can also navigate with the map and select properties with the "Show map information" tool in the top right corner. The map provides information such as owner, address, land and building value, etc.	336.641.7583			3		t	18	18	2013-10-14 19:50:20.745187+00	2013-10-14 19:50:20.745971+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	2013-10-01	\N
98	Cumberland County GIS	cumberland-county-gis	Property records for Cumberland County	\N			Cumberland County offers both downloadable GIS data and an interactive online map hosted on arcgis.com. The data is available in both MapInfo and Shapefile formats. Downloads include parcel data, development plans, etc. With the online map, users can search for properties by selecting "Queries" under the Mapping tab. Properties are searchable by address, street name, PIN, and owner name. Users can also navigate with the map and use the "select features" tool to identify a property. The map supplies data such as owner name, acreage, and a link to the property's entry on the Cumberland County Tax Assessor website.				\N		t	18	18	2013-10-14 20:27:16.908453+00	2013-10-14 20:33:40.017669+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	\N	\N
100	Matthews Police Reports	matthews-police-reports	Crime map of reported incidents and known offenders	\N			Crime map of all reported events and offenders for the Matthews Police Department, as provided by BAIR Analytics.	(704) 845-1973		http://matthewsnc.gov/Departments/Police/ContactUs.aspx	1		t	26	26	2013-10-15 16:06:47.843776+00	2013-10-15 16:07:38.036056+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-14	2011-09-27
101	Alamance County Property Data	alamance-county-property-data	GIS data and tax records for Alamance County	\N			Alamance County offers both downloadable GIS shapefiles and a searchable database for property records. The database can search by name, address, parcel ID, Map GPIN, OLD tax ID, and owner account number, as well as an interactive spacial map search. The GIS shapefiles offered include tax parcels that are updated quarterly.	336-570-4102	bruce.walker@alamance-nc.com		4		t	26	26	2013-10-16 18:09:25.076045+00	2013-10-16 18:09:25.077548+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		106	\N	2013-07-29	2010-12-31
99	New Hanover GIS	new-hanover-gis	Property records for New Hanover County	\N			-New Hanover County offers both downloadable GIS data and an interactive online map. Downloads include topography, property data, electoral data, etc. \r\n-Users are able to filter through data by file name, size, type, metadata, and URL. \r\n-For some entries users can either 'describe' or 'download' the data. Describe means to open the data in the webpage. \r\n\r\n\r\n	(910) 798-7311	suggestionbox@nhcgov.com 		\N		t	22	22	2013-10-15 15:54:39.594798+00	2013-10-15 15:54:39.596495+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	\N	\N
102	Harnett County Property Data	harnett-county-property-data	GIS data and tax records for Harnett County	\N			Harnett County offers both downloadable GIS shapefiles and a searchable database for property records. The database can search by name, account ID, address, parcel ID, and PIN. The GIS shapefiles offered include address points, parcels, streets, zoning, and more, updated monthly.	910-893-7523		http://www.harnett.org/gis/contact-us.asp	3		t	26	26	2013-10-16 18:25:02.184308+00	2013-10-16 18:25:02.185769+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		106	\N	2013-09-18	2013-09-18
103	Wake County Police Reports	wake-county-police-reports	Searchable police records for Wake County	\N			This is a searchable database for police records in Wake County. You can search by date, location, or name. This data set contains records from the Garner Police Department, the Holly Springs Police Department, Wake County Sheriff's Office, Knightdale Police Department, Wendell Police Department, Zebulon Police Department, Wake County Board of Alcoholic Control, and the City/County Board of Identification.				1		t	16	16	2013-10-18 02:37:52.205263+00	2013-10-18 02:37:52.207015+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		21	\N	2013-10-17	1989-05-10
112	Johnston County GIS	johnston-county-gis	Property records for Johnston County	\N			Johnston County offers both an interactive online map and downloadable GIS data. Data downloads include parcels, tax assessment attributes, zoning, etc. In the interactive map, users can select "Locate" from the top toolbar and search parcels by address, owner name, tax number, etc. The map provides parcel information such as owner name, address, acreage, market value, and sale date and price.	919.989.5153	gis@johnstonnc.com		\N		t	18	18	2013-10-18 20:38:43.807298+00	2013-10-18 20:38:43.808327+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	359	2013-09-11	\N
113	Kannapolis Police Records 	kannapolis-police-records	Searchable web app of police reports for Kannapolis 	\N			This website contains a data set of police reports from Kannapolis searchable by accident, arrest or incident, case number, date occurred, date reported, name and address. \r\n-Some listings are available in PDF format. 	704-920-4000		http://kannapolisp2c.com/p2c/contact.aspx	1		t	22	22	2013-10-18 22:09:53.387999+00	2013-10-18 22:09:53.388777+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-18	2006-01-01
114	High Point Police Records	high-point-police-records	Searchable web app of police reports for High Point, NC	\N			This website contains a data set of police reports from High Point searchable by accident, arrest or incident, case number, date occurred, date reported, name and address. \r\n-Some listings are available in PDF format. 	(336) 887-7940		http://www.high-point.net/police/	1		t	22	22	2013-10-18 23:59:10.994615+00	2013-10-18 23:59:10.995364+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	1988-06-18	2013-10-18
115	Wilmington Police Reports 	wilmington-police-reports	Police Incident Reports in Wilmington	\N			Web page that allows users to search for police incident reports in Wilmington. Users can search by date, name, location, or case number. \r\n\r\nFirst page shows date, time, type of incident, case number, primary offense, and location for incidents that match the search criteria. Users click the link under "view" to see a copy of the report. 	910.341.7800	officeofthechief@wilmingtonnc.gov	http://www.wilmingtonnc.gov/police_department	1		t	19	19	2013-10-20 00:56:55.381937+00	2013-10-20 00:56:55.38344+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-18	1998-01-01
116	Rowan County Police Reports 	rowan-county-police-reports	Police Incident Reports for Rowan County	\N			Web page that allows users to search for police incident reports. Users can search by date, name, location, or zone. \r\n\r\nFirst page shows date, time, type of incident, arrestee's name, charge, and location. Users click on the PDF link to view the report. \r\n\r\nThere is also a scraperwiki that collects information from this dataset. 	704-216-8700		http://www.rowancountync.gov/GOVERNMENT/Departments/SheriffsOffice.aspx	1		t	19	19	2013-10-20 01:36:23.848715+00	2013-10-20 01:36:23.849574+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		21	\N	2013-10-19	2009-01-13
117	Stokes County Food Establishment Inspections 	stokes-county-food-establishment-inspections	Food Establishment Inspections for Stokes County	\N			PDF file shows food establishment inspection grades for Stokes County. Dataset shows restaurants, school cafeterias, institutional food service, food stands, and meat markets. Users can see food establishment's name, address, date of last inspection, score, grade, and category. \r\n\r\nThis dataset only shows information from the last inspection and does not include specific violations.	(336)593-2403	slenhart@co.stokes.nc.us	http://www.co.stokes.nc.us/health/index_files/contact.htm	4		t	19	19	2013-10-20 02:34:30.276112+00	2013-10-20 02:34:30.277665+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2013-02-20	2012-04-27
118	Wayne County Food Establishment Inspections	wayne-county-food-establishment-inspections	Food Establishment Inspections for Wayne County	\N			Web page allows users to search by restaurant name. \r\n\r\nUsers click on restaurant name to view inspection summary. Summary shows restaurant name, inspection date, location, and number of critical and non-critical violations.\r\n\r\nUsers click "full inspection history" to see other inspection dates. \r\n\r\nDoes not include specific violations or inspection scores/grades.	304-272-6761	Mickey.O.Plymale@wv.gov	http://www.waynehealthdept.org/contact	4		t	19	19	2013-10-20 03:50:10.788825+00	2013-10-20 03:50:10.79036+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		8	362	2012-06-04	2006-07-20
119	Haywood County Property Data	haywood-county-property-data	GIS data and tax records for Harnett County	\N			Haywood County offers both downloadable GIS shapefiles and a searchable map for property records. The map's database can search be searched by owner name, deed, and PIN. The GIS shapefiles offered include addresses, municipalities, parcels, streets, zoning, and more, updated monthly. The shapefiles online are available for free, but special reports can be requested for a minimum of $20.	(828) 452-6644		http://www.haywoodnc.net/index.php?option=com_content&view=article&id=71&Itemid=72	3		t	26	26	2013-10-20 04:43:51.196927+00	2013-10-20 04:43:51.197876+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		106	361	2013-10-20	2013-06-26
120	Henderson County Property Data	henderson-county-property-data	GIS data and tax records for Harnett County	\N			Henderson County offers downloadable GIS shapefiles, tax data download, tax bill lookup, and a searchable database for property records. The database can search by name, address, parcel number, and PIN. The GIS downloadable data can be accessed by clicking on the link and registering as a "guest" user. Henderson County also offers live GIS data streaming.	(828) 698-5124	gis@hendersoncountync.org	http://www.hendersoncountync.org/gis/contact.html	3		t	26	26	2013-10-20 05:02:27.485712+00	2013-10-20 05:02:27.486549+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		104	358	\N	\N
121	Iredell County Property Data	iredell-county-property-data	GIS data and tax records for Iredell County	\N			Iredell County offers both downloadable GIS shapefiles and a searchable map for property records. The map can search by name, PIN, address, street name, subdivision, and longitude/latitude. The GIS shapefiles offered include addresses, parcels, streets, zoning, and more, updated monthly.	(704) 878-3137			3		t	26	26	2013-10-20 05:21:38.1422+00	2013-10-20 05:21:38.14296+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		106	\N	2013-09-13	\N
124	Greenville Police Arrest Reports 	greenville-police-arrest-reports	Arrest Reports by Greenville Police 	\N			Web page has PDF files for arrest reports. \r\n\r\nFirst half of arrest report dataset shows arrest number, case number, arrest date, arrestee, age, and charge. Second half of dataset shows detailed reports. 	(252) 329-4324	haden@greenvillenc.gov	http://www.greenvillenc.gov/departments/police_dept/default.aspx?id=2674	2		t	19	19	2013-10-20 22:06:12.17284+00	2013-10-20 22:06:12.173584+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-14	2013-07-21
123	Greenville Police Case Reports 	greenville-police-case-reports	Case Reports by Greenville Police 	\N			Web page has PDF files for daily case reports. \r\n\r\nFirst half of daily case report dataset shows case number, date and time reported, incident type, offense address, and case status and disposition. Second half of dataset shows detailed reports.\r\n	(252) 329-4324	haden@greenvillenc.gov	http://www.greenvillenc.gov/departments/police_dept/default.aspx?id=2674	2		t	19	19	2013-10-20 22:03:11.233791+00	2013-10-20 22:06:25.543602+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-18	2013-07-15
125	Greenville Police Drug Arrest Reports	greenville-police-drug-arrest-reports	Drug Arrest Reports by Greenville Police 	\N			Web page has PDF files for drug arrests. \r\n\r\nDrug arrest report dataset shows name, date of birth, arrest date, and arrest number. This report is organized alphabetically by last name. 	(252) 329-4324	haden@greenvillenc.gov	http://www.greenvillenc.gov/departments/police_dept/default.aspx?id=2674	2		t	19	19	2013-10-20 22:10:09.508459+00	2013-10-20 22:10:09.509378+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-18	1999-01-01
126	Greenville Police Crime Mapping	greenville-police-crime-mapping	Crime Mapping of Greenville 	\N			Crime mapped data allows users to search by address, event type, offender type, and date range. When users select a point on the map, they are shown the event type, IR number, crime, date, time, public address, and agency. 	(252) 329-4324	haden@greenvillenc.gov	http://www.greenvillenc.gov/departments/police_dept/default.aspx?id=2674	2		t	19	19	2013-10-20 22:13:22.727152+00	2013-10-20 22:13:22.727987+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-18	2009-06-08
127	Lexington Police Reports 	lexington-police-reports	Police Incident Reports by Lexington Police	\N			Web page shows incident reports. Users can search by date, name, location, case number, and city district. \r\n\r\nFirst page shows date, time, type of incident, arrestee, charge, and location. Users click on the PDF link under "view" to see the full report. 	336-243-3302	TWKepley@LexingtonNC.gov	http://www.lexingtonnc.net/index.aspx?page=374	1		t	19	19	2013-10-21 00:21:38.419826+00	2013-10-21 00:21:38.42057+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-20	2000-01-01
128	Greensboro Police Records	greensboro-police-records	Searchable web app of police reports for Greensboro, NC	\N			This website contains a data set of police reports from Greensboro searchable by accident, arrest or incident, case number, date occurred, date reported, name and address. \r\n-Some listings are available in PDF format. 	336-373-2222		http://www.greensboro-nc.gov/index.aspx?page=1045	1		t	22	22	2013-10-21 00:26:33.022464+00	2013-10-21 00:26:33.023209+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	1988-01-01	2013-10-20
129	Hickory Police Reports 	hickory-police-reports	Police Incident Reports by Hickory Police 	\N			Web page allows users to search for police incident reports. \r\n\r\nUsers can search by date, name, location, case number, and beat.\r\n\r\nFirst page shows date, time, type of incident, arrestee, charge, and location. Users click on the PDF link under "report" to see the full details of the report. 	828-261-2600	tadkins@hickorync.gov	http://www.hickorync.gov/egov/apps/staff/directory.egov	1		t	19	19	2013-10-21 00:55:49.557529+00	2013-10-21 00:55:49.558272+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	city		21	\N	2013-10-20	2004-03-01
130	Rowan GIS	rowan-gis	Property records for Rowan County	\N			-Rowan County offers both downloadable GIS data. Downloads include topography, property data, electoral data, etc. \r\n-Most entries are .zip files. \r\n	704-216-8588 			\N		t	22	22	2013-10-21 03:44:12.662568+00	2013-10-21 03:44:12.663284+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		6	\N	\N	\N
122	Lee County Property Data	lee-county-property-data	GIS data and tax records for Lee County	\N			Lee County offers both downloadable GIS shapefiles and a searchable map for property records. The database can search by owner, address, parcel ID, PIN, and latitude/longitude. The GIS data comes in shapefiles, metadata, and snapshots, and the data offered is grouped into categories such as infrastructure, jurisdiction, schools, census, political, and more. Sales data is offered from January 2001-December 2011 in Excel format.	919-718-4663	dkovasckitz@leecountync.gov		3		t	26	26	2013-10-20 18:17:34.010703+00	2013-10-21 06:28:18.623964+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		3	\N	2013-09-06	2006-01-30
131	Lincoln County Property Data	lincoln-county-property-data	GIS data and tax records for Lee County	\N			Lincoln County offers both downloadable GIS shapefiles and an online GIS mapping tool. The map can be searched by owner, address, parcel ID, PIN, and more, as well as by sales data and parcels. The GIS shapefiles offered include addresses, parcels, streets, zoning, and more. Sales data is also offered in Excel format.	(704) 736-8542	psetzer@lincolncounty.org		3		t	26	26	2013-10-21 07:20:02.390264+00	2013-10-21 07:20:02.391047+00							csw:Record	http://www.opengis.net/cat/csw/2.0.2	local			0	0	county		106	\N	2013-09-27	\N
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
202	131	16
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
152	66	11
153	21	11
154	63	11
155	71	16
156	95	16
157	96	16
158	97	16
163	98	16
164	99	16
166	100	6
\.


--
-- Name: catalog_resource_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_resource_categories_id_seq', 202, true);


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
117	66	36
118	21	71
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
150	131	87
\.


--
-- Name: catalog_resource_counties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_resource_counties_id_seq', 150, true);


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
227	131	1
126	78	1
127	79	1
128	79	3
129	80	1
130	80	3
131	81	1
132	82	1
133	82	3
134	83	3
228	131	3
136	85	3
137	84	3
139	87	3
146	91	3
147	89	3
148	90	3
149	92	3
150	93	3
151	94	3
154	66	3
155	21	3
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
\.


--
-- Name: catalog_resource_data_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_resource_data_types_id_seq', 228, true);


--
-- Name: catalog_resource_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('catalog_resource_id_seq', 131, true);


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
25	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=21	Web search app	1	21
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
69	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=99	Web search app	1	66
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
19	url_images/21/Screen Shot 2013-10-04 at 11_1.48	title	source		21
62	url_images/66/Screen Shot 2013-10-06 at 6_1.37	title	source		66
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
7828	4bc52a43-960c-440b-8335-a9de414da8a2	SUCCESS	\N	2013-11-14 09:00:00.149177+00	\N	f	eJxrYKotZAzlSM7IzEkpSs0rZIotZC7WAwBREgb9
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
1	2
2	2
3	1
4	5
5	2
6	2
7	3
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
1	2013-08-14 18:05:26.697888+00	1	2	1	Students	1	
2	2013-08-14 18:10:26.483559+00	1	3	2	ryan	1	
3	2013-08-14 18:10:50.8718+00	1	3	2	ryan	2	Changed password, is_staff and is_superuser.
4	2013-08-15 16:40:30.92632+00	1	3	3	ben	1	
5	2013-08-15 16:43:45.287607+00	1	3	3	ben	2	Changed password, is_staff and is_superuser.
6	2013-08-15 17:13:26.61998+00	1	3	4	copelco	1	
7	2013-08-15 17:13:30.929772+00	1	3	4	copelco	2	Changed password, is_staff and is_superuser.
8	2013-08-16 14:56:13.720808+00	4	19	1	Property Sales	1	
9	2013-08-16 15:04:21.914454+00	4	16	15	Shapefile	1	
10	2013-08-16 15:04:34.087098+00	4	19	2	Parcels	1	
11	2013-08-16 15:04:46.615414+00	4	19	2	Parcels	2	Changed url_type for url "Parcels - Shapefile - http://www.columbusco.org/GISData/parcels.zip".
12	2013-08-16 15:15:21.101011+00	4	19	2	Parcels	2	Changed categories.
13	2013-08-16 15:15:33.090383+00	4	19	1	Property Sales	2	Changed categories.
14	2013-08-16 17:28:09.637846+00	4	15	3	App	2	Changed name.
15	2013-08-16 17:28:16.769517+00	4	15	1	Data	2	Changed name.
16	2013-08-21 15:46:18.965552+00	2	3	5	ryan_thornburg	2	Changed password, is_staff and groups.
17	2013-08-21 15:47:54.563776+00	2	3	5	ryan_thornburg	2	Changed password.
18	2013-08-21 16:28:50.820931+00	2	23	1	admin sugg	1	
19	2013-08-21 16:48:10.370256+00	5	19	1	Property Sales	2	Changed is_published.
20	2013-08-21 16:56:05.72077+00	1	19	2	Parcels	2	Changed is_published.
21	2013-08-21 16:56:52.319956+00	1	6	1	open-nc.org	2	Changed domain and name.
22	2013-08-21 16:57:32.67076+00	1	19	2	Parcels	2	Changed department and division.
23	2013-08-21 17:00:29.209122+00	1	2	1	Students	2	Changed permissions.
24	2013-08-21 17:23:16.774764+00	5	37	357	asdf	1	
25	2013-08-21 17:33:03.609429+00	5	19	3	admin sugg	1	
26	2013-08-21 17:50:49.044316+00	5	19	3	admin sugg	2	Changed time_period.
27	2013-08-21 18:21:08.530601+00	1	3	6	victor_student	1	
28	2013-08-21 18:21:17.345498+00	1	3	6	victor_student	2	Changed password, is_staff and groups.
29	2013-08-21 18:42:06.421344+00	5	19	3	admin sugg	2	Changed counties and cities.
30	2013-08-21 23:10:00.501269+00	2	22	2	BETS Database of Food Establishment Inspections	1	
31	2013-08-21 23:18:09.598285+00	2	22	2	BETS Database of Food Establishment Inspections	2	Changed description and url.
32	2013-08-21 23:37:32.683437+00	2	16	16	TTX	1	
33	2013-08-21 23:40:48.204454+00	2	19	4	DHHS Restaurant Inspections	1	
34	2013-08-21 23:44:56.602533+00	2	19	4	DHHS Restaurant Inspections	2	No fields changed.
35	2013-08-21 23:54:34.765902+00	2	37	358	Center for Geographic Information and Analysis	1	
36	2013-08-21 23:54:40.889573+00	2	38	104	Office of Information Technology Services	1	
37	2013-08-21 23:58:28.227518+00	2	16	17	MAF-ASCII	1	
38	2013-08-21 23:59:14.029178+00	2	19	5	N.C. Master Addresses Dataset	1	
39	2013-08-22 00:16:30.024763+00	2	19	6	Corporations List	1	
40	2013-08-22 00:32:22.118765+00	2	37	359	GIS	1	
41	2013-08-22 00:32:27.677727+00	2	38	105	Development Services	1	
42	2013-08-22 00:34:37.630782+00	2	16	18	ArcGIS Geodatabase	1	
43	2013-08-22 00:35:43.377603+00	2	16	19	Microsoft Access .mdb	1	
44	2013-08-22 00:36:32.205261+00	2	19	7	Real Property Tax Data	1	
45	2013-08-22 00:50:04.810159+00	2	22	3	Police Incident Reports	1	
46	2013-08-22 00:55:05.204404+00	2	22	3	Police Incident Reports	2	No fields changed.
47	2013-08-22 00:55:28.500212+00	2	22	4	Police Incident Reports	1	
48	2013-08-22 01:04:06.842553+00	2	22	5	Police Reports	1	
49	2013-08-22 01:12:18.110675+00	2	16	20	SQLite	1	
50	2013-08-22 01:14:12.439903+00	2	19	8	Police Reports	1	
51	2013-08-22 15:28:41.549441+00	1	22	5	Police Reports	2	No fields changed.
52	2013-08-30 15:43:33.362991+00	2	3	7	Andrew.Stern	1	
53	2013-08-30 15:45:29.047417+00	2	3	7	Andrew.Stern	2	Changed password, first_name, last_name, email, is_staff, groups and user_permissions.
54	2013-09-06 16:59:48.025871+00	2	19	8	Police Reports	2	No fields changed.
55	2013-09-06 17:00:58.849116+00	2	22	8	Columbus County Employee Salaries	2	Changed status.
56	2013-09-06 18:42:18.522515+00	2	22	9	Voter Registration Information	2	Changed status.
57	2013-09-06 18:55:32.729673+00	2	19	9	Police Reports	1	
58	2013-09-06 19:20:20.985824+00	2	19	10	Warrants	1	
59	2013-09-15 22:46:59.136489+00	7	19	11	Belmont Police Reports	1	
60	2013-09-20 18:51:41.917782+00	2	22	10	Police Reports	1	
61	2013-09-22 19:43:10.17587+00	7	22	12	Angier Police Reports	2	Changed status and city.
62	2013-09-22 19:43:19.727298+00	7	22	11	Andrews Police Records	2	Changed status.
63	2013-09-22 20:26:39.340912+00	7	22	13	Apex Police Reports	2	Changed status.
64	2013-09-22 20:28:51.41573+00	7	22	14	Archdale Police Records	2	Changed status.
65	2013-09-22 20:29:02.282536+00	7	22	15	Asheboro Police Reports	2	Changed status.
66	2013-09-22 21:08:22.556963+00	7	37	360	Records	1	
67	2013-09-22 21:11:07.815841+00	7	19	12	Crime Mapping App	1	
68	2013-09-22 21:15:18.556892+00	7	22	17	Atlantic Beach Police Reports	2	Changed status, agency_contact and categories.
69	2013-09-22 21:15:29.001774+00	7	22	16	Asheville Police Reports	2	Changed status.
70	2013-09-23 00:43:16.83394+00	7	38	106	Tax Office	1	
71	2013-09-23 00:44:01.307905+00	7	37	361	Land Records	1	
72	2013-09-23 13:50:40.011025+00	2	19	3	admin sugg	3	
73	2013-09-24 01:14:57.220562+00	2	22	18	Ayden Police Reports	2	Changed status and description.
74	2013-09-24 01:15:13.725918+00	2	22	7	testing130830	3	
75	2013-09-24 01:15:13.734396+00	2	22	6	test	3	
76	2013-09-24 01:15:13.737118+00	2	22	1	chippy	3	
77	2013-09-24 01:15:32.020061+00	2	22	5	Police Reports	2	Changed status.
78	2013-09-24 01:15:48.178621+00	2	22	4	Police Incident Reports	2	Changed status.
79	2013-09-24 01:15:59.165137+00	2	22	3	Police Incident Reports	2	No fields changed.
80	2013-09-24 01:16:27.4947+00	2	22	3	Police Incident Reports	2	No fields changed.
81	2013-09-24 01:16:34.561994+00	2	22	2	BETS Database of Food Establishment Inspections	2	No fields changed.
82	2013-09-24 02:24:59.157006+00	2	22	19	Request	3	
83	2013-09-24 02:32:45.562022+00	2	22	20	Police Reports	1	
84	2013-09-29 02:03:42.363921+00	2	3	13	jjj	3	
85	2013-10-01 02:32:21.008669+00	2	37	362	Environmental Health	1	
86	2013-10-01 02:36:07.253451+00	2	19	13	Food Establishment Inspections	1	
87	2013-10-01 02:37:28.81261+00	2	19	12	Crime Mapping App	2	Changed is_published.
88	2013-10-01 02:38:28.537915+00	2	19	13	Food Establishment Inspections	2	Changed counties.
155	2013-10-05 12:49:31.509531+00	19	19	35	Currituck County Food Establishment Inspections	2	Changed cities.
89	2013-10-01 03:02:25.274544+00	2	19	11	Belmont Police Reports	2	Changed data_types. Changed url_label for url "Web search app - PDF - http://belmontnc.policereports.us/". Changed image for url image "url_images/11/Screen Shot 2013-09-30 at 11_1.01".
90	2013-10-01 03:20:03.898938+00	2	19	13	Yancey County Food Establishment Inspections	2	Changed name.
91	2013-10-01 03:20:49.165099+00	2	19	10	Winston-Salem Police Warrants	2	Changed name.
92	2013-10-01 03:21:02.678784+00	2	19	9	Winston-Salem Police Reports	2	Changed name.
93	2013-10-01 03:21:16.230876+00	2	19	8	Chapel Hill Police Reports	2	Changed name.
94	2013-10-01 03:21:35.821935+00	2	19	7	Davie County Real Property Tax Data	2	Changed name.
95	2013-10-01 03:21:58.951877+00	2	19	6	Statewide Corporations List	2	Changed name.
96	2013-10-01 03:22:16.789503+00	2	19	2	Columbus County Land Parcels	2	Changed name.
97	2013-10-01 03:22:35.845099+00	2	19	1	Columbus County Property Sales	2	Changed name and is_published.
98	2013-10-01 03:47:11.631465+00	2	3	2	ryan	2	Changed password, first_name, last_name and email.
99	2013-10-01 21:19:16.656776+00	1	3	15	victor	3	
100	2013-10-01 21:19:16.661525+00	1	3	6	victor_student	3	
101	2013-10-04 14:17:30.347774+00	2	3	20	wendylu92	2	Changed password, first_name, last_name, is_staff and groups.
102	2013-10-04 14:18:34.862292+00	2	3	17	rharms93	2	Changed password, first_name, last_name, is_staff and groups.
103	2013-10-04 14:18:51.128346+00	2	3	21	jrskennedy	2	Changed password, is_staff and groups.
104	2013-10-04 14:19:55.107357+00	2	3	16	jmoroney	2	Changed password, is_staff and groups.
105	2013-10-04 14:20:08.318888+00	2	3	19	emmann	2	Changed password, is_staff and groups.
106	2013-10-04 14:20:37.581714+00	2	3	18	castrora	2	Changed password, is_staff and groups.
107	2013-10-04 15:08:32.01044+00	2	3	22	paris_alston	2	Changed password, is_staff and groups.
108	2013-10-04 15:14:57.542056+00	21	19	14	Jackson County Food Establishment Inspections	1	
109	2013-10-04 15:15:14.509339+00	21	19	14	Jackson County Food Establishment Inspections	2	No fields changed.
110	2013-10-04 15:15:32.053058+00	16	19	15	Lincoln County Food Establishment Inspections	1	
111	2013-10-04 15:16:28.323846+00	18	19	16	Madison County Public Health Inspections	1	
112	2013-10-04 15:17:39.766433+00	18	19	16	Madison County Food Establishment Inspections	2	Changed name.
113	2013-10-04 15:18:19.847315+00	2	3	23	amulyau	2	Changed password, is_staff and groups.
114	2013-10-04 15:19:47.945542+00	16	19	15	Lincoln County Food Establishment Inspections	2	Changed division, contact_phone and contact_url. Added url "Web search app - HTML - https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=55". Added url image "url_images/15/Screen Shot 2013-10-04 at 11_1.19".
115	2013-10-04 15:19:56.974778+00	16	19	15	Lincoln County Food Establishment Inspections	2	No fields changed.
116	2013-10-04 15:21:58.145151+00	16	19	15	Lincoln County Food Establishment Inspections	2	Changed contact_url.
117	2013-10-04 15:22:26.552249+00	18	19	16	Madison County Food Establishment Inspections	2	Changed short_description.
118	2013-10-04 15:24:06.712189+00	21	19	14	Jackson County Food Establishment Inspections	2	Changed newest_record, oldest_record and contact_phone.
119	2013-10-04 15:25:34.582032+00	17	19	17	Macon County Food Establishment Inspections	1	
120	2013-10-04 15:26:53.016568+00	20	19	18	Iredell County Food Establishment Inspections	1	
121	2013-10-04 15:27:58.493165+00	18	19	19	McDowell County Food Establishment Inspections	1	
122	2013-10-04 15:31:14.77233+00	17	19	17	Macon County Food Establishment Inspections	2	Added url image "url_images/17/Macon County SS_1.png".
123	2013-10-04 15:35:48.254879+00	19	19	20	Lee County Food Establishment Inspections	1	
124	2013-10-04 15:37:23.389957+00	2	22	21	Bald Head Police Reports	1	
125	2013-10-04 15:37:28.155382+00	17	19	17	Macon County Food Establishment Inspections	2	Deleted url image "url_images/17/Macon County SS_1.png".
126	2013-10-04 15:37:40.344373+00	2	22	21	Bald Head Police Reports	2	Changed status.
127	2013-10-04 15:39:12.412563+00	19	19	20	Lee County Food Establishment Inspections	2	Changed description.
128	2013-10-04 15:43:51.084875+00	17	19	17	Macon County Food Establishment Inspections	2	Added url image "url_images/17/Macon County SS_1_1.png".
129	2013-10-04 15:58:55.001144+00	23	19	21	Chowan County Food Establishment Inspections	1	
130	2013-10-04 22:05:15.447374+00	19	19	20	Lee County Food Establishment Inspections	2	Changed agency_type.
131	2013-10-04 22:15:35.763507+00	19	19	22	Wake County Restaurant and Sanitation Inspections	1	
132	2013-10-04 22:31:55.847307+00	19	19	23	Ashe County Food Establishment Inspections	1	
133	2013-10-04 22:43:08.822689+00	19	19	24	Beaufort County Food Establishment Inspections	1	
134	2013-10-04 22:53:16.758622+00	19	19	25	Bertie County Food Establishment Inspections 	1	
135	2013-10-04 22:59:57.818605+00	19	19	26	Alamance County Food Establishment Inspections	1	
136	2013-10-04 23:05:00.542159+00	19	19	27	Alleghany County Food Establishment Inspections	1	
137	2013-10-04 23:09:08.475809+00	19	19	27	Alleghany County Food Establishment Inspections	2	Changed division, contact_phone and contact_url. Added url "Web search app - HTML - https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=3". Added url image "url_images/27/Screen Shot 2013-10-04 at 7_1.05".
138	2013-10-05 01:14:46.145196+00	16	19	13	Yancey County Food Establishment Inspections	2	No fields changed.
139	2013-10-05 01:21:55.158324+00	16	19	28	Catawba County Food Establishment Inspection	1	
140	2013-10-05 01:29:35.089291+00	16	19	29	Chatham County Food Establishment Inspections	1	
141	2013-10-05 01:57:16.168181+00	19	19	30	Brunswick County Food Establishment Inspections	1	
142	2013-10-05 02:35:57.52946+00	19	19	31	Camden County Food Establishment Inspections 	1	
143	2013-10-05 02:54:02.838232+00	19	19	32	Clay County Food Establishment Inspections 	1	
144	2013-10-05 03:02:02.985509+00	19	19	33	Craven County Food Establishment Inspections	1	
145	2013-10-05 03:11:32.822616+00	19	19	34	Cumberland County Food Establishment Inspections	1	
146	2013-10-05 03:31:05.160471+00	19	19	35	Currituck County Food Establishment Inspections	1	
147	2013-10-05 03:38:51.460205+00	19	19	36	Dare County Food Establishment Inspections	1	
148	2013-10-05 03:47:06.056477+00	19	19	37	Davidson County Food Establishment Inspections	1	
149	2013-10-05 03:51:40.282354+00	19	19	38	Davie County Food Establishment Inspections	1	
150	2013-10-05 03:59:24.910157+00	19	19	39	Duplin County Food Establishment Inspections	1	
151	2013-10-05 04:05:18.94196+00	19	19	40	Durham County Food Establishment Inspections	1	
152	2013-10-05 04:11:54.882375+00	19	19	41	Forsyth County Food Establishment Inspections	1	
153	2013-10-05 12:42:02.910833+00	19	19	42	Mecklenburg County Food Establishment Inspections	1	
154	2013-10-05 12:49:12.047881+00	19	19	43	Guilford County Food Establishment Inspections	1	
156	2013-10-05 12:56:33.620297+00	19	19	44	Gaston County Food Establishment Inspections	1	
157	2013-10-05 13:02:52.63787+00	19	19	45	Gates County Food Establishment Inspections	1	
158	2013-10-05 19:00:30.212196+00	19	19	46	Harnett County Food Establishment Inspections	1	
159	2013-10-05 19:00:52.689052+00	19	19	46	Harnett County Food Establishment Inspections	2	No fields changed.
160	2013-10-05 19:12:45.76375+00	19	19	47	Northampton County Food Establishment Inspections 	1	
161	2013-10-05 19:20:20.467116+00	19	19	48	Polk County Food Establishment Inspections	1	
162	2013-10-05 19:25:49.759313+00	19	19	49	Richmond County Food Establishment Inspections	1	
163	2013-10-05 19:33:05.666399+00	19	19	50	Robeson County Food Establishment Inspections	1	
164	2013-10-05 19:38:02.319581+00	19	19	51	Rowan County Food Establishment Inspections	1	
165	2013-10-05 19:43:05.742654+00	19	19	52	Rutherford County Food Establishment Inspections	1	
166	2013-10-05 19:48:19.551922+00	19	19	53	Scotland County Food Establishment Inspections	1	
167	2013-10-05 19:54:57.389462+00	19	19	54	Stanly County Food Establishment Inspections	1	
168	2013-10-05 20:02:24.569038+00	19	19	55	Surry County Food Establishment Inspections	1	
169	2013-10-05 20:09:20.941407+00	19	19	56	Watauga County Food Establishment Inspections	1	
170	2013-10-05 20:15:15.94251+00	19	19	57	Wilkes County Food Establishment Inspections	1	
171	2013-10-05 23:22:05.332781+00	19	19	58	Buncombe County Food Establishment Inspections	1	
172	2013-10-05 23:49:31.269564+00	19	19	59	Orange County Food Establishment Inspections 	1	
173	2013-10-05 23:56:33.038887+00	19	19	60	Pasquotank County Food Establishment Inspections	1	
174	2013-10-06 00:58:54.602215+00	19	19	61	Pender County Food Establishment Inspections	1	
175	2013-10-06 01:29:10.918765+00	19	19	62	Perquimans County Food Establishment Inspections	1	
176	2013-10-06 17:14:37.885927+00	16	19	63	Cherokee County Food Establishment Inspections	1	
177	2013-10-06 17:24:24.805478+00	16	22	22	Banner Elk Police Reports	1	
178	2013-10-06 17:26:23.739593+00	16	22	23	Beaufort Police Reports	1	
179	2013-10-06 17:26:30.263193+00	16	22	22	Banner Elk Police Reports	2	No fields changed.
180	2013-10-06 17:30:13.55972+00	16	22	24	Beech Mountain Police Reports	1	
181	2013-10-06 17:33:20.113086+00	16	22	25	Belhaven Police Reports	1	
182	2013-10-06 17:35:11.13459+00	16	22	26	Belmont Police Reports	1	
183	2013-10-06 17:38:39.962217+00	16	22	27	Benson Police Reports	1	
184	2013-10-06 17:40:35.637362+00	16	22	28	Bethel Police Reports	1	
185	2013-10-06 17:45:28.764906+00	16	22	29	Beulaville Police Reports	1	
186	2013-10-06 17:49:27.225186+00	16	22	30	Biltmore Forest Police Reports	1	
187	2013-10-06 19:22:25.717717+00	22	19	64	Transylvania County Food Establishment Inspections	1	
188	2013-10-06 20:13:26.382871+00	22	19	65	Tyrrell County Food Establishment Inspections	1	
189	2013-10-06 22:06:21.534591+00	23	19	21	Chowan County Food Establishment Inspections	2	Changed newest_record and updates.
190	2013-10-06 22:28:29.522316+00	23	19	21	Chowan County Food Establishment Inspections	2	Changed contact_phone, contact_email and contact_url. Changed title and source for url image "url_images/21/Screen Shot 2013-10-04 at 11_1.48".
191	2013-10-06 22:40:23.674691+00	23	19	21	Chowan County Food Establishment Inspections	2	No fields changed.
192	2013-10-06 22:44:27.306793+00	23	19	66	Yadkin County Food Establishment Inspections	1	
193	2013-10-06 22:51:16.692721+00	23	22	31	Broadway Police Reports	1	
194	2013-10-06 22:55:10.045503+00	23	22	32	Bryson City Police Reports	1	
195	2013-10-06 22:59:13.264536+00	23	22	33	Candor Police Reports	1	
196	2013-10-06 23:06:14.807847+00	23	22	34	Elkin Police Reports	1	
197	2013-10-06 23:28:38.281565+00	16	22	35	Black Creek Police Reports	1	
198	2013-10-06 23:30:39.231745+00	16	22	36	Black Mountain Police Reports	1	
199	2013-10-06 23:42:29.107359+00	16	22	37	Blowing Rock Police Reports	1	
200	2013-10-07 00:21:48.596017+00	16	22	38	Boiling Spring Lakes Police Department	1	
201	2013-10-07 14:44:04.994514+00	16	22	39	Boiling Springs Police Report	1	
202	2013-10-07 14:47:27.204074+00	16	22	40	Boone Police Reports	1	
203	2013-10-07 14:56:14.295965+00	16	22	41	Brevard Police Reports	1	
204	2013-10-07 17:21:42.997247+00	21	19	14	Jackson County Food Establishment Inspections	2	Added url "Web search app - HTML - https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=50". Added url image "url_images/14/Screen Shot 2013-10-07 at 1_1.21".
205	2013-10-07 17:33:24.605693+00	21	19	14	Jackson County Food Establishment Inspections	2	Changed description, updates and contact_email.
206	2013-10-07 17:51:00.749069+00	22	22	42	Butner Public Safety 	1	
207	2013-10-07 18:05:12.726194+00	21	22	43	Burlington Police Records	1	
208	2013-10-07 18:05:39.241757+00	21	22	43	Burlington Police Records	2	Changed categories.
209	2013-10-07 18:07:25.474614+00	21	22	43	Burlington Police Reports	2	Changed title.
210	2013-10-07 18:14:08.389094+00	21	22	44	Burnsville Police Reports	1	
211	2013-10-07 18:15:43.140555+00	21	22	44	Burnsville Police Reports	2	Changed description.
212	2013-10-07 18:19:47.297688+00	21	22	44	Burnsville Police Reports	2	Changed agency_contact.
213	2013-10-07 18:21:02.840423+00	21	22	45	Canton Police Reports	1	
214	2013-10-07 18:21:21.935437+00	21	22	45	Canton Police Reports	2	No fields changed.
215	2013-10-07 18:28:59.008606+00	21	22	46	Cape Carteret Police Records	1	
216	2013-10-07 18:29:16.737262+00	21	22	46	Cape Carteret Police Records	3	
217	2013-10-07 18:39:25.256765+00	21	19	67	Cape Carteret Police Reports	1	
218	2013-10-07 19:35:35.313939+00	17	22	47	Alexander County Restaurant Inspection Reports	1	
219	2013-10-07 19:42:37.969677+00	17	22	48	Alexander County Restaurant Inspection Reports	1	
220	2013-10-07 19:45:14.783552+00	17	22	48	Anson County Restaurant Inspection Reports	2	Changed title.
221	2013-10-07 19:46:52.583318+00	17	22	49	Bladen County Restaurant Inspection Reports	1	
222	2013-10-07 19:52:14.838135+00	17	22	50	Burke County Restaurant Inspection Reports	1	
223	2013-10-07 20:10:21.31803+00	17	19	68	Cabarrus County Food Establishment Inspections	1	
224	2013-10-07 20:16:02.973063+00	17	22	51	Caldwell County Restaurant Inspection Reports	1	
225	2013-10-07 20:21:24.652426+00	16	22	52	Carrboro Police Reports	1	
226	2013-10-07 20:23:06.074154+00	16	22	53	Carthage Police Records	1	
227	2013-10-07 20:23:24.493039+00	16	22	21	Bald Head Police Reports	2	No fields changed.
228	2013-10-07 20:25:55.610959+00	16	22	54	Cary Police Records	1	
229	2013-10-07 20:27:34.494627+00	16	22	55	Caswell Beach Police Records	1	
230	2013-10-07 20:28:40.628235+00	17	19	69	Carteret County Food Establishment Inspections	1	
231	2013-10-07 20:29:16.105421+00	16	22	56	Catawba Police Records	1	
232	2013-10-07 20:32:09.280175+00	16	22	57	Chadbourn Police Records	1	
233	2013-10-07 23:46:53.796097+00	17	22	58	Caswell County Restaurant Inspection Reports	1	
234	2013-10-07 23:53:29.099308+00	17	22	59	Cleveland County Food Establishment Inspections	1	
235	2013-10-07 23:57:17.765567+00	17	22	60	Columbus County Food Establishment Inspections	1	
236	2013-10-08 00:02:42.031747+00	17	22	61	Edgecombe County Food Establishment Inspections	1	
237	2013-10-08 00:20:15.32558+00	17	22	62	Franklin County Food Establishment Inspections	1	
238	2013-10-08 01:29:35.880476+00	22	22	63	Chapel Hill Police Reports 	1	
239	2013-10-08 01:29:39.989814+00	22	22	64	Chapel Hill Police Reports 	1	
240	2013-10-08 01:32:26.473384+00	22	22	63	Chapel Hill Police Reports 	3	
241	2013-10-08 01:40:03.843884+00	22	22	65	Charlotte-Mecklenburg Police Records 	1	
242	2013-10-08 01:54:20.777251+00	22	12	554	Cherokee	1	
243	2013-10-08 01:54:40.312642+00	22	22	66	Cherokee Indian Police Records	1	
244	2013-10-08 01:54:52.77843+00	22	22	66	Cherokee Indian Police Records	2	No fields changed.
245	2013-10-08 02:08:26.30921+00	22	22	67	China Grove Police Records	1	
246	2013-10-08 02:20:53.919252+00	22	22	68	Chocowinity Police Reports 	1	
247	2013-10-08 02:22:50.451086+00	22	22	69	Claremont Police Records	1	
248	2013-10-08 02:26:38.630012+00	22	22	70	Clayton Police Records	1	
249	2013-10-08 02:27:15.954713+00	22	22	64	Chapel Hill Police Records	2	Changed title.
250	2013-10-08 02:29:26.112283+00	22	22	71	Clinton Police Records	1	
251	2013-10-08 02:30:08.930903+00	22	22	70	Clayton Police Records	2	Changed agency_contact.
252	2013-10-08 02:36:47.551158+00	22	22	72	Coats Police Records	1	
253	2013-10-08 02:39:11.210075+00	22	22	73	Columbus Police Records 	1	
254	2013-10-08 02:46:23.586894+00	22	22	74	Concord Police Records	1	
255	2013-10-08 02:47:39.238147+00	22	22	74	Concord Police Records	2	Changed description.
256	2013-10-08 02:50:06.435158+00	22	22	75	Conover Police Reports 	1	
257	2013-10-08 03:14:54.163564+00	2	22	75	Conover Police Reports 	2	Changed status.
258	2013-10-08 03:15:07.554609+00	2	22	74	Concord Police Records	2	No fields changed.
259	2013-10-08 03:15:14.894815+00	2	22	74	Concord Police Records	2	Changed status.
260	2013-10-08 03:15:33.627351+00	2	22	73	Town of Columbus Police Records 	2	Changed title.
261	2013-10-08 03:15:42.010833+00	2	22	73	Town of Columbus Police Records 	2	Changed status.
262	2013-10-08 03:15:52.44222+00	2	22	72	Coats Police Records	2	Changed status.
263	2013-10-08 03:16:18.522252+00	2	22	71	Clinton Police Records	2	Changed status.
264	2013-10-08 03:16:29.453172+00	2	22	70	Clayton Police Records	2	Changed status.
265	2013-10-08 03:16:37.40008+00	2	22	70	Clayton Police Records	2	No fields changed.
266	2013-10-08 03:16:47.054597+00	2	22	69	Claremont Police Records	2	Changed status.
267	2013-10-08 03:16:54.96213+00	2	22	69	Claremont Police Records	2	No fields changed.
268	2013-10-08 03:17:07.081661+00	2	22	68	Chocowinity Police Reports 	2	Changed status.
269	2013-10-08 03:17:15.315862+00	2	22	67	China Grove Police Records	2	Changed status.
270	2013-10-08 03:17:23.864296+00	2	22	67	China Grove Police Records	2	No fields changed.
271	2013-10-08 03:17:39.453737+00	2	22	66	Cherokee Indian Police Records	2	Changed status.
272	2013-10-08 03:17:51.050043+00	2	22	65	Charlotte-Mecklenburg Police Records 	2	Changed status.
273	2013-10-08 03:18:56.481348+00	2	22	65	Charlotte-Mecklenburg Police Records 	2	Changed status.
274	2013-10-08 03:21:03.571436+00	2	22	3	Police Incident Reports	2	Changed status.
275	2013-10-08 03:21:27.970335+00	2	22	22	Banner Elk Police Reports	2	Changed status.
276	2013-10-08 03:21:59.309479+00	2	22	23	Beaufort City Police Reports	2	Changed status and title.
277	2013-10-08 03:22:21.065552+00	2	22	24	Beech Mountain Police Reports	2	Changed status.
278	2013-10-08 03:22:44.135521+00	2	22	25	Belhaven Police Reports	2	Changed status.
279	2013-10-08 03:22:59.95283+00	2	22	26	Belmont Police Reports	2	Changed status.
280	2013-10-08 03:23:21.134853+00	2	22	27	Benson Police Reports	2	Changed status.
281	2013-10-08 03:23:39.597705+00	2	22	28	Bethel Police Reports	2	Changed status.
282	2013-10-08 03:23:54.718888+00	2	22	29	Beulaville Police Reports	2	Changed status.
283	2013-10-08 03:24:12.13215+00	2	22	30	Biltmore Forest Police Reports	2	Changed status.
284	2013-10-08 03:24:27.900563+00	2	22	31	Broadway Police Reports	2	Changed status.
285	2013-10-08 03:24:43.52443+00	2	22	58	Caswell County Restaurant Inspection Reports	2	Changed status.
286	2013-10-08 03:24:54.204986+00	2	22	62	Franklin County Food Establishment Inspections	2	Changed status.
287	2013-10-08 03:25:04.081999+00	2	22	62	Franklin County Food Establishment Inspections	2	No fields changed.
288	2013-10-08 03:25:17.924304+00	2	22	64	Chapel Hill Police Records	3	
289	2013-10-08 03:26:09.915878+00	2	22	47	Alexander County Restaurant Inspection Reports	2	Changed status and county.
290	2013-10-08 03:26:41.759179+00	2	22	61	Edgecombe County Food Establishment Inspections	2	Changed status and description.
291	2013-10-08 03:26:59.53999+00	2	22	60	Columbus County Food Establishment Inspections	2	Changed status.
292	2013-10-08 03:27:18.358017+00	2	22	59	Cleveland County Food Establishment Inspections	2	Changed status.
293	2013-10-08 03:27:43.84684+00	2	22	57	Chadbourn Police Records	2	Changed status and county.
294	2013-10-08 03:28:32.36006+00	2	22	56	Catawba Town Police Records	2	Changed status and title.
295	2013-10-08 03:28:47.916057+00	2	22	55	Caswell Beach Police Records	2	Changed status.
296	2013-10-08 03:29:24.945435+00	2	22	54	Cary Police Records	2	Changed url.
297	2013-10-08 03:29:34.1847+00	22	22	75	Conover Police Records 	2	Changed title.
298	2013-10-08 03:29:34.846529+00	2	22	54	Cary Police Records	2	Changed status.
299	2013-10-08 03:29:48.712765+00	2	22	53	Carthage Police Records	2	Changed status.
300	2013-10-08 03:32:30.972919+00	2	22	51	Caldwell County Restaurant Inspection Reports	2	Changed status.
301	2013-10-08 03:32:44.414752+00	2	22	50	Burke County Restaurant Inspection Reports	2	Changed status.
302	2013-10-08 03:33:15.34286+00	2	22	48	Anson County Restaurant Inspection Reports	2	Changed status.
303	2013-10-08 03:33:37.988733+00	2	22	2	BETS Database of Food Establishment Inspections	2	Changed status.
304	2013-10-08 03:34:51.234818+00	22	22	76	Cooleemee Police Records 	1	
305	2013-10-08 03:37:34.833276+00	22	22	77	Conrnelius Police Records 	1	
306	2013-10-08 03:39:41.504683+00	22	22	78	Cramerton Police Records 	1	
307	2013-10-08 03:57:05.499785+00	22	19	70	Charlotte-Mecklenburg Police Records 	1	
308	2013-10-08 03:57:35.284935+00	22	19	70	Charlotte-Mecklenburg Police Reports 	2	Changed name.
309	2013-10-08 03:58:17.914449+00	22	22	65	Charlotte-Mecklenburg Police Records 	3	
310	2013-10-08 16:25:41.958903+00	18	19	71	Alexander County Property Sales	1	
311	2013-10-08 22:37:18.6508+00	17	22	79	Graham County Food Establishment Inspections	1	
312	2013-10-08 22:45:36.970668+00	17	22	80	Granville County Food Establishment Inspections	1	
313	2013-10-08 22:48:33.906415+00	17	22	81	Greene County Food Establishment Inspections	1	
314	2013-10-08 22:49:44.155656+00	17	22	81	Greene County Food Establishment Inspections	2	Changed agency_contact.
315	2013-10-08 23:11:02.225192+00	17	19	72	Pitt County Food Establishment Inspections	1	
316	2013-10-08 23:15:21.023512+00	17	22	82	Halifax County Food Establishment Inspections	1	
317	2013-10-08 23:15:29.757404+00	17	22	82	Halifax County Food Establishment Inspections	2	No fields changed.
318	2013-10-08 23:16:38.044468+00	18	19	73	Buncombe County GIS	1	
319	2013-10-08 23:18:52.892409+00	17	22	83	Haywood County Food Establishment Inspections	1	
320	2013-10-08 23:21:20.189855+00	17	19	72	Pitt County Food Establishment Inspections	2	Changed short_description.
321	2013-10-08 23:30:09.30421+00	18	19	74	Currituck County Governmental Maps	1	
322	2013-10-08 23:31:36.717746+00	17	19	75	Henderson County Food Establishment Inspections	1	
323	2013-10-08 23:41:40.500729+00	18	19	76	Davie County GIS Data Download	1	
324	2013-10-09 03:40:51.517794+00	7	19	77	Testing error	1	
325	2013-10-09 03:41:15.867782+00	7	19	77	Testing error	3	
326	2013-10-09 13:43:17.820749+00	18	19	78	test	1	
327	2013-10-09 13:46:29.809339+00	18	19	78	City of Winston-Salem/Forsyth County GIS Data Download	2	Changed name, short_description, description, newest_record, oldest_record, updates, agency_type, counties, cities and contact_url. Added url "Data download - HTML - http://www.cityofws.org/departments/planning/gis/gis-data-sets-for-download". Added url image "url_images/78/Screen Shot 2013-10-09 at 9_1.46".
328	2013-10-09 14:02:58.251284+00	18	19	79	Gates County GIS	1	
329	2013-10-09 14:18:59.881531+00	18	19	80	Granville County GIS	1	
330	2013-10-09 14:25:14.989229+00	18	19	81	Greene County GIS Data Downloads	1	
331	2013-10-09 14:38:49.83049+00	18	19	82	Halifax County Property Records	1	
332	2013-10-10 02:59:00.886256+00	16	22	84	Creedmoor Police Reports	1	
333	2013-10-10 03:01:18.611946+00	16	22	85	Dallas Police Reports	1	
334	2013-10-10 03:04:08.648439+00	16	22	86	Davidson Police Records	1	
335	2013-10-10 03:06:37.53664+00	16	22	87	Denton Police Records	1	
336	2013-10-10 03:16:02.727968+00	16	22	88	Dobson Police Reports	1	
337	2013-10-10 03:19:53.788065+00	16	22	89	Drexel Police Records	1	
338	2013-10-10 03:22:05.628986+00	16	22	90	Duck Police Records	1	
339	2013-10-10 03:23:35.832278+00	16	22	91	Dunn Police Records	1	
340	2013-10-10 03:26:41.526834+00	16	22	92	Durham Police Records	1	
341	2013-10-10 03:45:40.889655+00	17	22	93	Hertford County Food Establishment Inspections	1	
342	2013-10-10 03:53:55.478678+00	17	22	94	Hoke County Food Establishment Inspections	1	
343	2013-10-10 04:00:57.41397+00	17	22	95	Hyde County Food Establishment Inspections	1	
344	2013-10-10 04:18:55.700439+00	17	19	83	Johnston County Food Establishment Inspections	1	
345	2013-10-10 04:25:09.881883+00	17	22	96	Jones County Food Establishment Inspections	1	
346	2013-10-10 04:32:27.822139+00	17	22	97	Lenoir County Food Establishment Inspections	1	
347	2013-10-10 12:47:07.475684+00	2	22	97	Lenoir County Food Establishment Inspections	2	Changed status.
348	2013-10-10 12:47:18.464898+00	2	22	96	Jones County Food Establishment Inspections	2	Changed status.
349	2013-10-10 12:47:28.389621+00	2	22	97	Lenoir County Food Establishment Inspections	2	No fields changed.
350	2013-10-10 12:50:56.499456+00	2	22	95	Hyde County Food Establishment Inspections	2	No fields changed.
351	2013-10-10 12:52:07.850162+00	2	22	95	Hyde County Food Establishment Inspections	2	Changed status.
352	2013-10-10 12:52:22.552571+00	2	22	94	Hoke County Food Establishment Inspections	2	Changed status.
353	2013-10-10 12:52:34.108248+00	2	22	93	Hertford County Food Establishment Inspections	2	Changed status.
354	2013-10-10 12:54:20.427202+00	2	22	92	Durham Police Records	3	
355	2013-10-10 14:16:19.721839+00	2	16	21	JavaScript	1	
356	2013-10-10 14:17:34.138885+00	2	19	84	Durham Police Incidents	1	
357	2013-10-10 14:32:10.883554+00	2	19	85	Durham County Sheriff Incidents	1	
358	2013-10-10 14:32:14.479528+00	2	19	84	Durham Police Incidents	2	Changed url_label for url "Raids Online App - JavaScript - http://www.raidsonline.com/?agency=Durham,NC".
359	2013-10-10 14:47:58.886801+00	2	22	91	Dunn Police Records	2	Changed status.
360	2013-10-10 14:48:18.466964+00	2	22	90	Duck Police Records	2	Changed status.
361	2013-10-10 14:48:36.056975+00	2	22	89	Drexel Police Records	2	Changed status.
362	2013-10-10 14:48:51.380104+00	2	22	88	Dobson Police Reports	2	Changed status.
363	2013-10-10 14:49:05.779875+00	2	22	87	Denton Police Records	2	Changed status.
364	2013-10-10 14:49:18.213992+00	2	22	86	Davidson Police Records	2	Changed status.
365	2013-10-10 14:49:30.80017+00	2	22	85	Dallas Police Reports	2	Changed status.
366	2013-10-10 14:49:45.991588+00	2	22	84	Creedmoor Police Reports	2	Changed status.
367	2013-10-10 14:54:45.805363+00	2	22	83	Haywood County Food Establishment Inspections	2	Changed status.
368	2013-10-10 14:55:03.107046+00	2	22	82	Halifax County Food Establishment Inspections	2	Changed status.
369	2013-10-10 14:55:19.728269+00	2	22	81	Greene County Food Establishment Inspections	2	Changed status.
370	2013-10-10 14:55:32.56378+00	2	22	80	Granville County Food Establishment Inspections	2	Changed status.
371	2013-10-10 14:55:46.37949+00	2	22	79	Graham County Food Establishment Inspections	2	Changed status.
372	2013-10-10 14:55:59.531684+00	2	22	78	Cramerton Police Records 	2	Changed status.
373	2013-10-10 14:56:10.077984+00	2	22	77	Conrnelius Police Records 	2	Changed status.
374	2013-10-10 14:56:20.943871+00	2	22	76	Cooleemee Police Records 	2	Changed status.
375	2013-10-10 14:58:19.132619+00	2	22	52	Carrboro Police Reports	3	
376	2013-10-10 14:59:50.810989+00	2	22	49	Bladen County Restaurant Inspection Reports	2	Changed status.
377	2013-10-10 15:00:02.417896+00	2	22	45	Canton Police Reports	2	Changed status.
378	2013-10-10 15:00:17.421358+00	2	22	44	Burnsville Police Reports	2	Changed status.
379	2013-10-10 15:09:40.43595+00	2	22	98	Durham Police Arrest Reports	1	
380	2013-10-10 15:10:34.448658+00	2	22	99	Durham County Sheriff Arrest Reports	1	
381	2013-10-10 15:13:29.611986+00	2	22	42	Butner Public Safety 	2	Changed status.
382	2013-10-10 15:13:52.583101+00	2	22	41	Brevard Police Reports	2	Changed status.
383	2013-10-10 15:14:09.189542+00	2	22	43	Burlington Police Reports	2	Changed status.
384	2013-10-10 15:14:20.09939+00	2	22	40	Boone Police Reports	2	Changed status.
385	2013-10-10 15:15:06.912065+00	2	22	39	Boiling Springs Police Report	2	Changed status.
386	2013-10-10 15:15:19.96392+00	2	22	38	Boiling Spring Lakes Police Department	2	Changed status.
387	2013-10-10 15:15:31.384165+00	2	22	37	Blowing Rock Police Reports	2	Changed status.
388	2013-10-10 15:15:43.576609+00	2	22	36	Black Mountain Police Reports	2	Changed status.
389	2013-10-10 15:15:54.602736+00	2	22	35	Black Creek Police Reports	2	Changed status.
390	2013-10-10 15:16:17.813522+00	2	22	34	Elkin Police Reports	2	Changed status.
391	2013-10-10 15:16:28.187046+00	2	22	33	Candor Police Reports	2	Changed status.
392	2013-10-10 15:16:38.460272+00	2	22	32	Bryson City Police Reports	2	Changed status.
393	2013-10-10 17:31:54.160167+00	19	19	86	Montgomery County Food Establishment Inspections	1	
394	2013-10-10 18:09:47.128031+00	22	19	87	East Spencer Police Reports 	1	
395	2013-10-10 18:14:34.245653+00	19	22	100	Farmville Police Reports	1	
396	2013-10-10 18:15:21.40202+00	22	22	101	East Spencer Police Records 	1	
397	2013-10-10 18:27:15.107259+00	22	22	102	Eden Police Records	1	
398	2013-10-10 18:27:32.531402+00	22	22	101	East Spencer Police Records 	2	Changed description.
399	2013-10-10 18:30:44.507133+00	22	22	103	Edenton Police Records	1	
400	2013-10-10 18:34:52.963016+00	22	22	104	Elizabeth City Police Records	1	
401	2013-10-10 18:38:27.054363+00	22	22	105	Elkin Police Reports	1	
402	2013-10-10 18:38:47.858576+00	19	19	88	Fayetteville Police Incident Reports	1	
403	2013-10-10 18:40:26.375075+00	22	22	105	Elizabethtown Police Records 	2	Changed title, description, city, county, agency_name and agency_contact.
404	2013-10-10 18:41:34.7221+00	19	19	89	Fayetteville Police Reports	1	
405	2013-10-10 18:41:38.384168+00	22	22	104	Elizabeth City Police Records	2	Changed description.
406	2013-10-10 18:42:05.561753+00	19	19	88	Fayetteville Police Incident Reports	3	
407	2013-10-10 18:42:15.063998+00	19	19	89	Fayetteville Police Reports	2	No fields changed.
408	2013-10-10 18:42:37.215066+00	22	22	103	Edenton Police Records	2	Changed description.
409	2013-10-10 18:50:03.454488+00	19	22	106	Fletcher Police Records 	1	
410	2013-10-10 18:54:53.663029+00	19	22	107	Forest City Police Records 	1	
411	2013-10-10 18:55:02.778865+00	19	22	106	Fletcher Police Records 	2	Changed agency_name.
412	2013-10-10 18:57:57.197105+00	19	22	108	Four Oaks Police Records 	1	
413	2013-10-10 19:02:00.758606+00	19	22	109	Franklin Police Reports	1	
414	2013-10-10 19:02:27.95945+00	22	19	90	Elon Police Reports	1	
415	2013-10-10 19:08:51.323972+00	22	22	110	Emerald Isle Police Reports	1	
416	2013-10-10 19:08:54.386174+00	22	22	111	Emerald Isle Police Reports	1	
417	2013-10-10 19:11:37.078117+00	22	22	112	Enfield Police Reports 	1	
418	2013-10-10 19:14:13.457118+00	22	22	113	Erwin Police Records	1	
419	2013-10-10 19:16:36.593019+00	22	22	114	Fairmont Police Records	1	
420	2013-10-10 19:16:55.934225+00	22	22	114	Fairmont Police Records	2	No fields changed.
421	2013-10-10 19:17:10.492541+00	22	22	110	Emerald Isle Police Reports	3	
422	2013-10-10 19:17:26.337354+00	22	22	111	Emerald Isle Police Records	2	Changed title.
423	2013-10-10 19:17:39.158093+00	22	22	112	Enfield Police Records	2	Changed title.
424	2013-10-10 19:18:17.430964+00	22	22	114	Fairmont Police Records	2	Changed county.
425	2013-10-10 19:20:46.709835+00	22	22	115	Garner Police Records	1	
426	2013-10-10 19:20:56.818092+00	22	22	114	Fairmont Police Records	2	Changed agency_name.
427	2013-10-10 19:21:07.544082+00	22	22	114	Fairmont Police Records	2	No fields changed.
428	2013-10-10 19:23:23.332753+00	22	22	116	Garysburg Police Records	1	
429	2013-10-10 19:26:06.970662+00	22	22	117	Gastonia Police Records	1	
430	2013-10-10 19:28:15.149033+00	22	22	118	Gibsonville Police Records	1	
431	2013-10-10 19:29:49.59507+00	22	22	118	Gibsonville Police Records	2	Changed county.
432	2013-10-10 19:59:37.681775+00	22	19	90	Elon Police Reports	2	Changed description, newest_record, oldest_record and updates.
433	2013-10-10 20:00:09.303996+00	22	19	90	Elon Police Reports	2	Changed description and newest_record.
434	2013-10-10 20:05:23.40495+00	22	19	91	Goldsboro Police Reports	1	
435	2013-10-10 20:05:47.240523+00	22	19	89	Fayetteville Police Reports	2	No fields changed.
436	2013-10-10 20:06:32.614049+00	22	22	91	Dunn Police Records	2	No fields changed.
437	2013-10-10 20:06:42.162271+00	22	19	90	Elon Police Reports	2	Added url "Web search app - HTML - http://elonnc.policereports.us/index.html".
438	2013-10-11 00:49:06.671911+00	19	22	119	Franklinton Police Reports 	1	
439	2013-10-11 00:52:14.793842+00	19	22	120	Fremont Police Department 	1	
440	2013-10-11 00:56:28.913043+00	19	22	121	Fuquay-Varina Police Reports	1	
441	2013-10-11 01:14:05.734664+00	19	19	92	Graham Accident Reports 	1	
442	2013-10-11 01:18:19.396265+00	19	22	122	Graham Police Reports	1	
443	2013-10-11 01:25:23.421678+00	19	22	123	Granite Falls Police Reports 	1	
444	2013-10-11 01:25:55.371816+00	19	22	122	Graham Police Reports	2	Changed county.
445	2013-10-11 01:26:32.357413+00	19	22	121	Fuquay-Varina Police Reports	2	Changed county.
446	2013-10-11 01:27:04.34058+00	19	22	120	Fremont Police Department 	2	Changed county.
447	2013-10-11 01:29:20.644261+00	19	22	119	Franklinton Police Reports 	2	Changed county.
448	2013-10-11 01:30:03.565126+00	19	22	109	Franklin Police Reports	2	Changed county.
449	2013-10-11 01:30:56.723602+00	19	22	108	Four Oaks Police Records 	2	Changed county.
450	2013-10-11 01:31:29.686302+00	19	22	107	Forest City Police Records 	2	Changed county.
451	2013-10-11 01:32:46.538098+00	19	22	106	Fletcher Police Records 	2	Changed county.
452	2013-10-11 01:46:11.298371+00	19	19	93	Huntersville Police Reports 	1	
453	2013-10-11 01:48:53.415118+00	19	22	124	Huntersville Police Reports 	1	
454	2013-10-11 01:51:30.283172+00	19	22	125	Granite Quarry Police Reports 	1	
455	2013-10-11 01:51:53.999808+00	19	22	124	Huntersville Police Reports 	2	Changed resources.
456	2013-10-11 01:52:20.532588+00	19	22	121	Fuquay-Varina Police Reports	2	No fields changed.
457	2013-10-11 01:58:02.727761+00	19	22	126	Havelock Police Records 	1	
458	2013-10-11 02:00:44.467227+00	19	22	127	Haw River Police Records 	1	
459	2013-10-11 02:03:47.053255+00	19	22	128	Henderson Police Records 	1	
460	2013-10-11 02:08:04.610607+00	19	22	129	Hertford Police Records 	1	
461	2013-10-11 02:14:20.437619+00	19	22	130	Hillsborough Police Reports 	1	
462	2013-10-11 02:17:04.515274+00	19	22	131	Highlands Police Records 	1	
463	2013-10-11 02:21:26.004203+00	19	22	132	Holden Beach Police Reports 	1	
464	2013-10-11 02:27:26.880848+00	19	22	133	Holly Ridge Police Reports	1	
465	2013-10-11 02:30:11.168878+00	19	22	134	Holly Springs Police Reports	1	
466	2013-10-11 02:33:44.103321+00	19	22	135	Hudson Police Reports 	1	
467	2013-10-11 02:36:54.299488+00	19	22	136	Jackson Police Reports 	1	
468	2013-10-11 17:09:29.43904+00	1	3	24	test4	3	
469	2013-10-12 02:24:50.744766+00	17	22	137	Nash County Food Establishment Inspections	1	
470	2013-10-12 02:29:24.713303+00	17	22	138	New Hanover County Food Establishment Inspections	1	
471	2013-10-12 02:33:47.107163+00	17	22	139	Onslow County Food Establishment Inspections	1	
472	2013-10-12 02:38:44.8427+00	17	22	140	Pamlico County Food Establishment Inspections	1	
473	2013-10-12 02:42:44.800279+00	17	22	141	Person County Food Establishment Inspections	1	
474	2013-10-12 02:51:02.113274+00	17	19	94	Randolph County Food Establishment Inspections	1	
475	2013-10-12 13:56:21.185129+00	23	19	21	Chowan County Food Establishment Inspections	2	Changed newest_record, oldest_record and updates.
476	2013-10-12 14:02:14.826296+00	23	19	66	Yadkin County Food Establishment Inspections	2	Changed newest_record and oldest_record.
477	2013-10-12 14:06:59.280521+00	23	19	66	Yadkin County Food Establishment Inspections	2	No fields changed.
478	2013-10-12 14:07:40.983473+00	23	19	21	Chowan County Food Establishment Inspections	2	No fields changed.
479	2013-10-12 14:15:57.385043+00	23	22	142	Richlands Police Reports	1	
480	2013-10-12 14:17:20.112441+00	23	22	142	Richlands Police Reports	2	Changed county and agency_contact.
481	2013-10-12 14:24:54.352886+00	23	22	143	Kenansville Police Reports	1	
482	2013-10-12 14:30:18.099405+00	23	22	144	Laurel Park Police Reports	1	
483	2013-10-12 14:38:05.585046+00	23	22	145	Maiden Police Reports	1	
484	2013-10-12 14:41:22.790585+00	23	22	146	Norwood Police Reports	1	
485	2013-10-12 14:41:35.082425+00	23	22	146	Norwood Police Reports	2	No fields changed.
486	2013-10-12 14:46:29.495173+00	23	22	146	Norwood Police Reports	2	Changed description.
487	2013-10-12 14:49:05.114661+00	23	22	145	Maiden Police Reports	2	Changed description.
488	2013-10-12 14:52:13.918933+00	23	22	147	Walnut Cove Police Reports	1	
489	2013-10-12 14:55:58.958355+00	23	22	148	Spruce Pine Police Reports	1	
490	2013-10-12 15:03:53.17015+00	23	22	149	Shelby County Police Reports	1	
491	2013-10-12 15:09:56.659045+00	23	22	150	Lincolnton Police Reports	1	
492	2013-10-12 15:16:21.452124+00	23	22	151	Princeton Police Reports	1	
493	2013-10-12 15:23:32.859023+00	23	22	152	Murfreesboro Police Reports	1	
494	2013-10-12 15:27:38.106605+00	23	22	153	Saint Pauls Police Reports	1	
495	2013-10-12 15:31:50.023996+00	23	22	154	Mebane Police Reports	1	
496	2013-10-12 15:33:04.251967+00	23	22	154	Mebane Police Reports	2	Changed description.
497	2013-10-12 15:33:11.580656+00	23	22	154	Mebane Police Reports	2	No fields changed.
498	2013-10-12 15:42:27.873995+00	23	22	155	Rolesville Police Reports	1	
499	2013-10-12 15:42:51.88872+00	23	22	154	Mebane Police Reports	2	Changed description.
500	2013-10-12 15:43:16.647403+00	23	22	152	Murfreesboro Police Reports	2	Changed description.
501	2013-10-12 15:43:30.971908+00	23	22	151	Princeton Police Reports	2	Changed description.
502	2013-10-12 15:43:54.604426+00	23	22	150	Lincolnton Police Reports	2	Changed description.
503	2013-10-12 15:44:20.924181+00	23	22	146	Norwood Police Reports	2	Changed description.
504	2013-10-12 15:44:36.764144+00	23	22	145	Maiden Police Reports	2	Changed description.
505	2013-10-12 15:45:03.402798+00	23	22	144	Laurel Park Police Reports	2	Changed description.
506	2013-10-12 15:45:27.831312+00	23	22	143	Kenansville Police Reports	2	Changed description.
507	2013-10-12 15:45:49.16102+00	23	22	142	Richlands Police Reports	2	Changed description.
508	2013-10-12 15:46:40.830909+00	23	22	147	Walnut Cove Police Reports	2	Changed description.
509	2013-10-12 15:55:49.831731+00	23	22	156	Woodfin Police Reports	1	
510	2013-10-12 15:56:03.1796+00	23	22	155	Rolesville Police Reports	2	Changed description.
511	2013-10-12 15:56:17.637853+00	23	22	154	Mebane Police Reports	2	Changed description.
512	2013-10-12 15:58:19.998095+00	23	22	151	Princeton Police Reports	2	Changed description.
513	2013-10-12 15:59:08.504905+00	23	22	145	Maiden Police Reports	2	Changed description.
514	2013-10-12 15:59:33.699679+00	23	22	143	Kenansville Police Reports	2	Changed description.
515	2013-10-12 15:59:52.975425+00	23	22	149	Shelby County Police Reports	2	No fields changed.
516	2013-10-13 14:38:09.497064+00	23	22	157	Louisburg Police Reports	1	
517	2013-10-13 14:41:42.556581+00	23	22	158	Pinetops Police Reports	1	
518	2013-10-13 14:41:50.084388+00	23	22	157	Louisburg Police Reports	2	No fields changed.
519	2013-10-13 14:42:14.643064+00	23	22	158	Pinetops Police Reports	2	Changed description.
520	2013-10-13 14:45:37.940469+00	23	22	159	Tarboro Police Reports	1	
521	2013-10-13 14:49:14.670528+00	23	22	160	Sanford Police Reports	1	
522	2013-10-13 14:54:56.114161+00	23	22	161	Mooresville Police Reports	1	
523	2013-10-13 15:13:47.895201+00	23	22	162	Sparta Police Reports	1	
524	2013-10-13 15:22:00.547462+00	23	22	163	Statesville Police Reports	1	
525	2013-10-13 15:28:35.583036+00	23	22	164	Red Springs Police Reports	1	
526	2013-10-13 15:33:30.786117+00	23	22	165	Sugar Mountain Police Reports	1	
527	2013-10-13 15:36:14.719023+00	23	22	166	Norlina Police Reports	1	
528	2013-10-13 15:50:22.758755+00	23	22	167	Tryon Police Reports	1	
529	2013-10-13 15:50:45.238804+00	23	22	167	Tryon Police Reports	2	No fields changed.
530	2013-10-13 15:59:11.009354+00	23	22	168	Pine Level Police Reports	1	
531	2013-10-13 16:08:30.524131+00	23	22	169	Whispering Pines Police Reports	1	
532	2013-10-13 16:08:51.110655+00	23	22	169	Whispering Pines Police Reports	2	No fields changed.
533	2013-10-13 16:22:09.769565+00	23	22	170	Stanfield Police Reports	1	
534	2013-10-13 16:28:54.994882+00	23	22	171	Robbins Police Reports	1	
535	2013-10-13 16:30:21.920967+00	23	22	171	Robbins Police Reports	2	Changed description.
536	2013-10-13 16:30:35.705976+00	23	22	171	Robbins Police Reports	2	No fields changed.
537	2013-10-14 01:05:25.547611+00	2	19	86	Montgomery County Food Establishment Inspections	3	
538	2013-10-14 01:14:34.578487+00	23	22	162	Sparta Police Reports	2	Changed description and relevance.
539	2013-10-14 01:49:47.364145+00	20	22	172	Wallace Police Reports	1	
540	2013-10-14 01:56:57.356107+00	20	22	173	Grifton Police Reports	1	
541	2013-10-14 02:06:50.955106+00	20	22	173	Grifton Police Reports	2	Changed relevance.
542	2013-10-14 02:07:00.228863+00	20	22	172	Wallace Police Reports	2	Changed relevance.
543	2013-10-14 02:09:52.540493+00	20	22	174	Ranlo Police Reports	1	
544	2013-10-14 02:17:37.91129+00	20	22	175	Wrightsville Beach Police Reports	1	
545	2013-10-14 02:21:20.883016+00	20	22	176	Youngsville Police Reports	1	
546	2013-10-14 02:28:50.359363+00	20	22	177	Pinehurst Police Reports	1	
547	2013-10-14 02:34:28.093608+00	20	22	178	Pilot Mountain Police Reports	1	
548	2013-10-14 15:44:33.017228+00	2	12	555	Swan Quarter	1	
549	2013-10-14 15:44:51.515264+00	2	13	100	Hyde	1	
550	2013-10-14 16:07:50.511609+00	2	22	141	Person County Food Establishment Inspections	2	Changed status.
551	2013-10-14 16:08:08.288478+00	2	22	178	Pilot Mountain Police Reports	2	Changed status.
552	2013-10-14 16:08:18.380166+00	2	22	177	Pinehurst Police Reports	2	Changed status.
553	2013-10-14 16:08:27.517726+00	2	22	176	Youngsville Police Reports	2	Changed status.
554	2013-10-14 16:08:42.655147+00	2	22	175	Wrightsville Beach Police Reports	2	Changed status.
555	2013-10-14 16:08:51.028857+00	2	22	174	Ranlo Police Reports	2	Changed status.
556	2013-10-14 16:09:02.815035+00	2	22	173	Grifton Police Reports	2	Changed status.
557	2013-10-14 16:09:12.645257+00	2	22	172	Wallace Police Reports	2	Changed status.
558	2013-10-14 16:09:26.48506+00	2	22	171	Robbins Police Reports	2	Changed status.
559	2013-10-14 16:09:36.639964+00	2	22	170	Stanfield Police Reports	2	Changed status.
560	2013-10-14 16:09:44.809146+00	2	22	169	Whispering Pines Police Reports	2	Changed status.
561	2013-10-14 16:09:56.975597+00	2	22	168	Pine Level Police Reports	2	Changed status.
562	2013-10-14 16:10:05.699786+00	2	22	167	Tryon Police Reports	2	Changed status.
563	2013-10-14 16:10:15.159245+00	2	22	166	Norlina Police Reports	2	Changed status.
564	2013-10-14 16:10:26.27792+00	2	22	165	Sugar Mountain Police Reports	2	Changed status.
565	2013-10-14 16:10:35.562301+00	2	22	164	Red Springs Police Reports	2	Changed status.
566	2013-10-14 16:10:46.210382+00	2	22	163	Statesville Police Reports	2	Changed status.
567	2013-10-14 16:10:56.149302+00	2	22	162	Sparta Police Reports	2	Changed status.
568	2013-10-14 16:11:06.997547+00	2	22	161	Mooresville Police Reports	2	Changed status.
569	2013-10-14 16:11:17.198267+00	2	22	160	Sanford Police Reports	2	Changed status.
570	2013-10-14 16:11:25.849514+00	2	22	159	Tarboro Police Reports	2	Changed status.
571	2013-10-14 16:22:32.444591+00	2	22	158	Pinetops Police Reports	2	Changed status.
572	2013-10-14 16:22:41.623316+00	2	22	157	Louisburg Police Reports	2	Changed status.
573	2013-10-14 16:22:53.203901+00	2	22	156	Woodfin Police Reports	2	Changed status.
574	2013-10-14 16:23:05.889814+00	2	22	155	Rolesville Police Reports	2	Changed status.
575	2013-10-14 16:23:16.936078+00	2	22	154	Mebane Police Reports	2	Changed status.
576	2013-10-14 16:23:27.258411+00	2	22	153	Saint Pauls Police Reports	2	Changed status.
577	2013-10-14 16:23:35.970212+00	2	22	152	Murfreesboro Police Reports	2	Changed status.
578	2013-10-14 16:23:49.853036+00	2	22	151	Princeton Police Reports	2	Changed status.
579	2013-10-14 16:24:07.091922+00	2	22	150	Lincolnton Police Reports	2	Changed status.
580	2013-10-14 16:24:28.964054+00	2	22	149	Shelby Police Reports	2	Changed status and title.
581	2013-10-14 16:24:38.725927+00	2	22	148	Spruce Pine Police Reports	2	Changed status.
582	2013-10-14 16:24:48.795574+00	2	22	147	Walnut Cove Police Reports	2	Changed status.
583	2013-10-14 16:25:04.259136+00	2	22	146	Norwood Police Reports	2	Changed status.
584	2013-10-14 16:25:17.727298+00	2	22	145	Maiden Police Reports	2	Changed status.
585	2013-10-14 16:25:28.091865+00	2	22	144	Laurel Park Police Reports	2	Changed status.
586	2013-10-14 16:25:37.060145+00	2	22	143	Kenansville Police Reports	2	Changed status.
587	2013-10-14 16:25:48.618292+00	2	22	142	Richlands Police Reports	2	Changed status.
588	2013-10-14 16:26:05.229268+00	2	22	140	Pamlico County Food Establishment Inspections	2	Changed status.
589	2013-10-14 16:26:17.459682+00	2	22	139	Onslow County Food Establishment Inspections	2	Changed status.
590	2013-10-14 16:26:31.533123+00	2	22	138	New Hanover County Food Establishment Inspections	2	Changed status.
591	2013-10-14 16:26:42.949555+00	2	22	137	Nash County Food Establishment Inspections	2	Changed status.
592	2013-10-14 16:26:52.689445+00	2	22	136	Jackson Police Reports 	2	Changed status.
593	2013-10-14 16:27:02.84158+00	2	22	135	Hudson Police Reports 	2	Changed status.
594	2013-10-14 16:27:11.841655+00	2	22	134	Holly Springs Police Reports	2	Changed status.
595	2013-10-14 16:27:25.522256+00	2	22	133	Holly Ridge Police Reports	2	Changed status.
596	2013-10-14 16:27:36.067745+00	2	22	132	Holden Beach Police Reports 	2	Changed status.
597	2013-10-14 16:27:44.239867+00	2	22	131	Highlands Police Records 	2	Changed status.
598	2013-10-14 16:27:54.447177+00	2	22	130	Hillsborough Police Reports 	2	Changed status.
599	2013-10-14 16:28:04.47448+00	2	22	129	Hertford Police Records 	2	Changed status.
600	2013-10-14 16:28:14.03054+00	2	22	128	Henderson Police Records 	2	Changed status.
601	2013-10-14 16:28:24.928987+00	2	22	127	Haw River Police Records 	2	Changed status.
602	2013-10-14 16:28:36.672823+00	2	22	126	Havelock Police Records 	2	Changed status.
603	2013-10-14 16:28:46.97737+00	2	22	125	Granite Quarry Police Reports 	2	Changed status.
604	2013-10-14 16:29:00.188596+00	2	22	124	Huntersville Police Reports 	2	Changed status.
605	2013-10-14 16:29:12.436864+00	2	22	123	Granite Falls Police Reports 	2	Changed status.
606	2013-10-14 16:29:22.836912+00	2	22	122	Graham Police Reports	2	Changed status.
607	2013-10-14 16:29:34.614608+00	2	22	121	Fuquay-Varina Police Reports	2	Changed status.
608	2013-10-14 16:29:43.563456+00	2	22	120	Fremont Police Department 	2	Changed status.
609	2013-10-14 16:29:53.892155+00	2	22	119	Franklinton Police Reports 	2	Changed status.
610	2013-10-14 16:30:05.315825+00	2	22	118	Gibsonville Police Records	2	Changed status.
611	2013-10-14 16:30:15.162506+00	2	22	117	Gastonia Police Records	2	Changed status.
612	2013-10-14 16:30:25.278471+00	2	22	116	Garysburg Police Records	2	Changed status.
613	2013-10-14 16:30:43.255029+00	2	22	115	Garner Police Records	2	Changed status.
614	2013-10-14 16:31:01.735653+00	2	22	114	Fairmont Police Records	2	Changed status.
615	2013-10-14 16:31:27.388689+00	2	22	113	Erwin Police Records	2	Changed status.
616	2013-10-14 16:31:40.049229+00	2	22	112	Enfield Police Records	2	Changed status.
617	2013-10-14 16:32:17.120374+00	2	22	111	Emerald Isle Police Records	2	Changed status.
618	2013-10-14 16:32:30.072529+00	2	22	109	Franklin Police Reports	2	Changed status.
619	2013-10-14 16:32:40.057322+00	2	22	108	Four Oaks Police Records 	2	Changed status.
620	2013-10-14 16:32:49.737967+00	2	22	107	Forest City Police Records 	2	Changed status.
621	2013-10-14 16:32:58.398448+00	2	22	106	Fletcher Police Records 	2	Changed status.
622	2013-10-14 16:33:08.113484+00	2	22	105	Elizabethtown Police Records 	2	Changed status.
623	2013-10-14 16:33:17.010836+00	2	22	104	Elizabeth City Police Records	2	Changed status.
624	2013-10-14 16:33:25.999288+00	2	22	103	Edenton Police Records	2	Changed status.
625	2013-10-14 16:33:34.631713+00	2	22	102	Eden Police Records	2	Changed status.
626	2013-10-14 16:33:43.518698+00	2	22	101	East Spencer Police Records 	2	Changed status.
627	2013-10-14 16:33:54.458741+00	2	22	100	Farmville Police Reports	2	Changed status.
628	2013-10-14 16:58:27.785814+00	2	19	63	Cherokee County Food Establishment Inspections	2	No fields changed.
629	2013-10-14 16:59:56.847589+00	2	19	13	Yancey County Food Establishment Inspections	3	
630	2013-10-14 17:06:29.447969+00	2	22	179	West Jefferson Police Reports	1	
631	2013-10-14 17:15:00.387393+00	2	22	180	White Lake Police Reports	1	
632	2013-10-14 17:19:33.20952+00	2	22	181	Montreat Police Reports	1	
633	2013-10-14 19:03:34.399636+00	18	19	71	Alexander County Property Sales	2	Changed short_description.
634	2013-10-14 19:15:31.970483+00	2	3	22	paris_alston	2	Changed password, first_name and last_name.
635	2013-10-14 19:15:46.804596+00	2	3	8	mtdukes	2	Changed password, first_name and last_name.
636	2013-10-14 19:15:58.423237+00	2	3	19	emmann	2	Changed password, first_name and last_name.
637	2013-10-14 19:16:08.525646+00	2	3	16	jmoroney	2	Changed password, first_name and last_name.
638	2013-10-14 19:16:19.382228+00	2	3	21	jrskennedy	2	Changed password, first_name and last_name.
639	2013-10-14 19:21:43.700412+00	18	19	95	Mecklenburg County GIS and Mapping Data	1	
640	2013-10-14 19:33:16.433934+00	18	19	96	Wake County GIS	1	
641	2013-10-14 19:50:20.904735+00	18	19	97	Guilford County GIS	1	
642	2013-10-14 20:27:17.071154+00	18	19	98	Cumberland County GIS	1	
643	2013-10-14 20:31:06.351126+00	18	19	98	Cumberland County GIS	2	Changed short_description, description, agency_type, counties and data_types. Added url "Interactive map - HTML - http://www.arcgis.com/explorer/?open=271090d98ae14d7fb2d8b20f878114c3". Added url "Data download - HTML - http://expo.co.cumberland.nc.us/downloads.html".
644	2013-10-14 20:31:12.832592+00	18	19	98	Cumberland County GIS	2	Added url "Interactive map - HTML - http://www.arcgis.com/explorer/?open=271090d98ae14d7fb2d8b20f878114c3". Added url "Data download - HTML - http://expo.co.cumberland.nc.us/downloads.html".
645	2013-10-14 20:32:51.020187+00	18	19	98	Cumberland County GIS	2	Deleted url "Interactive map - HTML - http://www.arcgis.com/explorer/?open=271090d98ae14d7fb2d8b20f878114c3". Deleted url "Data download - HTML - http://expo.co.cumberland.nc.us/downloads.html". Added url image "url_images/98/Screen Shot 2013-10-14 at 4_1.31".
646	2013-10-14 20:33:40.292292+00	18	19	98	Cumberland County GIS	2	No fields changed.
647	2013-10-15 15:37:04.045474+00	2	3	26	JennaJ92	2	Changed password, is_active, is_staff and groups.
648	2013-10-15 15:54:39.761518+00	22	19	99	New Hanover GIS	1	
649	2013-10-15 16:06:47.977848+00	26	19	100	Matthew's Police Reports	1	
650	2013-10-15 16:07:38.33675+00	26	19	100	Matthews Police Reports	2	Changed name.
651	2013-10-15 16:14:54.81975+00	2	22	182	Pineville Police Reports	1	
652	2013-10-15 16:15:07.379209+00	2	22	182	Pineville Police Reports	2	Changed status.
653	2013-10-16 18:09:25.411661+00	26	19	101	Alamance County Property Data	1	
654	2013-10-16 18:25:02.533536+00	26	19	102	Harnett County Property Data	1	
655	2013-10-18 01:54:34.392885+00	16	22	183	Mint Hill Police Records	1	
656	2013-10-18 02:37:52.546624+00	16	19	103	Wake County Police Reports	1	
657	2013-10-18 02:50:10.067042+00	16	22	184	Knightdale Police Records	1	
658	2013-10-18 02:59:12.230633+00	16	22	185	Morrisville Police Records	1	
659	2013-10-18 03:16:13.488973+00	16	19	104	Morrisville Crime Records	1	
660	2013-10-18 03:19:19.427789+00	16	19	104	Morrisville Crime Records	2	Added url "Morrisville Crime Report Web App - HTML - http://spotcrime.com/nc/morrisville". Added url image "url_images/104/Screen Shot 2013-10-17 at 11_1.17".
661	2013-10-18 03:31:25.842156+00	16	22	186	Seven Devils Police Records	1	
662	2013-10-18 03:36:22.681828+00	16	22	187	Wendell Police Records	1	
663	2013-10-18 03:43:46.426532+00	16	19	105	Wake Forest Police Records	1	
664	2013-10-18 03:54:04.795165+00	16	19	106	Carrboro Police Records	1	
665	2013-10-18 14:51:23.431881+00	2	22	187	Wendell Police Records	2	Changed status.
666	2013-10-18 14:51:34.221452+00	2	22	186	Seven Devils Police Records	2	Changed status.
667	2013-10-18 14:51:52.557683+00	2	22	185	Morrisville Police Records	2	Changed status.
668	2013-10-18 14:52:03.318247+00	2	22	184	Knightdale Police Records	2	Changed status.
669	2013-10-18 14:52:13.5158+00	2	22	183	Mint Hill Police Records	2	Changed status.
670	2013-10-18 19:48:11.856494+00	18	19	107	Durham County GIS	1	
671	2013-10-18 19:48:22.935494+00	18	19	107	Durham County GIS	2	No fields changed.
672	2013-10-18 20:00:46.297115+00	18	19	108	Gaston County GIS	1	
673	2013-10-18 20:09:17.770838+00	18	19	109	Union County GIS	1	
674	2013-10-18 20:17:14.10546+00	18	19	110	Onslow County GIS	1	
675	2013-10-18 20:18:12.64938+00	18	19	110	Onslow County GIS	2	Changed division.
676	2013-10-18 20:25:28.86382+00	18	19	111	Cabarrus County GIS	1	
677	2013-10-18 20:38:44.078652+00	18	19	112	Johnston County GIS	1	
678	2013-10-18 21:52:08.232745+00	22	22	188	Weaverville Police Records 	1	
679	2013-10-18 22:09:53.65747+00	22	19	113	Kannapolis Police Records 	1	
680	2013-10-18 22:18:18.203756+00	22	22	189	Hope Mills Police Records	1	
681	2013-10-18 22:53:33.19282+00	22	22	190	Cherryville Police Reports	1	
682	2013-10-18 22:53:46.354078+00	22	22	190	Cherryville Police Records	2	Changed title.
683	2013-10-18 22:55:49.362413+00	22	22	191	Lowell Police Records	1	
684	2013-10-18 22:57:25.188547+00	22	22	192	Mount Holly Police Records	1	
685	2013-10-18 23:45:53.13179+00	22	22	193	Stanley Police Records	1	
686	2013-10-18 23:59:11.328476+00	22	19	114	High Point Police Records	1	
687	2013-10-19 19:45:08.969958+00	20	22	194	Troy Police Reports	1	
688	2013-10-19 19:50:33.747794+00	20	22	195	Simpson Police Reports	1	
689	2013-10-19 19:54:12.644247+00	23	22	196	Marshville Police Reports	1	
690	2013-10-19 19:54:18.30691+00	20	22	197	Randleman Police Reports	1	
691	2013-10-19 19:59:13.189846+00	20	22	198	Mayodan Police Reports	1	
692	2013-10-19 20:04:02.672083+00	23	22	199	Monroe Police Reports	1	
693	2013-10-19 20:06:28.400945+00	20	22	200	King Police Reports	1	
694	2013-10-19 20:09:45.018088+00	20	22	201	Mount Airy Police Reports	1	
695	2013-10-19 20:13:12.4847+00	20	22	202	Misenheimer Police Reports	1	
696	2013-10-19 20:16:53.146467+00	23	22	203	Stallings Police Reports	1	
697	2013-10-19 20:21:00.164033+00	20	22	204	Rhodhiss Police Reports	1	
698	2013-10-19 20:25:22.824419+00	20	22	205	Southport Police Reports	1	
699	2013-10-19 20:29:01.999837+00	20	22	206	Indian Beach Police Reports	1	
700	2013-10-20 00:40:17.08936+00	19	22	207	Greensboro Police Incident Reports 	1	
701	2013-10-20 00:40:29.836701+00	19	22	207	Greensboro Police Reports 	2	Changed title.
702	2013-10-20 00:44:09.178644+00	19	22	208	Kure Beach Police Reports 	1	
703	2013-10-20 00:56:55.668384+00	19	19	115	Wilmington Police Reports 	1	
704	2013-10-20 01:01:17.621215+00	19	22	209	Landis Police Reports 	1	
705	2013-10-20 01:07:07.366652+00	19	22	210	Rockwell Police Reports 	1	
706	2013-10-20 01:13:36.346495+00	19	22	211	Salisbury Police Reports 	1	
707	2013-10-20 01:16:17.474292+00	19	22	212	Spencer Police Reports 	1	
708	2013-10-20 01:36:24.131361+00	19	19	116	Rowan County Police Reports 	1	
709	2013-10-20 01:41:17.845592+00	19	22	213	Waxhaw Police Reports	1	
710	2013-10-20 01:49:47.373642+00	19	22	214	Wingate Police Reports 	1	
711	2013-10-20 01:55:28.613747+00	19	22	215	Raleigh Police Reports 	1	
712	2013-10-20 01:58:32.264818+00	19	22	216	State Capitol Police Reports 	1	
713	2013-10-20 02:06:49.386321+00	19	22	217	Mitchell County Food Establishment Inspections 	1	
714	2013-10-20 02:10:27.063493+00	19	22	218	Montgomery County Food Establishment Inspections 	1	
715	2013-10-20 02:13:42.595994+00	19	22	219	Moore County Food Establishment Inspections 	1	
716	2013-10-20 02:17:05.597747+00	19	22	220	Rockingham County Food Establishment Inspections 	1	
717	2013-10-20 02:19:15.941259+00	19	22	221	Sampson County Food Establishment Inspections 	1	
718	2013-10-20 02:34:30.529919+00	19	19	117	Stokes County Food Establishment Inspections 	1	
719	2013-10-20 03:14:11.360707+00	19	22	222	Stokes County Food Establishment Inspections	1	
720	2013-10-20 03:21:00.03543+00	19	22	223	Swain County Food Establishment Inspections 	1	
721	2013-10-20 03:23:57.259736+00	19	22	224	Union County Food Establishment Inspections 	1	
722	2013-10-20 03:26:24.578516+00	19	22	225	Vance County Food Establishment Inspections 	1	
723	2013-10-20 03:40:33.74352+00	19	22	226	Warren County Food Establishment Inspections	1	
724	2013-10-20 03:50:10.933453+00	19	19	118	Wayne County Food Establishment Inspections	1	
725	2013-10-20 03:54:16.736123+00	19	22	227	Wayne County Food Establishment Inspections	1	
726	2013-10-20 04:00:07.057848+00	19	22	228	Wilson County Food Establishment Inspections	1	
727	2013-10-20 04:05:00.187208+00	19	22	229	Yancey County Food Establishment Inspections	1	
728	2013-10-20 04:43:51.36365+00	26	19	119	Haywood County Property Data	1	
729	2013-10-20 05:02:27.834663+00	26	19	120	Henderson County Property Data	1	
730	2013-10-20 05:21:38.462391+00	26	19	121	Iredell County Property Data	1	
731	2013-10-20 18:17:34.280177+00	26	19	122	Lee County Property Data	1	
732	2013-10-20 20:37:52.304767+00	19	22	230	Cleveland Police Records 	1	
733	2013-10-20 20:49:04.622934+00	19	22	231	Jacksonville Police Reports 	1	
734	2013-10-20 20:55:38.613811+00	19	22	232	North Topsail Beach Police Records 	1	
735	2013-10-20 21:00:10.079989+00	19	22	233	Swansboro Police Records 	1	
736	2013-10-20 21:00:35.406689+00	19	22	230	Cleveland Police Reports	2	Changed title.
737	2013-10-20 21:00:46.823017+00	19	22	232	North Topsail Beach Police Reports	2	Changed title.
738	2013-10-20 21:00:55.869459+00	19	22	233	Swansboro Police Reports	2	Changed title.
739	2013-10-20 21:05:08.808962+00	19	22	234	Kenly Police Reports 	1	
740	2013-10-20 21:07:59.642113+00	19	22	235	Micro Police Reports 	1	
741	2013-10-20 21:11:09.314399+00	19	22	236	Selma Police Reports 	1	
742	2013-10-20 21:17:16.673531+00	19	22	237	Smithfield Police Reports	1	
743	2013-10-20 21:20:58.42462+00	19	22	238	Wilson's Mills Police Reports 	1	
744	2013-10-20 21:27:19.005449+00	19	22	239	Fountain Police Reports 	1	
745	2013-10-20 21:47:28.229451+00	20	22	240	Spindale Police Reports	1	
746	2013-10-20 21:50:07.26485+00	20	22	241	Rutherfordton Police Reports	1	
747	2013-10-20 21:59:21.541309+00	20	22	242	Warrenton Police Reports	1	
748	2013-10-20 22:01:38.478095+00	20	22	243	Plymouth Police Reports	1	
749	2013-10-20 22:03:11.396327+00	19	19	123	Greenville Police Case Reports 	1	
750	2013-10-20 22:06:12.447745+00	19	19	124	Greenville Police Arrest Reports 	1	
751	2013-10-20 22:06:15.63282+00	20	22	244	Jonesville Police Reports	1	
752	2013-10-20 22:06:25.894221+00	19	19	123	Greenville Police Case Reports 	2	Changed short_description.
753	2013-10-20 22:09:08.390424+00	20	22	245	Taylortown Police Reports	1	
754	2013-10-20 22:10:09.730329+00	19	19	125	Greenville Police Drug Arrest Reports	1	
755	2013-10-20 22:13:22.868717+00	19	19	126	Greenville Police Crime Mapping	1	
756	2013-10-20 22:14:14.694232+00	20	22	246	Sharpsburg Police Reports	1	
757	2013-10-20 22:16:30.14497+00	20	22	247	Robersonville Police Reports	1	
758	2013-10-20 22:22:23.725162+00	20	22	248	Raeford Police Reports	1	
759	2013-10-20 22:25:33.853972+00	20	22	249	Lillington Police Reports	1	
760	2013-10-20 22:28:03.691993+00	20	22	250	Vass Police Reports	1	
761	2013-10-20 22:31:19.106817+00	20	22	251	Mount Gilead Police Reports	1	
762	2013-10-20 22:34:22.118125+00	20	22	252	Star Police Reports	1	
763	2013-10-20 22:41:02.437158+00	20	22	253	Spring Hope Police Reports	1	
764	2013-10-20 22:43:32.817966+00	20	22	254	Middlesex Police Reports	1	
765	2013-10-20 22:46:17.42952+00	20	22	255	Conway Police Reports	1	
766	2013-10-20 22:48:45.32567+00	20	22	256	Burgaw Police Reports	1	
767	2013-10-20 22:52:40.617158+00	20	22	257	Liberty Police Reports	1	
768	2013-10-20 22:59:36.056598+00	20	22	258	St. Pauls Police Reports	1	
769	2013-10-20 23:59:34.611954+00	23	22	259	Thomasville Police Reports	1	
770	2013-10-21 00:06:27.560262+00	23	22	260	Troutman Police Reports	1	
771	2013-10-21 00:06:35.501761+00	23	22	260	Troutman Police Reports	2	No fields changed.
772	2013-10-21 00:08:36.042511+00	19	22	261	Winterville Police Reports 	1	
773	2013-10-21 00:10:54.376355+00	23	22	262	Long View Police Reports	1	
774	2013-10-21 00:19:28.224467+00	23	22	263	Newton Police Reports	1	
775	2013-10-21 00:21:38.679524+00	19	19	127	Lexington Police Reports 	1	
776	2013-10-21 00:24:19.743111+00	23	22	264	Ramseur Police Reports 	1	
777	2013-10-21 00:26:33.40897+00	22	19	128	Greensboro Police Records	1	
778	2013-10-21 00:29:28.516565+00	23	22	265	Mount Olive Police Reports	1	
779	2013-10-21 00:30:31.441432+00	19	22	207	Greensboro Police Reports 	3	
780	2013-10-21 00:38:25.827591+00	23	22	266	Leland Police Reports	1	
781	2013-10-21 00:47:25.427512+00	23	22	267	Kings Mountain Police Reports	1	
782	2013-10-21 00:53:52.867618+00	23	22	268	Stantonsburg Police Reports	1	
783	2013-10-21 00:55:49.715445+00	19	19	129	Hickory Police Reports 	1	
784	2013-10-21 01:03:26.191002+00	23	22	269	Pittsboro Police Reports	1	
785	2013-10-21 01:04:11.793473+00	19	22	270	Seagrove Police Reports 	1	
786	2013-10-21 01:11:38.607429+00	23	22	271	Maggie Valley Police Reports	1	
787	2013-10-21 01:15:24.981581+00	19	22	272	Ellerbe Police Reports 	1	
788	2013-10-21 01:16:30.791287+00	23	22	273	Littleton Police Reports	1	
789	2013-10-21 01:20:23.142179+00	19	22	274	Hamlet Police Reports 	1	
790	2013-10-21 01:28:49.694341+00	23	22	275	Taylorsville Police Reports	1	
791	2013-10-21 01:31:30.990888+00	23	22	276	Wagram Police Reports 	1	
792	2013-10-21 01:35:50.956923+00	23	22	277	Jefferson Police Reports	1	
793	2013-10-21 01:38:49.197064+00	23	22	278	Williamston Police Reports	1	
794	2013-10-21 01:40:21.697848+00	23	22	278	Williamston Police Reports	2	Changed description.
795	2013-10-21 01:52:25.191968+00	23	22	279	Ocean Isle Beach Police Reports	1	
796	2013-10-21 03:44:12.824553+00	22	19	130	Rowan GIS	1	
797	2013-10-21 06:28:19.005264+00	26	19	122	Lee County Property Data	2	Changed description.
798	2013-10-21 07:20:02.531448+00	26	19	131	Lincoln County Property Data	1	
799	2013-10-28 04:25:09.909054+00	7	22	279	Ocean Isle Beach Police Reports	2	Changed status.
800	2013-10-28 04:25:44.737207+00	7	22	278	Williamston Police Reports	2	Changed status.
801	2013-10-28 04:26:10.147669+00	7	22	277	Jefferson Police Reports	2	Changed status.
802	2013-10-28 04:26:26.04552+00	7	22	276	Wagram Police Reports 	2	Changed status.
803	2013-10-28 04:26:46.815726+00	7	22	275	Taylorsville Police Reports	2	Changed status.
804	2013-10-28 04:27:08.153232+00	7	22	274	Hamlet Police Reports 	2	Changed status.
805	2013-10-28 04:27:28.494288+00	7	22	273	Littleton Police Reports	2	Changed status.
806	2013-10-28 04:27:40.384088+00	7	22	272	Ellerbe Police Reports 	2	Changed status.
807	2013-10-28 04:27:56.790726+00	7	22	271	Maggie Valley Police Reports	2	Changed status.
808	2013-10-28 04:28:14.626413+00	7	22	270	Seagrove Police Reports 	2	Changed status.
809	2013-10-28 04:28:36.797618+00	7	22	269	Pittsboro Police Reports	2	Changed status.
810	2013-10-28 04:28:53.307125+00	7	22	268	Stantonsburg Police Reports	2	Changed status.
811	2013-10-28 04:29:11.335317+00	7	22	267	Kings Mountain Police Reports	2	Changed status.
812	2013-10-28 04:29:55.875553+00	7	22	266	Leland Police Reports	2	Changed status.
813	2013-10-28 04:30:50.734126+00	7	22	265	Mount Olive Police Reports	2	Changed status.
814	2013-10-28 04:31:02.092104+00	7	22	264	Ramseur Police Reports 	2	Changed status.
815	2013-10-28 04:41:46.173986+00	7	22	263	Newton Police Reports	2	Changed status.
816	2013-10-28 04:42:51.330022+00	7	22	262	Long View Police Reports	2	Changed status.
817	2013-10-28 04:43:26.959001+00	7	22	261	Winterville Police Reports 	2	Changed status.
818	2013-10-28 04:44:39.674306+00	7	22	260	Troutman Police Reports	2	Changed status and description.
819	2013-10-28 04:46:41.655878+00	7	22	259	Thomasville Police Reports	2	Changed status, description and url.
820	2013-10-28 04:46:55.994674+00	7	22	258	St. Pauls Police Reports	2	Changed status.
821	2013-10-28 04:47:06.822578+00	7	22	257	Liberty Police Reports	2	Changed status.
822	2013-10-28 04:47:18.011409+00	7	22	256	Burgaw Police Reports	2	Changed status.
823	2013-10-28 04:47:27.115203+00	7	22	255	Conway Police Reports	2	Changed status.
824	2013-10-28 04:47:39.923078+00	7	22	254	Middlesex Police Reports	2	Changed status.
825	2013-10-28 04:47:51.859749+00	7	22	253	Spring Hope Police Reports	2	Changed status.
826	2013-10-28 04:48:01.960458+00	7	22	252	Star Police Reports	2	Changed status.
827	2013-10-28 04:48:15.651874+00	7	22	251	Mount Gilead Police Reports	2	Changed status.
828	2013-10-28 04:51:03.952433+00	7	22	250	Vass Police Reports	2	Changed status.
829	2013-10-28 04:51:14.903556+00	7	22	249	Lillington Police Reports	2	Changed status.
830	2013-10-28 04:52:00.777727+00	7	22	248	Raeford Police Reports	2	Changed status.
831	2013-10-28 04:52:14.901275+00	7	22	247	Robersonville Police Reports	2	Changed status.
832	2013-10-28 04:52:48.223818+00	7	22	246	Sharpsburg Police Reports	2	Changed status.
833	2013-10-28 04:53:09.238509+00	7	22	245	Taylortown Police Reports	2	Changed status.
834	2013-10-28 04:53:34.563932+00	7	22	244	Jonesville Police Reports	2	Changed status.
835	2013-10-28 04:54:09.259384+00	7	22	243	Plymouth Police Reports	2	Changed status.
836	2013-10-28 04:54:55.337975+00	7	22	241	Rutherfordton Police Reports	2	Changed status.
837	2013-10-28 04:55:08.225928+00	7	22	240	Spindale Police Reports	2	Changed status.
838	2013-10-28 04:55:29.062521+00	7	22	239	Fountain Police Reports 	2	Changed status.
839	2013-10-28 04:55:44.12227+00	7	22	238	Wilson's Mills Police Reports 	2	Changed status.
840	2013-10-28 04:57:26.176749+00	7	22	237	Smithfield Police Reports	2	Changed status and description.
841	2013-10-28 04:58:04.136433+00	7	22	236	Selma Police Reports 	2	Changed status.
842	2013-10-28 04:58:14.860432+00	7	22	235	Micro Police Reports 	2	Changed status.
843	2013-10-28 04:58:46.223023+00	7	22	234	Kenly Police Reports 	2	Changed status.
844	2013-10-28 04:58:55.272315+00	7	22	233	Swansboro Police Reports	2	Changed status.
845	2013-10-28 04:59:26.493774+00	7	22	232	North Topsail Beach Police Reports	2	Changed status.
846	2013-10-28 05:01:38.880079+00	7	22	231	Jacksonville Police Reports 	2	Changed status.
847	2013-10-28 05:01:51.974964+00	7	22	230	Cleveland Police Reports	2	Changed status.
848	2013-10-28 05:04:27.735577+00	7	22	242	Warrenton Police Reports	2	Changed status.
849	2013-10-28 05:05:05.20391+00	7	22	229	Yancey County Food Establishment Inspections	2	Changed status.
850	2013-10-28 05:05:28.193717+00	7	22	228	Wilson County Food Establishment Inspections	2	Changed status.
851	2013-10-28 05:06:05.583549+00	7	22	227	Wayne County Food Establishment Inspections	2	Changed status.
852	2013-10-28 05:06:21.303429+00	7	22	226	Warren County Food Establishment Inspections	2	Changed status.
853	2013-10-28 05:08:03.381893+00	7	22	225	Vance County Food Establishment Inspections 	2	Changed status.
854	2013-10-28 05:08:14.485496+00	7	22	224	Union County Food Establishment Inspections 	2	Changed status.
855	2013-10-28 05:08:26.508496+00	7	22	223	Swain County Food Establishment Inspections 	2	Changed status.
856	2013-10-28 05:10:14.443115+00	7	22	222	Stokes County Food Establishment Inspections	2	Changed status.
857	2013-10-28 05:10:30.794848+00	7	22	221	Sampson County Food Establishment Inspections 	2	Changed status.
858	2013-10-28 05:10:42.623545+00	7	22	220	Rockingham County Food Establishment Inspections 	2	Changed status.
859	2013-10-28 05:11:43.553459+00	7	22	219	Moore County Food Establishment Inspections 	2	Changed status.
860	2013-10-28 05:12:32.746606+00	7	22	218	Montgomery County Food Establishment Inspections 	2	Changed status.
861	2013-10-28 05:12:45.961442+00	7	22	217	Mitchell County Food Establishment Inspections 	2	Changed status.
862	2013-10-28 05:12:57.833673+00	7	22	216	State Capitol Police Reports 	2	Changed status.
863	2013-10-28 05:13:22.246143+00	7	22	215	Raleigh Police Reports 	2	Changed status.
864	2013-10-28 05:13:36.841789+00	7	22	214	Wingate Police Reports 	2	Changed status.
865	2013-10-28 05:13:49.339456+00	7	22	213	Waxhaw Police Reports	2	Changed status.
866	2013-10-28 05:14:02.16712+00	7	22	212	Spencer Police Reports 	2	Changed status.
867	2013-10-28 05:14:23.089694+00	7	22	211	Salisbury Police Reports 	2	Changed status.
868	2013-10-28 05:14:35.649941+00	7	22	210	Rockwell Police Reports 	2	Changed status.
869	2013-10-28 05:14:57.256856+00	7	22	209	Landis Police Reports 	2	Changed status.
870	2013-10-28 05:15:20.213736+00	7	22	208	Kure Beach Police Reports 	2	Changed status.
871	2013-10-28 05:16:27.952397+00	7	22	206	Indian Beach Police Reports	2	Changed status.
872	2013-10-28 05:16:41.644929+00	7	22	205	Southport Police Reports	2	Changed status.
873	2013-10-28 05:16:54.868092+00	7	22	204	Rhodhiss Police Reports	2	Changed status.
874	2013-10-28 05:19:05.532835+00	7	22	203	Stallings Police Reports	2	Changed status and description.
875	2013-10-28 05:19:31.911684+00	7	22	202	Misenheimer Police Reports	2	Changed status.
876	2013-10-28 05:20:29.188606+00	7	22	201	Mount Airy Police Reports	2	Changed status.
877	2013-10-28 05:20:42.154384+00	7	22	200	King Police Reports	2	Changed status.
878	2013-10-28 05:23:31.349361+00	7	22	199	Monroe Police Reports	2	Changed status and description.
879	2013-10-28 05:23:45.914752+00	7	22	198	Mayodan Police Reports	2	Changed status.
880	2013-10-28 05:23:59.188625+00	7	22	197	Randleman Police Reports	2	Changed status.
881	2013-10-28 05:24:19.947715+00	7	22	196	Marshville Police Reports	2	Changed status.
882	2013-10-28 05:24:38.606178+00	7	22	195	Simpson Police Reports	2	Changed status.
883	2013-10-28 05:24:55.49834+00	7	22	194	Troy Police Reports	2	Changed status.
884	2013-10-28 05:25:15.203193+00	7	22	193	Stanley Police Records	2	Changed status.
885	2013-10-28 05:25:28.921384+00	7	22	192	Mount Holly Police Records	2	Changed status.
886	2013-10-28 05:25:39.874121+00	7	22	191	Lowell Police Records	2	Changed status.
887	2013-10-28 05:25:54.129767+00	7	22	190	Cherryville Police Records	2	Changed status.
888	2013-10-28 05:26:08.671368+00	7	22	189	Hope Mills Police Records	2	Changed status.
889	2013-10-28 05:26:36.944212+00	7	22	188	Weaverville Police Records 	2	Changed status.
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 889, true);


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
1	19	2	1	2	ryan	ryan.thornburg@unc.edu	http://unc.edu/	Hello	2013-09-23 13:54:20.2353+00	152.23.152.96	t	f
2	19	11	1	2	Ryan M	ryan_thornburg@yahoo.com	http://cnn.com/	Hello	2013-09-24 01:24:39.351948+00	107.15.139.150	t	f
3	19	11	1	2	ryan	h@yahoo.com	http://cnn.com/	Shouldn't have to pay.	2013-10-01 03:03:18.971433+00	107.15.139.150	t	f
4	19	9	1	1	vrocha	vrocha@caktusgroup.com		It's great that we have access to this kind of information!	2013-10-01 03:21:09.217948+00	71.65.212.51	t	f
5	19	13	1	14	rtburg	ryan.thornburg@unc.edu		It would be better if you could download the data.	2013-10-01 03:52:03.354698+00	107.15.139.150	t	f
6	19	13	1	2	Ryan Thornburg	ryan.thornburg@unc.edu		I agree.	2013-10-01 03:52:42.579362+00	107.15.139.150	t	f
7	19	70	1	2	Ryan Thornburg	ryan.thornburg@unc.edu		It would be nice to have this as an API.	2013-10-08 15:32:01.012651+00	152.3.43.160	t	f
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
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
yyp5f0cml64swl8tezz5k3uljilgkt52	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-15 21:44:54.879636+00
hk9egcestuw96m79g0b47nbs3822pbeb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-16 00:56:09.337226+00
i3mslrhlme4p5rwy7z1ryk9z6zdelbmm	NWI4MTllMmE5MjFhZDRmZWQxOWYzZTExZGMwMDdlMjlmODRmZWNiOTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLA3Uu	2013-08-29 16:44:24.051346+00
yittc5s8xisyluje5pd03bc53ow45rar	M2Y3ODc1NmRlODk5MGYyZjc4NmQyNGMwMjM4MjcxMjEzYTViNjI5NDqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLB3Uu	2013-09-23 14:43:34.446874+00
c1mr2oyf5wchoqgualz97ck8uu6ol346	NTgxMzE1YzlmNWJjOTUzODNiMGE1NmE5ZTE0NDAxMmM0MWQ4YjE1ZDqAAn1xAVgKAAAAdGVzdGNvb2tpZVgGAAAAd29ya2VkcQJzLg==	2013-09-23 23:06:57.210511+00
gtgi8dcy7xwdrew2ctmf6nar01xurakb	NDgyMWM2OWEwMTQ3MmIzN2UyOGUwNDQ5ODYzYzIyNWM0MzkyMDY5YTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLBHUu	2013-08-30 14:51:30.870775+00
rzro00fgxms8bwzb4vfbdzccb7ws61lb	NWJlZTEwN2U3MmI0MDE0NmE2NzA0N2I3Y2I5ODgwYWU2NTQwNmNhOTqAAn1xAShYCgAAAHRlc3Rjb29raWVYBgAAAHdvcmtlZFUSX2F1dGhfdXNlcl9iYWNrZW5kcQJVKWRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kcQNVDV9hdXRoX3VzZXJfaWRxBEsIdS4=	2013-09-26 17:12:20.273502+00
p4w91iojrnhhlzqdn6tvsv0jembhhfpu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-27 03:29:30.495308+00
d7hdbz2og46hawbjsvbndi9pboyn24lu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-27 04:14:40.93877+00
cupdxk4d8pf5yk6x28ieqqa4isrvslnt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-27 04:35:02.840289+00
dps4g7qruwupjfkwfrwhzafcif39mi9p	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-27 04:45:13.234363+00
ailnktz1si9uhdw84u627txty50kxo0z	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-27 04:47:42.607165+00
qrjsj8w2ouwjza8yrjik24dvya6d29ur	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-27 04:54:31.85638+00
5nk7c7q4cfy5lcloho84eulqjodckcrh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-27 05:04:42.874415+00
l7va8jw9xsuf9aprpecomnk01346def2	OTA1YmQ0MTBhNmI2MTdlNmExY2U1ZDExMjY4YWJjZDYxMTA5M2IyMjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAnUu	2013-09-04 22:38:10.213101+00
tt69hi5ylvbaese06zbnuk44gs2t2bat	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-27 05:04:59.9016+00
ics7wkh2of1o2rib0y25ddynb308752j	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-27 05:16:22.148556+00
y848up0gli5uao8mi1snzwc0wld2v2ux	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-27 05:45:06.489702+00
tovc5bk0qu5rvl0nl9zb0om2szld5vwv	NTgxMzE1YzlmNWJjOTUzODNiMGE1NmE5ZTE0NDAxMmM0MWQ4YjE1ZDqAAn1xAVgKAAAAdGVzdGNvb2tpZVgGAAAAd29ya2VkcQJzLg==	2013-09-11 17:26:18.144982+00
5edxsd4dyqr2a6kwsh5sfnx9cd5dsk7h	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-27 06:15:00.612229+00
q1ufi7qltck99j5tnjjqlest2vsepuq8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-27 06:18:18.584973+00
ii8zn2n5k8ra4tl1vqhziqnw1ulj15jl	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-27 06:23:19.07121+00
y5227e3si0pu1gq33cx64dsuhpbmnuro	YWYyN2E3MzgwY2VhMWNkMTliODI4MzJiNmM4ODkyMTJjZjlmOWQxZjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAXUu	2013-09-11 19:16:21.028167+00
ayvzaiefxa6j1h7mq066k7ab1osqrsyv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-28 09:31:19.47101+00
ibphboyu26qobrv2uc517gapi2dmntxa	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-29 14:50:21.013097+00
gj4hvfc93u9t3bipa9ooaf4ize7c9phk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-29 20:10:19.891731+00
2rkm9vr9p9gkhvjq8acpprytqyb4drsp	YWYyN2E3MzgwY2VhMWNkMTliODI4MzJiNmM4ODkyMTJjZjlmOWQxZjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAXUu	2013-09-11 20:39:40.068743+00
hakzntdp8w5c48m941et6tlvy24i9zka	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-13 17:33:06.937767+00
r65kucjs9hnrhca7djis9dq42jxd9fq0	M2Y3ODc1NmRlODk5MGYyZjc4NmQyNGMwMjM4MjcxMjEzYTViNjI5NDqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLB3Uu	2013-09-29 22:00:09.355765+00
n2xe2mcvopi8wltfwbkuxtncp4g3bwfr	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-30 05:10:14.935034+00
faab8555ssyyixea5ba9iluxuvtsi8gc	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-30 05:40:25.62453+00
ysec9lajn6vdal8ph2tr7u7aaovx7o6h	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-30 08:47:57.84287+00
6ryfccn1p8ha1ltydfd3xbxnnejn51gs	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-30 09:22:12.609317+00
0pewvo0c3zz4ygefvqcvjt4vt8jnndvi	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-30 09:56:27.273282+00
sopyjn29rvmc3zordc576xuftco86e97	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-30 10:30:41.820719+00
oqrytm0hweopojdw97oe4zpyktubag4b	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-30 11:04:56.523659+00
iiovfnqd7q0neskgnhjdfjh0g4ik1p31	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-30 12:51:30.489873+00
rlfdv2o2hm5qxpnakv3yl67s6ymfns0e	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-30 13:12:03.523807+00
h0yplgdbvx35jvgtv3uxrl1qk7davb67	NTgxMzE1YzlmNWJjOTUzODNiMGE1NmE5ZTE0NDAxMmM0MWQ4YjE1ZDqAAn1xAVgKAAAAdGVzdGNvb2tpZVgGAAAAd29ya2VkcQJzLg==	2013-10-02 18:07:21.422871+00
7vxx1uewqxcm2erx2w3u96z4buk9on7q	NTgxMzE1YzlmNWJjOTUzODNiMGE1NmE5ZTE0NDAxMmM0MWQ4YjE1ZDqAAn1xAVgKAAAAdGVzdGNvb2tpZVgGAAAAd29ya2VkcQJzLg==	2013-10-04 16:46:28.413805+00
lylgko6h99dchevav5qy38wdm59sgb0x	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-30 14:34:16.164792+00
mi9iahbwvk82dk6e7skg7djb4xpk2b41	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-30 14:54:51.166241+00
g9y41ntqlz0qqs39ua75axtdyu6o3dq6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-30 15:15:24.010193+00
33wh9uo3wspnbrv1kwvoqfi5onfoxl3w	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-30 15:56:29.535929+00
1x2j6eyms720ta5gqmtweehyitpcknnk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-30 19:54:22.949489+00
jwyoc3k8goy3rutb9549kyul6zrijn9n	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-30 21:07:54.264282+00
7n3veynp1zjbtgm4l3fdlxyj86nhx6zv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-01 07:30:47.282418+00
qq8sv1cu328389zufq78l7lxklfhtpyu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-01 08:10:11.012315+00
1xfjrs0etv2z80gxikg9j5q4cad99y1i	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-01 09:11:33.790011+00
n891lnr1vr69twcitvhcignkyh7ha8hq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-01 10:19:35.331007+00
7h9s9li93bpkz0mi467aqnbkgq9oxfgq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-01 10:45:24.397393+00
l9jo7hmpd72t4dzmddf1f9jl43boxmtm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-01 11:20:33.937575+00
mehu2h953taxxtrym0u40p11rt9vfw5y	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-01 11:37:02.329209+00
p822oi11n4i3pdaznsywyh4x4nr3r6tt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-01 12:02:51.40201+00
w31hzvlal59x7seklu0lpu1h86enmzwj	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-01 15:29:47.914402+00
9iwvntmfe945npuyz80c8iwvlb08um10	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-02 01:05:42.268069+00
um45k67ft00pbrxu1axe3e5eyfdg1bd9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-02 01:40:19.950932+00
ix7mtnqnerpmve5a93lcwn7m9j4yz59f	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-02 02:08:39.589727+00
3jxkjm5msg7xo759ndox2cn0bpbyix1g	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-02 02:38:45.907612+00
5gccqj7v9e6be0jzqofpswb7wf7da8nq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-02 03:59:16.475739+00
zn5iqono1h7fyp8lhgtky2soa0497es8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-02 10:25:51.598302+00
pv7now6rvknfuxmhxc0inge3fgaz304o	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-02 12:32:26.73059+00
wt95tx7svf1k641o27nw90r9qosqbgzr	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-08 14:23:17.712171+00
7dp81uhk1r87i7tux1otskruig189f1a	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-15 23:12:26.211568+00
1zwj7viyhk0m6p9mus6jm3d657pwqswi	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-16 00:56:11.602169+00
78adyyebsu8j8h44bfn2cua64shdyx59	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-02 16:31:30.324212+00
irdu4h0rytl65ysw5eo9cvut3qbw4qux	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-02 22:31:40.543847+00
d32tywoup5vzb2kkjevfbixxuqcoftf6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-02 23:20:31.838306+00
orsg6i6jcult12x886n7my6wm5ekmg5x	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-02 23:41:27.193941+00
o2ox436vivmle1erteaijvuoudq4xbcn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-03 01:50:09.445383+00
krns5blbtgcgkgy3ko1cq5uj57dz49wi	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-03 04:40:05.763867+00
ms6043oycq04sftz5r27gnxqre3i847r	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-03 16:10:50.327547+00
2619cc2hy7l75bfr3w33hqrjyotkymwb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-03 16:41:11.985698+00
op2m91naf0lo2kn4hdar0h593tilhhsa	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-03 17:41:13.185419+00
1s2hd3gcmjqp7flwaho38i4p68gu692n	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-03 18:11:16.487378+00
dlz61x3a7eo8hvq1d6fl8h9eaivee8in	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-03 18:41:20.427625+00
janquj22edd0d1f362bs9h9ydeq24yw4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-03 18:50:36.840934+00
mehv0qag3gllqqvcmvuw0qm6mqq9i3jb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-03 19:03:15.759456+00
whvid8570rtmdzmu9npsd1cbrkrugyl6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-03 19:32:03.869319+00
gielebjoh7p2ik6d8siusd97nusleuan	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-03 21:30:22.847631+00
qb9p845hlqebdvrk65jt4q8xqgi9ubw2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-03 22:50:15.836216+00
xu98yezp6b9ejvnuutpjp1uqlklgbf5k	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-03 23:51:16.015062+00
0bk1v5bf7xlvnze3fwygx79keookhpvt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-04 00:52:15.257369+00
ezvtkl5ycfp1a527msya5iflik9fqbgp	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-04 01:21:11.983444+00
26mtyp3gi1c00wscal94nhe3i31bs34l	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-04 07:40:00.50055+00
tygln2k2cut7rwvs1rdclzwy6wzptyfw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-04 09:32:15.881982+00
jzkhcdhamta4tysc9q8hfh9rs234htkt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-04 11:11:53.703501+00
dbfm8z39bb8nrfxo43iw2zmpgt2g2nsl	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-04 12:51:32.063775+00
k6kjb47xkrzkzqimzmecgtpwb9vei4c6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-09 06:19:22.541167+00
0i1vkrs7vbxqnx8rl7ptkg1uk7qb4s46	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-09 09:26:33.806761+00
jtehn5bi2e7effledwc0jkcq3uk5czae	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-16 00:55:31.310732+00
i9x5tco4hx82oossx60wx5mh5a7xz2n0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-04 17:54:28.578968+00
ukd49e79nij9dnou6sm21k5jx1wotusb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-05 01:29:32.823815+00
77ake3k9dkqtg5bz8k3n4vz5t05xpg63	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-09 11:26:04.369144+00
hnj58eq57cnll6cy7z98d4zhuria78ju	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-09 11:26:30.390887+00
6yte87hhit8kxa0dy28tfz1gmr9wnv6o	OTA1YmQ0MTBhNmI2MTdlNmExY2U1ZDExMjY4YWJjZDYxMTA5M2IyMjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAnUu	2013-10-06 02:19:17.640548+00
965zfc4mqkqahn47wb3tzajov5ncm4gn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-06 14:18:36.683724+00
0bwk7odg1g48xjhkcmmliknlv698ia9y	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-06 16:42:25.015059+00
urgw29lpp5z0kegitsz4c8ximgcbo036	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-06 18:21:51.044381+00
o3j2y1jatxu02ltgb2qqujb24yq2ui37	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-09 11:26:32.500694+00
tefj8l30xgc03kzc2g8zw9kessj0k16h	YzFlMDQ4NjMxNzc3ZmY2NTQyZTMzZjJjNGU5M2ZmNjg3OGQ4YTZlNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLCXUu	2013-10-07 00:00:28.512794+00
swsirjfxs18qnhmkg5luaa3r651j5fyq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-16 00:56:13.773496+00
py1c4wzse03rkx5ei62e8x84z3g3sj39	MDY5YmVlNjljNWU0ZGZhMzMzNjQ2Y2MzOTg5MzQ5ODRiZGYyZGRmOTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLCnUu	2013-10-07 00:00:49.612514+00
yi6jzmvm50d91ulo8p77qxdmrll362tz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-07 13:11:11.703738+00
0ln4d94q4dw75w78hbxocwnrvz9mgabc	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-16 03:49:44.007289+00
h5b69htgd6b86jmbz7tsb1x7qna1w5rb	NTgxMzE1YzlmNWJjOTUzODNiMGE1NmE5ZTE0NDAxMmM0MWQ4YjE1ZDqAAn1xAVgKAAAAdGVzdGNvb2tpZVgGAAAAd29ya2VkcQJzLg==	2013-10-07 14:16:42.14652+00
gem2lhhsxn8ktxkwpkgoohukq21tyq0s	OTA1YmQ0MTBhNmI2MTdlNmExY2U1ZDExMjY4YWJjZDYxMTA5M2IyMjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAnUu	2013-10-09 18:17:03.77107+00
2gtda1xnj352r46ribp47lxm9bwt540m	NTgxMzE1YzlmNWJjOTUzODNiMGE1NmE5ZTE0NDAxMmM0MWQ4YjE1ZDqAAn1xAVgKAAAAdGVzdGNvb2tpZVgGAAAAd29ya2VkcQJzLg==	2013-10-07 15:11:52.272177+00
r1hrurkewngk4hux91bq8x38gvyqyagg	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-08 06:34:02.149993+00
3obx3qf4gv0h00pou83m3oc23p2nzlg9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-08 08:55:32.33432+00
yttyxu02me4ldjce690zakjb26oglghm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-08 10:06:17.40929+00
ghybebgqf5qjek21riddm3s4nxuzem5c	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-08 11:35:42.856261+00
w15gxcocy208xtcw908ov6g90kmnkejw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-08 12:41:47.678361+00
2qqpbilf77tnsp0hcjlqxxazrc2z2ovq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-08 13:47:52.378479+00
oghr33rzg9j4u7bf0e10em1lc71dv8yn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-09 22:30:08.476451+00
iowvu83m5aalnbp35q995nsu8qo6ug9k	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-09 23:26:05.284232+00
81fzqfdf1ag2hwg6gjs3dl3vgwhbrzbm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 14:29:26.265534+00
m5ny9oe1vbn65f2hfze7puku321cmevu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-11 04:58:02.887981+00
vwqgfmgyd09skyaezhju6r3oq6ommtas	ZDc3NDZkNjhmMDcxYjgyMDAwMWNlMzVlZjA0MDVmYTQ3ZDEzMzQ2NjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLDHUu	2013-10-11 13:52:37.309179+00
hq6h4x01yic3azo1ffpej34h7hmxosv0	ZDc3NDZkNjhmMDcxYjgyMDAwMWNlMzVlZjA0MDVmYTQ3ZDEzMzQ2NjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLDHUu	2013-10-11 13:53:42.137729+00
ei176vxux5h728qhxc7kt3pwqoky337d	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-12 05:31:03.306403+00
vwrx6jrnakn39q64ggsc2ysjurxbzq3f	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-12 15:06:04.465449+00
lgtr4ct7aw426v8a11mcslllw7zpafnh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-12 16:18:04.342111+00
lzgqzmmm8o88zxndbf8366aveavbwh6x	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-12 17:30:04.093859+00
rcw129wt8481ohv3qa2oz3uiqa8r9p4p	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-12 18:23:42.620787+00
nd9iy9vjwj6pgaif3y5ul295upum3ls0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-12 19:14:58.175915+00
dmtww9rfz5r2szoa3rpvd49fhp9wvuk4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-12 20:06:13.822258+00
um8s5yffaqy44lessgnd2r5phm1ugryg	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-12 20:11:49.484821+00
fjta1ga3z9wk4vdw7y00fuee613xqtl0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-16 00:56:07.228578+00
knd0jbbrgqbmfwc2twzu0d8m79qvj48f	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-16 00:56:15.95469+00
rysi76vabnbxxyilf1qlmuynhhda7cgu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-16 09:16:39.39621+00
hyh740u6f7n1ix28067z7shxsrcgjhnl	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-16 09:42:48.80427+00
r5668bbeurmuqxsradql2nea79xk7zwd	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-16 19:40:32.985242+00
dw2xngseu3246ik9heq83wazzri5bolw	NTg3YmU0ZjI1MDI0NGMxMzg0ZTQxMDFiNTMyOTI0MDAwNTE5ODAyNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLEXUu	2013-10-18 14:20:25.534374+00
qokavvfeyra3n8t3phkx9uavxxmj3al2	MTY4ODdjMWRlMzMyNDQ3ZTdjMzhiOTkxZDQwYmYyZWNkZmQ2MDcwNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLEHUu	2013-10-18 14:20:41.614564+00
exwabu7421af4vctppgwtoa6krv34mom	ZDc3NDZkNjhmMDcxYjgyMDAwMWNlMzVlZjA0MDVmYTQ3ZDEzMzQ2NjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLDHUu	2013-10-16 19:43:36.309288+00
fsq3n74xembty3nhzmv9lveznr91zfkn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-17 05:36:26.437194+00
rmpogit150uetsvsg0nawxhe0pfvy82r	OTA1YmQ0MTBhNmI2MTdlNmExY2U1ZDExMjY4YWJjZDYxMTA5M2IyMjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAnUu	2013-10-13 02:02:50.625674+00
4xbhj0zu4wz4whp9vhc72ic2sgxlr0rh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-17 05:39:41.340586+00
e7vvu18t34f1vmagxamvk6os04oc0zaw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-17 05:43:31.07246+00
zl7gylr8pqofflwo3299xak2gjuthxr5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-17 11:11:55.90288+00
q7lzunbzxgf9rvz0fbt8t507jwyr0mjc	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-13 03:01:11.148753+00
tsjpcda2tfm7j2ga1af1lnkx0oke2x5c	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-17 11:30:45.706205+00
v7ok9vms1nf4dzjn2mbmkiyxrlxap16p	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-17 11:45:52.441819+00
f1olosgiaj7qfxedaut7403evpojufrt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-17 14:34:34.631347+00
hx83y4qgh3bug5p23ixjasp1mzvyz4fd	YWYyN2E3MzgwY2VhMWNkMTliODI4MzJiNmM4ODkyMTJjZjlmOWQxZjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAXUu	2013-10-14 12:25:34.728619+00
2sqwvg4axu8elrv8woy4j7vyi1ih003x	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 09:05:34.419502+00
e2i4toqb2c38egv94cddc3457myndfeq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 09:15:19.770541+00
hez9hgbyainof717k3b9cnbzueboe6g1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 11:54:34.00136+00
s3my6hli16mnol72kxdhahg7pmboo72b	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 12:04:22.417266+00
9wa3yiz7snpb2yleq5l336oeu5zecx6q	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 12:45:18.037406+00
ma0qelry4rxjvafpxmp2qeitpin1qi3t	M2Y3ODc1NmRlODk5MGYyZjc4NmQyNGMwMjM4MjcxMjEzYTViNjI5NDqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLB3Uu	2013-10-14 14:21:33.806223+00
pf5r4i7kc89awmq4n3htja80jyva8qpu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 12:54:53.505292+00
hyjwwojvs1luo3of0d55k29x68xo1qhw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-15 09:59:17.118448+00
xs3in0hus7y3recas7ib9mya3d3nu77y	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-15 13:58:00.615361+00
ny3igo6ys357jnv4r7dlxr6y7ql3yunw	MGUzNjQ1MmU0ZGRmMDk0YzI5YmVmOWI1NGM3OTgxYWNlZjcwOGEzZjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLEnUu	2013-10-18 14:07:00.970267+00
t5cdvuobg3hycfw4eanvbxrdkju6xlen	Zjc5OTE2YTNhODZiNmI3MjNlYzFiNmYzNWRiNjM1Y2UwNDFhOTZkYzqAAn1xAS4=	2013-10-15 18:20:21.893906+00
nom9khwz5wrcsofe98z6e3fxvz2e88jq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:15:36.285497+00
4ussrc6t6ax6z8tn4wa3s0fq4orrftga	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:15:37.168682+00
euoo6sopf5x9xnxk2ta17xvfo3b0tv92	Yzg1YjUyOGNkZGQzMjBhYjgzYzAwNjM3NmMwZTI1MjI4M2MzNjQwNzqAAn1xAShYCgAAAHRlc3Rjb29raWVxAlgGAAAAd29ya2VkcQNVDV9hdXRoX3VzZXJfaWRLAVUSX2F1dGhfdXNlcl9iYWNrZW5kVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHUu	2013-10-15 21:18:59.970915+00
aqhiel1phku1akysvwp0hyb5rft8u0u6	OTA1YmQ0MTBhNmI2MTdlNmExY2U1ZDExMjY4YWJjZDYxMTA5M2IyMjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAnUu	2013-10-18 14:12:29.863958+00
gda996xwbbdxu0xd5qj65xmjdpsvh23e	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 14:15:47.341798+00
ute53gz0cj5tkf75e15xua1qkqaa2k0f	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 14:25:39.713805+00
qx6zxp85mr1x14gnfldpdzjijfj7ihvo	NTRkZWQ2ODhmYmFiNzM2OTg5MjQwYjIzZTQzMzVlMjAyY2I1N2ZhYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLE3Uu	2013-10-18 14:18:12.265023+00
rt66vo0le8ch1me5wm4yn1aqgzy1kn4r	YTkwNWRlZTA2YjExYTI4YzA1ZDc5ZThlYTYxMzNlNWVmN2YyZDAzYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRxAlUNX2F1dGhfdXNlcl9pZEsWdS4=	2013-10-18 15:09:26.098031+00
4eam8hvbvct7p49spc1rsy14v23l3d0y	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:05:42.05995+00
t0neuhxiylep9z79jlfxw5h26uj0575c	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:15:36.658968+00
34s6omztani147a89ytsjqm1qacox9k2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:15:37.698302+00
3kx6t3e72j5ma3ic7t7md8nn43wd9ppj	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:15:38.246263+00
c64y2eqt46yf2t9qspa2koc60e09t3j6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:15:38.813468+00
8j0rf3pdvnf5z7b74zr8wimgetiz3y6p	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:15:39.454904+00
z7gl9pxi2uu0crghxsrphyi85epgn370	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:15:40.165938+00
w1xg0cvbvy1m7gc1di5aih2tjyv4bfzp	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:15:40.92149+00
opndmqby2r712b5h8wp249wrcpkliiie	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:15:42.338957+00
p7ae14awy447r5j8kseagpy33z3e4n5k	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:15:47.48277+00
54kpvep4w1qf6p3fzzpnsw0ot7s2np1s	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:15:51.951499+00
vow6wiexiiodvdf7wlomqcum95v9jusx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:15:52.731144+00
o50l0nlnbfuse6xdo59qoc4hxwwx319o	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:15:54.249987+00
xs6r5znmm9p5ihq399eh1r7cuvqtwnoy	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:15:57.534981+00
oqzwavb3rrk8sqxx0lsau1hn8krk17p7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:16:05.90184+00
o4rg8ckrvwz8a81d8jtyzhp7swisypki	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:16:06.696295+00
6tvgn1gpwxsoq73ebk9vuz0m96lwxazc	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:16:11.00861+00
nijqaf6tllg2itchtfpnl32cnybcv7by	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:16:12.752117+00
r7uft7qhsfuwm8if2gfza9wnsvevt8qd	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:26:06.825277+00
4t9237x53i61sszyifc1zhejebhlkd8p	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:26:31.63513+00
3mdjw83cdm0yyq7b7srlki232874msi2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:26:41.159227+00
5qe6lc1v5kpw2rkgmdxqpaqbiv83cfsa	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:26:50.694499+00
y6que16rfwngy0r04a2zgytv9anq26p8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:27:00.217263+00
itfblrft8u6ml001f5vx3ntwesc6nj5j	NTBlYzM3Y2I5ODc4OWUxYzJmNjcyMmZhYjZhNTZmZTJlMDI5YTE2OTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLFHUu	2013-10-18 14:19:34.349312+00
xgkdb5esqwdnkejqsu0x7iqv2o80uwfg	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:27:14.515958+00
1wqclxvr3w5xjxudgt0tfpcdve4kw5yu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:27:24.108718+00
o8dnhv9mwmbz1udinlt9v69vs40033qr	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:27:38.392161+00
8c1a4vibjjl8l9ueg5h7o9mtsgittbrr	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:27:47.866142+00
pmlzc8fsnrmfrazzd8cvwyovzj2ayd76	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:27:52.721922+00
np2q7oeshujd2go0g8y8v3rtvn38wfo6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:28:45.028147+00
xansmdb47kmad77c6j14s4pc5sozrx1j	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:28:54.624573+00
kmptbxfjl0li0ffzzynegztt5j3tqci7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:29:04.205969+00
heqcmhnqyfwa9quqog29dkg1dajxtghc	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:29:08.945336+00
v3ji8pu1ihrwz2541ld3zhqtr0ay7sp8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:29:18.456219+00
519m67siiqawn7se4v9igmjdmntgh3qo	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:29:23.245087+00
vg6fr3xoil30cy3o41aytj4khudk4w4z	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:29:37.545125+00
ced82w5augv8d2xto1omaoii1uowy89s	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:29:46.998514+00
fh3rkc5xgptcd1891kfo9huetay4xtev	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:30:05.047968+00
aekn54y8720uhssa9k5dkj1qtxvr6byu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:30:16.809003+00
cxkp2awo8ge23cl0xkw60xowhnz215rv	YmM2YjI2N2ZiMjZjOTgxMGI0Y2QyMmZhYzdhMGU5MmNlM2FkMDJhYzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLFXUu	2013-10-18 14:20:07.234183+00
gyj0lq0sif03wxbfzzt7464u9m46ucrr	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:30:26.855211+00
38aylg3ld1ljxqgupluu5992uelsyjcm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:30:59.352106+00
ztb156tjhuhskighmab0m0a3msnu2m1z	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:31:17.658613+00
75hob6lai2ert897wvqizmxvnqme1a66	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:31:22.320099+00
kwr4abegnoax89ogpsbquto1pku4ojdd	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:31:30.83047+00
x6stn98ozthuulsi7uk38g4h4eag8qob	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:31:35.025696+00
af2twefe82ea6rvx4a28w25t2dhctban	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:31:36.98551+00
ohx1ysyh6zg4agu4vxn48n289j8la3v1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:31:45.108054+00
et8p050c7habgvzwr9n008r2f1485533	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:31:50.964771+00
tgbksmttaouw921tu8ahr9for223fcsy	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:31:52.840768+00
jrxtqx8mmlpegc427i0rdqvdldmj4otp	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:31:58.604228+00
xnof6ys6etdev323gxy99omdkoge164k	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:32:00.518937+00
7r81yawamkxrp6atpirkl27neky5yps8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:32:04.422548+00
6vrptvekcv212hob86v71x3pc3qfo565	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:32:06.279331+00
7eqxk1qglrivt071n0jto87gfehj0692	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:32:12.041985+00
2pg8ycsja3oyhpo3umh81iuf4r5faqmj	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:32:14.010078+00
t6z8halcr619twq8ztny7irxy20siybm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:32:21.760905+00
we288sdcs5g45so0u8ecvg5yxutwkeu5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:32:31.2309+00
rrw6byst7r5mpixg8c0eah8vboose402	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:32:33.270623+00
l2xnbtg8tuqbcb9ylz11tw3c6r8nvu6c	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:32:44.705778+00
ubnpkiqnnhwlb8eds7uw5wmab44pvyrz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:32:46.584582+00
37ztu10dg814mch6r15w57pqagc1dwhj	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:32:52.354282+00
7l1rctlr8g3ukxja589ydn8j5vjwecv8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:33:09.764191+00
2j2l34i73wj1m6ac43lqumpe7v90d6mq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:33:26.889714+00
do6pl217ozm0ole1pm68y3146wa1v9vi	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:33:30.725098+00
dt3a5bjb9a0zxyt4ukv3ztbbzdelr74z	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:33:36.482383+00
slv48bfkj9wifnrwg55asw78qu06ky4i	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:33:40.324647+00
egexnfv30x6ww0sdmpqkvovfpa2bua4n	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:33:44.207738+00
9gjkc14khzeaodh5nctmjrgvi1mc78qf	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:33:49.950545+00
0eq0ncsanfa5xu8sqsiwz3ljzwvmc7k7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:34:05.278436+00
80rgqdxdtlofxdg09t8sa4wsb4x2lw3r	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:34:12.957237+00
od9615syntgsw2hvk9ootx1utki3quc3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:34:14.93791+00
k6lna7e1da5bw3xclc4x6z4ctg19wjxo	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:34:20.63488+00
clmuc5x0ftonupefvzmhgqrh4xywo6ln	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:34:26.451256+00
8u817ctbubgn22c1llrdkpfnidkyoywu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:34:37.953909+00
6s27edkejn2cjo3j763b4cebw9tjv887	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:34:39.924087+00
su8pqz0elifml2wo4bvo7jxei1e0wyl7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:34:43.793066+00
5xuv4k1trsbg6c1gnz2f5fukb7vrp2dw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:34:55.435163+00
ve6tliud7reqj9ssqsw3sp6kkeva4zd5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:34:57.156766+00
95zqldlkj8ui8i3fp8587ajlp8z490s2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:35:18.225558+00
setzpqbm0ag2gu31qzko7tf2xdsrxufl	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:35:20.138511+00
q0bgkcik0egj3ej7ocz2sm4wxsq8ulwx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:35:22.062313+00
rhwh96hajxz04fneiadkpiigrapqoety	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:35:37.443416+00
6hmng45i2l297nu66sdrc4yux4eeouoo	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:35:58.847782+00
kz9xt9swtjrxxlu6l7vj7g61poq8mgkf	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:36:00.567278+00
ttsqi0squab9qk825ywl37hmg8x7v1g3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:39:23.770919+00
jxjd6md1n6zv1v99sp749eujsozkj8f2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:39:27.629453+00
i4axjd1t8esp2dn6umlr8t72brh9skoy	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:39:28.413322+00
sr9xfwyish6di2968pz0ljlfltsopnb3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:39:29.163628+00
8ff4lvafbs2nf1d9ikv9ejkexkrpgx4x	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:39:32.807298+00
m4u0xkq2lgo2yj102390lufckfbobkuw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:39:35.666138+00
5mcjrpht4xrmbnq4t5y0xomcp98128zs	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:39:39.963288+00
qc9yuxxfokexynndgq4i0cufxk2khdtc	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:39:51.925662+00
t09akjvxvcx2rkm9w8da9psf26j97rj9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:39:58.036078+00
bpidvuu9jq80zk6b1v3b1vfvoiudxerk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:40:02.98481+00
72jw5rydsuigf5sir4tkjzk51icd4pp7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:40:04.214466+00
yn7ytqnfsji343c5a5239lotrmnh4j4h	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:40:06.753236+00
cm4k7mbprqfa4bewvvm1zoq2boan8yi9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:40:16.665895+00
4ndd97wf4qkx556kc824r8sbq0xexprb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:40:17.821114+00
b1frhna97pmpa3deevnfotyry8r5z1pa	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:40:29.012641+00
lkhn0jz9d9tim10y8wdtdkr0jhx4g31g	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:40:32.734318+00
9xfo04b3p99o30cwlbitdbk2ptq0bvhm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:40:35.17218+00
lv3i680uf05qv8qpc2f885ewjvus21kb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:40:42.610034+00
5b5vk0tg8lmday1a8uu3yzw56tynpr6k	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:40:47.557242+00
k4k272owkr0bcqw6lkqe1dsk3d4dches	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:40:53.736786+00
tecc9d2fnn3892y9cc19t4omje7rj3xf	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:41:04.875158+00
12hya6qgaszfxe62lnrjy7y3mq2mwrd6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:41:13.461786+00
hd1600bokgsr8svhi85howfsll2ngv51	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:41:14.700768+00
bl870ry2yh7z10x1puax5ibejnltlvsm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:41:17.17447+00
eeehjvvdroby2d0ttqpeg8qp87v7upic	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:41:20.914815+00
7qxk9mqnba6kyp9ivkcg97q5mi01hryq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:41:25.962325+00
6p0lrbt1yazobntqg9w2rzrzfmcqjma6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:41:30.772082+00
j5m8edyytx3iishmsfz84j7wxjfgbbnx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:41:36.963334+00
6u2n6yad16xqvt4qw39d3gni7lu8jikb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:41:38.200485+00
wi62gxo5tzsgi6pq3j0086e335zh6v96	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:41:48.223537+00
086ldxh53w7tm2benug8qsyncl3ett6x	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:41:50.561485+00
k9819q1qzedyt1msmi2rqk7umvm795fu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:41:55.508723+00
8nwxa472vjdvw9m5a9h63slqnr6e7z07	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:42:05.413781+00
5pvoaal54bg695mcex6h6o7l46b51ybz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:42:06.66303+00
w8foji429kvrtfqldkxc8jd6xsnbmi0n	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:42:09.167058+00
ku91btr5liqnqkupxmxeycgunq62hspu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:42:10.412193+00
t58eyi6gllmqmnvsjmzily3t4gfrr4ba	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:42:14.052829+00
z9nls76kh12120kmyyg643unx1fqzl3h	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:42:15.29284+00
s3t7913vjjvnavkvya3cm8nqmwvu3li2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:42:17.765848+00
hgnvutg2ixs61j5hii5r6vxmot58rxlb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:42:20.233253+00
mk7o325myikfqxjoi122fgty7mpyhr7w	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:42:21.529459+00
gbzzzmqxthsqtfkn1ude20x210vqroyi	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:42:25.181853+00
mzap13vpuut0z4uiejbalsrxkcwkqvp6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:42:26.48154+00
8ozose0qpgxp1e2f48b62go8al61p4la	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:42:27.671553+00
3dwt59jwqkobcitdga1zsqnh2kb0sb4m	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:42:31.3655+00
2yugo2opy6u77p1fv364wxijlzoeq3z6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:42:40.019723+00
dxndv0p9gepm5d8id2svfch8gonz2l30	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:42:41.262022+00
w46p4f13xyllwvp1wogu0ggcf09n2jz6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:42:47.443253+00
rilakqqtzgir47qaro8wr57bswbf6ljt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:42:49.974602+00
55psmw0po6q8avs21mkq8fptzk85c83x	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:42:53.619333+00
gji34k1lsmx0y3qxckxiu6e2amjsv2k9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:42:54.85764+00
2cttl86y89e4gnraew0zk6a350x0esz0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:42:56.094256+00
oqbrnaequ7ft98lujom5pl8im6rkxsrp	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:42:57.482493+00
eiodw5o1hn8qwf0beh9gwg33wx18w3aq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:42:59.799344+00
cevsizf7evtubt78jfddxe5tykcrqyj2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:43:01.044404+00
9bfb3nxqwzhklbvphai50nfnjz6c8nnx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:43:04.757964+00
zhoic4e6ejbarm0jcob1wdxup39vgfk9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:43:10.938753+00
nnml92iria34a839996vmj72rzctfvft	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:43:12.171781+00
c8zuxgfwagcfi8cd6fj3n777m6vnha04	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:43:14.667733+00
1mlilnuqzy0pu9m2xdgnehqmnvkswlr6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:43:15.913138+00
z9eg2gskxhi3kzu05xbmxd8129v6pme0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:43:18.352966+00
u00egmy4audwczq8rjkul7ea47matv1s	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:43:19.587535+00
6ydjxte3bgos0u03qz7p0ceye2wspnic	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:43:22.058946+00
m70b85r1k6n2okvfm58mg6kvfhofiq76	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:43:27.012012+00
bge3d7oosu4z11ls92isvnahl2yjitb8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:43:34.429064+00
d3a1en4m0aern8mp6yy2e7xejrc87wtz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:43:36.921247+00
2gocfwh0ejdhi53xejpd1jukwarki8xl	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:43:38.173583+00
x715ytrgxquqqv5ilfk4qt95237lr5lk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:43:41.849463+00
xihx6l5wwftmjx7g5nisqvrvf16csti3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:43:48.032872+00
k15kzgj11pjlm7wlgajyvyxrxv378qps	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:43:50.508999+00
gt30l89hz3f69tregb61jmerq1v3q6ph	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:43:53.19904+00
7lpdkw4xoxj16jkr6ss9afd2zd36f57k	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:43:57.922956+00
h3lw02zfy7u3nqgc0iyuuj6qu2t4rt6c	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:44:00.412829+00
ono1kkjspx60metuntma66iuakv8r4zv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:44:02.914136+00
ipi73gbjkki5vkmjm3ko9a8m4pxzaisy	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:44:07.874805+00
9nr2oyz682kfceh6i3a6lqs9lus05pw8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:44:09.052012+00
7ytgasxyxvdcj6rmuz3cr32otyeb7vq9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:44:10.292281+00
x7jggpqxy9c879pjfu4kpvikzrr0pd2g	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:44:14.004396+00
hn670ki9l60wg0fbx9iga1m9m8lti6w2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:44:20.183498+00
hu9x0xq7jxmb4crdj7l3gwjc90xx67bx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:44:21.421981+00
9wxn5ncmkvtafzwbx5itv8zjkcnif0iu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:44:23.915982+00
jzodouvwizd9kol2aoveuu5fzkewe9j8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:44:28.911896+00
p7s7f1zwuxikue07t6xf3kfqswdxe7x4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:44:32.548176+00
pxa4uxvowyo18t7ca9xl78atle0us9yf	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:44:43.041993+00
5tvqdnl5jsa4wrw0miavrbqi6uhtidx4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:44:43.890728+00
osutc4z8apck4nfu00333ubuy6ku99jg	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:44:45.769964+00
e5tnzod82xivrnjt7lnumiegrzb2lfb8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:44:47.527318+00
6kfdedhlj3gtz2qr14b3czeoxxtn7gpt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:44:49.344646+00
7m2d7xkktzrly1zggwrdcq4ccbish9ad	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:44:50.252204+00
dkwmkpkcf0zax28avodxumgxb46kgkxr	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:44:51.294686+00
s14wt3r7c7i6bwquot3lbp7msijltg6p	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:44:52.073959+00
t4899dbw2sey5t5yhpfaagm1a1y8awfz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:44:53.295658+00
ysamukyqh886r51qaruvlfsdt38n8p0p	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:44:56.957634+00
xd5nc9ee1fim1tj9416wqaqhmxh1wlj9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:45:06.733443+00
ur6ia4uhnu0fhv5wmg9lok3368h6oa61	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:45:10.414205+00
v1af2ykk4obwjby1ctvy9v7wlfjdb094	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:45:12.817823+00
tlor91v5h6txy1focqs3w8jgffjmapa4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:45:16.482589+00
4iw3c94fs6ltszouxhxa6t8ocfodrxn9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:45:20.164708+00
7c25jsekeaud9uo1ymn4kujrylmmqk3k	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:45:21.416547+00
x1p70m8bwyikydw11l6fzlycs4x6pgru	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:45:23.800336+00
ykli20yg1797vc0h0k2133f1jipfuc7q	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:45:27.466816+00
qnlvn9mgfbo5n1s702x0ipnno9mkjr6j	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:45:32.353466+00
nmrapaybg4b3rrngxbzs1j8x24ne085q	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:45:39.674238+00
nwf2oro1vtg0oaboacevscjuhosggkw0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:45:42.179309+00
qbwite6piwjneacx6fs0wrwjkur7t5uf	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:45:44.558559+00
ztk0j0lkp1r5fbgz5iugo4j0pzbf13hn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:45:49.453781+00
us0xy0gcg9gw63qfch08ui3lk4mq583d	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:45:55.643839+00
815wh4o3kd82giz4o36rp4zbubweqp5p	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:49:11.829788+00
rjavtumddjltw0ekjn6wo6j9k6qg7hr3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:49:12.276969+00
pdh6i3qilpoaq7hj5jge16bmr92utgwd	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:49:13.894704+00
ng6t99ab7hgwlz7eae04p6v5wbql9gxk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:49:14.467468+00
sr2bfx36bglsdif25wzh2tnozfwfqesl	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:49:29.746921+00
hf5y2sdtv15ssmjqrylcb83vb9wu0c49	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:49:33.330767+00
xg2iybpmeiwxct2e6l5jjdldqwtlw6gn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:49:37.016594+00
f941s53j14edvk030b83ykzpj2n8jv1z	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:49:53.464131+00
5m6hqqbfdwfbyf7130843jem3g5e0cfv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:50:00.085868+00
4xnishkw73dxcrgsyyq23jpv09ryxsgi	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:50:03.383006+00
za2p2dj2xidr3uo9yti6k6anzfkw3vaw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:50:06.637311+00
1pejmethoji8w023cvtfmds2ljmh8602	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:50:10.023695+00
1gw5cc810l49ddrgdvbdz05y120wilbh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:50:13.265181+00
tqwu48ehx20v8sdpt11oxq0jm8lykmaz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:50:16.456387+00
q7knsgr825csi0t10ry217dk9xj36zj6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:50:19.7519+00
24ygl7lroco1f7rrn39jrhg8h5b11gfp	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:50:26.432125+00
uuiezl7veh66yfihha096pilziechzl6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:50:29.713919+00
31bgoaaulaoxdvt7rnzgs4ynmag4eaus	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:50:39.602685+00
hqw55nj2vvqaf8i1xzdhyn3c2wklz0s1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:50:59.266739+00
wxo2fs7n6r3siposypcmphpwbpwmpwpw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:51:02.566109+00
cu4qb49vigtjh91zoagjuc71ikxu19yb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:51:05.857962+00
tttph5htgjkio15tla5yyd472eh8p4cl	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:51:19.029472+00
6vo8xggy593twx4lx384j8is69r221ky	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:51:28.905963+00
sav45mlt8roknzeg1qj9d3ov0gfto5fx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:51:32.205316+00
fnzek5ak11m7d6xgxk1xci6iv7rbtwe3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:51:38.869371+00
0uxkv3jchrwx65njy0ctn6y8xdyf7a7w	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:51:42.165142+00
bwsdzsiqgmram3ysa89nbi3x79tskr0j	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:51:45.36635+00
x2j9i3rpefqeeb7yvk8vwxo3tc1rknfu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:51:51.961234+00
nhbp4g0j5plkbn3s5u8jn13xwixpetiq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:52:05.134862+00
thrih9h4xrnuot6lwfb28vn3bpv024z7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:52:08.46607+00
i3e9ug6h3fwon3oed9jkky9lh5s8qu1m	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:52:15.014635+00
6zhhwkcgd05qlzmopt3d52bdcbq2p51e	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:52:21.654669+00
hj9lsuudqgx83q7h0l1m0cxjyeythlit	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:52:25.045964+00
a7tn599522ad53vrb5sxvql215kjb9om	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:52:28.271236+00
h7f648q7i6okn4qcn8r005rzhl20vw5j	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:52:31.546612+00
nf8p6nt5jkq4j0jgeoe3a4i7isiinfoz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:52:44.763833+00
8m9x2fln8iqmujkrq2m2x0fktt40gz48	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:52:51.298227+00
47ve4zebbx0a80s6uwpqxjtbwsffg385	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:52:57.921614+00
n13bbizwjnf6gt2c9ewnqsr3ubff1fr9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:53:01.122953+00
smroqsyto5yeufk2mr6qdube6d8rqmd3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:55:56.05313+00
uwd20mo23y1adsywg1oud0nzdzwpsjcu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 17:59:43.393002+00
wtyxin1b9p1o4ko7qzigj5vxe61opclo	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 18:05:10.556314+00
mvpbodw50cmkg4tkn8olmwr79cg0l0m0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 18:16:25.87342+00
em5rxmn2mdc18m7i3jdubhq4tjr8u4n4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 18:31:29.88633+00
h6al4nbi5vjwx5butlg9sp80w0wmyebq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 18:36:14.393737+00
iuas4fsive0t6pyn0v8ek7xeq2i61y20	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 18:36:18.498171+00
on4yxh3rwbcg4rbox6chbirouyvum78g	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 18:39:15.08345+00
6knblk00eodvzezcp1by903irw3yu3iu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 18:49:17.681009+00
avhy1sfpgxdg8fpar0swrm3abdih1nvq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 18:56:01.702993+00
4n0fxx8srrnp0klp0q9vh27634esp7oj	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 19:06:45.835733+00
0p72s53p1fzf98rmodw48o3l9l924ojo	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 19:09:25.080197+00
qgz0h2z33ju7dbzoy9suo8du9ny7eru0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 19:16:59.861731+00
p58vb22zmoeb1tpsiasgycgd0c6z26ia	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 19:19:51.083104+00
tx1c2uqvvgejq1exgncvfi97qszluwl7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 19:35:55.235427+00
atm33vv6kwyka4lfkxmi6knze2a2v5xm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 19:40:07.039248+00
yltv62r9g6yv6473rhigzwnahs74xwvt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 19:50:05.959173+00
d2qed8rvoomckbr9e1uzkm8h9788brde	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 19:56:18.263783+00
htlt8rkw129uxqbm4xwyp43xgcgnqmjq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 20:09:36.001874+00
nz1bta49cd4p5737v1eo27hrp48bufe2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 20:11:15.542407+00
ruw8cprv0rkv7wj8e93u0qswshpb234j	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 20:21:02.657507+00
2o2wq9jz14ty32556s1p1s8jxkla44ft	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 20:26:05.472705+00
enmtxcgfrtrvnmtk9ta33j49s6plxf3l	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 20:27:29.120898+00
ni0daw3xz9n1adv4jklqdwpa6gwvtuqs	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 20:35:59.566304+00
w0i9i30jel3n01a78h55om083wj4nhvn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 20:37:43.106337+00
cj6ns4l95ej00ufpey0i8af72v46liqx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 20:46:04.177552+00
38xpe9wg5ezgl8h0252c1h2operp8dbd	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 21:06:05.99727+00
jxp8oan1u7zyh6wzx8hemtwdsm5lsuyu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 21:06:06.36113+00
om5uyaz0d1ucm0uf5axzq2vk7kekbj4n	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 21:36:00.316216+00
4iygai8xzwln6b573twdzhlx0k45ylhe	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 21:40:26.611576+00
ybmf41b7stkcvntd5lrba3ykl23etejj	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 21:56:28.80416+00
4o85t5gxy4iw7ghdvobf059io0rhuzen	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 22:05:42.791744+00
7ev813d6khm9i1k5m5k4jdeu645sm4yz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 22:09:14.098997+00
jz0yz51j0r6dfzq3cpjxg3hg8v0hemf8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 22:17:22.902143+00
hnlows9nv2eztaeirsksa5hqbkvyh1yb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 22:26:07.610849+00
zwzw00zmyanbq0wd8g739jq1f7ska50n	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 22:34:02.162277+00
43goniu1dzuxmitct4v57bi70zbqfj51	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 22:40:47.730174+00
p4xjsdrenm8ba3n835xwglyix9i8l1dn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 22:44:06.077651+00
jko57ctqb1eprlhp59342ai9k9541emx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 22:46:18.962731+00
yjmidtcdh2n52ehpq7y2mhq0nbkcyedu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 22:55:55.595835+00
vstj47eabqemi0d85lc8q00z3iqfmud6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 23:07:24.15533+00
zg72gu6qy0zfs18gcb3619h6gc2x9kvd	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 23:19:21.95535+00
wgleigpffklx25frz5apavahdv77p5vg	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 23:24:22.262492+00
9xby5sn25l2dga6j7h6v0ihfdtvyxkr1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 23:25:52.785165+00
29rf2g2huk9lnupjpbyzofnj1cm6lt18	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 23:25:53.191566+00
6rshcu54u0y8k09aa9toubmnmh5ckqqs	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 23:29:00.230103+00
sfbhpbv2dp27rtlq9ya0w9yehlemt9de	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 23:36:13.146009+00
b5y08tti75nd1bm5d0a1c7t9drxmxioa	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 23:37:42.110288+00
9m7f4w931rfibk7udbt3u2gd6os47b4v	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 23:41:17.762133+00
we941pkyjluw971p2z3sv0dq34f0dmt9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 23:53:27.693411+00
sujzaesbn5wvmsjbgf2h2nrjtlc5m9cb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-18 23:56:23.403095+00
ugesli084zzmwn0ok58gt8anla239as8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 00:03:26.806088+00
5hcwra6ijkcb5okop748lsejnnhy4syy	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 00:06:11.301175+00
llk8oz4dizvv2qem12t57j2we2m8pxz4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 00:06:12.265748+00
kade67rmvqzgg8hjrwv6uup3ggx07iv8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 00:16:11.787158+00
olvomcl943slxn7g85whgvhshseyctzg	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 00:24:57.585959+00
yjk8yi7bt56tu7jer22wvo452h1byhi1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 00:26:19.722751+00
4oiduhctgg1kr96jrkt5qduxtj613nu7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 00:43:55.22588+00
na0uvx4es8yh87rp9b43tqjlgv3nsi3r	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 00:46:04.601543+00
tq5gjjz45v42xrorpad7cczgpk2eiyex	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 00:50:53.066446+00
36ivqbxjs3oy6do906bj2a83l190h6eu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 00:53:39.803452+00
tuuzmro20qcuvg5rhlioze3v7lbvgo3m	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 00:56:09.444169+00
m9vfah6x6xc4lfjko8ax691c44q0w98x	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 01:05:49.313141+00
7miek6bl607mcanmurne3tidhrvsnhao	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 01:06:10.1398+00
ulih3peaw0mlnmk81on44yem4wm5hkv0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 01:10:45.043449+00
771ayurkuo1hgoyj7055lqvyp1tj8r2i	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 01:16:03.255407+00
ima03zfwnmgwg3mohb7vhd1xrv4jp7ba	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 01:16:37.1533+00
v1hcdbqhfzpvi19fscpvyjs7pigtlocr	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 01:25:44.805453+00
p9o5kh7nhshn6mhjzkz9cy3nq4uez4pv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 01:35:42.334762+00
ifzoimg42v9v2rexkpafszs6g2zvlhnk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 01:35:43.182073+00
l7xangg5gcizqvcd248g2r3cluu90gil	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 01:35:56.720205+00
qtcu4nvqp2arfeqxz47ju8829bc7pyt2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 01:45:30.901245+00
5vmsuvuqij2i1hrtupt31iyy4szs2dfo	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 01:45:32.243812+00
7hdvzgwq57doz6wlmn8bo1wuq8nkoo1o	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 01:55:35.998627+00
blmn11hzk1svgf5uhajm1nc1uxrve24g	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 02:03:42.472873+00
5btdmp8g9v67z1safmqjkksa0723mv0g	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 02:17:50.051997+00
0xzvynu7i6oq4bq5dq2v4caf724l0vn6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 02:21:00.009766+00
jwkkns6jba4huxdbeila6kp1mn24fgwl	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 02:22:33.934814+00
qy126ku92ptj9wxwozic4oc6h5g5r316	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 02:25:38.967956+00
pq2htni7doca1yr184w4wlodjzvn2l2e	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 02:29:04.329198+00
skbxi5esr2n2r876seooeq2rmebhcgjt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 02:33:55.368639+00
6v0wscqq3yjhhrebj4f6qlw3j0bn7yok	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 02:34:37.965253+00
ubqdiahlaa51vzj91p0wuesht9qmomzx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 02:35:07.97044+00
n9286u37qou68ipplw8u07bib3qsncv1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 02:35:15.088757+00
gr3dtbyc1m03uidn2ipy4yte3ytqoym5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 02:35:44.409399+00
obc5mnr9bl1islcx1tfyyv3aw5qx5qq5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 02:40:14.224018+00
a3smyjaoj770gk1k93h4bpm1mwcuycbt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 02:50:38.808789+00
ip3vjtgqeuzne41z5jxzgolre45737si	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 02:55:37.889465+00
k3s2tx578lcfoykrmieuafl8aprqzo90	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 02:55:38.911245+00
53rt9uqyjiiwwxsrn1qav6b2riw70yqb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 03:05:29.694415+00
rj26ncdguzqav3e0qmugyhmmunth9pg6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 03:06:30.479954+00
z2syekabi6vdmjsqtw5nobx9d2p1abtu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 03:20:34.192172+00
elv9bu88jmenrz9427mq4tuv26jlqlb2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 03:26:13.599016+00
k8etu8uy8xeut0tkc4mpc1l6lngaar7z	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 03:30:23.836696+00
o5fjrcdbpxpp6a2ippb16xozpck3c7uk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 03:34:08.107047+00
szig5zljfcll1xw4ans7c6biaeq3lmwa	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 03:36:16.192295+00
zke4pfroe3pveypc1api9c3hkmih44p6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 03:41:47.542195+00
hqeh7qc3g79v606u2wgpch9fpew14n2l	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 03:50:59.303124+00
9r0lx4gcgoenrjtmnsll4gqr3awfeeix	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 03:56:23.33594+00
p67h0ugfi8trrhb4binvfr94vsvbq5rw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 04:06:13.228221+00
1262abafxaf34054z8uzqurraj3rxdc4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 04:06:13.635417+00
yjldpdq2c2jnzxjuwaoqtmbn7fk066h7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 04:06:14.154474+00
yr2vaql7f8j7ee98gsrs8hdpoqm3i74z	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 04:16:15.98996+00
6ha9fae1lk9i9xz5b8y2ibm84pjjvohk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 04:19:36.540251+00
qj5v18m2nsdd8a6sh6a80577y57wk9p7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 04:24:34.711686+00
dp2cij1b3pr5ht8pwm0xz10cj4hdvzlm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 04:26:16.379347+00
y7xbv6z3bj7uz7hbpdsc2qge1ybrc74q	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 04:26:16.723059+00
xcb1spe2ytk6xqrlc1o7o6kxzpn1ayix	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 04:36:17.181194+00
4n3txo45he4w8gynkf9ejwwzo95s6jdw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 04:44:16.332612+00
f8trle29sxm3z4kzinfd389no6jaf2vv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 04:46:22.975328+00
144j3zehoknkzz5anni0d1u9v8376cct	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 04:50:21.828423+00
k7tu7f4l39q89w3kzz814udy9afofysu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 04:56:17.728522+00
ewu3fsas83lfpigq7nac93f379nmjh8t	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 05:06:22.575773+00
jqb3rinvbifzq2j78s7z4iqck6gjfv3y	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 05:06:23.023479+00
efjbuscq80sxh87b3w4ntcitb5n16mkk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 05:16:21.249002+00
er4ncbm46u7m9kz2iklkhk1b66isbq02	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 05:16:32.058452+00
uavuliz2j9qx9bgb3yjsfgvn7zimzirv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 05:26:20.176586+00
y2tc9aa9o3y3m3hpnrb0ziifkc63l5y7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 05:36:11.20177+00
g8zsc8utbn3gzixh89l7g91e6v6c6pjb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 05:36:43.828284+00
j40m8ndycl759cxxxi6wwi6eolhfmfel	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 05:45:52.243691+00
kb37hxvia1cl4zed2evda56ly5e4oby6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 05:47:32.800928+00
c66i81d7fi4eap11qbw1y7a5jg33zunv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 05:57:48.636575+00
hnnxaoib06m8btzee60qai4byxhz4ybi	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 06:06:12.365021+00
m3j7q14rm6199uxtnxutgbadk3nkj32u	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 06:16:18.036606+00
vbjcjr0txl4zqo764ot87usludad0anb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 06:18:20.975586+00
4ama22sq0bvgwy3bh78gg555t5v91ypz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 06:26:07.271728+00
tsziqp67mong04c7d66aiziiw5hegiis	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 06:28:41.198956+00
k9e8r9p0r232mjkn3phtwz6njbxizexs	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 06:36:13.295382+00
0rvyzvn9dmpxptgjoby2g035juovbceo	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 06:45:55.591964+00
k1n31oliiwmgpznhfo7a08c0egblp5ud	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 06:45:56.552089+00
tcb4aod8fo091sueucp0qfuia64uom01	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 06:56:27.168294+00
pxbop06a1s7ttik2wy3e8ejod895zzq8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 07:05:28.42193+00
7fv8ehmidudi89zeoktq8lwugymsf9hm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 07:05:29.321922+00
1nf7tgerrlgre3xt98b4f3zoq317lu32	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 07:07:04.400357+00
hwxtbnda06npprcldk8rgra0t5c4o7yf	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 07:16:10.332004+00
162uzm4j4nxf1f0drfew6ohzdbo2bsm2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 07:24:17.496075+00
ekg1n755brtrwxt7g7a5h59e9b2ia97r	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 07:26:15.386011+00
aebpx4hbqb6sedpksli2icnaud3510fo	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 07:36:33.807148+00
7sq2ezpw35i4e1fbl2j1d9gtj7dd7q3y	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 07:36:34.767635+00
l4ts3xt0ltmtksy71dfxunfb6kwouc7p	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 07:36:35.214951+00
dflfksql9uh304anztb69b91ojab0h1q	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 07:46:34.292886+00
gyxe0ofzioe9hi0uysjr7a6ipthssu33	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 07:56:27.059616+00
kqer0sgefi2zvtadb04d01sqjt7lgi3l	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 07:56:27.378448+00
ghz32kdb7ac1swtvrcqq1i0kzoi0ency	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 07:57:04.903527+00
hlkvu0fo4frateypwhdgubt89uffo3ze	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 08:06:24.933143+00
33iml62tfknw30f1ag6w38h84swmz9oa	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 08:20:35.181624+00
s0eq5th1qe0dinw5odbrerjm20ysbnt4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 08:24:26.063414+00
wibrylcv6g571i9theqk5f1cbmb15qoc	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 08:34:13.109776+00
c3aqe0kl45x4y3zmxfkianbs5ua1pr4q	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 08:36:27.335639+00
40xrf7b1m8g9yup4kblmqyzv208vy4xr	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 08:38:37.598515+00
i10p396ea40sihqbdcotxk378gym5hvv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 08:44:51.351415+00
swlcsm93lm4336sm3j10azn08ftx41o1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 08:46:29.854742+00
hxdbsg8puz8jnod6lxt0oxoxkiohlt71	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 08:50:40.842638+00
g88t6aoga4ruch0xqpeasu2oceyez9vf	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 08:54:23.119588+00
bfgwzbrrg51rske4ygqn3iavsikgyenp	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 08:56:03.9242+00
c39410safhw20bfel2mck7l0cvvn56rm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 08:57:29.69652+00
yuxfehj482khgkj6qkiggg0ta2wvn9nl	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 09:05:51.119946+00
saqkbevon8m8jykfw4rtkjuk8qdjdblm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 09:07:57.002905+00
u111kj9bsnpac47bbs2at0d35rdaj0wz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 09:16:03.624211+00
8aqbsxk7ntw595exix8656bnbji0udcg	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 09:26:01.987904+00
gccpjse49t07ivayrgj4l7dgosg26aqy	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 09:36:16.530448+00
3li5nbupfn1diw17ng4jvdpsq8k033n5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 09:36:47.432427+00
xbk1i0kso0ll381v4h6671rquhf6kuwo	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 09:45:59.489317+00
5j5ww2w1pckcxjdygzeoj4dijo9rde6d	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 09:46:00.447723+00
ldllie53lhn9nmsspje70cebzqtfgihj	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 09:55:47.31146+00
wv7h27su0vz3ne05bvw7jrh35wmbj67v	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 09:55:48.270822+00
35s7ryve0q5netbvulx4zc4tohtfyb69	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 10:05:48.209833+00
n0gilb7bxxbe7sf1sttqdpsfbraftiw4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 10:15:51.820178+00
76ojv0qsbgt8k1rbqgoh79nptw2ykx8k	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 10:15:52.780737+00
6o78fyd8x73wnenenenhq0acu8vu3qzl	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 10:17:36.065799+00
l6js1kck67ngjdf6mnrrd5m8v46p13rp	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 10:26:41.644623+00
9x73yhyizv1qywys9gk67lz8tmf77p56	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 10:30:53.060145+00
vc86nsaejd0zbnagi7fnpmz9macjgbb8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 10:36:00.607946+00
qw8lnyxl5o2x0vipdyys2jm0hglhvvkz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 10:50:29.013619+00
bj7m1dz0ggs9cxk7cmbg9gny0hfgys37	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 10:53:34.650496+00
ygm4lzuf3luadt91t3pdtwnzxc638mcy	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 10:56:19.576239+00
s69iyx9v421zk76qegkyh3fg6bis4qj7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 10:56:20.495253+00
psxcsltrfvyb94yin3bxg4pkfvuj4py9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 10:57:41.137286+00
28griyp8b3fpdkdmb98vl05k4qilpslc	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 11:06:07.698275+00
6820txsyg5tdgdvnq12r1m2mo53dhgx0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 11:06:08.659315+00
k2dj4e5sujo1l9mb0thddu14eijvh650	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 11:16:07.303667+00
m7y2az2db97heoxic6yeg1rtk7ditw4i	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 11:16:09.59096+00
wa35365q3nm0bqwhkzat7kh6xzeirddb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 11:26:23.52335+00
bz6z1qknaj7mu57ffio3d1442jyin0r6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 11:35:50.135587+00
mn3ox1oshocafebf594wehdiihxnvxsl	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 11:35:51.030093+00
gz985fad72r2phheiqoa7kqf84060xt8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 11:45:37.86554+00
k0ihdyt20csgb62bw82dqtpra4ko5y9s	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 12:00:02.232398+00
3hgu0vxu4sy5jf82lce30pnxwdg95r7k	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 12:03:53.397713+00
30x2kdv9rt93cxvbvtx47y54sa9rdu4r	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 12:06:32.562531+00
mwux0mtkfrql0cnbddhwpds9tm2ta112	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 12:06:33.332608+00
j5ai2ry6divstmv4uw44b23tcz63cl7j	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 12:16:54.765588+00
94513uzikwstsa2n7d75mr5d53ef4l2l	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 12:26:36.933765+00
17mec0wkumlk03bopxvh21lgia9zqqse	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 12:27:46.048586+00
0utdud29qerutsntdydz0rjtier7ffk1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 12:38:40.643462+00
idgcdu40y3z8eshiy4h3j4pmlrb9zqgp	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 12:46:29.819972+00
5lmu74ksd8ta5z89vqgocswtpplvveub	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 12:56:29.355883+00
hmylzq2srbqciii8shuznglonuocieo4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 12:56:30.159401+00
zlrtcyk13spr8bf35l39wtsr74fxim18	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 13:08:23.070387+00
aawny5hn8tki9x4gf1qzpj6xmxl6rjll	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 13:16:25.541915+00
s043t12ex6cu357xswvdd0vgsnhw8u08	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 13:16:26.40481+00
un74on4ga80993opbi8rgzeoocp71ibx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 13:26:20.056062+00
v4rbnj6u3z31g2cm7v7r85ko2cq8h67h	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 13:29:51.296062+00
eosn7blhmrqbq3fxswb9up8nn5bygpgv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 13:32:16.152005+00
bxmlfe179585shqsd4mnqwi0f0kirhmm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 13:34:17.656885+00
tewso53kcvrgl0vv2rbb7wcgtpogba1x	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 13:36:27.123569+00
sjyc7et5gb6jkal3qnr67e12coi3ev8g	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 13:36:28.016928+00
xpr33r4swt1yeelr1cxdotc3stzpp0sp	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 13:46:38.033252+00
k5mdevzmenss8was2699q2skuyt3xuh2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 13:46:38.303147+00
yepif2vmtad14hpb2njoipv1midjzjpk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 13:56:29.7271+00
nef7797vo15qftej6sehfzht791zuo0a	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 13:56:30.168455+00
g37sat439env3101445aat2b7spdykcu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 14:08:35.583526+00
ibw5u7jugoplbyyvkz3yz02bx9j573g5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 14:16:19.218041+00
rs92z4la6rchbh2z8a8xusyp78ydtmu1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 14:26:24.721975+00
xsihwqb2mtpoog5s7l4bdchdu5lwkk5s	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 14:39:59.251014+00
wam3z5ad2mvzwwjoercwurddmfpnlojc	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 14:44:33.556677+00
cxvsn0mr1g54l033uguo032769s42tu6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 14:46:15.670952+00
ak9e4xbkruxvvaqtiwys7fnvceyn8lhf	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 14:48:08.089879+00
ceak0bp5x1sl1ebaozbf4w3fl690brrt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 14:56:12.087404+00
sxgelxph6ndlgypzll7789cx3zcmzxww	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 14:56:19.265128+00
9xrh8nyq2ckn8x8ie1gfiotyedz8wlrl	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 15:06:12.338127+00
jh7niyzsc3fibwr1djc6ctlobou5j1ps	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 15:08:36.59196+00
iwi754arej6iibz49ndi29816kkn6s86	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 15:16:14.669199+00
uuevo8flr8a57qpy4d5tfy3s8oytjx0k	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 15:21:14.945891+00
226aum5jpx6xcg8ei0aesduru5zp5kkr	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 15:26:22.070789+00
vqhm6yoiwiawtlirt5zwxivyz9d2q6nt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 15:36:19.642872+00
x3rrwedw6rtetvq7jkh3okcynlczwesf	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 15:36:20.481777+00
p12uvhic4ok7hqmx6i4wd4nhtx3obsqk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 15:45:28.188647+00
r2b51gont74kixwseqym877h5kscdssv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 15:53:05.81088+00
oohpk0q8b9uoyaoy8e34najgggfwud60	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 15:55:47.903588+00
bfosu8zgbb6z88yygpk8p35vztrve8qw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 16:05:44.121531+00
94yf4orfwrioymf9nxvz6hgqjqpw7olw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 16:05:44.922199+00
tbjp5m3ndkthz52jlib4acnx64xzmu83	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 16:15:33.68155+00
zkia02sa1e9fe8fionm36jwcjyfxrxb1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 16:23:37.291422+00
2yfdi0fgm5zvenud3djld2lx9lupwmtj	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 16:25:44.289598+00
98jixkhst0omr6bgmqz9cmmmjtoryrs9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 16:35:56.621925+00
x5rj36lytlwzq90oksl8rcyussxf5cfb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 16:46:12.926139+00
5krvh2vewvm9zbmexc3khyqfyc8esrex	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 16:56:31.357632+00
p2uj9wdf8hp8opa5mi8ntg9f5d6f8vmt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 17:06:42.24376+00
de9e0tkrl7de5uof5s57h1mmr6miw9s4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 17:16:31.311466+00
9byju8aszv0gk76wknsvm7c0euhemeuj	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 17:26:58.981494+00
pn7ec23xgvjzyu7obxxahubyrnceqbpl	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 17:36:35.524162+00
verw8kpyyq72gp02rkj9aqsm5pkj5560	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 17:48:42.146589+00
xan3wgtc4ibd1opn8fbmh8aydrli2odn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 18:06:02.111628+00
wc2wh24trisy9m9zmbei0kiox72zwgxw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 18:06:02.909863+00
esll94thxpx2hiooagb9u2rp9yg0etzf	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 18:16:09.583616+00
ilop12n23dar6uqk0grdmny72wryibba	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 18:16:10.031494+00
mz2p69kv65g2e700cc45wrd0u2lqhjxd	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 18:26:13.879674+00
rbrhg3qxq2py6z723exoae7bjmcb87gy	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 18:26:14.326099+00
cnr6fcn5z14r2g76cmngdiengcs4eghx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 18:36:00.195275+00
pfghzkvqyi986b4lmcjgqxssd3txvr8w	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 18:36:39.107046+00
byjcqcvlrkfbw4lycoi9b99b3io7mcrs	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 18:45:52.514736+00
8o65k4j9x55httvh1xqcfp597bunikq9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 18:55:58.933958+00
p1vdswovuarjcr051207flzi3n4y10xz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 19:26:01.390505+00
agisjmza7yhmpnxldfq7ucysaoxsltm9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 19:35:58.643024+00
idtgr8u9ujqs5qwoodoeed2hvylbknzu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 19:43:45.204314+00
w3xhqtyln4cabzbajooypff6aq4p6mko	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 19:45:55.144722+00
6pjf4l5nb8gcw2k9rccx61bjejj9ku3j	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 19:45:55.437803+00
83hlvkklsvx081kwnk9l2my4se2tj9db	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 19:45:55.991074+00
6du0hz3tyvhkkhbq105yw9i4sisqbsln	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 19:56:12.719687+00
4mdxl55pvtcsyp1by3k51k83podfocy6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 20:01:13.047445+00
7oa93dcwzeuwozfa81faevwy4xpmizdc	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 20:05:55.194162+00
0a1qflon359zrf89o94qrddwauytw96r	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 20:15:47.698801+00
z527ayfi8w65qy91vlf0onjb8wx3n0b7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 20:23:57.1546+00
mj9ylg2qb6up85aesb9t8xcozydr1azd	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 20:25:35.944812+00
aopxwbrbd5wi0t40e5pyzpserozh0nb1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 20:39:44.295303+00
3ei7jhx3dgu696801tkt7cuzuajih0by	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 20:45:38.542804+00
1ikfhmvfqu70xdjppmcbsrm1h7x016ut	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 20:45:38.946704+00
dl9empmar8zyhp5m4qw8btmajuq95pi3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 21:03:53.17001+00
ml0pqp3ns0hg0xg0pfsoh25l22f68dmt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 21:05:40.008303+00
lwkozu255utyl2upe7yasnev6e7q0qme	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 21:09:50.207813+00
k4b2v5fb9ld64mtcwikysyz2zxulsaxg	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 21:13:33.968913+00
g7y22ram2l8xbj5vinp3wuvpkuzkci9o	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 21:15:41.379499+00
f6ol8hltolcvaej9w3saxaen1v8ibhx0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 21:18:47.543591+00
65sttx4m1xjlj1gkddezdsuwtnenu5kw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 21:25:47.500035+00
8vrjibclgqwrketdq3yhi31zoptqi99p	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 21:27:53.237309+00
mpts4bdwxvjj26cugzewz6yd4oinenet	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 21:30:10.81769+00
zw0cuweub7nwgv7mqiy3zr1uzk5vmzvh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 21:45:59.415829+00
l4txlfg9ys3o8i64bcieqsuqfwawxm4i	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 21:45:59.862538+00
j2zp0mmgft1wf72cd8hmldgl97uzifug	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 21:56:06.668999+00
ps36z4k8rd4cg6id9igrf7cfvkij30tb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 21:56:07.439885+00
44pe6akfomq89d5jrt7pwa7muxfi6o72	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 21:56:07.888888+00
asmisv80r741d84bvmtyrj7rdf06t0vf	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 22:06:17.108692+00
57y238zzvxldnvnydeigdadwcwcvr9m2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 22:06:18.000298+00
2fufooqw6y9y1v6lmblufqxv713vqw8g	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 22:19:37.966736+00
szqvehx20bl6zszvpwxah06yyk7b2bta	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 22:26:10.859643+00
ckze2s5y92kidwjncmcf1gvi7hb0lmjh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 22:26:11.258807+00
cuy3sld47udu4r8h1ylc5tqezb4cqh5r	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 22:38:21.502914+00
1m3dkpfcm9b4s9vxqvs28jyom5l28jol	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 22:56:10.526211+00
jpja4z50g2vapusswi5xtjtr796yxv5z	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 23:06:01.850101+00
m40yoj93x4xa6hj0eq90nuhukfndlja1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 23:08:08.281832+00
5fm8l7vnyl21aok417un4t5g4kaqpb0k	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 23:11:22.649445+00
p4t9dtzi96oe73qw5isskq34ge6jg2eh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 23:20:04.697594+00
zn30la15emnz97kl29lgjgapazw3s29f	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 23:24:20.94624+00
7qka2apylew03n29inis21t42c2o8x93	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 23:26:16.313372+00
2x0ze7uanemocq5pd76iuyhr9zohs1n1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 23:36:07.387934+00
bwa179a2zlfr7vyn10o5iyeej75jrc85	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 23:36:08.186303+00
h7816w0qopkciavsa34a8etyy3o4tid9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 23:46:07.676299+00
b0kk5h99eb08qzcv6xnnrxdxwmbwgkh9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 23:46:48.625812+00
9jof9q8qosm5ng68iy5h2xw458w1duzm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 23:56:18.479742+00
fr0jcsp02ylwaho2jw8vmql4qhlzl8t0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-19 23:59:53.307197+00
oju32159wdxm1d7zh2vyiwujtaanw0r0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 00:04:30.613435+00
bqn2jyg9vuq4q49df4j5ze36kuc1ciq5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 00:06:21.81033+00
u7b5ic6wh67hjjegcqge90gjtp6q638t	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 00:16:19.075904+00
msmns5hysqdrvd5dyded4hp198zymme4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 00:16:19.968477+00
gf9ds9bl0hivc067w02qaipnli7ad6ll	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 00:17:04.166864+00
gn7f1m04zqkallglcpuqjd1ydgcjv4rg	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 00:26:15.562022+00
8rxp7x5xh82ztel5h8h7xorel79ki8rx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 00:34:00.713813+00
hmvq5szsjmo5q11p5ba9fjaewbrr3586	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 00:50:08.343568+00
1akg4zqtb8caj0vyyzemujs4zn2vdwp0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 00:56:17.473754+00
je8wnhrvd4bdiyr2tuigmc79cjwcwi9d	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 00:58:45.284074+00
81evvh2ub298d0gunwpfd3w3iaahaxvs	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 01:06:17.22283+00
lezje6kwii69akkq8ehejtn9t5281vbc	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 01:06:19.954991+00
r6hgab7nvalv7efegy5qyxuxp90be4st	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 01:16:16.814627+00
x5h5zmkuz1h08h5sq0c7h61hc4qb5w2h	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 01:26:21.789054+00
e6rmk6svh1nxjh2v36qs9qpo2fh6cpbv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 01:26:22.629349+00
bp1svwul0786zi644x7kls33hyb20vmt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 01:44:30.972168+00
vbsfzhrn4azpb5e05c4xqzquoigw1sxo	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 01:50:15.960438+00
koffw28lsllq6mrchw1x0og6ixu2qco4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 01:54:14.9099+00
9vpddic57yfzuvjtdu1hb8oe7infs7te	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 01:56:20.891577+00
qh5gn83slamhwrjtnrridgyx6eih9izh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 01:56:21.698434+00
plpzlpr5y3d2i7a2b37prtfljsvhs39g	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 02:06:24.310214+00
53y7dt9bfe8nabu2gxy2ytn7go6s95sz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 02:06:25.201359+00
wg8e3tv99m3e1rvyottv6a0xedbykuns	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 02:07:47.368096+00
xk20ucp14636wq3hlsy9df4q3zq2mrlc	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 02:16:22.234295+00
rneuovsone5g6qa6g1x1pb4tso8vpdtj	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 02:20:53.373251+00
f0pc4o6w6cpebpnzfh0wwp5z8poumv5v	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 02:24:05.471266+00
um7btz3zi3wwfon1cd1alqg7u2godtva	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 03:05:35.644114+00
doo3kfqs0jt3brlxcyqb6k952qjpq3pk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 03:05:36.440801+00
evn5mpc92vys9c9cqhwo8yy8o5okqrsd	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 03:26:10.143992+00
p9oskvmroeggcdtt04pmge2sci79bfxk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 03:26:11.031825+00
gw6sh1872fgsrpjb65kkq5k27d7knh65	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 03:36:00.594919+00
qbnr639hs3bzo3hvfpf87jdhst9bz0f7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 03:45:54.926919+00
v7elhdg3vhfssb8gsj0ep81d3s3xzh4b	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 03:46:07.044816+00
v39fs1hvm1g34roy6kib0e3ypur9fzbt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 03:56:20.893705+00
adlvx5qevog5pjn0qh447i5a0ypm41dh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 04:10:43.226985+00
6luqzqc8auu98vmw1nwtqzlsg5g834gt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 04:13:40.00235+00
1x47j6vqdpkbb16my2t7yxobc4qkbw0v	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 04:30:04.840238+00
6hgmlsumogzmuscpb7q1dy4046nnvcxu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 04:36:19.78941+00
i9j9xes5re9ak7ohlo382dbdjfpy3qk5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 04:41:00.88513+00
uaxyqnxy1c1a8ty6g5natf73v5gwq2u3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 04:43:58.450214+00
8tw0306z7k1i3rnan8mb1x95ifjqvy8m	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 05:05:49.83006+00
x04ipipfv3yruyraw2in86qbl07axwwk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 05:15:18.830222+00
iv2x7gul450invvtf7pfmuxeh516lndu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 05:29:10.140736+00
5zxi5trybsjqlzp1l5vlwbomtug0t791	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 05:30:09.461974+00
4a10e0tlz4c8dggo6hotcage6cqqma4h	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 05:34:10.473702+00
u6pdbfv9yngx6eb55w5ui931ui82lq07	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 05:35:57.338333+00
higk6ykz0th8acopseho01x3zzlk1uel	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 05:38:24.442658+00
bqzj3ilc008qjlv73056wcyk6tmlzibs	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 05:53:15.051383+00
mls3i0humfkubbxjew2b3j44ui9bi6zz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 05:55:58.564441+00
ggip86ecmorfh2amx1mztkah979rgwyk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 05:55:59.380053+00
nm1h87g6gygqsjdttrs9s2luor4eaq7o	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 06:00:59.605055+00
48uluglxqzy3rlb23820gstv7p1v1kxq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 06:05:50.322401+00
i28psxvexm4p7mz16vo8n7fjqxxs7rz0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 06:06:52.601599+00
3fd6x3huem92j589yh971kdjeac02yfx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 06:20:04.546058+00
1o5dqlcazpilv77bvlcq3ygd8w1uqq83	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 06:25:29.126556+00
zvk1o4ep5l8nfuokqvjguymth938uci9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 06:27:22.431031+00
ufjuetvas8ddnaxu8nfpoqa9guehzaj4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 06:43:23.964809+00
j8oa6p0l329aqqkmqwp4smanb94q1bi3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 06:45:53.753338+00
ttv3g1b8v0uvd4ttohexdwxj5cyr7srj	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 06:58:32.990223+00
iutyzxa74l4h9lkkoptngyp2xcjed6rt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 07:05:39.702915+00
t7g6s5kh0vo0ndj5d6g2e9ygdo5xb2lq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 07:07:47.889832+00
3xfoe0iyfj5woyznxqaylkg4okrvy1gk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 07:25:27.654817+00
4zroci3b9onix51r87c98ucxs7ywtm03	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 07:36:35.664919+00
5b98cvj0mjwtasc56iidwl3x098gl5ge	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 07:51:05.120454+00
bpnrl1cks9ctii024scpdc04ix9iv0ml	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 07:53:02.661123+00
7joc4wjmej8rzyvfjic33xo337q0ek9x	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 07:56:29.089241+00
y7mn1lov8lw0bescuvfthvyltxtaox4p	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 08:04:11.05396+00
yhgzd1mprltcr5jybfohccdbc1m5hqr6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 08:06:30.972418+00
lc71fb2sb39v0ug8qan8hbd740i8acr6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 08:07:40.39624+00
fj9m40grzv49gejr4qo1mk9rzbl00p68	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 08:20:52.036224+00
id2cy4aq7uaj6py3gh9x1fj068rmik7v	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 08:25:51.754389+00
kl8ubqljl9y4y9g16825jx2qew9q7k3k	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 08:35:46.507533+00
an2zoqyp22cbe75kcbigiwl3sdxf25fi	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 08:45:36.190591+00
jgs7ni6bmurhk5n9mhm806nvf95cw602	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 08:45:56.937214+00
26ycv4b4miyu7u6xphgv3xxx540mq578	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 08:55:20.473579+00
j0izsi6uqoyyqs412k5zumu7czb2pdlp	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 08:59:06.290455+00
a5spxeke87vzdxigglnhv6cn42ruotdt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 09:06:24.767776+00
xotitu4fc3cs5012vpia8p8hetck2es1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 09:11:25.13208+00
hku69vrvk2dfad8bi2mt7re8lfbguz0v	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 09:16:38.549054+00
l7ig18ykbd62w2xrh6rn1d1494yoqcwb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 09:26:52.722098+00
lciwtp676ovtql4x9m1cd55a9ki8usge	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 09:35:17.745437+00
uakhw0q4knua0wcpc7pnvd0cv5h8pg5g	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 09:37:07.346159+00
u77egam9fepwawiui8eyzzqig763haxp	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 09:45:17.610659+00
2qa14erj9jowv9b6owsfcri9rep7u4il	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 09:48:37.516966+00
m55ezse8aosc1e6v315b6ph79526lmsh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 09:53:37.093298+00
mpc4bcpmk3fvdqy5xl0bwuv63jfsqy6i	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 10:03:18.80222+00
f9idw2749y30sop1v2edddnmgwe4oj8s	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 10:05:42.296841+00
p7inm1uj6po0s2m4buyo4yriw3knsr2r	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 10:09:41.90568+00
w2jz2nde1mimc12hwx7s81im5fr1853f	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 10:15:47.309144+00
wxxg8n62ik3bq6ka1g6qmtz3vyaslq2l	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 10:15:48.168733+00
oudt7cpvcm3ohqe54l6bvg3stgn7qa4j	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 10:25:44.394886+00
v091q0rz96yng7p4tcv9v2g1ujoqik6a	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 10:36:02.050696+00
jzx1i6l4q8sfbn6zf7wb53yxe55skql3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 10:38:11.777952+00
gwe1dky8uisbla592jguuwj51bdqwlh7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 10:45:42.179768+00
czqc4lcjuy400so1nwqps62copu2ahya	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 10:57:07.62799+00
uvl1o2aaazr4w7rrea7v9d8rkx8awmel	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 11:16:27.237088+00
bwimtivkb4ts4h473m21swrfe4rwerjg	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 11:25:47.877945+00
6psosfxslsbwt6pexkvx2ogkdtodk1ra	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 11:26:41.105257+00
czhk88ac8qavwntnjmgj0h4ub74ley8k	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 11:35:29.72339+00
jbxpbytoarsdrb0r0fyudxjgv822afla	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 11:49:51.487101+00
7v2fux6lsao38ej5j0del4sljijauzw3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 11:53:10.749367+00
ocbe5taqd3sadc6px948nmpmj8u3br2y	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 11:55:46.644623+00
od98w5wjhmhviuv7o3pgh72f5d512rkn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 11:58:30.841949+00
qbd82pfup3uu782jtvndnkwhvopgyja1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 12:08:44.620852+00
p6fy4eqtc1zg5s2ouiduc51t7x7jgp2a	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 12:19:53.033438+00
9pmiweyj1aplu2qy1vzgl6i2mh8pw0kk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 12:29:46.976264+00
oxdtiv386f0oepkwk4wsi2cpfci29gku	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 12:35:38.071136+00
qs3qsi8py29z27t30pavyf7m0kfdtwtw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 12:35:40.240348+00
n4i1zxobyikc20ojipr1kft2zgeofwlt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 12:45:37.631508+00
d6oaephb6hog71t5qamni1ngikuzq24r	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 12:49:39.045991+00
yuz6w8rqwrnd3590iutsgsjtzy71bja4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 12:55:28.349128+00
l4jpn39oziplwj2sehhlycjthwr8nzy1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 13:00:53.347684+00
1816cpgyo1m1l4qe23t35fh11ktvotst	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 13:04:00.749811+00
joxcoojtpx9hmn51y50z9c7gbhufvbbd	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 13:05:19.57426+00
04z004wijmeipblp1mx4l75ghhimbh5e	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 13:56:50.009949+00
7yua8r8vezoxrls93l2w2sjvlkqi6a6r	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 14:05:26.621014+00
x4q63x5ch8ozjgc7z8yguct4snt6i2b2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 14:05:27.580379+00
psk12yhanotfqn2buym8x884iuzcxloq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 14:07:03.801907+00
4takvwqwsajwbypc243fklx3hhr84b2x	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 14:15:29.404677+00
vz8rya9tbeoy01ydwv31ubrdp5a8rcr9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 14:15:30.331361+00
2ut0bjsr52ze1uh9ae2jrmzvigb42vqt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 14:18:25.891232+00
tehf69bwjjdn88vzelphp2blweule40a	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 14:25:27.486501+00
0jx2at6s11s4kdm6htlsl0ukh4fkb9qh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 14:30:12.805613+00
k124lgkdixutf92jn9n4nq8lzcz7j1gt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 14:32:44.273776+00
6g8g6ht74ew5ey96nrzy6mo3g8tf94cm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 14:35:26.836968+00
5tj27egsyp17cjh2uyvcb9bbbf47pqyx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 14:50:07.628419+00
gti7lq5pd4cd5cfradidlwunnpf1iddy	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 14:59:10.564793+00
8itsln2mv5n5ult1qmud5hm5kexcayfg	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 15:05:30.400716+00
dun9xtwchpbisdgeu8kdvsqi8etacdp7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 15:15:18.402237+00
oert21v13gjbtf5zfbodqeeyh8pzk0fq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 15:16:02.18246+00
ns6ldffvl45pzdckjr9w0iuleife4oft	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 15:25:21.396145+00
230bh0bmr9qb6a8vgwsf138b9ganb488	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 15:35:29.616216+00
bvqvnp2fgmlp5a8l7rbz9956476qn3m7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 15:45:46.711424+00
168kjdl5vldrcykfziu24mynop124gg7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 15:55:55.449517+00
z6jd3i8c4m8ja7wubpjfn7z5etir83ic	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 16:00:36.947186+00
9gfp8l6zu3jflif8kceliotijkq3z2qn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 16:05:44.03542+00
67i5bselxna0bvbatbufzjjolx24f5nn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 16:15:46.510668+00
45o4m8mnaits4ny1pgqllspsnjjnf34y	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 16:25:53.042625+00
5rmdv98kt9g0x469wtn4l5af3bwv7sh2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 16:25:53.38845+00
742dbgtg63uqas6ktoud7755dwrdjy6i	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 16:56:30.350974+00
3u50zpyzcfcgnzv6o93ye3763sta4hwi	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 16:56:31.662621+00
3g1dy4e5cecvcftfdrwdlu3fkyad5b8j	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 17:06:20.357069+00
00zxktwae0cscokwtj0yoqqddj4f12po	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 17:08:53.857593+00
liyl7oxxxw0iwks6psihz869h2pfrs6r	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 17:16:22.909127+00
hm3y24adv2w6iw183eky1mrosric2wyt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 17:24:05.035545+00
zi7i1pqml1z162gbp557w1qyoe4urw1v	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 17:34:29.797147+00
dfo8khyn50gruc4vqddvkj28am3ozd4l	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 17:44:21.094195+00
4xf9d6sc2ga44bytzmm21rfmpsmwppcw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 17:56:22.815355+00
ujz43u8o3ppmzweebrxz0et65smgiugi	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 18:00:25.370442+00
2a4hajouafdqvebn14j12e8n4ppnnxg2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 18:04:20.641785+00
zn2gd1ahx3ximbxzrdxpsufakciyrrke	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 18:06:16.659344+00
xrlvzh5c8cfiypf9tcqrudkjnwiijstk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 18:16:23.961963+00
1wzqjsslhc3tt23isuuhavauamrqy46z	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 18:17:49.390065+00
z6inij9dzbdfpdz21pyblkpnul3ya6nf	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 18:23:37.040112+00
sgswjt62d0tm3bfiwmjtmarv1fc3he0w	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 18:30:33.176931+00
b7l7noofoazobtkonfyzer7cofqvdglh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 18:40:01.707783+00
03q18f5cd2dykdz1jjfzws78l2tyspgu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 18:43:46.720267+00
ut53tmgf2q28vzgsjmeiwovoi4tnq8t2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 18:46:12.213802+00
tdry23a5wqhiamz0gsu1m3dfn0srrnty	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 18:46:13.171366+00
59yvjofrznjz9sno2td1v4htesmub31a	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 18:56:10.946241+00
0yctlvss1ro04pclms3x4ve59e35lid2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 18:56:11.874636+00
6xg4y3lanallscwdbk2cnvjd09k962wj	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 19:05:50.329558+00
5nju1q7mboxjxqd5vdmiyprqbxkdwwf2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 19:29:02.391208+00
yfnp8yafw13vda5dlkfcf7jpnzkxvg6i	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 19:34:41.291305+00
6h2l3zseczu6zyj5odisecxiy9nwjpy4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 19:36:20.904307+00
4s782exn298gml85jm5tkj3frxwm2w9n	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 19:46:16.382355+00
yt3rpribj0px0a0t27xnc1fzkfafb2ua	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 19:54:08.577629+00
ilg807jbbo3o3iw81f687loco6p85ftl	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 20:00:36.027764+00
umhzaa7thl5iuktd42j3yt6g2c55t8d8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 20:06:21.299891+00
n8nygcgdzf55bp7pfvy0ajnqtqvdzwds	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 20:06:21.696088+00
2rf34hl7o6g33hlznr4whfgniyx89g8f	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 20:16:26.385796+00
6wmgfuplcr2vvw0gkrcqwyry47p458h2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 20:16:26.733462+00
ppi8n7x80gqqesy6fbp2usa8bpt73ddt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 20:17:10.17249+00
t7yggmh6qtk88ko8dn46rx3yki58bvlj	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 20:26:22.444618+00
jrptl0x8ygm5pdeczm21iqlz3pam66m8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 20:28:32.270896+00
u9ffrbhi285celj2p7ppfl46rezyk8jw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 20:36:07.150906+00
8j4zzkvm5zen4lkbd66mfqyt2koy8idp	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 20:43:44.055155+00
esjknirxvbuf4n3wlocbkcx6o70fdtzu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 20:58:39.604818+00
qxay2p55rk3pwzondfoc6nchejqn6nbw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 21:15:31.534003+00
68tbslpr0wr9p7uq3wnu4legvg52173r	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 21:15:55.038813+00
1n0bei13pxiguxw2ej962ti5r5u27dvk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 21:25:22.447924+00
0jhafeoj7zx1eqcb7jwaspj67o94steb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 21:33:35.762702+00
1og7obc03falic38i219dpv5b4uzyx2e	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 21:36:22.861334+00
w2qi8g9t4z5uhi4v92sd20he1ybazhn5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 21:45:26.138352+00
c0mfq8j0o30pxa54wxjnu2z5mtpjh3vi	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 21:55:36.614158+00
k0y09yk9vt9m243ll4l8ofj4dqsgkml0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 21:55:42.481508+00
mjj91xp1enmvriyupfl6ezgnsdjdacrn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 22:05:22.044723+00
y2odnl4b4urllnctvfscgxifk55aaa12	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 22:07:04.686467+00
vgh850npubex6w7g0zcfdbxfsdo591zd	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 22:15:51.74439+00
z94fgq7y1a90dvakop90t3bbdl7zg04m	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 22:19:41.455885+00
haz39uvhz4v5ygvi7mvomz63h6icyra0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 22:26:21.633017+00
t88tzghe1jy3fapmfam5y7n7bbkt95nc	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 22:28:51.50174+00
yhtbj5dhfbxgoha3imaei5qbr1b65nm1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 22:35:23.908621+00
3ce9zv4k7zyidceejwtkeod2wmjxqc5e	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 22:45:26.132385+00
m7ucbrdd5mfzxw3pdy1ppy9nf711qlk2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 22:53:31.265528+00
hlf4t1xpd276a90idcqpk6jpw3zgwv1o	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 22:55:27.664652+00
z56n38as5h5gppe8mnrnt3fogmdwcs5o	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 22:55:28.03411+00
cl2iqgh58vwmkme9z4b8trpw0j89s3q0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 23:01:00.472604+00
htp4xy7u07q64rc9axc3qdeg1h6nkhc6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 23:07:22.503942+00
nh5cbjvilc2lgzalsjg6fynf4cjt98c2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 23:15:21.121593+00
fhz3njaklfmglaq7s2lei31xnokl1zbx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 23:17:36.347134+00
tfqmz6luohi5ywuhje8d57nbe15pcb77	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 23:25:24.179427+00
b2669zmqywrg4kz1a5oecgp3yk12g9a7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 23:30:24.459773+00
rqlabmp1xqezuplqm1c19kj1xlcifq80	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-20 23:35:21.235949+00
78yr3x3ywdqxby7ahia57wlm0adgi8dt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 00:17:05.624185+00
k3k58etvj4wex8915e27hm8fu4j44pxn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 02:06:53.960797+00
o4tm6jeb7euxtwkf7p5odbb355us8llj	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 02:07:59.583253+00
hg7ot07fmacz93y0pw87nu4athe3dgeu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 02:13:13.649983+00
ifhk5tl71qqwl4yef9vl93giwqwxjx37	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 02:15:35.961601+00
8nix5iqobnfcikhyuxr3p0jzcic68je6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 02:26:08.260663+00
8wxhpqrkymu8mdmjvravyyir2uly175y	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 02:44:18.644894+00
60jo0ovlpyawypl7s2qynvz3ww60goqi	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 02:56:01.940807+00
cayigbyixh087943u0on3xzv41kft8kq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 02:56:17.177411+00
d8pki5fgs5qx4fif2htpcy775qty0cdt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 03:26:05.359615+00
5xmz097g8ha97dz2z2brzrs4cto2v7ao	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 03:55:48.358335+00
8urzi56gzeopme6shgjr1fv0ebzgbzh9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 04:08:27.030803+00
xvw71h2odn1g258so26ui5dokhvdlxfr	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 04:20:18.007833+00
6uf7tdbsiuo7r437gs24b6epr08t6cqi	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 04:33:02.272493+00
1fxnbo18vzjzt6olg4kihbcq4x3nntlf	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 04:55:55.545974+00
l7rkv9wx6lz4k1vkcrc5j1z17fgyw6bo	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 04:57:36.916213+00
dwholxasfs9comcy9sjkyde03gjg4hy9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 05:05:51.998368+00
iq8n1mlfgr7t7j29097h4evz8rj4mn43	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 05:19:11.627927+00
e3w46q23thtlj67nohdyr1vewh6cnusc	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 05:25:56.619159+00
2diee8pzb0sd12ncp6sx5przp9ep7n14	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 05:33:37.003437+00
htuoqw1lqnltz2thjz4mkvv75ngkc422	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 05:39:35.068971+00
shw6bmi4i7zk9iqhjm8surt776zvn0za	Zjc5OTE2YTNhODZiNmI3MjNlYzFiNmYzNWRiNjM1Y2UwNDFhOTZkYzqAAn1xAS4=	2013-11-04 02:00:05.461571+00
pvzwhwxbkwk8fbr626krm7g5g42dbq0j	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 06:45:40.997391+00
tpfkcmc47ocsj7w1gky92mlovej0gf3j	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 07:03:59.404983+00
rfvr8ukzrfxg0pv8ah4xpkvms7fvnlmo	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 07:05:46.721906+00
amb5c5hv1euh6mb96fproiytelpc9hij	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 07:15:50.514421+00
3cozd9d5qml2ix57y6wu6wqbtv1tdgs0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 07:16:00.771036+00
atja97ui661bml5fz12w7brx2x0jqcuw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 07:25:37.574964+00
oa72tj6g1nvycyvnso198s1nilrgh9oy	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 07:26:14.959576+00
dergrdq6avafi8bmddvc336dzr12dhp5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 07:45:48.753508+00
2evh7gkpw6ocqegewk8eujrqzvhdvrlu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 08:35:34.008959+00
97358p7cg17mrd6qymhitry6ozgmejvg	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 08:57:13.343917+00
swy5itwyie0biurluz0d0xhkno9j1xis	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 09:36:12.656741+00
hfskros25hk20wttg5zf6xny8y2ln0n9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 09:36:13.125222+00
np9sobe2bxgf6byx7aofclkahoy8f56l	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 09:43:09.310992+00
kkeat8p52s6eo7s5gwhn0n921zfs6iaz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 10:24:17.965126+00
iqtpquy3m8mhsjlgq73lcjmatmqz4iyh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 10:53:58.901048+00
1pvrj4xzkj9zjmfc3hc5g0k15ev6ea5h	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 11:04:15.263515+00
vff37ie6v77eu0b50dfvvk214ugcfhw9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 11:26:21.000545+00
94484wwwjxhmnolghgvwykn2yqoeg8u7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 12:26:11.453486+00
lv70xzioihu8uljcd7j8v99wm9l80wsu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 12:37:39.565203+00
xs38qak6i25z0crfq7gfuseizll6u497	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 12:56:26.285708+00
5bubuw0o71zp3xxswo6c8in73hhow5t1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 13:06:30.228876+00
mqdgj7ef341h3xrw8qok7ff1wx9dcx2c	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 14:16:49.552391+00
wgp8bo21vcoyvc08s44mpcmx2sjpkx86	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 14:26:26.691087+00
oatnnoehybmqvez7mad8dyirgdrtrva4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 14:49:33.056231+00
ygwuqw57xfo622zw71fmnyl3jxluc5i3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 15:14:22.747051+00
orc2vjwxmzo9anwobxato86pfvprhpyx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 15:26:06.591314+00
enaipsb0hw1b0ryc74xnkvy4uhe994ez	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 15:51:28.379278+00
2ytj530usri26vgib10q216ojxd1t6cv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 16:06:25.240619+00
z3a6br5z6lp4973abkj0rdn2n05beqlh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 16:16:13.608012+00
xatijiz0byuyezqer40iyz29fxt0pote	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 16:16:13.992429+00
yks54jt40sb399xuju1kcbs773cqhb3y	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 16:37:05.613202+00
yw6pwwctadslp6zvmmu53m1zirpe4a96	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 16:56:05.168773+00
cqvx555ez46mn6dt2z12uevo4oa76x5t	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 16:56:18.019533+00
3bnvwqtx3qe52wmlflz92ugddsnxrbo7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 17:46:00.165574+00
yu2x7evkhva585cyt5dtyyc1jl2yfew0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 18:08:37.798096+00
w1247j52iphp4bix1dhmq243sgi216xo	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 18:13:55.953115+00
tdviedssvvi2g9qauqtxq8tt0671j0p2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 18:16:21.817107+00
bi1tf37mjopyei8lnelmfjrguhzexjqm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 18:26:29.10233+00
19p2rmh96emocrlr8o06inch0ou7q94m	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 18:44:04.496965+00
azu1jmrysicu99lq1gyl1l3wcu4zv2cy	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 18:50:51.647425+00
uw7d4a7wwf84pgpooqo8z759gr5bot6z	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 18:55:45.720589+00
debuka6iiywd5xzwva4qhri8ese9gf3q	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 19:08:35.864003+00
honstwzyv9h569ppao7mslp35tdzx2t9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 19:22:48.14032+00
8trgmrrkvhd4b4wc1wnc5x2d2vu8hdal	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 19:36:17.734384+00
irqnmebcarcm98p4zbmwrpw2wn0tkbb7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 19:41:03.012189+00
3jlgfi5h78z5zle3qo1q3wh5pcpxsjke	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 20:02:48.368105+00
bjutn539llblbontgot8x2smyp54agm2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 21:05:17.583459+00
m7ofd15tzzyepvpc3cbz0sksxn5unf5j	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 21:49:35.141588+00
tlx6wpm0ipc6qf7mydidagt4ksqrdv8b	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 21:50:02.568984+00
gz3ztbzbpv98cyp284dovhre0qonkh3t	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 21:50:03.739334+00
k1wao83a3l91iqvnsggtsxv99setd1eu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 22:00:23.83269+00
qcb1o970a7obicd1lspoiw77bfdo8ymx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 22:15:13.741151+00
i41r5y5l6uydi1nv7r70g5m9xkavt5g1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-21 23:58:47.174186+00
1imljr8qwhnqq8hb1osaxrty8dlvenup	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-22 00:12:45.224581+00
27b2qyi77xy5huc81d9sprzb2b6zjtrk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-22 01:36:31.520417+00
iuu4abm4fqx3uwrgmh2p1vklyzfklsr5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-22 01:38:31.427756+00
ewozxhzvmi8af8y3a46pn3cg0lb51i7p	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-22 03:20:11.177631+00
ovgnhbg84nn63fq4y8jbdbhbxgb1g3iv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-22 03:29:09.985275+00
nu89ttjj5783hsbi2cax3zkwdx6hvuah	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-22 07:22:44.866277+00
zodot15zop5owprbc350wlf4gizd0krv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-22 17:33:18.485811+00
yf1gs6o18gpkgch76m8kbfp98e4v27z9	NTRkZWQ2ODhmYmFiNzM2OTg5MjQwYjIzZTQzMzVlMjAyY2I1N2ZhYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLE3Uu	2013-10-22 17:54:10.45657+00
6yhc7ujjnzkoy56a53owhn0xkd2vc159	M2Y3ODc1NmRlODk5MGYyZjc4NmQyNGMwMjM4MjcxMjEzYTViNjI5NDqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLB3Uu	2013-10-23 03:37:15.369173+00
9flsqqx4kdvgq9q44mlp1we32br6lu8e	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-23 11:41:05.522154+00
z19u76gti7x8karpybq6kbhmrfm1p6nc	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-23 12:47:11.214715+00
t3yqje9alvoz5xxu9d8bgh8jvkr2enul	MGUzNjQ1MmU0ZGRmMDk0YzI5YmVmOWI1NGM3OTgxYWNlZjcwOGEzZjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLEnUu	2013-10-23 13:42:44.557169+00
2to3w7qs6wapam0ha6szsjp8o570ebqq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-23 16:09:13.896865+00
f04yj51zjgi5bqnvh1rshzyunclkomis	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-23 16:24:37.546893+00
81t8w029vysqzfqbfyi4x1ix1lzq64vz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-23 16:29:08.864069+00
u0qj33jz5foz4m293pzx5efwvt2z6579	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-23 16:46:05.961761+00
6m7dtljguh7bzdqmlorg8x84vayvvkev	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-23 16:51:41.509938+00
wk7s1bvisomdi37sas3r7aeydtqrorzp	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-23 23:12:58.542761+00
w6q1x9pl4s220ose2tcpwy19x1svj0g8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-24 01:38:15.571952+00
io1j83ymoazqysgjfdjw0oogil02gjch	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-24 01:39:42.562394+00
ga90vzzzgy6zltx9q2rot7d3q1z8yi4m	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-24 01:48:44.354938+00
93a53c6qt6zxw0e3ttun11fiub3glml6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-24 02:03:58.891134+00
9rf9rvv1ai5e7qaaxyiwep537udgqidw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-24 02:08:59.506698+00
09sc9fp02jihtbytzb2t8uwdenmt4fx4	OTA1YmQ0MTBhNmI2MTdlNmExY2U1ZDExMjY4YWJjZDYxMTA5M2IyMjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAnUu	2013-10-24 12:45:57.521811+00
hcjmldsjmin2vh7fdatu4kdzy27ds5j8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-24 15:09:34.875502+00
vphrv0bea1mvw4va4eko2588yv1pzh7g	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-24 16:43:34.672521+00
eujc1m1lirmk7ttp1buw1itced948sy5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-24 17:52:44.371804+00
tzr3zu8hlkg8g39jinkkfvsjc1uoeqr2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-24 19:04:18.427014+00
y4yobl3vdwtgad9xvp6shefbaasilngi	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-24 20:16:35.680446+00
x4lvp59tla17tgrjel7dqizdjb1tijqa	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-24 22:30:52.19735+00
ew57kdte9n2b62jpqx9o8pjwmozecjqi	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-24 22:44:18.605333+00
bzubpa2m2epwmyd61bavkvj2qgxyz85c	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-24 23:08:18.574674+00
6da7yeocugjq2l4xmxih7reu7ojjacb3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-24 23:18:40.737192+00
dh3wjzg2ff5suh2vxmrvv6g6banje3al	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-25 00:56:24.967827+00
nix4veam19a5vu33s2td6dgc3jwpcp9k	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-25 02:24:17.201915+00
v4m2p3chrfwd2yis57a6b2k7umly1jq9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-25 02:34:50.387286+00
7fem7ao71gg6htxxmrn5ns0hexsuezae	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-25 03:04:22.733874+00
syynnjy4e6f5o8z0ela75absae05dlxv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-25 04:07:24.630573+00
t9au2t897a0qzoj54fv2ikthnu528jcw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-25 05:23:38.29664+00
srw8ce25zdqss43sx3cr0rqa1wb31ekt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-25 13:51:58.374622+00
aw86o2lioneko5vj8w0m5mohyqxlf2a7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-25 14:55:51.912468+00
3oh8ufx5urhb7f9f7ynh2e3n87y2cz6p	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-25 16:19:25.369233+00
blvwlen2udmoga3udp5ocn2g9sc0rrmc	YWYyN2E3MzgwY2VhMWNkMTliODI4MzJiNmM4ODkyMTJjZjlmOWQxZjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAXUu	2013-10-25 17:09:16.13557+00
7dpou7tklha80co69f7dscnuwjwyd30b	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-25 17:21:12.645533+00
745qkqk6nc4a5aormdap1cx0nla97nyu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-25 17:43:50.843765+00
ymsdmv8i3prrefu1c0xo8zfgekwido1b	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-25 18:43:16.59951+00
lcuwjcoukizx4vgg51hs7amus3d65iqm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-25 20:38:28.60729+00
mb3qjwrsrotuyb3oz3owvwyzos2wbljz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-25 20:38:50.76687+00
rhmeknya2kitn1lbgv7k09vw0lfz6y89	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-25 20:40:24.343686+00
x2rjsdfu9ynqc8y2elxk53a4w4hj26il	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-25 20:54:57.058649+00
jhaiiptebaqcfkv8xuqjvep6rm0hccf6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-25 20:59:58.656858+00
t4gylx9erd1lacw1ds5n4lmb1qy09ujb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-26 05:12:07.47798+00
bshuur5oix4zsp2v874f9rccu2ajxj3g	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-26 05:27:37.39442+00
0nct6xnx1jewkltuuf1hg8hsojkhsoz8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-26 09:43:32.546977+00
qtjku3mresp7ehgvhiq84dqldxixqep4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-26 10:02:28.564068+00
6gdim0p2nv38ssht3ktjuddeklqbg4kd	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-26 10:49:48.366143+00
n04ytks4yiu5w48hr5spd4ca0cip9fta	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-26 12:14:59.441273+00
962h8sivr7r2fsg8u8cb8qg9qm6zc4mp	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-26 12:24:27.178661+00
3wrmrlyfkr9j6uedbashkrzzq97d2plm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-26 14:18:00.8723+00
9qkaxq0l8ctcp8jux7x8i6d6pifr6oye	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-26 14:37:19.255024+00
cgvltj5w0fmmbjrd5aji89sjkjyuhpzq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-26 17:00:51.160647+00
yvhadwko21nw5r4ggrlpp2irzf0z272c	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-26 20:47:37.455305+00
olz9l0dkd27hsaslyodhoorwslpbkjs1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-26 21:51:11.367735+00
izg3rp477h1t5r5tfo0cxrldh6bsqwjf	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-26 23:09:10.207774+00
gaswdk97xmqppqs4oh5exwubrttdq7nf	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-26 23:58:29.97511+00
w076u6gg89u7m7dzgolfh8rkzst2q0mw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 00:48:24.015222+00
trahrlf1o5f3wzdhn7krzksbdxk8ptve	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 01:54:22.211824+00
ds8zsrogvbm1yvu7k2zk977gusow3cbw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 02:13:04.393069+00
ximrka62apnbdg3zh1fdh7k7ywkemzwp	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 02:41:52.350838+00
69v1m5vpmpbyns0qkmtcg77vsncsu25i	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 03:07:09.218105+00
pe05qt9fvyqcxfn13paw6ws9esavrzyn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 03:39:28.329674+00
5dw15ht3dyeqrqv3wz8gnjndr044g5h5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 04:39:58.653166+00
akgtzj9w8tgts1uifxv6i9cg87z8r0lx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 04:40:15.82053+00
1izgrawr583di1pjkcg2zsvyzhdnbey7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 04:42:33.816407+00
67juide3q9wlu8ml5hevh11ie1j9vxk5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 04:54:51.262734+00
xc30y737fi5kg921z37rtw52e94tzir4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 04:59:44.841586+00
qr39p8jkab9k6re3dcrjan10v83btl73	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 05:38:36.338334+00
kob1qdk5yisk1qja27slwbgtgrxpwlkf	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 05:58:33.570278+00
fgtd3ufkhhxl3i2ex8yrt7t9cwbq7k4f	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 08:20:16.317539+00
nsfzgtk2q6wksnje1e3xl7wbjl09dahq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 09:18:45.294087+00
lgdkl91577dy51kxfn6w1m6jnepuqt9f	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 15:38:13.810081+00
e9jehqkoqob147grg6m0gdyp5t04itt7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 15:47:37.982078+00
9h5kjqkytwlxa27zkzuvi5blxcgfnyg5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 16:05:29.842952+00
k24bferqr3wgzrltz7zz4zgs3k0fa2qk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 16:14:33.233602+00
m2tlch8vsagkx9hxovmq69298ya39r2w	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 16:21:09.972231+00
brifz4ffzgc4bsajcr00o1wyobphavgi	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 17:58:43.821148+00
kzduvfork36h3lmaygadhntn0azl9vje	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 18:43:45.660197+00
ffn0exbyijzgst1e5n2g8h24us8xh3gb	ZGMyN2ZkNTVhYTQ4NDk1MmU2YzQzZTI2ZTEyZTY1NGVhZTY2ZWRjOTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLGXUu	2013-10-27 19:11:57.274968+00
uhgbqi4y702hdrzk0bznkegtsp567i1a	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 19:51:05.488708+00
rokh7un4tnqesi4mhfrh2w517m1w1ovl	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 20:49:04.329469+00
ipjh1ut340xmncm8ehrdg2yans3cvecy	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 20:54:04.310066+00
3deh2mxfikacb8k69etalk6nq3exph7d	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 21:18:55.320538+00
vsudkm4vgmc0gg9h4brudskqilipcku3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-27 21:56:21.533476+00
2do05cmvt6qj8q75vvugikykbhmv77uk	OTA1YmQ0MTBhNmI2MTdlNmExY2U1ZDExMjY4YWJjZDYxMTA5M2IyMjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAnUu	2013-10-28 01:04:22.747734+00
z0gqq0honzua3bbydvu1zxaecxju1p3v	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-28 01:53:04.884235+00
r5o760hj6seijh1u43wvlzdfs7tclov1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-28 03:08:32.063579+00
4t8vj8w2hfq3hosdm39sj2057rnmvdvd	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-28 04:47:26.125257+00
y0jcbq1omc8rcqi3brmnz7ppzmmbut1e	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-28 05:29:06.267029+00
i7sgajtm76ss5dfcndwbn11zkyuqsbu6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-28 11:13:04.448152+00
80hh3c0q2p773vkeqxh6jvxf9ph6ikb3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-28 15:03:20.950367+00
08ye026aeepkzsoi9j4vnr66v7le0iv5	OTA1YmQ0MTBhNmI2MTdlNmExY2U1ZDExMjY4YWJjZDYxMTA5M2IyMjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAnUu	2013-10-28 15:40:34.416163+00
15u8cm27mvp0qzrf9xjlt1gxilz2vsg7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-28 17:25:29.049703+00
khlp30vzik0a7ffzupnlpxkk2rvkfidd	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-28 22:38:30.017199+00
wznkos2wtx0nzbttu0qux3u2oiwupcin	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-28 23:22:42.223432+00
nqcp6onp8bqew0l1nhfd2gfm0s34zgik	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-28 23:38:34.96929+00
h3igmzs10rjmq8disfaw4gqu3m1t0vcx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-28 23:39:58.205418+00
775z4kuecqadj32w4txqpg19kuwhphb4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-28 23:57:40.883632+00
kdl7obrvsahyk7pmcoo4hsszmguawse5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-28 23:58:08.891835+00
vicfdr9mw83b9vbgcddx08dwjjx3e9hn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-28 23:58:10.807487+00
lr1ebhynl8y6ukfr9r7zs0o8m5xwcy15	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-29 01:15:50.121708+00
w6rkdhc6cgh3889ou9ib2t5vi5g2b50i	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-29 04:03:51.76035+00
5qoll2zzmbgc2jblzsijfzyc7tqolna6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-29 05:11:44.45568+00
a4yx2931ovkf8c03audw866iml9hudas	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-29 05:23:19.407214+00
i9zgelik35tmn25qx2sqez88hsss23bn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-29 08:49:16.382405+00
ammjn1tbdizmou228xboyp6vfo3y7ega	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-29 09:19:28.419891+00
handh4hkcaapwlcilw38pcde2pzgy5tq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-29 10:32:55.403973+00
kw1g5l1wl3ndks1np3l9johzrpnp1zue	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-29 11:10:40.086955+00
zt9hpn360mq7jmv15nklufsbq7cfpmqy	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-29 12:36:28.863162+00
eeudkpe8hc5djip4obpfaq1b7kpz1a26	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-29 12:59:32.179067+00
mkut8dqwidf6eorh27sj18g3myak01s8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-29 13:33:12.898253+00
w33xidobsg7n162vvev62c9gnay5yki9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-29 13:59:34.919905+00
h6clcw93smea24j4s8zp71y3mwz6ns9r	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-29 14:23:19.496088+00
qrlk48guskfdsveq0t6sat88ks8wgke0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-29 14:49:49.885066+00
xiggd2bgs9ep0jwhwmxhmb7hzmwcikl0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-29 15:20:55.402453+00
7cru7f5ts2oq1v92z1jsia7llahvg516	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-29 15:32:41.170254+00
qq27h3p277qnqkljosqabxck9q1u8wqj	YmRmZGUwOTU5NTA3OTJjYjZkZGRlNDdlZWMxMTg4NTc0YWIzZTAyZDqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRxAlUNX2F1dGhfdXNlcl9pZEsadS4=	2013-10-29 15:37:43.623668+00
8cfd8qvpukua574fdat0eo5045g8ud9s	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-29 16:19:37.399889+00
o4e9fnhajezj18gbmgdbckufydk60vs4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-29 16:57:41.074362+00
vpzyw1ce8jaic1vbcyiuzjevbrsi5iax	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-29 18:12:02.510299+00
ipqkyim6hxp66ddsglyv4lpyza1zg387	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-29 18:43:53.931442+00
nrq648sifi9gcyxwizbz7ih1c0gygtly	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-29 19:36:58.765804+00
y3xr343ctlascl1frpkk6vfmwl58ophp	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-29 20:03:20.489729+00
f8pr62jbsh2nwxj4vai69qhipk4osmob	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-29 22:27:31.417085+00
ieirfli8h5onkuywbr1gfp9i9wgxwe2c	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-29 22:51:59.641652+00
1m48s51tsm7orcabckesm5pr4lhjvady	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-30 01:01:07.647856+00
83x451j78m3efijfjzpnv8t91e1m7f6p	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-30 05:55:01.798049+00
zosutajtdhg2cgf1z5zvzw9qdf4xb7f0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-30 07:24:08.656347+00
gay1i1vdhndnhvy3yh1oyr2uiu5hy2k1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-30 17:22:03.701177+00
comsx3fay2rk4to3toz3ciuum42ez26u	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-30 18:26:33.774151+00
jcfu51g83uao3vel9pzzoahejdcdkzhe	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-30 18:47:52.391477+00
q9tqgw58xgbj06yhnv5my1vtlwls1338	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-30 23:42:00.449555+00
yso5qq47qb9talojnj1e0vegukzi103a	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-31 03:02:04.669216+00
j3cln072gpg51s1m9qgfk3w9lkd9ihfq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-31 04:57:05.502139+00
46mmvabw9eywuy61v6wyi4dch1cgmexn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-31 04:58:33.735847+00
n6zyl6lgbyhp0vhoegfzpw53ymidcrc6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-31 05:00:15.815097+00
4gicv440812j5zwjsiy94cxuhifxvf1s	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-31 05:05:17.976526+00
zbebnpj6qm439cbok5hdnniub8ot4pgh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-31 06:00:19.127165+00
8v2lzzp32yq9rdjy9hqxtgazhykgyiln	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-31 08:19:04.200772+00
4lkb344l7agsq9irtzdsy94oc6n9luqx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-31 08:49:04.713175+00
2t0mggm0b49ij6jintkuanaf5qpk3xqb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-31 09:19:00.621936+00
jeg3sijqgmdkbpzithfs57uddqiptxja	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-31 14:33:16.73668+00
837i5v7p7su0sa6dsjkh2kgtjmx02wmi	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-31 15:03:08.298063+00
denz82huht8wqstew0ca39vsuj51hyh9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-31 15:30:52.825372+00
jm9r2olk6r4po41u3rnyeuyf8lx3e6ha	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-31 16:28:49.917082+00
jvf9d1qp7t8li9arp0oc0g1foaw9sgdk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-31 18:52:28.751293+00
8ha2ca4w937mmya5rtuie2xccp0gctml	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-10-31 22:18:52.388135+00
4cdf84x5pdzxp1py6f18glt4hyuj5fi4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 00:56:46.745452+00
ctdiq123q75mivntib4r4b1qurxmvu9u	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 02:08:40.259609+00
b4qr6ksoza96wlo9ry5h1nxj4odw6ajz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 03:59:40.665449+00
m7rhcf6ofscuomv97ng8is4qdvdl6x87	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 04:28:50.345624+00
n6tuhehkpnkzkck9uehu1ouzlodz52n9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 04:52:56.520093+00
t54yhihua509qkv0r37g3a6hc0axxh3m	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 04:58:36.20906+00
99zwgvgq02nyryzq63toaxey2grfgx4j	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 05:28:43.572828+00
cfu4htlko49urns2fwecl39b5oynl8o5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 05:47:39.264817+00
iuo4dmtwdxdiuhz0fspsd9sxqq4hhly3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 05:58:35.677002+00
n12srwwo3z1kt05zqyn2ffu6nz2dcvu9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 06:09:32.180008+00
h2zpp9vffk6sjdqttu00aodp3n5x0flg	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 06:52:28.742575+00
lax93wkxxjrnztasfuguqzl1aj8d703t	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 08:07:18.775757+00
izihm7qojtpqor2nz05meqqsh6omwp03	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 08:38:50.794647+00
2td3f0u0y1so3kujl0ybcb3tifrvjc48	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 09:10:22.651725+00
fi9lyhdzgolb9lyyodjensmkc32h7vqe	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 10:44:58.139157+00
f1giqjnfcefob5vw9ehbj9z89ql54q5t	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 10:55:28.686354+00
if6als3btp1odz43c75gupfbmc3m3da9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 11:40:28.649784+00
40ysjgaibsurwwbsxezwyapzffiy69it	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 13:22:34.073306+00
62921rdbjsy8wzmmxy564ytvjw4mz9l4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 13:28:56.694541+00
zpk7cc89qlmup1gg9ej2rwjh2klkgpx6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 13:43:34.348622+00
yfww6rtvl1nekucorlo24hci9ieqe1jt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 13:54:04.363356+00
i11cnxpckr5hbo0vq8zd1tsm3ajihzna	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 14:04:34.349428+00
g2dbrgzqrlil4n42iffl7bvw3r2tvw4k	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 14:46:34.549747+00
y2m0ud1se50xjkp5q1p803mei4t5wizp	OTA1YmQ0MTBhNmI2MTdlNmExY2U1ZDExMjY4YWJjZDYxMTA5M2IyMjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAnUu	2013-11-01 14:50:35.961769+00
xm5k3k5g1aoi03eziaiyydbjz4llakrb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 15:07:34.077881+00
9nmyljoewwits58ljiazkw16fu7sddn0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 16:21:16.682256+00
9cugwg565f4bfkazhob8ie35faq738l6	MGUzNjQ1MmU0ZGRmMDk0YzI5YmVmOWI1NGM3OTgxYWNlZjcwOGEzZjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLEnUu	2013-11-01 19:39:24.994894+00
nsnmmlagc7jdgtlhi4j9yatwj2x0eld7	M2FkZjViYzA5MDY1NGViYzZlNDYwYzZhOWQ5MzZlOWJlOTEzMWYzODqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLFnUu	2013-11-01 21:44:53.287336+00
4pbj1vf2lc4jyz1xkng86lwfqhamdk23	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 22:54:07.812533+00
ydnnzicw1um0q4u4bwmq4dfrmoznz46l	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 23:45:01.844952+00
hnmturzzrvjyyrs63hk4hkp7ng4zp46y	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-01 23:57:44.752846+00
5xs7xf8edl32ux2f61xkmtqh0u8ee5gs	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-02 00:01:42.100763+00
s603qcp0odiyca98qpoqepx0n0usdlth	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-02 00:06:44.599263+00
0gm6cfi4e3c0e6iqeknmr475c37nn4uz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-02 00:11:05.058214+00
20eebzdhh24ac69pasuylal72gthxkez	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-02 00:21:02.28481+00
hoe8wdhv42ryxi8g4d9cm5b0j3r4wpq4	YWYyN2E3MzgwY2VhMWNkMTliODI4MzJiNmM4ODkyMTJjZjlmOWQxZjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAXUu	2013-11-02 03:07:29.025824+00
k2leiwy69ued17mgdm3miqtfpilx2cmm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-02 04:34:56.179374+00
8hbxogqq9rbyocpk1jszigy29twn5toy	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-02 04:40:29.861632+00
nb9j3rjurocjxckgp8xjhkoo4kukt516	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-02 15:53:55.744863+00
ct8re1rbl6aqc8xgb6hsuz3j9hi8hl5p	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-02 17:41:05.164102+00
vds8hog5riyxov2gnc3gpz2gsmtrttwu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-02 19:18:47.722004+00
mj3kbhfmobfg42riu76ttbziacjycr1e	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-02 19:29:28.01832+00
kikdxkwkamnxwcmr2uap8jnm5hv15f3x	NTBlYzM3Y2I5ODc4OWUxYzJmNjcyMmZhYjZhNTZmZTJlMDI5YTE2OTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLFHUu	2013-11-02 19:41:14.264725+00
raec1su9ukoxv8e024h4owr8l8rswymz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-02 20:11:40.745242+00
3cu6qxvrum5et5w2u5v6q5cqbki5fuem	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-02 20:31:31.740045+00
pns7ere7qvpie6kn3ste7kmputk9parq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-02 20:40:28.742788+00
l6aumoeq9cm6984s73hauuwtu2r6fn8y	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-02 20:51:17.01469+00
ubi0w8pzlt63fbup5a0rbpff545m8d5o	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-02 21:09:16.762259+00
r1qcra7jyezioku51g89wu0uea0dhejz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-02 21:38:36.733812+00
uz0ggjf5pinv12p352fsq0lu5rvgqpjs	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-03 00:27:55.701896+00
oyir0cf74cu970sol1jko93j3y8yy7o0	NTRkZWQ2ODhmYmFiNzM2OTg5MjQwYjIzZTQzMzVlMjAyY2I1N2ZhYTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLE3Uu	2013-11-03 00:32:59.511931+00
1wigqe1jj7vwfpcfkk2uj2kxmghfs9px	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-03 01:25:47.606936+00
bg2oyqkyel3vuuxrzdib7f9xaqy0i2wy	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-03 01:45:04.566421+00
21696or7d7iycs81v513d7flt7iqddle	NTgxMzE1YzlmNWJjOTUzODNiMGE1NmE5ZTE0NDAxMmM0MWQ4YjE1ZDqAAn1xAVgKAAAAdGVzdGNvb2tpZVgGAAAAd29ya2VkcQJzLg==	2013-11-03 02:23:38.134266+00
4cjovinlg9no0p5nz6agb6sf0cmdy993	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-03 02:28:29.768226+00
n51ufuhv8huy3mo3z0nb58pb1ifk7zom	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-03 03:02:12.220258+00
iikp1jocb0digvolz9orsz71vnv0nq8i	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-03 07:33:07.167613+00
0irp2j526m346vjkm8hhrczmr27141d8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-03 11:43:34.958441+00
3cigblapund4vz7m1kk7ffd4movib1v5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-03 13:04:22.025688+00
zbk6qobgljdwqaofhndyvklnp8x042c9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-03 14:28:34.984942+00
m9o0zalqoifrl46b2i8zo2or5pojyby2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-03 18:45:19.651914+00
kjc32v575x5h6uwnrpifdlpzcnropez5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-03 18:45:24.55215+00
of04radwk3g7po6ela5r61rvcz9lz27x	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-03 18:48:44.114476+00
6hd8pxayf7onyhp2qpcjtiwkyib0ijog	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-03 18:49:01.898077+00
nv1y42pirm6qweh13depuf9ka9hbvvl7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-03 18:56:05.271184+00
ssemucpaiaae2wu7bxcszpvnthd2njxt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-03 19:13:39.151105+00
4mt1725vi0gfimqbxo8ugbra33ba2rel	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-03 19:19:14.37364+00
bx7d1tcdvwvr2wcfvm0u9rbxruxivjb7	NTBlYzM3Y2I5ODc4OWUxYzJmNjcyMmZhYjZhNTZmZTJlMDI5YTE2OTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLFHUu	2013-11-03 21:42:50.071833+00
4cst1tjndc29eh02eoyleq6bhv7r4yoh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-03 22:49:05.982777+00
qwacjjvewgwgbei5ix4dqw4pphhcc2vb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-04 00:15:14.453208+00
s4begmd1y1p5fw265zdzpsmgzs4mlxs6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-04 00:39:08.956939+00
fx3pbg67vlj4w3gs4sj7jxmimr3w8yrj	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-04 01:25:24.926599+00
jxfz3os5j7s3y5mdm68kz79zdnu6eg1r	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-04 02:35:50.929762+00
s5zwj4teztjmlgewe2221dq7sd5kgjl7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-04 04:27:30.807241+00
w03vo36si2vohe93m7lyya03u3bba59r	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-04 04:43:16.814349+00
hcr4w1d5q2728dzbejneq7jkhxy0qc4i	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-04 07:13:20.756106+00
3ggg3yj8a1lvc323kw96jft6vzeyzo14	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-04 07:23:14.668429+00
0zbvdlafm0i0kaw8dqel0xbxl1gvkuod	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-04 07:23:15.551146+00
t820xfuvsk9bhuyblhsrfahi9ou9g157	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-04 07:43:16.098298+00
i5c0qb8uwqvjrrioqdxgmkdm2dl0ye1c	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-04 15:11:53.680615+00
fr15kj2uxqqt16s1obz1wexpzvmk4mx4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-04 16:18:16.87222+00
ql1lv7j0deuqd9lbba2511jbfvvn20vu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-04 20:42:08.177695+00
cga7vgmrad9w0alle14e5802hsrwgjgn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-05 01:08:17.634213+00
7hqa1wa3ksffan4zby7cjeiw01mcjgri	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-05 02:55:08.308708+00
v0vu2wnhn84p7hm4zzivfkdxdnbsx9fm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-05 03:11:41.27175+00
dgx5sw3dq3fugmzpbnnxnu7l0x34u8t4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-05 04:20:11.036017+00
zpdcx2vd0awxpmlyt1xz5d52qnbogstu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-05 04:23:02.463058+00
ubjo52exazs62c3za6rq6gutsxf4mu3m	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-05 17:57:03.203254+00
i49btkc3man16i5c4zo5dna0ig8riwm4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-05 18:59:46.296013+00
t1ijq77vo0j7i1rfu29xqe324adus8lc	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-05 20:12:21.807394+00
r0hvowce7edz0fw6yfswz0wy0qahn7pw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-05 22:45:03.31248+00
cqcgf42bfjhi6r989xzsjwi7y9ycfkag	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-06 01:44:44.286174+00
z4jqceaoy52c5xdvk7e9y10wzetwrsty	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-06 03:41:37.974036+00
y8ly1brjjkaxte44yyh1i7f673mnnphb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-06 05:43:55.268818+00
4hjo39pcbxtbi4ue5xfj0b2nvfbub20n	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-06 15:12:21.922025+00
95iryvxdbzi63wwiggsp9e93afokzgl8	NTgxMzE1YzlmNWJjOTUzODNiMGE1NmE5ZTE0NDAxMmM0MWQ4YjE1ZDqAAn1xAVgKAAAAdGVzdGNvb2tpZVgGAAAAd29ya2VkcQJzLg==	2013-11-06 17:25:32.596174+00
bkl26eq33pv74y3ewn1dhw609xznqodm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-06 18:40:48.897065+00
l3ax5c5ngf2kyf7hm8jho3lmpefahm4s	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-06 21:55:29.109484+00
81e13f9i4qhgm7uhvyz5m36oeaxk0z75	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-06 21:55:32.956352+00
lghmdwqpd7algc14n9nhbwq0s06nxer9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-06 22:49:05.875484+00
tpesr57dx5zdhflfuw62v9iqfbmnf0jh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-06 23:02:54.487526+00
3c6rpn3w75gwy6rwjc5v6pehbuqeca4l	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-07 03:23:16.673344+00
3bemmf32ci3a8ttmn8gd2udqhzgr9vkb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-07 04:17:00.442746+00
q0xh2yk1cei25bsuj9timsgu11c530gr	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-07 05:20:24.568601+00
6dvlhzqcp5diwaq01uos26are151nwft	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-07 09:53:39.810116+00
jcz2x5jeuem57d9zzdlz9e020n8bqucc	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-07 15:24:08.958858+00
key63ujoq32dzpxcfs6066hwsxq5zha5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-07 23:45:55.663353+00
9198mxxkrd8sy8qqzpdt871x7jpd44aa	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-07 23:58:37.655247+00
qov6fllooaertitxy16d3sriky0gzxe4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-08 01:16:10.216832+00
g7t3lrjy794xi8y1m7esjd1u1cp8b093	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-08 02:32:28.987351+00
fwiygoy3ecj1uvk7bvc3vynq58bi2pik	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-08 03:38:24.883169+00
yhfu92lvf3t4y4jpfjlec72p5nu0gxzf	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-08 05:49:40.017347+00
0kusb5q15da8x2511x23e2nq8c07hf6s	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-08 16:04:57.27851+00
750xhmumwhdgtocgrkqkcafgft7nz73j	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-08 16:22:53.392783+00
tajzpx0jfdg5b2q9qt146cz3lknsg2iz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-08 16:22:57.113929+00
jgetc5eoi1l8dh1jxl2z0bvoh98sx7uv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-08 17:44:10.55448+00
nz1n5lv6iigygnvtlzhoeytp1uawk3ep	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-09 02:35:37.304519+00
4eltxe7y4d5htn26iw5w8criw4q9p65d	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-09 02:45:05.959019+00
ty5uhyhjbxit3a9fhhrz62smhtmzh6x4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-09 02:45:48.747101+00
kv2ym2ggjlzl7cti4f1uppy7y7munk84	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-09 03:03:16.378391+00
yevern9sb48mmxoc7yvhpkq4fjz7sz3o	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-09 03:04:23.602335+00
pxjg96lzxixvbbuk0bx2e09brdz3ce41	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-09 03:08:17.063874+00
nc8g2b9au5zfs8jfnqjj5decelvtfjj9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-09 03:33:02.720563+00
0d80ol0fn93dwsfuuxnzefqrph0q5afr	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-09 04:27:55.670346+00
ou9piht7if4xczkvfaeotdrb6dlwkbda	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-09 04:51:57.943902+00
iaugoj9respkust1ckmo5ltvzxuzggxt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-09 19:30:27.945334+00
9eqon870x58hhj4xc40k588qumi1ts9a	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-10 08:53:55.715516+00
i9u262kzh0uasarqjkxcqd9ndh7vqfwv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-10 12:40:03.944528+00
0wubt9ludqzv6a4gsdwlzepubuq3sju8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-10 15:08:15.41644+00
xamnku93zupwc4i02gsv3w5kt8invni5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-10 16:01:39.943243+00
i5pkdupnad5x8omzlr9uz7d3gi58b4x6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-10 19:52:04.05968+00
8kjbty850p05f71bu57p274gkrqyg9ww	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-10 21:36:04.749618+00
acy0t1aywev5n6dp718mmtidnq6l773f	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-10 21:53:04.915264+00
niykgz3fz2azgua35nbbnno0xb6139fb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-10 22:03:07.025032+00
kh25m7x81d1tuj5wbkf93rpczem3fy29	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-10 22:07:46.989832+00
yfv73vlkkfv1lcl0uxlmn2ss87fy95sr	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-10 22:18:27.305443+00
2bj62cj30uo6k9dtfr4ewcgs8ddrw02x	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-10 23:42:28.03364+00
71zevtdir2ojeh4rkcqg9jug469h079c	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-11 01:08:52.048096+00
aa3qdxp7od5kqrfo9argcw22wjwdxl1j	M2Y3ODc1NmRlODk5MGYyZjc4NmQyNGMwMjM4MjcxMjEzYTViNjI5NDqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLB3Uu	2013-11-11 04:22:11.927506+00
3vigxycfd3smommczkv214bkcma3g41x	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-11 09:09:03.928244+00
7rhghkq7s8uhepm9z4opx53dr36dubjz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-11 13:13:58.725661+00
1vvc9icqju47vrhg74ntuxdusx8e3hzd	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-11 16:59:08.843505+00
u1c7389mbrdldvolm4ww95zjruz8e50t	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-12 16:55:44.6694+00
in4l0d8odnycva4uzntxflc72iqeb9t1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-12 17:04:54.505263+00
hsxsu1gyggf469v8213wb54bhlb55ilr	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-12 17:23:19.25914+00
8t643g7gpbbk7o54p07l0o19wl687hfa	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-12 17:28:20.815073+00
6edbpkysscdca6x96srewm4efwgdamch	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-12 17:33:13.288345+00
vl4jzkh0whyqz9hxh5s5si3yuzua1wc2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-12 19:24:28.834586+00
wj1ubvpv1gdtqdewohvynituvr08kp4c	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-12 21:00:52.374255+00
enxxev52dux4w1d9t7ym2cnpp1au9rvy	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-12 21:09:17.032541+00
yixj852jo0tijgbvxrafgiwo0hxu5omz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-12 21:26:06.410917+00
2v5gvov8cladoccdhotqhqsv46nrlyg1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-12 21:34:31.058561+00
og7way2oemjkw9yj1ae4vu4gd2k83gc4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-12 21:42:55.690811+00
6lepbunkzob69h4xtqh1hgls2r5zpfxw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-12 21:59:44.878328+00
4mhtmz2n414x7ch3v47txgib1y8xexcj	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-12 22:16:34.245994+00
igf0soumcgta8srw61dgdhaprmtsyks8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-12 22:41:48.020713+00
i1ccelp753o860trb8m5182gfa11i6jy	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-12 22:50:12.608837+00
51iwfnxxfmjtwrdpm3jkqgyn3inwfo9x	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-12 22:58:37.117709+00
z0l91cbclve8emhc8jo4fwbzhgjnsb9g	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-12 23:07:01.667609+00
dt3nb9bevp9piofqsfe8krlh8ro7ysvv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-12 23:15:26.295514+00
n002q2c1lvr14osm1jprtlvpckk93685	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-12 23:23:50.927297+00
znj8cm2hb42w3p83g8tg92yftvb442sw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-12 23:32:15.458683+00
5d3e56jwu7wcnpsmwmprlakgzut19c1x	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-12 23:40:40.927232+00
ikp9oxgp1e745f00hoe5jk6wqgnd9fal	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-12 23:49:05.453057+00
5wzbof9yn0d0j650ak4mqiannemp038a	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-12 23:57:30.036328+00
00qrlp70smzfvgj2ecnbbnjclh12aouv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 00:05:54.609156+00
pjv9w3ss339rzh8njfo4jr6nci8eycr9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 00:14:19.044876+00
otz023ws1mba4bgazjb9qj64gv6ajxxa	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 00:22:43.455029+00
csgo0z47ho7ri5obg84etvjo74ireino	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 00:39:32.337937+00
6hnzn5k3fjsjk7p5rib2dh4e1ug4edz0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 00:53:02.427718+00
56ksnpnbdz9s6guv0b9s0oime0lnmi5q	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 00:56:21.421818+00
qx55bb0emkux44iydrgzu20kky67p6g8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 01:04:45.800448+00
xryw5i0m3q8xzpvg18yes11brmntpclo	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 01:13:10.334391+00
nswzy4l55noe0pc1aw6qyvuzf7dmqd7v	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 01:21:34.786555+00
0f765qvdgakxlzary2wqejv43owoh0z3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 01:29:59.268687+00
diya1lonfgg83t3aof5okndjeub7hpq9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 01:53:53.23424+00
fewe4vfp0f05a020e6bv3w7iw64xawho	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 02:03:36.878978+00
f1deeb182g8rd3telu5urp6927ym3yzm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 02:12:01.203073+00
nkrznvn438ti1nagggid6vqsr3ow18hu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 02:20:25.506514+00
t0t3tmurl2rfndbxmwtkfdhrt8uoh8fb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 02:28:49.932435+00
2tkwwhwovpmqhp65i388bdsapzhkrykt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 02:37:14.232247+00
2nc3zj4xdvmm3vlhihua8imqg332f1ke	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 02:45:38.598301+00
jbtydrz0yegft9finpmxezqlw55r0pru	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 03:02:27.45017+00
q75yigdpxd51ypvytq7s44qd38zn2v4r	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 03:10:26.959735+00
3qdp7bzmp6ssisgsf351nf1o86d8cj6q	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 03:35:12.908867+00
r8qi2bl4urp6fgivnf8bhmem50c7qfyb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 03:43:11.377885+00
7ff17k8qsrse7gp0co9oybi1wqemojwn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 03:59:08.175445+00
ryw1ii59pnznnk0op28d081n2t14snqe	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 04:22:54.101508+00
jk0jy9i8el1jdi198qd3rz0xodehqlxq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 04:23:03.430835+00
ecjqr9nu6vpn3kh3vsff8qzzjgw38v27	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 04:39:00.27322+00
ceegdfhdgzdkygesu90gigoz9ixh6ag8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 04:46:58.575405+00
mpuvi78ovvjd7exqjtv7urta366hohdt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 04:54:56.949136+00
xvfro48bugwrn74zilh72kz7lbgrk3oy	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 05:02:55.204397+00
6nryg9rjd4gbc1fxq0s5bu2hl4lgeyf2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 05:10:53.502434+00
a5d3wkospxvl5ai2yy35rrv0s0du2h2c	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 05:18:51.707151+00
h55e8sok24ubvmoyead12k9mrwmwqzng	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 05:26:49.902813+00
njhydwaxgxnqrfmh7f2y8fo952ll4kor	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 05:34:49.556528+00
ymv0rqifzdsv588wmmae13rhkb197o51	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 05:42:48.214358+00
zzw8rnrufrds80okceibh8sypocendsa	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 05:50:46.491933+00
pfth9oci92xowm8dey15i3ffmdrqa67b	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 05:58:44.648472+00
g1n7kqouob9qy93rkj1d0nwvyvhcl10f	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 06:06:42.840313+00
tmcldxy3pug7fdy0g9vh1gcsj7ltquo3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 06:22:38.923995+00
oxfj7at4b4tsu2mor9tpwprkr8b3w9hp	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 06:30:36.871482+00
0a34oko7o0lju9neh6gdon1ynpw24z55	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 06:38:34.882408+00
j03ktmt3kfycfdhklersnouna4ckfc0s	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 06:46:32.837091+00
uf3eoun084rtfyfza510c5wvl37pqgdm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 06:54:30.698162+00
1vahrqe593hnm0k9zsv5tsobzyyqqdgh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 07:02:28.622421+00
92e92vp809d7gj6qjmw56lnlxew0zal2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 07:26:21.981855+00
w134hytxi1qyu8ozko0sjeb7tgjucfwa	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 07:43:55.551419+00
84ccvj9azta319qdp3w68ejtptfcqptt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 07:50:15.060043+00
blgzlhi3zahu1qb27lbfl1lyctto00a9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 07:58:12.387635+00
tiazp2yihvhec74mer6ef09vnm4qpnxh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 08:06:09.80752+00
52mpof8dbnxb0d8an7cuxiemnsxp2co3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 08:14:18.142397+00
d0dv9vok8v733l474de6s4l8pam45dag	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 09:05:56.546599+00
lhe1ot46qidro121wpzd7gtxueg5sxkd	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 21:08:00.139801+00
mbjf4ou4byv9r5k2rt2llqcdi9lr9z53	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 21:15:35.190287+00
nnos1x6izhjjuj1u3j24g8xv0spe87ov	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 21:23:15.343146+00
0oyrwdhyjunwrtsyeit1gcyms1e6fg9i	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 21:31:00.842701+00
4okgcqw47dbcbdcf37i2lfperow9ucp8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 21:38:46.342184+00
vg2twkfu9aektpnd5fax7s2ao7xeyawo	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 21:46:31.926016+00
kzfpftm0hnqexyqm4dt7s8fqzg7g6eb9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 21:54:28.90692+00
cppdnecm4m9z8gu18ohsnqfwceeph1hx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 22:10:35.064087+00
gxgtgop7sv5mpzj7z7668p4qwha8qz15	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 22:18:38.136482+00
24qpjozj3jhu6kkwiqiqafnqn0qm0uf9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 22:26:47.705219+00
chkmnvah368azttmj443zjuc95i2xktm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 22:34:57.12714+00
7jebmdftjvk4tu64qkag3ve6lfq4fux4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 22:43:06.63088+00
p2blbqor4yaak394i17tgbvhmpmxmtko	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 22:51:16.099989+00
t1w7uvqylv2w1rca8yn39s2zoi7frci0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 22:59:25.495108+00
45wqbxnbe8t7rofzz02rrbzbylei8039	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 23:15:51.626952+00
g63m1bk2qhv0srcyiepoquirlqlc91dt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 23:24:08.35945+00
r25erqtr7ndckb0tm8b2hnxyfy05p6t0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 23:32:24.934198+00
h202f6a1a67l1cwu38p9bz30ujjv73b6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 23:40:41.585969+00
pfklzazofyxbo0b74hittqevcvmvk7i3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 23:48:58.205459+00
1drjks9nov9yxwfs0hao4e1fokmoat2n	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-13 23:57:14.843467+00
tsc25b8f2xk69kdf6hjkm0rlss3xnp9o	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 00:05:39.622396+00
qbrfst94uxyk80hkrf108t2bjcg0uq2s	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 00:14:04.472433+00
uel8k8o9se3jlw0qmqh8rr1vta4vq0lp	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 00:22:37.83624+00
5vcwv162uf5frpnbtspmenhtj732bkrk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 00:31:11.357864+00
ubp3iqtq50feef5b7c5cwuhcn2a6yxsf	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 00:39:44.796134+00
s2cgnp8p4tzq08pr1r6h8lfinmkghfu2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 00:45:07.912337+00
0zv866bgzkh0vlag5cttcp4s96wou1y8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 00:48:18.233796+00
maeokm0n3bg4vezp4ruj2unhsws9dw55	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 00:56:51.637691+00
vlh63d5bh1p1m8hadb8j311ei92mrd4l	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 01:02:02.780056+00
da26sztkf886kia557i20vrdz2aq3u51	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 01:05:24.96044+00
82yfqoju7jtp8rfgftkvpkd4m8h1delx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 01:13:58.274699+00
7ltx8icwgsyfd22r3907g58evifxbb3d	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 01:22:31.581467+00
nwxk35gzhery93kaban66intpbhqty0m	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 01:31:04.952124+00
ugtqxp1dofn24p3dnoxe6omfl57y3u89	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 01:39:38.349518+00
774q8lfx9uyfvk0r9y3w73mogm6z72pe	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 01:48:11.691314+00
r0h0gzgutosrldakxam16q1vh040d47z	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 01:56:46.721495+00
hs9t9d3d18647l8dmqfgpbsbciaaivxr	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 02:05:20.451859+00
m6blh9gy5q7yrkp0npwkfh8h7xvr3rls	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 02:13:54.908816+00
yj72ejfm5jzd3yoyww4rfxe2wxdqjino	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 02:22:34.830382+00
wj9o52enwghsyli44w0s38xjm41s9cz0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 02:31:10.734766+00
be3ukla263jwwnqlcq1fl9wvglagmsiq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 02:39:44.305691+00
rgrlfmky5qahs92e60253tmb2ekb4tz8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 02:48:17.384887+00
cudfn5wjac0wklkmlieauomobdeba2gi	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 03:05:23.966165+00
btfyojlc58oihe7uthwigln14gg2urmv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 03:13:56.964191+00
qvqefp3q1r6j7yn73tn4dybdnxij6d3c	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 03:22:29.895857+00
tdk98kkndzpgulxmztkemmbhmu1t0o0c	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 03:31:02.873921+00
lqk7y37hr6d076oyih3ong1d4g861ut1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 03:39:35.74641+00
1avcy3ngph3dcjhxqmu16omtqpz4ge5b	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 03:48:09.517024+00
au7ph5t8yy9z6zfvah7tejdp05uquom7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 03:56:42.708297+00
ka94ezog3xznc7dzuppowa8a7f334ch6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 04:03:59.561046+00
qqrl4jtwya28951jyo0dxjn3n2xtpwlm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 04:04:06.795152+00
19wjdiw3o3k8r359ljkgqemtukyb7wgm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 04:04:09.000559+00
g7zv5936eosrhtzpni8p906po8f3ogsl	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 04:04:11.277068+00
d3bgjiulsxuk88m908ihmb7ynfvby3ov	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 04:04:13.533044+00
xcu51kja9i7suy84wjm3icb5keuwt9gy	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 04:04:15.849453+00
ds2h97nfa7d91b3ys360078s802bq2lb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 04:05:03.732736+00
c0ly59cff5oiwkh8gvu4t85atw1f9cs9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 04:15:41.389536+00
hb6dsd5zg4c8w1bcfzcoodankpqofjti	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 04:26:17.573461+00
cdpgn63ptvtmmofr6t6wo7kvdcxj5aau	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 04:36:53.950414+00
snu0lpoqo981b5gqb26f1tuaj754lh16	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 04:47:30.177588+00
g788n7xjkx6k4mujwyqzpgh7yspe4ocp	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 04:58:06.3109+00
ji9sjr6zii1o03ffs9hhnbr9oeuo2a1r	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 05:08:42.397151+00
u97mjbotavrfqeucrw2zwqjo9cx7zdsd	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 05:19:18.464334+00
mz2f2iglt75ztxcv0kztkzat766uo14s	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 05:29:54.548296+00
cwkr98jrvuqg9sxq473whdzww1eqsdhr	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 05:40:30.606997+00
5z3zc2mo3tc1gtr6koed3x6vy8r9cjx5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 05:51:06.583675+00
auqnybz18qf1o1d0m85jp8qdi0ykuvwc	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 06:01:42.525465+00
o4okdw12sr0zqwex12riwtovy37egpxv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 06:12:18.614175+00
y0crqms15hgwajgq8y8teufw6zwgva7h	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 06:22:54.544952+00
t6ne5bavlcplw2hlcc6n9ca70ypignyk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 06:33:30.459053+00
q7pud5wvd2vty4tn25ouf7ttm6odywa3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 06:44:06.306384+00
je4uwbmp4l6ghkzk2e354xrysaudbovh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 06:54:42.168195+00
sn5148p32k84zkq9tcuqvfc9es2gxz73	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 07:15:53.706707+00
7qj2of12ps9y65hq4itbj14n5csloilu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 07:26:29.379373+00
nmpq0b05cnz8qphxnj21qzmqy46ogtch	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 07:37:04.98089+00
mxdayntbhm26zu8vr3k481y5mcvj04tu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 07:47:40.40659+00
o5blqzic93i0lrlpm4g90pep6m47wm1b	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 07:58:15.817733+00
ed9ef5nn3yh5bef8p5bvtw12ag7vm8ri	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 08:08:51.143948+00
t0jir87h20h4qnd119irr6luxbtszfeh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 11:50:25.78717+00
c38ryomh12jjm76hko91em6d4ky61iae	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 12:10:10.205349+00
29ws84dgwykubw1kxds68iwgqvxk5dx9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 12:21:02.433944+00
u57uw40gbj6reqyna69nykwm4ytw4lwv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-14 19:52:44.967732+00
em8v6jd83yiye4ibecta08kravnsu19p	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-15 01:45:19.563995+00
j4zgnwrvimv395epqs9a1b04h5tlrweo	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-15 02:23:55.221265+00
wvrsxop7m4hyqjjtwt57tly8zbszptpx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-15 11:07:37.439861+00
e651w1fvbz4elirqvx6iq2jss8ty2d9q	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-15 22:19:43.285953+00
p7nzpsszoui8pofz5bk4y8534qgxud1z	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-16 06:19:18.108207+00
d601k16nu0fejzps2la62vjcowm35s35	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-16 09:36:51.331049+00
81grl24jbqpuuvv6ias19nxvxt7d648y	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-16 21:13:57.93462+00
m2k3q6x37st5u4u73btoyf47e68ccu4g	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-16 21:33:57.14779+00
shc2ueoz2snr66go3gww4b1m5y7iqedn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-17 05:39:55.493904+00
rh1z34865o9f3fn0ntjwuivcaxcdm8na	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-17 06:33:34.542108+00
1jkir74ulppf61uygjcoc0ux1vo6akv3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-17 07:27:13.471202+00
a97056uoe8kiktawwzpmf9u76rwuqava	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-17 08:20:52.439714+00
lfz7bkinqzgub35onjd2aaryol6ea727	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-17 09:14:31.261832+00
kxbzpwmd03vfnms2njyoi865aonaxh67	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-17 10:08:10.106644+00
z1s1gr5y9qkma5kdm2ko46pv59wvhvei	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-17 11:01:48.769066+00
9swnk16rx7xtbpigyigooh6tq1pf0dm6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-17 11:55:27.552958+00
6ap1jae5fbct199xry6uez6kbl04ft3b	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-17 12:49:06.178017+00
4zc6lfaaz2flz22o1o0n2l0wrd8kd51j	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-17 13:42:44.561585+00
8vwtlyopzlj07j44siupvq9d4sameidk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-17 14:35:21.041311+00
fwq019gn7s2q0k8ydcn7g942k6zktdo8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-17 14:45:34.010667+00
lvtt6tukkfupxmhbg63npamcxq7abdlp	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-17 15:02:32.325888+00
mtl8rpef020qtex0qf9kixdzx0i5mxby	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-17 21:39:16.3905+00
runc95ujh96yxbze9zxbpnv9z19amcnv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-18 01:34:59.423141+00
ayxxk60tdmtn3jabx3j3m7mpy98o2w9r	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-18 15:54:01.148619+00
ax0m2ka2my7iil4d6d5oo2cogkag3f0y	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-18 23:12:11.401739+00
b22845hkep2z1jrn2ghqrw6f60z1etjm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-19 03:31:18.045213+00
vcv79odrljmzhnc9dy7xbkbvaa3pmk93	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-19 09:26:12.45106+00
4zriht1zf306l8wqgit572ed4bfwbp47	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-19 09:36:04.278202+00
q6vzgafqhzzvrr9qazpgph960xl2n9a4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-19 20:16:56.709849+00
39738ntltl3s9ae88oh9a0md8kfmuug6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-19 20:17:01.089172+00
o5wdcm0agd36jf6s1swtilp3bbjaot8n	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-19 20:33:02.435487+00
ewdav04bxvdw0o1dcul5jaxr2csipmyj	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-19 20:43:02.357923+00
2bucriywwwahnur9vftc0avaqxupkpb3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-19 20:53:02.554917+00
5s0h160edfn3wlb7v1v6ty9x8elqiskt	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-21 04:24:59.199078+00
fwm3t1eeil2etbixlannaa3fo8ad1dym	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-21 04:45:00.435083+00
xdlx3ok0nvquuyoqwmby8f3ojn5tjzul	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-21 05:46:52.893213+00
61wbpdu2c5s2h66xxzxkodtq26ghty4h	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-21 06:39:59.800679+00
iuzblmdcnqjhc68c2b4wtt0cx4iujz5g	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-22 05:36:10.381596+00
xwzntpmicsk5ppyk5adsbt6mb0l4g1cb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-22 18:30:14.321703+00
79sn1zeprtwifioa6932wac5n2c9zhj4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-22 22:44:06.338102+00
fznyrq747xugp4g9t6a7kr3s5tc8du84	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-22 23:25:56.476592+00
nn6osx7v8novlxrb6mc87c6nkn3107qp	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-22 23:35:40.438102+00
0x8x4tjubki17qv2aewgsjojbepr41vw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-22 23:53:31.612022+00
85lp9gjycs46qh9myw9gy80b5n03r558	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-23 09:56:51.242558+00
q2zmopyxypbpyrls3nka5ttugaxpu51s	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-23 10:05:49.943245+00
7w481e02mp8g76q0tss8pqeh80s8arhb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-23 20:24:41.833439+00
jwxuamys4hh0xcshld9lhejllxiisg2h	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 02:28:23.456143+00
9g7milj8w391koxsx8tfv9he7ktwf79i	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 02:36:26.395169+00
4vx0qs0r8liub0ilbzqw9dtwcu04bdoe	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 02:44:29.333076+00
7w0d8b4tdjndhwole2q9wuggt1bu5zs3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 02:52:32.1676+00
64mvmv7mt6vr8es08vy50xxbo2utkmtj	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 03:00:35.088385+00
ge1t3m9pqto5opjqg25lq66c8oj52ai5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 03:08:37.970595+00
3di2wh32bsc70pwz192s5q8q5or4ui5s	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 03:16:40.797418+00
sud74h8xcnvb26jtouomhoh4biflp3gl	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 03:24:43.617594+00
81n72cx5mhtyh8hbm7zfwh8iyyaazn5l	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 03:32:46.52789+00
dapnnaa5mz3x95daxnn4qfd2i6uv87i0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 03:40:49.337538+00
h96qr1ymltd5ihypezwi3kyj0zgq5mtf	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 03:48:52.139919+00
1vc3uf381a0ec3lzevfbsx8tq7r9egy4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 03:56:55.025228+00
x3o7p5t47gq72lqrzbz83pckw4gg7jny	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 04:04:57.813047+00
izehummd0cge5l5ih1ocffxlhebnzthz	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 04:13:00.674571+00
gyh0dvw5bldl9oqs87b7k5d5avwlsr1u	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 04:21:03.467269+00
ieb5nmc94nkhffkt21n6xefr8coyhy2f	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 04:29:06.257916+00
p1f07y7xpssi462rs5fwado1b9v1c0vp	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 04:37:09.034611+00
rc3285mpo94drw8udbo3e1mu9ob4o97f	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 04:45:11.80248+00
6tlzi6krg2k485gte93fc2a81b20a3l4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 04:53:14.574576+00
btvshxzl8ksyn1ljom2wppb0a2d94m71	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 05:01:17.430543+00
e78vq75thqdmvh3i793u5mmzbcvyfbq6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 05:09:20.190202+00
8457gg0kvufeo5ehd80t3onxoyle5092	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 05:17:23.034056+00
11rcwrz04hhhp3vgify4t1q1ituf9495	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 05:25:25.77331+00
jinyw7xjrw8cy2frtr44x3q36wso19m1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 05:33:28.606711+00
yu7zqu0negcuzrxgtt5hb7ad1js8if25	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 05:41:31.343697+00
2lwr8vh7dewprq8rprvi00adg0ary6sx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 05:49:34.07353+00
qn8jftg5runknsd5be1ibaaho6ofcvgm	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 05:57:36.793913+00
2n1mcmp3euo6vymkvw4gkjxjo29rhhvh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 06:05:39.965208+00
2gpudnlem6dudckv0cgab8tq3ndsvqzh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 06:13:42.724484+00
mc9i2mvhh5ilx00t2ojwc0j1qx9c2b5o	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 06:21:45.578846+00
w2td71xerq6pjjdjlhimn3812i2hr0rv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 06:29:48.350581+00
lv8zwa34qgx4ulfpor2vcq27bn5vow8w	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 06:37:51.120609+00
cszqcnaziv8cisziown7nnsxfhjz8yma	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 06:45:53.787266+00
kyr44743pi2vsyf612o0lxhtc0peycw8	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 06:53:56.580036+00
8b632siq4cslv1vskwe8jkyszny396yn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 07:01:59.243944+00
df61ydj755emeh9oomr1w08bzxu0nbsu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 07:10:01.987398+00
dih3cdiqxk6ts6fa4gryx3ifp848cwtb	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 07:18:04.686046+00
kd667hmerh1rj2cbst3grqe543y628fq	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 07:26:07.42072+00
9mlgojafn1q98s36jal6zh3t6q1h4fxx	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 07:34:10.148405+00
okwpdks94znta5bjybmd9eiivn4hvfkn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 07:42:12.803555+00
0l2c04vdy22ih50iapvhflo80eheidvv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 07:50:15.545127+00
bh9l2cbmky3vyh8zaxicwsbw1fsbpzh5	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 07:58:18.210835+00
bo3h2paank9dyjpiy836y5lf2167eqyu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 08:06:20.807223+00
m5vxydr08nm9vc16av3jlktb2q70k3bu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 08:14:23.405345+00
yv5ayzn35esxes27vu5s6phb4yyasec9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 08:22:26.08086+00
y5gamg93c4aqpyee56s6ammr48dfg9x0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 08:30:28.68124+00
9x1j9ed6g3li4u7kxi7sxrcgrxag2yrd	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 08:38:31.338612+00
aq52m01mk3d4hn589wfyfcmcddjg4uk7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 08:46:33.885971+00
ey9zj6waw1id57yeahloyv4owfnxj8y1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 08:54:36.500844+00
yjej13ikwfpyabkditw5qre59uhxjkp7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 09:02:39.03138+00
t8hd7if9nmuarugcaq1vqazjltcwb197	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 09:10:41.602008+00
1r7756d6ge87rmy4y0tigiasfotwgebv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 09:18:44.208748+00
1moo4i9h85whk1w0nj0x9hmg0skvj6ut	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 09:26:46.700819+00
o1prpw4nx9frvzad5xt33ilmak66mnc7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 09:34:49.203898+00
bj06zhd3otwv6nqexmulmz8sxhfs17yo	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 09:42:51.679201+00
j4pksg7bi8e1r4ac5bntmh58wrfq6dx9	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 09:50:54.355475+00
fi8srm88uub9gqffi8adgtrpgl90cn7f	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 09:58:58.366738+00
c4d4u4d1arxi9i1k5sm45loahy03g4nr	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 10:07:00.759438+00
uk8v9jlrbnb2gwkkyka5yxam3cuhz5fr	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 10:15:03.154401+00
t6jugoiixiwieyizwltoewicew498tsj	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 10:23:05.573385+00
tdifynpzzk1sh59ml0nk1nd4efwmshxu	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 10:31:08.068672+00
0birvrc6mtxwtgvhj2puzy2mgeha5nz4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 10:39:10.576118+00
oaantmawxd311q76hyj4p207syon5n75	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 10:47:12.969797+00
5wjazsv0l58csyvp95atfd9wr30prkfj	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 10:55:15.253988+00
w9ees0tqlinwvg8vwremi8yff86pwvcn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 11:03:17.538322+00
4pipb8slz1q9lqs2crmalwzdeb2z31m1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 11:11:19.87569+00
ma5m582y7wz3xj6u0ypdto9p7uoyt5vj	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 11:19:22.20561+00
xr0bwmicasvh5nkr4lst9hu8im2sjts0	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 11:27:24.554297+00
rfg79bn260xypznrcp40u1ka9glyis3w	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 11:35:26.771259+00
4nrp3hj8v1kbq83ygy5n0xylc44kedx2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 11:43:29.041754+00
l36l6y1yyoj3nyhwd60x8zevl9ovgbge	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 11:51:31.189157+00
g3n2ms65tz4obdr01g8b2zuuf9yu3hew	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 11:59:33.383055+00
c5isw18kxgknnll4abwy13i8fjf61p7n	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 12:07:35.57416+00
uwopnfol9mcrqetfny21u1tz77dk7yxh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 12:15:37.692053+00
sm623pwtf0vd1i7qj5s3rrhulu6icnxc	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 12:23:39.782248+00
5fyroirxroart7otrya9nrc8hj06v30g	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 12:31:41.853672+00
6kug0oyt1oap6cknipui8ceto0c5keb4	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 12:39:43.994177+00
utn259bhj0wg1200scz68rjvixwh9apv	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 12:47:45.982034+00
jqeektuzxjdqn6cufsi1olvj91z0hvkg	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 12:55:47.863301+00
qswhbcjkbrw0ptwwqx7z7y37aruemilw	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 13:03:49.813537+00
6cl45m6lbjpujr0ozyu5bdkifgnuak8e	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 13:11:51.841468+00
lb7bb6la2g1by7901y6y0nukkvn9chi2	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 13:19:53.662921+00
cg5x5zz0ezu1m8txd6hiylj4yvz6074v	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 13:27:55.479748+00
b3t471f0gs405r2lk3mk8s1ypyqp89y3	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 13:35:57.142183+00
7je9qdto66m00q2rn0cvbvzay8nnamti	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 13:43:58.524843+00
8eqqo60klqrr4idsewgx39wz0jmj4u2c	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-24 13:47:44.094046+00
2jxxqhm00vafmwjxqo5oob3yotzmzupz	OTA1YmQ0MTBhNmI2MTdlNmExY2U1ZDExMjY4YWJjZDYxMTA5M2IyMjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAnUu	2013-11-24 21:38:50.882061+00
syt8p1bf6962jymv2w2m7bx48xyjhytk	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-25 04:54:58.461511+00
c5dl4m2rm9wtwhjwwtfrygm452cvwb9x	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-25 05:13:32.063538+00
j9o6i8lioop8bng5liv9kcqy1f30a2hs	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-25 05:23:28.483216+00
lnb60xbbntslev7bhfhyreantpj3a4u1	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-25 05:33:22.424066+00
dspy1jn5b2yyxmy2d3y8vltfhg2x2hmn	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-25 05:38:24.274823+00
i0zdsihug4xp8jdj3clyhc8e5rqe0m0i	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-25 11:01:11.895739+00
laizsl1r8byym4am09wtzip786nvp3qa	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-25 18:10:05.315648+00
8fune1rw3hm5mnc2uq1qvcwps3p1nv8x	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-26 09:45:21.553262+00
5tkcb4bvdgktmry61znyijq3057a2y09	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-26 15:33:34.190043+00
pjl56ak1vzjm4jzqmef9rgtzci69ntex	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-26 16:34:30.500589+00
ma4x5c8gim7qpf2vel0sxuzungfmcgfa	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-26 21:13:10.416955+00
2zk6t7g3bgoyu1u9ux0souo9hvvn2alr	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-27 03:03:57.37579+00
2bi5xrwwbgggu3hown0p80n2zsi5grhi	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-27 06:47:54.174087+00
f3wuz8tgdpcqimfka4y666hpyfi1toqp	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-27 22:49:19.197531+00
is2v7nret0y401iq5a18uz2essjk84i7	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-28 07:10:08.441006+00
j4hn6n4odv9ws4w09vud2p05trve4y0j	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-28 07:28:30.768651+00
tye2683ai3qy9psoi8vpz38jglvf0ymh	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-28 07:33:19.81085+00
vr0msvwbcdk737jbeqrzhvyawry9rqe6	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-28 07:37:28.923947+00
izsw97iknou6fo0d0m9dusn4ja3zy17m	YmY0NDJjOGJmOTU2Yjg1YTc0MmI2NGIzNzQwZWI5NDNkZWZhZTYyODqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-11-28 07:39:54.115121+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_site (id, domain, name) FROM stdin;
1	open-nc.org	open-nc.org
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
1	22	1	2c5504ab9a86164db22a92dc8793843d	1	5	152.2.212.53	2013-08-21 15:44:30.450027+00	2013-08-21 15:44:30.45008+00	\N
2	22	2	2c5504ab9a86164db22a92dc8793843d	1	2	152.2.212.53	2013-08-21 23:11:12.377882+00	2013-08-21 23:11:12.377927+00	\N
3	22	6	2c5504ab9a86164db22a92dc8793843d	1	2	152.2.212.53	2013-08-30 16:28:46.836303+00	2013-08-30 16:28:46.836352+00	\N
4	22	7	2c5504ab9a86164db22a92dc8793843d	1	2	152.2.212.53	2013-08-30 16:29:17.129466+00	2013-08-30 16:29:17.129512+00	\N
6	22	9	2c5504ab9a86164db22a92dc8793843d	1	2	152.2.212.53	2013-09-06 18:33:37.63684+00	2013-09-06 18:33:37.636888+00	\N
7	22	11	2c5504ab9a86164db22a92dc8793843d	1	7	107.15.138.237	2013-09-22 18:51:59.037882+00	2013-09-22 18:51:59.037931+00	\N
8	22	12	2c5504ab9a86164db22a92dc8793843d	1	7	107.15.138.237	2013-09-22 18:56:09.872687+00	2013-09-22 18:56:09.872734+00	\N
9	22	13	2c5504ab9a86164db22a92dc8793843d	1	7	107.15.138.237	2013-09-22 19:50:30.420442+00	2013-09-22 19:50:30.42049+00	\N
10	22	14	2c5504ab9a86164db22a92dc8793843d	1	7	107.15.138.237	2013-09-22 20:22:45.006116+00	2013-09-22 20:22:45.006164+00	\N
11	22	15	2c5504ab9a86164db22a92dc8793843d	1	7	107.15.138.237	2013-09-22 20:26:07.007473+00	2013-09-22 20:26:07.007522+00	\N
12	22	16	2c5504ab9a86164db22a92dc8793843d	1	7	107.15.138.237	2013-09-22 20:56:00.880067+00	2013-09-22 20:56:00.880112+00	\N
13	22	17	2c5504ab9a86164db22a92dc8793843d	1	7	107.15.138.237	2013-09-22 21:14:20.458423+00	2013-09-22 21:14:20.458469+00	\N
14	22	18	2c5504ab9a86164db22a92dc8793843d	1	7	107.15.138.237	2013-09-22 21:19:37.441397+00	2013-09-22 21:19:37.441444+00	\N
15	19	2	2c5504ab9a86164db22a92dc8793843d	2	2	152.23.152.96	2013-09-23 13:54:20.309233+00	2013-09-23 13:54:20.309278+00	\N
17	22	19	2c5504ab9a86164db22a92dc8793843d	1	2	107.15.139.150	2013-09-24 02:13:12.64494+00	2013-09-24 02:13:12.644986+00	\N
16	19	11	2c5504ab9a86164db22a92dc8793843d	1	2	107.15.139.150	2013-09-24 01:24:39.361161+00	2013-10-01 03:03:18.978585+00	\N
18	19	9	2c5504ab9a86164db22a92dc8793843d	5	1	71.65.212.51	2013-10-01 03:21:09.287101+00	2013-10-01 03:21:09.287145+00	\N
19	19	13	2c5504ab9a86164db22a92dc8793843d	2	14	107.15.139.150	2013-10-01 03:52:03.426076+00	2013-10-01 03:52:03.426128+00	\N
20	19	13	2c5504ab9a86164db22a92dc8793843d	2	2	107.15.139.150	2013-10-01 03:52:42.589593+00	2013-10-01 03:52:42.589639+00	\N
21	22	15	2c5504ab9a86164db22a92dc8793843d	1	2	152.2.213.104	2013-10-04 14:26:18.891852+00	2013-10-04 14:26:18.891897+00	\N
22	19	70	2c5504ab9a86164db22a92dc8793843d	3	2	152.3.43.160	2013-10-08 15:32:01.023713+00	2013-10-08 15:32:01.023763+00	\N
23	22	9	2c5504ab9a86164db22a92dc8793843d	1	25	108.212.107.23	2013-10-13 19:54:59.163859+00	2013-10-13 19:54:59.163903+00	\N
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
4	18	ALREADY_ACTIVATED
5	19	ALREADY_ACTIVATED
2	16	ALREADY_ACTIVATED
6	20	ALREADY_ACTIVATED
3	17	ALREADY_ACTIVATED
7	21	ALREADY_ACTIVATED
8	22	ALREADY_ACTIVATED
9	23	ALREADY_ACTIVATED
11	25	ALREADY_ACTIVATED
12	26	ALREADY_ACTIVATED
\.


--
-- Name: registration_registrationprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('registration_registrationprofile_id_seq', 12, true);


--
-- Data for Name: requests_request; Type: TABLE DATA; Schema: public; Owner: -
--

COPY requests_request (id, suggested_by_id, title, description, relevance, url, agency_type, city_id, county_id, agency_name, agency_division, agency_contact, other_category, rating_votes, rating_score, creation_date, last_modified, updates_id, status) FROM stdin;
8	2	Columbus County Employee Salaries	The salaries of each person employed by Columbus County government, including their position, department, name and annual salary.	Understanding how much employees are paid helps us understand the county government's funding priorities and watch for any imbalances in salary distribution. 		county	\N	\N				salaries	0	0	2013-09-06 16:59:14.447578+00	2013-09-19 16:59:58.994483+00	3	1
10	2	Police Reports	"The Zebulon Police Department Records Division is maintained by our Administrative Assistant, Eric Anderson. All report copies have a fee of $4.00. Report copies may be requested in person at the Police Department, or copies can be requested by mail. Copies may be faxed or mailed once a payment has been recieved. For questions regarding report copies please contact Eric by phone at 919-823-1818. Our vehicle accidents are available on the North Carolina DMV Crash Website for insurance agents who have access."	Access to police incident and arrest reports help us know more about the safety of Zebulon and the police officer's use of force and authority. 	http://www.townofzebulon.org/town-departments.php?cat=134	city	553	\N	Police Department	Records Division	Administrative Assistant Eric Anderson, 919-823-1818		0	0	2013-09-20 18:51:41.680964+00	2013-09-20 18:51:41.681009+00	1	1
14	7	Archdale Police Records	Only provide physical reports that must be obtained in person. Would like them to publish a searchable index online.	Public safety.		city	11	10	Archdale Police Department	Records Unit	Records Officer (not named online) — 434-3134 main line to the police office		1	1	2013-09-22 20:22:44.988949+00	2013-09-22 20:28:51.325691+00	1	1
12	7	Angier Police Reports	Angier does not provide digital links to police reports. Furthermore, they do not point you to a specific manner in which you can obtain them.	Public safety.		city	7	\N	Angier Police Department	Police Department	919-639-2699		1	1	2013-09-22 18:56:09.856707+00	2013-09-22 19:43:10.021055+00	1	1
11	7	Andrews Police Records	The Andrews Police Department does not publish their police reports online. Furthermore, they do not specifically list on their website where to obtain those records even if you must do so in person.	It is supposed to be public record and I'd like to inspect it.		city	\N	6	Andrews Police Department	Police Department	Direct line to the department — 321-9814		1	1	2013-09-22 18:51:58.909646+00	2013-09-22 19:43:19.59948+00	1	1
13	7	Apex Police Reports	Apex provides direct lines of contact to their records clerk but do not publish their police reports online.	Public safety.	http://www.apexnc.org/services/police/records-office	city	9	8	Town of Apex	Records Office	Betty Hobson - Records Clerk (919) 249-3460		1	1	2013-09-22 19:50:30.402268+00	2013-09-22 20:26:39.300717+00	1	1
5	2	Police Reports	The RMS of the Chapel Hill Police Department contains information about arrests, incidents and accidents. The name of the database is the ONESolution Records Management System and the vendor is SunGard Public Sector.	Police incident and arrest reports provide important information about public safety issues and police activity in their communities.	http://p2c.chpd.us/Summary.aspx	city	89	\N	Police Department	Public Information officer	kgunter@townofchapelhill.org		0	0	2013-08-22 04:00:00+00	2013-09-24 01:15:31.994159+00	\N	1
4	2	Police Incident Reports	This database contains information about incidents to which the Ahoskie Police Department responds.	Police incident reports provide important information about public safety issues and police activity in their communities.	http://www.ahoskiepd.com/information/requesting-a-police-report/	city	2	\N	Police Department	Records Clerk	(252) 332-5012		0	0	2013-08-22 04:00:00+00	2013-09-24 01:15:48.049466+00	\N	1
41	16	Brevard Police Reports	This data set would provide information about crime and police activity, which cannot be found on the Brevard Police Department's website.	This would tell us about crime and public safety.		city	57	\N	Police Department				0	0	2013-10-07 14:56:14.270181+00	2013-10-10 15:13:52.495832+00	\N	1
39	16	Boiling Springs Police Report	Although you can request a police report from the Boiling Springs Police Department's website, this data set would provide information about all police activity and crime.	This would tell us about crime and police activity.		city	51	\N	Police Department				0	0	2013-10-07 14:44:04.878096+00	2013-10-10 15:15:06.807049+00	\N	1
15	7	Asheboro Police Reports	The records division will only provide police reports in physical copies to individuals that show up in person at their offices. I want them to publish that online.	Public safety.		city	13	11	City of Asheboro Police Department	Records Division	Mrs. Garner or Mrs. Henly at 336-626-1300 x 306 or 307		2	2	2013-09-22 20:26:06.991688+00	2013-10-04 14:26:18.898648+00	1	1
38	16	Boiling Spring Lakes Police Department	This data set would provide information about crime and public safety, which cannot be found on the Boiling Spring Lakes Police Department website.	This would tell us about crime and public safety.		city	50	\N	Police Department		bshirley@cityofbsl.org		0	0	2013-10-07 00:21:48.454522+00	2013-10-10 15:15:19.940852+00	\N	1
9	2	Voter Registration Information	The state Board of Elections collects information about each registered voter, and each change in voter registration. Some of the information is available on the board's website, but not in a bulk download or API.	It is important to know who is registered to vote and who is not. 	https://www.ncsbe.gov/voterlookup.aspx	state	\N	\N	Board of Elections		Marc Burris, IS Director		2	2	2013-09-06 18:33:37.51259+00	2013-10-13 19:54:59.170828+00	3	1
17	7	Atlantic Beach Police Reports	This police department does not post anything online regarding their records department. They simply give the contact information for their administrative assistant.	Public safety.		city	17	16	Atlantic Beach Police Department		Sara O'Brien - 252-726-2523		1	1	2013-09-22 21:14:20.44285+00	2013-09-22 21:15:18.427365+00	1	1
16	7	Asheville Police Reports	Asheville provides crime mapping through a software partnership, which will give you an outlook on recent crimes with brief descriptions of each crime listed on the map. They do not, however, provide the actual police reports. You have to request those in person.	Public safety.	https://www.crimereports.com/	city	14	13	Asheville Police Department	Central Records Unit	Jeanette Sams — 828-259-5890		1	1	2013-09-22 20:56:00.860159+00	2013-09-22 21:15:28.87818+00	1	1
18	7	Ayden Police Reports	Ayden does not publish any police reports online.	Public safety.		city	21	19	Town of Ayden Police Department		Police Captain Richard S. Patterson — 252-481-5844 or rpatterson@ayden.com		1	1	2013-09-22 21:19:37.428394+00	2013-09-24 01:14:57.115528+00	1	1
20	2	Police Reports	Police incident and arrest reports from the town of Badin.	Police incident and arrest reports help hold powerful people accountable and help us understand crime trends in our community. 		city	22	\N	Police Department		Bryan C. Lambert 		0	0	2013-09-24 02:32:45.450858+00	2013-09-24 02:32:45.450904+00	1	1
22	16	Banner Elk Police Reports	The Banner Elk police department has eight full-time employees, according to its website. Its website makes no mention of police reports or how to obtain them. This data would tell us about crimes and police activity.	This helps us understand crime and police activity.		city	26	\N	Police Department				0	0	2013-10-06 17:24:24.715619+00	2013-10-08 03:21:27.943115+00	\N	1
23	16	Beaufort City Police Reports	This data set would include police reports from Beaufort and tells us about crime and police activity.	This would tell us about crime and police activity.		city	30	\N	Police Department				0	0	2013-10-06 17:26:23.68667+00	2013-10-08 03:21:59.284103+00	\N	1
24	16	Beech Mountain Police Reports	The police department in Beech Mountain received about 17,000 calls for service in 2010, according to its website. This data set would provide information about crimes and police activity.	This would tell us about crimes and police activity.		city	31	\N	Police Department				0	0	2013-10-06 17:30:13.530523+00	2013-10-08 03:22:20.949611+00	\N	1
25	16	Belhaven Police Reports	This data set would provide information about crime and police activity, which cannot be found on the Belhaven Police Department's website.	This would tell us about crime and police activity.		city	32	\N	Police Department				0	0	2013-10-06 17:33:20.087839+00	2013-10-08 03:22:44.106804+00	\N	1
26	16	Belmont Police Reports	This data set would provide us with information about crime and police activity, which cannot be found on the Belmont Police Department's website.	This would tell us about crime and public safety.		city	33	\N	Police Department				0	0	2013-10-06 17:35:10.998439+00	2013-10-08 03:22:59.923833+00	\N	1
28	16	Bethel Police Reports	This data set would tell us information about crime and police activity, which cannot be found on the Bethel Police Department's website.	This would tell us about crime and police activity.		city	40	\N	Police Department				0	0	2013-10-06 17:40:35.496452+00	2013-10-08 03:23:39.551609+00	\N	1
29	16	Beulaville Police Reports	This data set would provide information on crime and police activity, which cannot be found on the Beulaville Police Department's website.	This would tell us about crime and police activity.		city	41	\N	Police Department		(910) 298-5360		0	0	2013-10-06 17:45:28.739078+00	2013-10-08 03:23:54.631749+00	\N	1
30	16	Biltmore Forest Police Reports	This data set would provide information about crime and police activity, which cannot be found on the Biltmore Forest Police Department's website.	This would tell us about crime and police activity.		city	42	\N	Police Department		policedesk@biltmoreforest.org		0	0	2013-10-06 17:49:27.19878+00	2013-10-08 03:24:12.105261+00	\N	1
31	23	Broadway Police Reports	The data would provide information about crime and police activity, and this information cannot be found on the website. 	This helps understand crime and police activity. 		city	59	\N	Department of Public Safety				0	0	2013-10-06 22:51:16.646627+00	2013-10-08 03:24:27.789004+00	\N	1
40	16	Boone Police Reports	This data set would provide us information about crime and police activity.	This would tell us about crime and police activity.		city	54	\N	Police Department				0	0	2013-10-07 14:47:27.070924+00	2013-10-10 15:14:20.073603+00	\N	1
37	16	Blowing Rock Police Reports	This data set would provide information on crime and police activity, which cannot be found on the Blowing Rock Police Department's website.	This would tell us about crime and police activity.		city	47	\N	Police Department				0	0	2013-10-06 23:42:28.990228+00	2013-10-10 15:15:31.255975+00	\N	1
36	16	Black Mountain Police Reports	The Black Mountain Police Department receives about 140 calls a month, according to its website. This data set would tell us about crime and police activity.	This tells us about crime and police activity.		city	45	\N	Police Department				0	0	2013-10-06 23:30:39.089432+00	2013-10-10 15:15:43.55229+00	\N	1
35	16	Black Creek Police Reports	This data set tells us about crime and police activity, which cannot be found on the Black Creek Police Department's website.	This would tell us about crime and police activity in Black Creek.		city	44	\N	Police Department		(252) 243-6439		0	0	2013-10-06 23:28:38.184012+00	2013-10-10 15:15:54.487656+00	\N	1
34	23	Elkin Police Reports	This data would provide information on crimes and police activity. In 2012, there were 12,369 total calls for service, according to the department's website. There were 2,410 vehicle stops, 1,031 citations issued, and 315 traffic accidents. Regarding patrol, there was a 9.2 percent drop in index offenses from 2011. For CID, 264 cases were assigned and the closure rate equaled 87.5 percent.  	This helps understand crime and police activity. 		city	145	\N	Department of Public Safety				0	0	2013-10-06 23:06:14.780798+00	2013-10-10 15:16:17.732407+00	\N	1
33	23	Candor Police Reports	The data would provide information on crimes and police activity. There are five full-time officers and two reserve officers at this police department. 	This helps understand crime and police activity. 		city	72	\N	Department of Public Safety				0	0	2013-10-06 22:59:13.181306+00	2013-10-10 15:16:28.09284+00	\N	1
32	23	Bryson City Police Reports	This data would provide information about crimes and police activity, but the data cannot be found on the website. 	This helps understand crime and police activity. 		city	62	\N	Department of Public Safety				0	0	2013-10-06 22:55:10.01385+00	2013-10-10 15:16:38.318876+00	\N	1
43	21	Burlington Police Reports	According to its website, the Burlington Police Department has electronic copies of accident and incident reports, but there is no way to access these online. Automobile crash reports are available through a database here: https://www.cobpsweb.info/eCrash/SearchReports.aspx	This helps understand crime and police activity		city	65	\N	Burlington Police Departmen	Police Department	(336) 229-3503		0	0	2013-10-07 18:05:12.707716+00	2013-10-10 15:14:09.08104+00	\N	1
42	22	Butner Public Safety 	This data set would provide information about crime and law enforcement activities in Butner, which cannot be found on the North Carolina Department of Public Safety website. 	This would tell us about crime and public safety.		city	67	45	Department of Public Safety				0	0	2013-10-07 17:51:00.72315+00	2013-10-10 15:13:29.516091+00	\N	1
49	17	Bladen County Restaurant Inspection Reports	Bladen County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.bladennc.govoffice3.com/index.asp?SEC=311A5F57-87AA-4885-B60D-E0394F8E90EE&Type=B_BASIC	county	\N	33	Bladen County Health Department		khair@bladenco.org		0	0	2013-10-07 19:46:52.540984+00	2013-10-10 14:59:50.669841+00	\N	1
21	2	Bald Head Police Reports	The Bald Head Police Department produces between 420 and 400 incident and arrest reports each year, according to its website. This data tells us about crimes and police activity.	This helps understand crime and police activity		city	25	\N	Department of Public Safety				0	0	2013-10-04 15:37:23.256964+00	2013-10-07 20:23:24.467205+00	\N	1
57	16	Chadbourn Police Records	This data set would provide information on crime and police activity that cannot be found on the Chadbourn Police Department's website.	This would tell us about crime and police activity.		city	88	35	Police Department		(910)654-4146		0	0	2013-10-07 20:32:09.230303+00	2013-10-08 03:27:43.711712+00	\N	1
56	16	Catawba Town Police Records	This data set would provide information on crime and police activity that cannot be found on the Catawba Police Department's website.	This would tell us about crime and police activity.		city	83	\N	Police Department		(828) 241-4888		0	0	2013-10-07 20:29:15.976025+00	2013-10-08 03:28:32.33286+00	\N	1
55	16	Caswell Beach Police Records	This data set would provide information on crime and police activity that cannot be found on the Caswell Beach Police Department's website.	This would tell us about crime and police activity.		city	82	\N	Police Department		police@caswellbeach.org		0	0	2013-10-07 20:27:34.387088+00	2013-10-08 03:28:47.788171+00	\N	1
53	16	Carthage Police Records	This data set would provide information about crime and police activity, which cannot be found on the Carthage Police Department's website.	This would tell us about crime and police activity.		city	78	\N	Police Department		(910) 947-2231		0	0	2013-10-07 20:23:06.040979+00	2013-10-08 03:29:48.688595+00	\N	1
54	16	Cary Police Records	This data set would provide information on crime and police activity, which cannot be found on the Cary Police Department's website. They do have an employee who does crime analysis, but you would have to get in touch with her for her analysis.	This would tell us about crime and police activity.	http://www.townofcary.org/Departments/police/Records.htm	city	79	\N	Police Department		elise.pierce@townofcary.org		0	0	2013-10-07 20:25:55.587558+00	2013-10-08 03:29:34.738055+00	\N	1
51	17	Caldwell County Restaurant Inspection Reports	Caldwell County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.caldwellcountync.org/caldwell-county-nc-departments/environmental-health/	county	\N	34	Caldwell County Department of Health		http://www.caldwellcountync.org/caldwell-county-nc-departments/environmental-health/contact-environmental-health/		0	0	2013-10-07 20:16:02.842471+00	2013-10-08 03:32:30.882732+00	\N	1
50	17	Burke County Restaurant Inspection Reports	Burke County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.co.burke.nc.us/index.asp?Type=B_BASIC&SEC={FF54E9A7-2D2B-46D5-9366-9EFDCC9F01F1}	county	\N	58	Burke County Department of Health		828-764-9240		0	0	2013-10-07 19:52:14.71372+00	2013-10-08 03:32:44.394059+00	\N	1
48	17	Anson County Restaurant Inspection Reports	Anson County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.co.anson.nc.us/Default.aspx?alias=www.co.anson.nc.us/healthdepartment&	county	\N	9	Anson County Health Department		steven.cox@co.anson.nc.us		0	0	2013-10-07 19:42:37.943977+00	2013-10-08 03:33:15.240299+00	\N	1
45	21	Canton Police Reports	The data would provide information about crime and police activity, but it cannot be found on the Canton Police Department's website.	This helps understand crime and police activity. 		city	73	46	Canton Police Department	Police Department	(828) 648-2376		0	0	2013-10-07 18:21:02.739797+00	2013-10-10 15:00:02.291732+00	\N	1
44	21	Burnsville Police Reports	The data would provide information about crime and police activity, but it cannot be found on the Burnsville Police Department's website.	This helps understand crime and police activity. 		city	66	44	Burnsville Police Department	Police Department	(828) 682-2420		0	0	2013-10-07 18:14:08.363416+00	2013-10-10 15:00:17.394319+00	\N	1
3	2	Police Incident Reports	This database contains information about incidents to which the Aberdeen Police Department responds. The department's RMS vendor is Southern Software, which previously referred to its product as "Police-Pak" which resides on a department server running Microsoft SQL Server.	Police incident reports provide important information about public safety issues and police activity in their communities.	http://townofaberdeen.net/pView.aspx?id=2092&catID=29	city	1	\N	Aberdeen Police Department	none	(910) 944-9721		0	0	2013-08-22 04:00:00+00	2013-10-08 03:21:03.455198+00	\N	1
61	17	Edgecombe County Food Establishment Inspections	Edgecombe County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.edgecombecountync.gov/eh/institution.aspx	county	\N	57	Edgecombe County Health Department		(252) 641-7573		0	0	2013-10-08 00:02:41.939667+00	2013-10-08 03:26:41.733544+00	\N	1
70	22	Clayton Police Records	This data set would provide information on crime and police activity that cannot be found on the Clayton Police Department's website.	This would tell us about crime and police activity.		city	97	12	Police Department		(919)-553-4611		0	0	2013-10-08 02:26:38.498151+00	2013-10-08 03:16:37.304246+00	\N	1
74	22	Concord Police Records	This data set would provide information on crime and police activity that cannot be found on the police department's page on the City of Concord website.	This would tell us about crime and police activity.		city	108	56	Police Department		Police Chief Guy Smith, (704) 920-5007		0	0	2013-10-08 02:46:23.557558+00	2013-10-08 03:15:14.868165+00	\N	1
72	22	Coats Police Records	This data set would provide information on crime and police activity that cannot be found on the police department page on the Town of Coats website.	This would tell us about crime and police activity.		city	102	7	Police Department	(910)-897-5183			0	0	2013-10-08 02:36:47.521236+00	2013-10-08 03:15:52.323144+00	\N	1
73	22	Town of Columbus Police Records 	This data set would provide information on crime and police activity that cannot be found on the police department page on the Town of Columbus website. 	This would tell us about crime and police activity.		city	106	55	Police Department		(828) 894-5464		0	0	2013-10-08 02:39:11.182374+00	2013-10-08 03:15:41.66559+00	\N	1
71	22	Clinton Police Records	This data set would provide information on crime and police activity that cannot be found on the police department page on the City of Clinton website. 	This would tell us about crime and police activity.		city	100	18	Police Department 		(910) 592-3105		0	0	2013-10-08 02:29:25.992957+00	2013-10-08 03:16:18.495683+00	\N	1
68	22	Chocowinity Police Reports 	This data set would provide information on crime and police activity that cannot be found on the police department page on the Town of Chocowinity website.	This would tell us about crime and police activity.		city	94	17	Police Department		(252) 946-2882		0	0	2013-10-08 02:20:53.891461+00	2013-10-08 03:17:06.938426+00	\N	1
69	22	Claremont Police Records	This data set would provide information on crime and police activity that cannot be found on the Claremont Police Department's website.	This would tell us about crime and police activity.		city	95	41	Police Department				0	0	2013-10-08 02:22:50.306999+00	2013-10-08 03:16:54.856561+00	\N	1
66	22	Cherokee Indian Police Records	This data set would provide information on crime and police activity that cannot be found on the Cherokee Indian Police Department's website.	This would tell us about crime and police activity.		city	554	\N	Police Department		828-497-7405		0	0	2013-10-08 01:54:40.282852+00	2013-10-08 03:17:39.429218+00	\N	1
67	22	China Grove Police Records	This data set would provide information on crime and police activity that cannot be found under the police department's page on the Town of China Grove website. 	This would tell us about crime and police activity.		city	93	53	Police Department		Police Chief Eddie M. Kluttz, (704) 857-7755		0	0	2013-10-08 02:08:26.279822+00	2013-10-08 03:17:23.826415+00	\N	1
27	16	Benson Police Reports	The records clerk in Benson enters police reports into Police Pak, Benson's record management system, according to the website. If you want to obtain a copy of a record, you have to go to the records office. This data set would include information about crime and police activity. 	This would tell us about crime and police activity.		city	36	\N	Police Department				0	0	2013-10-06 17:38:39.823415+00	2013-10-08 03:23:21.054608+00	\N	1
60	17	Columbus County Food Establishment Inspections	Columbus County does not make its restaurant and food inspection reports readily available on its official website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.columbusco.org/dotnetnuke_2/health/Home/EnvironmentalHealth/tabid/694/Default.aspx	county	\N	35	Columbus County Health Department 		910-640-6617		0	0	2013-10-07 23:57:17.741034+00	2013-10-08 03:26:59.44282+00	\N	1
59	17	Cleveland County Food Establishment Inspections	Cleveland County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://clevelandcounty.com/cchd/environmental-health/	county	\N	27	Cleveland County Health Department		704-484-5100		0	0	2013-10-07 23:53:29.070323+00	2013-10-08 03:27:18.218934+00	\N	1
75	22	Conover Police Records 	This data set would provide information on crime and police activity that cannot be found on the police department page of the City of Conover website.	This would tell us about crime and police activity.		city	111	41	Police Department		Police Chief Steve Brewer, (828) 464-4698		0	0	2013-10-08 02:50:06.293293+00	2013-10-08 03:29:34.075219+00	\N	1
58	17	Caswell County Restaurant Inspection Reports	Caswell County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://cchd.caswellnc.us/2.html	county	\N	95	Caswell County Health Department		(336) 694-9731		0	0	2013-10-07 23:46:53.65871+00	2013-10-08 03:24:43.412216+00	\N	1
62	17	Franklin County Food Establishment Inspections	Franklin County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.franklincountync.us/services/health/services/environmental-health/food-lodging-and-institutional-sanitation-program	county	\N	43	Franklin County Health Department		(919) 496-2533		0	0	2013-10-08 00:20:15.186031+00	2013-10-08 03:25:03.935266+00	\N	1
47	17	Alexander County Restaurant Inspection Reports	Alexander County does not make its restaurant and food inspection reports readily available on its county website. This link is the closest it comes: http://www.alexanderhealth.org/enviroFLI.php. 	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.alexanderhealth.org/enviroFLI.php	county	\N	99	Alexander County Department of Health		http://www.alexanderhealth.org/enviroContact.php		0	0	2013-10-07 19:35:35.289908+00	2013-10-08 03:26:09.617673+00	\N	1
2	2	BETS Database of Food Establishment Inspections	This database, called BETS, contains records of health inspections of restaurants, school cafeterias and other food service establishments in all 100 counties. It shows the date and location of inspections, inspectors' names and individual comments and point deductions for each inspection. It is an Oracle database.\r\n\r\nA subset of the fields in the database has been published monthly in .ttx format at http://ehs.ncpublichealth.com/browsablemedia/ but it would be useful to have the entire database, especially these tables:\r\n\r\nDD_BETS_Form_Item_field\r\nDD_BETS_Form_Item\r\nDD_BETS_Activity_Item_Field\r\nDD_BETS_Activity_Item\r\nDD_Visit_Items_Marked\r\nDD_BETS_Form\r\nDD_BETS_Activity\r\n\r\nWe have a data dictionary that describes the tables and the fields they contain.	This data is used to determine the food safety of restaurants, and is used to create those restaurant scorecards with which all patrons are familiar. This database can help North Carolinians make healthy choices about the food they eat.	https://www.muckrock.com/foi/north-carolina-153/public-records-request-for-bets-database-4914/	state	\N	\N	Department of Health and Human Services	Division of Public Health	Kevin V. Howell		1	1	2013-08-22 04:00:00+00	2013-10-08 03:33:37.848134+00	\N	1
80	17	Granville County Food Establishment Inspections	Granville County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.gvdhd.org/index.php?module=pagemaster&PAGE_user_op=view_page&PAGE_id=11&MMN_position=11:10	county	\N	45	Granville County Health Department		wvaughan@gvdhd.org		0	0	2013-10-08 22:45:36.872222+00	2013-10-10 14:55:32.538805+00	\N	1
81	17	Greene County Food Establishment Inspections	Greene County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.co.greene.nc.us/Departments_Health_Food.aspx	county	\N	89	Greene County Health Department 		252-747-8181		0	0	2013-10-08 22:48:33.762205+00	2013-10-10 14:55:19.704887+00	\N	1
83	17	Haywood County Food Establishment Inspections	Haywood County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.haywoodnc.net/index.php?option=com_content&view=article&id=92&Itemid=87	county	\N	46	Haywood County Health Department		crocco@haywoodnc.net; (828) 452-6675		0	0	2013-10-08 23:18:52.864703+00	2013-10-10 14:54:45.691296+00	\N	1
82	17	Halifax County Food Establishment Inspections	Halifax County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.halifaxnc.com/index.php?option=com_content&view=article&id=71&Itemid=71	county	\N	75	Halifax County Health Department		(252) 583-6651		0	0	2013-10-08 23:15:20.887742+00	2013-10-10 14:55:03.080761+00	\N	1
79	17	Graham County Food Establishment Inspections	Graham County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.grahamcounty.org/Departments/Health/FoodAndLodging.html#foodservice	county	\N	80	Graham County Health Department		828-479-7900		0	0	2013-10-08 22:37:18.48699+00	2013-10-10 14:55:46.356726+00	\N	1
78	22	Cramerton Police Records 	This data set would provide information on crime and police activity that cannot be found on the Cramerton Police Department website.	This would tell us about crime and police activity.		city	116	26	Police Department		(704)-824-7964		0	0	2013-10-08 03:39:41.416138+00	2013-10-10 14:55:59.445772+00	\N	1
77	22	Conrnelius Police Records 	This data set would provide information on crime and police activity that cannot be found on the police department page on the Town of Cornelius website. 	This would tell us about crime and police activity.		city	114	52			(704)-892-1363		0	0	2013-10-08 03:37:34.805768+00	2013-10-10 14:56:10.052785+00	\N	1
76	22	Cooleemee Police Records 	This data set would provide information on crime and police activity that cannot be found on the police department page of the Town of Cooleemee website.	This would tell us about crime and police activity.		city	113	28	Police Department		(336) 284-4098		0	0	2013-10-08 03:34:51.208724+00	2013-10-10 14:56:20.842385+00	\N	1
95	17	Hyde County Food Establishment Inspections	Hyde County has a link for restaurant grades on its county website - http://www.hydehealth.com/ehs-foodandlodging.htm - but clicking on the "Food Service Establishments" link brings the user to a PDF with the grades for just one quarter, October to December 2009.	The public deserves to know about restaurant sanitation and health grades, and these full reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.hydehealth.com/pdf/Hyde%20County%20Restaurant%20Sanitation%20Scores%20for%20the%202nd%20Quarter%20of%202009-2010.pdf	county	\N	\N	Hyde County Health Department		(252) 926-4380		0	0	2013-10-10 04:00:57.291112+00	2013-10-10 12:52:07.754577+00	\N	1
96	17	Jones County Food Establishment Inspections	Jones County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.jonescountyhealth.com/?page_id=89	county	\N	94	Jones County Health Department		252-448-9111		0	0	2013-10-10 04:25:09.754336+00	2013-10-10 12:47:18.343139+00	\N	1
97	17	Lenoir County Food Establishment Inspections	Lenoir County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.co.lenoir.nc.us/health.html	county	\N	83	Lenoir County Health Department		(252) 559-6450		0	0	2013-10-10 04:32:27.704462+00	2013-10-10 12:47:28.357429+00	\N	1
93	17	Hertford County Food Establishment Inspections	Hertford County has a link for restaurant grades on its county website - http://www.hertfordpublichealth.com/ - but clicking on the "Restaurant Grades" link brings the user to a Microsoft Word document with the grades for just one month, May 2012. 	The public deserves to know about restaurant sanitation and health grades, and these full reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	https://public.cdpehs.com/NCENVPBL/ESTABLISHMENT/ShowESTABLISHMENTTablePage.aspx?ESTTST_CTY=46	county	\N	2	Hertford County Health Department		(252) 358-7833		0	0	2013-10-10 03:45:40.773918+00	2013-10-10 12:52:34.080175+00	\N	1
94	17	Hoke County Food Establishment Inspections	Hoke County does not make its restaurant and food inspection reports readily available on its county website.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.hokecounty.net/index.aspx?NID=177	county	\N	96	Hoke County Health Department				0	0	2013-10-10 03:53:55.454111+00	2013-10-10 12:52:22.526748+00	\N	1
102	22	Eden Police Records	This data set would provide information about crime and police activity that cannot be found on the Eden Police Department's page on the City of Eden website.	This would tell us about crime and police activity.		city	140	70	Police Department		(336) 623-9687		0	0	2013-10-10 18:27:14.99887+00	2013-10-14 16:33:34.600671+00	\N	1
90	16	Duck Police Records	This data set would tell us about crime and police activity that cannot be found on the Duck Police Department's website.	This would tell us about crime and police activity.		city	131	\N	Police Department				0	0	2013-10-10 03:22:05.481632+00	2013-10-10 14:48:18.440924+00	\N	1
89	16	Drexel Police Records	This data set would provide information about crime and police activity that cannot be found on the Drexel Police Department's website.	This would tell us about crime and police activity.		city	129	\N	Police Department				0	0	2013-10-10 03:19:53.691055+00	2013-10-10 14:48:35.970319+00	\N	1
88	16	Dobson Police Reports	This dataset would provide information about crime and police activity that cannot be found on the Dobson Police Department's website.	This would tell us about crime and police activity.		city	126	\N	Police Department				0	0	2013-10-10 03:16:02.332004+00	2013-10-10 14:48:51.356299+00	\N	1
87	16	Denton Police Records	This dataset would provide information on crime and police activity that cannot be found on the Denton Police Department's website.	This would tell us about crime and police activity.		city	123	\N	Police Department				0	0	2013-10-10 03:06:37.510784+00	2013-10-10 14:49:05.757135+00	\N	1
86	16	Davidson Police Records	This data set would provide information on crime and police activity that cannot be found on the Davidson Police Department's website.	This would tell us about crime and police activity.		city	122	\N	Police Department		704 892-5131		0	0	2013-10-10 03:04:08.624445+00	2013-10-10 14:49:18.189396+00	\N	1
85	16	Dallas Police Reports	This data set would provide information about crime and police activity that cannot be found from the Dallas Police Department's website.	This would tell us about crime and police activity.		city	120	\N	Police Department		(704) 922-3116		0	0	2013-10-10 03:01:18.581657+00	2013-10-10 14:49:30.777193+00	\N	1
84	16	Creedmoor Police Reports	This data set would provide information about crime and police activity, which cannot be found on the Creedmoor Police Department's website.	This would tell us about crime and police activity.		city	117	\N	Police Department				0	0	2013-10-10 02:59:00.708024+00	2013-10-10 14:49:45.966369+00	\N	1
98	2	Durham Police Arrest Reports	Public records related to the arrests made by the Durham city Police Department. A limited set of incident report data is available, but no arrest reports. 	It's important to know who police are arresting, and for what alleged crimes. 		city	133	\N	Durham Police				0	0	2013-10-10 15:09:40.268432+00	2013-10-10 15:09:40.268474+00	1	1
99	2	Durham County Sheriff Arrest Reports	Public records related to the arrests made by the Durham city Police Department. A limited set of incident report data is available, but no arrest reports. 	It is important to know who is being arrested, and for what crimes. 		county	\N	51	Durham County Sheriff				0	0	2013-10-10 15:10:34.366684+00	2013-10-10 15:10:34.366727+00	1	1
91	16	Dunn Police Records	This data set would provide information about crime and police activity that cannot be found on the Dunn Police Department's website.	This would tell us about crime and police activity.		city	132	\N	Police Department				0	0	2013-10-10 03:23:35.700394+00	2013-10-10 20:06:32.479186+00	\N	1
103	22	Edenton Police Records	This data set would provide information about crime and police activity that cannot be found on the Edenton Police Department's page on the Edenton website.	This would tell us about crime and police activity.		city	141	71	Police Department		(252)482-5144		0	0	2013-10-10 18:30:44.398427+00	2013-10-14 16:33:25.900392+00	\N	1
101	22	East Spencer Police Records 	This data set would provide information about crime and police activity that cannot be found on the East Spencer Police Department's website.	This would tell us about crime and police activity.		city	138	53	Police Department				0	0	2013-10-10 18:15:21.265268+00	2013-10-14 16:33:43.364785+00	\N	1
109	19	Franklin Police Reports	This data set would provide information about crime and police activity that cannot be found on the Franklin Police Department's page. According to the website, incident reports can be picked up in person at the police department. 	This would tell us about crime and police activity.	http://www.franklinnc.com/police/	city	173	81	Police Department 		(828) 524-2864		0	0	2013-10-10 19:02:00.60097+00	2013-10-14 16:32:29.987397+00	\N	1
111	22	Emerald Isle Police Records	This data set would provide information about crime and police activity that cannot be found on the Emerald Isle Police Department's page on the Town of Emerald Isle website.	This would tell us about crime and police activity.		city	150	16	Police Department		(252)-354-2021		0	0	2013-10-10 19:08:54.350204+00	2013-10-14 16:32:16.986044+00	\N	1
113	22	Erwin Police Records	This data set would provide information about crime and police activity that cannot be found on the Erwin Police Department's page on the Erwin town website.	This would tell us about crime and police activity.		city	152	7	Police Department		910-897-5122		0	0	2013-10-10 19:14:13.356921+00	2013-10-14 16:31:27.276559+00	\N	1
153	23	Saint Pauls Police Reports	This data would provide information on crime and police activity, but the department's website does not provide this information. 	The data could provide information on crime and police activity. 		city	426	77	Department of Public Safety		910-865-5155		0	0	2013-10-12 15:27:37.985566+00	2013-10-14 16:23:27.233564+00	\N	1
120	19	Fremont Police Department 	This data set would provide information about crime and police activity that cannot be found on the Fremont Police Department's website.	This would tell us about crime and police activity.	http://www.fremontnc.gov/emergency-services/police	city	176	76	Police Department		919-242-5151		0	0	2013-10-11 00:52:14.766045+00	2013-10-14 16:29:43.536928+00	\N	1
119	19	Franklinton Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Franklinton Police Department's website.	This would tell us about crime and police activity.	http://www.franklintonnc.us/Public%20Safety.html	city	174	50	Police Department 		919-494-2151		0	0	2013-10-11 00:49:06.580684+00	2013-10-14 16:29:53.753666+00	\N	1
118	22	Gibsonville Police Records	This data set would provide information about crime and police activity that cannot be found on the Gibsonville Police Department's page on the Town of Gibsonville website.	This would tell us about crime and police activity.		city	185	10	Police Department		(336)-449-7926		0	0	2013-10-10 19:28:15.12242+00	2013-10-14 16:30:05.223791+00	\N	1
117	22	Gastonia Police Records	This data set would provide information about crime and police activity that cannot be found on the Gastonia Police Department's page on the Gastonia city website.	This would tell us about crime and police activity.		city	183	26	Police Department		704.866.3300		0	0	2013-10-10 19:26:06.853548+00	2013-10-14 16:30:15.056302+00	\N	1
116	22	Garysburg Police Records	This data set would provide information about crime and police activity that cannot be found on the Garysburg Police Department's page on the Town of Garysburg website.	This would tell us about crime and police activity.		city	181	59	Police Department		(252) 536-2167		0	0	2013-10-10 19:23:23.188062+00	2013-10-14 16:30:25.135062+00	\N	1
115	22	Garner Police Records	This data set would provide information about crime and police activity that cannot be found on the Garner Police Department's page on the website.	This would tell us about crime and police activity.		city	180	8	Police Department		919-772-8810		0	0	2013-10-10 19:20:46.565375+00	2013-10-14 16:30:43.229208+00	\N	1
114	22	Fairmont Police Records	This data set would provide information about crime and police activity that cannot be found on the Fairmont Police Department's page on the Town of Fairmont website.	This would tell us about crime and police activity.		city	156	77	Department of Public Safety	Fairmont Police Division 	(910) 628-9766		0	0	2013-10-10 19:16:36.508042+00	2013-10-14 16:31:01.712637+00	\N	1
112	22	Enfield Police Records	This data set would provide information about crime and police activity that cannot be found on the Enfield Police Department's page on the Town of Enfield website.	This would tell us about crime and police activity.		city	151	75	Police Department		(252) 445-5122		0	0	2013-10-10 19:11:36.94425+00	2013-10-14 16:31:39.937839+00	\N	1
108	19	Four Oaks Police Records 	This data set would provide information about crime and police activity that cannot be found on the Four Oaks Police Department's website. 	This would tell us about crime and police activity.	http://fouroaks-nc.com/?page_id=179	city	171	12	Police Department 		919.963.3112 ext. 34		0	0	2013-10-10 18:57:57.042067+00	2013-10-14 16:32:39.912559+00	\N	1
107	19	Forest City Police Records 	This data set would provide information about crime and police activity that cannot be found on the Forest City Police Department's page. According to the department website, police records may be obtained in person from the Forest City Police Department. 	This would tell us about crime and police activity.	http://www.forestcitypd.com/communicationsrecords.html	city	168	37	Police Department 		(828) 248-5234		0	0	2013-10-10 18:54:53.515199+00	2013-10-14 16:32:49.7105+00	\N	1
106	19	Fletcher Police Records 	This data set would provide information about crime and police activity that cannot be found on the Fletcher Police Department's page. 	This would tell us about crime and police activity.	http://www.fletchernc.org/pages/departments/police-department/general-information.php	city	166	79	Police Department 		(828) 687-7922		0	0	2013-10-10 18:50:03.353504+00	2013-10-14 16:32:58.27968+00	\N	1
105	22	Elizabethtown Police Records 	This data set would provide information about crime and police activity that cannot be found on the Elizabethtown Police Department page on the Town of Elizabehtown website. 	This would tell us about crime and police activity.		city	143	33	Police Department		(910) 862-3125		0	0	2013-10-10 18:38:26.917231+00	2013-10-14 16:33:08.001549+00	\N	1
104	22	Elizabeth City Police Records	This data set would provide information about crime and police activity that cannot be found on the Elizabeth City Police Department's page on the City of Elizabeth City website. 	This would tell us about crime and police activity.		city	142	73	Police Department 		 (252)335-432		0	0	2013-10-10 18:34:52.936398+00	2013-10-14 16:33:16.985033+00	\N	1
123	19	Granite Falls Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Granite Falls Police Department's website. 	This would tell us about crime and police activity.	http://www.granitefallspolicenc.us/Patrol.html	city	193	34	Police Department 		828.396.3358		0	0	2013-10-11 01:25:23.284382+00	2013-10-14 16:29:12.411443+00	\N	1
136	19	Jackson Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Jackson Police Department's website. 	This would tell us about crime and police activity.	http://historicjacksonnc.com/jackson_nc_police_fire_rescue.php	city	236	59	Police Department 		(252)-534-3811		0	0	2013-10-11 02:36:54.261288+00	2013-10-14 16:26:52.579844+00	\N	1
135	19	Hudson Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Hudson Police Department's website. Currently, users must email records@hudsonpolicedepartment.net to request copies of reports. 	This would tell us about crime and police activity.	http://www.ci.hudson.nc.us/departments/police/	city	232	34	Police Department 		(828) 728-5021		0	0	2013-10-11 02:33:44.07796+00	2013-10-14 16:27:02.742436+00	\N	1
134	19	Holly Springs Police Reports	This data set would provide information about crime and police activity that cannot be found on the Holly Springs Police Department's website. 	This would tell us about crime and police activity.	http://www.hollyspringsnc.us/index.aspx?nid=212	city	228	8	Police Department 		(919) 552-7110		0	0	2013-10-11 02:30:11.139564+00	2013-10-14 16:27:11.814885+00	\N	1
133	19	Holly Ridge Police Reports	This data set would provide information about crime and police activity that cannot be found on the Holly Ridge Police Department's website. Currently, reports can only be picked up in person from the police department and it costs $4 for a police report and $5 for a wreck report. 	This would tell us about crime and police activity.	http://www.townofhollyridge.net/police.htm	city	227	88	Police Department 		910-329-4076		0	0	2013-10-11 02:27:26.74829+00	2013-10-14 16:27:25.380838+00	\N	1
132	19	Holden Beach Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Holden Beach Police Department's website. Currently, the website only has monthly reports of crime statistics. 	This would tell us about crime and police activity.	http://hbtownhall.com/Departments/policedept.htm	city	226	22	Police Department 		910-842-6707		0	0	2013-10-11 02:21:25.872664+00	2013-10-14 16:27:35.958693+00	\N	1
131	19	Highlands Police Records 	This data set would provide information about crime and police activity that cannot be found on the Highlands Police Department's website.	This would tell us about crime and police activity.	http://www.highlandsnc.org/police/index.html	city	221	81	Police Department 		828.526.1769		0	0	2013-10-11 02:17:04.378028+00	2013-10-14 16:27:44.210681+00	\N	1
130	19	Hillsborough Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Hillsborough Police Department's website. 	This would tell us about crime and police activity.	http://www.ci.hillsborough.nc.us/content/police-department-0	city	223	48	Police Department 		919-732-9381		0	0	2013-10-11 02:14:20.411903+00	2013-10-14 16:27:54.304991+00	\N	1
129	19	Hertford Police Records 	This data set would provide information about crime and police activity that cannot be found on the Hertford Police Department's website.	This would tell us about crime and police activity.	http://townofhertfordnc.com/departments-2/police-department	city	217	86	Police Department 		252-426-5587		0	0	2013-10-11 02:08:04.439865+00	2013-10-14 16:28:04.307784+00	\N	1
128	19	Henderson Police Records 	This data set would provide information about crime and police activity that cannot be found on the Henderson Police Department's website. Currently they only have annual reports with crime statistics.	This would tell us about crime and police activity.	http://www.hendersonncpolice.com/	city	215	85	Police Department 		252.438.4141		0	0	2013-10-11 02:03:46.921314+00	2013-10-14 16:28:14.004097+00	\N	1
127	19	Haw River Police Records 	This data set would provide information about crime and police activity that cannot be found on the Haw River Police Department's website. 	This would tell us about crime and police activity.	http://townofhawriver.com/Departments/Police/tabid/177/Default.aspx	city	212	3	Police Department 		(336) 578-4141		0	0	2013-10-11 02:00:44.331231+00	2013-10-14 16:28:24.790495+00	\N	1
126	19	Havelock Police Records 	This data set would provide information about crime and police activity that cannot be found on the Havelock Police Department's website. Currently the records section of the website is under construction. 	This would tell us about crime and police activity.	http://www.havelocknc.us/Error.aspx?aspxerrorpath=/Departments/Police/Departments/Police/RecordsCommunicationsSection.aspx	city	211	39	Police Department 		252-447-3212		0	0	2013-10-11 01:58:02.694603+00	2013-10-14 16:28:36.648732+00	\N	1
125	19	Granite Quarry Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Granite Quarry Police Department's website. 	This would tell us about crime and police activity.	http://www.granitequarrync.gov/html/police-department.html	city	194	53	Police Department 		704-279-2952		0	0	2013-10-11 01:51:30.177348+00	2013-10-14 16:28:46.951164+00	\N	1
124	19	Huntersville Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Huntersville Police Department's website. Currently users can only search if they have a report number. More search options would be helpful.	This would tell us about crime and police activity.	http://huntersvillenc.policereports.us/index.html	city	233	52	Police Department 		704-464-5400		0	0	2013-10-11 01:48:53.283473+00	2013-10-14 16:29:00.041339+00	\N	1
122	19	Graham Police Reports	This data set would provide information about crime and police activity that cannot be found on the Graham Police Department's page. Currently, users can search for accident reports, but they are charged $4 to download and view them. Incident reports are currently unavailable online. 	This would tell us about crime and police activity.	http://grahamnc.policereports.us/	city	191	3	Police Department 		336-570-6711		0	0	2013-10-11 01:18:19.289767+00	2013-10-14 16:29:22.811565+00	\N	1
121	19	Fuquay-Varina Police Reports	This data set would provide information about crime and police activity that cannot be found on the Fuquay-Varina Police Department's page. According to the department's website, copies of police reports can be picked up at the police department and cost $3 each. 	This would tell us about crime and police activity.	http://www.fuquay-varina.org/departments-and-services/police-department/records-and-reports.html	city	177	8	Police Department 		(919) 552-1422		0	0	2013-10-11 00:56:28.770182+00	2013-10-14 16:29:34.571032+00	\N	1
140	17	Pamlico County Food Establishment Inspections	Pamilco County does not make its food establishment inspection data readily available on its county website. WRAL.com has links to some reports.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://pamlico.nc.us/environmental-health.aspx	county	\N	5	Pamlico County Health Department		252-745-5634		0	0	2013-10-12 02:38:44.736877+00	2013-10-14 16:26:05.20015+00	\N	1
143	23	Kenansville Police Reports	This information is to describe crime and police activity, but the website does not provide this information. The police chief is Chief Rusty Merritt, according to the department's website.	This is to provide information on crime and police activity. 		city	244	30	Department of Public Safety		910-\t296-0369		0	0	2013-10-12 14:24:54.254512+00	2013-10-14 16:25:36.920643+00	\N	1
148	23	Spruce Pine Police Reports	This data is to provide information on crime and police activity, but this cannot be found on the department's website. 	The data would provide information on crime and police activity. 		city	461	21	Department of Public Safety		828-765-2233 (for administration)		0	0	2013-10-12 14:55:58.527136+00	2013-10-14 16:24:38.624787+00	\N	1
144	23	Laurel Park Police Reports	This information is to provide facts about crime and police activity, but the website does not provide this information. The Laurel Park Police Department provides many different services including crime prevention, patrol, criminal investigation, and emergency management services, according to the department's website. There are seven full-time officers and five part-time (reserve) officers. 	This is to provide information on crime and police activity. 		city	265	79	Department of Public Safety		(828) 692-9399		0	0	2013-10-12 14:30:17.972948+00	2013-10-14 16:25:28.068198+00	\N	1
141	17	Person County Food Establishment Inspections	Pamilco County does not make its food establishment inspection data readily available on its county website. WRAL.com has links to some reports.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.personcounty.net/index.aspx?page=145	county	\N	97	Person County Health Department		http://www.personcounty.net/index.aspx?recordid=150&page=697		0	0	2013-10-12 02:42:44.769788+00	2013-10-14 16:07:50.364077+00	\N	1
139	17	Onslow County Food Establishment Inspections	On the health department page of Onslow County's official website, it has a link to food inspection reports on WRAL.com. The reports do not appear anywhere else on the site.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.onslowcountync.gov/department7030.aspx?pageid=22717	county	\N	88	Onslow County Health Department		910-938-5851		0	0	2013-10-12 02:33:46.974647+00	2013-10-14 16:26:17.43432+00	\N	1
142	23	Richlands Police Reports	This information is to provide information about crime and police activity, but the website does not provide this data. The Richlands Police Department has a police chief, five full-time sworn officers, two part-time officers, and auxillary officers, according to the department's website. Programs by the department include an Explorer Program and Community Watch Programs. 	This helps understand crime and police activity. 		city	403	88	Department of Public Safety		910-324-3301		0	0	2013-10-12 14:15:57.273006+00	2013-10-14 16:25:48.591566+00	\N	1
147	23	Walnut Cove Police Reports	This is to provide information on crime and police activity. The department's website does not provide this information for Walnut Cove. 	This data is to provide information on crime and police activity.		city	513	61	Department of Public Safety		336-591-7121		0	0	2013-10-12 14:52:13.788519+00	2013-10-14 16:24:48.706947+00	\N	1
151	23	Princeton Police Reports	This data is to provide information on crime and police activity, but the website does not provide this information. The police chief is Chief Tyrone Sutton, according to the department's website. 	The data is to provide information about crime and police activity. 		city	386	12	Department of Public Safety		(919) 936-8171 ext. 313 		0	0	2013-10-12 15:16:21.302659+00	2013-10-14 16:23:49.711454+00	\N	1
149	23	Shelby Police Reports	This data is to provide information on crime and police activity. The Shelby Police Department is a full-service police agency. There are 85 full-time employees. In 2011, the Shelby Police Department handled more than 42,500 calls for service, according to the department's website. The website also has media releases about topics including investigations such as homicide investigations, incidents such as missing person incidents, and armed robberies. 	This data is to provide information on crime and police activity. 		city	445	27	Department of Public Safety		704-484-6845		0	0	2013-10-12 15:03:53.143313+00	2013-10-14 16:24:28.939292+00	\N	1
146	23	Norwood Police Reports	This is to provide information on crime and police activity, but the website does not provide this information. Employees include Sgt. Keith Hyatt, Officer Jimmy Beaman, Sgt. Chris Thompson, Officer Darryl Gerald, Chief Randy Smith, Adm. Asst. Nellie Thompson, Officer Billy Cagle, Cpl. Bruce Mohen, and Officer Chad Green, according to the department's website. 	This data is to provide information on crime and police activity. 		city	352	4	Department of Public Safety		704-474-3716		0	0	2013-10-12 14:41:22.657974+00	2013-10-14 16:25:04.230763+00	\N	1
138	17	New Hanover County Food Establishment Inspections	On the health department page of New Hanover's County official website, the link to the "Restaurant & Food Inspection scores" is broken - it brings you to an error page. 	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.nhcgov.com/Health/enviro-health/Pages/restaurants-school-inspection.aspx	county	\N	47	New Hanover Health Department		910-798-6500		0	0	2013-10-12 02:29:24.565696+00	2013-10-14 16:26:31.509261+00	\N	1
154	23	Mebane Police Reports	This data is to provide information on crime and police activity, but the website does not provide this information. The Mebane Police Department has 27 sworn positions, according to the website. The police chief is Chief Terrence Caldwell. 	The data could provide information on crime and police activity. 		city	308	3	Department of Public Safety		919-563-9031		0	0	2013-10-12 15:31:49.972023+00	2013-10-14 16:23:16.819995+00	\N	1
152	23	Murfreesboro Police Reports	This data is to provide information on crime and police activity, but the department's website does not provide this data for Murfreesboro. 	The data could provide information on crime and police activity. 		city	336	2	Department of Public Safety		252-398-4151		0	0	2013-10-12 15:23:32.731232+00	2013-10-14 16:23:35.921643+00	\N	1
156	23	Woodfin Police Reports	The data is to provide information on crime and police activity in Woodfin, but this information is not available on the department's website. The police chief is Chief Brett Holloman. 	The data could provide information on crime and police activity. 		city	547	13	Department of Public Safety		828-253-4889		0	0	2013-10-12 15:55:49.72615+00	2013-10-14 16:22:53.024695+00	\N	1
157	23	Louisburg Police Reports	The data would provide information on crime and police activity in Louisburg, but this information is not available on the website. The police chief is Chief Rick Lassiter, according to the town's website. 	The data could provide information on crime and police activity. 		city	282	43	Department of Public Safety		919-496-4175		0	0	2013-10-13 14:38:09.3684+00	2013-10-14 16:22:41.599107+00	\N	1
161	23	Mooresville Police Reports	The data could provide information on crime and police activity in Mooresville, but this information is not available on the town's website. The police chief is Chief Carl W. Robbins, according to the website. Programs include Crime Stoppers and Explorer Post.	The data would provide information on crime and police activity. 		city	326	62	Department of Public Safety		704-664-3311		0	0	2013-10-13 14:54:56.06726+00	2013-10-14 16:11:06.912652+00	\N	1
166	23	Norlina Police Reports	The data would provide information on crime and police activity in Norlina, but this information is not available on the website. 	The data could provide information on crime and police activity. 		city	347	92	Department of Public Safety		252-456-3401 		0	0	2013-10-13 15:36:14.610966+00	2013-10-14 16:10:15.135625+00	\N	1
165	23	Sugar Mountain Police Reports	The data would provide information on crime and police activity in Sugar Mountain, but this information is not available on the village's website. The police chief is Chief David Henson, according to the website. 	The data would provide information on crime and police activity. 		city	476	23	Department of Public Safety		828-898-4349 		0	0	2013-10-13 15:33:30.697714+00	2013-10-14 16:10:26.254579+00	\N	1
164	23	Red Springs Police Reports	The data would provide information on crime and police activity in Red Springs, but this information is not available on the town's website. The police chief is Chief Ronnie Patterson, according to the website. 	The data would provide information on crime and police activity. 		city	397	77	Department of Public Safety		910-843-3454		0	0	2013-10-13 15:28:35.557215+00	2013-10-14 16:10:35.536938+00	\N	1
163	23	Statesville Police Reports	The data would provide information on crime and police activity in Statesville, but this information is not available on the city's website. The police chief is Chief Thomas A. Anderson, according to the website. There are 77 sworn officers, four reserve officers, and 21 civilians serving approximately 26,000 residents. 	The data would provide information on crime and police activity. 		city	469	62	Department of Public Safety		704-878-3406		0	0	2013-10-13 15:22:00.405107+00	2013-10-14 16:10:45.978607+00	\N	1
162	23	Sparta Police Reports	The data would provide information on crime and police activity in Sparta. The data on the website cannot be checked. There are some potential errors. \r\n\r\n	The data could provide information on crime and police activity in Sparta. 		city	454	98	Department of Public Safety		336-372-4252		0	0	2013-10-13 15:13:47.866849+00	2013-10-14 16:10:56.047349+00	\N	1
160	23	Sanford Police Reports	The data would provide information on crime and police activity in Sanford, but this information is not available on the city's website. The police chief is Chief Ronnie Yarborough, according to the website. 	The data could provide information on crime and police activity. 		city	432	40	Department of Public Safety		919-775-8268		0	0	2013-10-13 14:49:14.643162+00	2013-10-14 16:11:17.095449+00	\N	1
159	23	Tarboro Police Reports	The data would provide information on crime and police activity in Tarboro, but this information is not available on the website. The police chief is Chief Damon Williams, according to the town's website. 	The data could provide information on crime and police activity. 		city	485	57	Department of Public Safety		252-641-4247		0	0	2013-10-13 14:45:37.833718+00	2013-10-14 16:11:25.740858+00	\N	1
158	23	Pinetops Police Reports	The data would provide information on crime and police activity in Pinetops, but this data is not available on the website. 	The data could provide information on crime and police activity. 		city	376	57	Department of Public Safety		252-827-5014		0	0	2013-10-13 14:41:42.524788+00	2013-10-14 16:22:32.289345+00	\N	1
150	23	Lincolnton Police Reports	This data is to provide information on crime and police activity, but the website does not provide this information. The City of Lincolnton Police Department has 37 full-time employees, according to the department's website. The department has crime prevention programs including a Hospital Watch program, a Community Watch program, and an Operation Alert program. 	This data is to provide information on crime and police activity. 		city	277	87	Department of Public Safety		704-736-8900		0	0	2013-10-12 15:09:56.527389+00	2013-10-14 16:24:07.064251+00	\N	1
145	23	Maiden Police Reports	This is to provide information on crime and police activity, but the website does not provide this information. Employees of the department include: Chief Tracy Ledford; Lt. Jamey Fletcher for criminal investigations; Lt. Donna Hartman for patrol operations; Sgt. J.N. Miller, Sgt. J.G. Wagner, and Sgt. M.R. Eaker as patrol supervisors; Sgt. J.N. Miller as the D.A.R.E officer; and Lisa Huffman in the Records Division. The department also has an animal control division, according to the department's website. 	This is to provide information on crime and police activity. 		city	293	\N	Department of Public Safety		828-428-5005 		0	0	2013-10-12 14:38:05.475553+00	2013-10-14 16:25:17.703727+00	\N	1
155	23	Rolesville Police Reports	This data is to provide information on crime and police activity, but the department's website does not provide this information for the Town of Rolesville. The police chief is Chief Matthew Anderson. There are 11 sworn police officers, seven reserve officers, and one administrative specialist, according to the department's website. 	The data is to provide information on crime and police activity. 		city	412	8	Department of Public Safety		919-556-7226		0	0	2013-10-12 15:42:27.771875+00	2013-10-14 16:23:05.762413+00	\N	1
178	20	Pilot Mountain Police Reports	This is to provide information on crime and police activity. The department's website does not provide this information for Pilot Mountain.	This data is to provide information on crime and police activity at Pilot Mountain.		city	371	66	Department of Public Safety		(336) 368-4725		0	0	2013-10-14 02:34:27.986186+00	2013-10-14 16:08:08.105643+00	\N	1
169	23	Whispering Pines Police Reports	This data would provide information on crime and police activity in Whispering Pines, but this information is not available on the website. The police chief is Chief Domonic Campbell, according to the website. 	The data could provide information on crime and police activity. 		city	531	1	Department of Public Safety		910-949-9961		0	0	2013-10-13 16:08:30.488634+00	2013-10-14 16:09:44.723951+00	\N	1
168	23	Pine Level Police Reports	The data would provide information on crime and police activity in Pine Level, but this information is not available on the town's website. The police chief is Chief Keith Sparks, according to the website. 	The data could provide information on crime and police activity. 		city	373	12	Department of Public Safety		919-965-2045 		0	0	2013-10-13 15:59:10.982411+00	2013-10-14 16:09:56.952564+00	\N	1
167	23	Tryon Police Reports	The data would provide information on crime and police activity in Tryon, but this information is not available on the town's website. The police chief is Chief Jeff Arrowood, according to the website. 	The data could provide information on crime and police activity. 		city	497	55	Department of Public Safety		828-859-9195		0	0	2013-10-13 15:50:22.652638+00	2013-10-14 16:10:05.61471+00	\N	1
177	20	Pinehurst Police Reports	This is to provide information on crime and police activity. The department's website does not provide this information for Pinehurst.	This data is to provide information on crime and police activity in Wallace.		city	375	1	Department of Public Safety		(910) 295-3141		0	0	2013-10-14 02:28:50.333183+00	2013-10-14 16:08:18.26571+00	\N	1
176	20	Youngsville Police Reports	This is to provide information on crime and police activity. The department's website does not provide this information for Youngsville.	This data is to provide information on crime and police activity in Youngsville.		city	552	43	Department of Public Safety		(919) 556-0500		0	0	2013-10-14 02:21:20.859257+00	2013-10-14 16:08:27.493823+00	\N	1
175	20	Wrightsville Beach Police Reports	The data would provide information on crime and police activity at Wrightsville Beach. The website states that copies of accidents or case reports can be retrieved from the front desk at the Police Department.	The data could provide online information on crime and police activity at Wrightsville Beach. 		city	549	47	Department of Public Safety		910-256-7945		0	0	2013-10-14 02:17:37.808664+00	2013-10-14 16:08:42.631307+00	\N	1
174	20	Ranlo Police Reports	The data would provide information on crime and police activity in Ranlo. The town's website does not provide any information under "Police Department."	The data could provide information on crime and police activity in Ranlo.		city	393	26	Department of Public Safety		(704) 824-5721		0	0	2013-10-14 02:09:52.436689+00	2013-10-14 16:08:50.914805+00	\N	1
173	20	Grifton Police Reports	This is to provide information on crime and police activity. The department's website does not provide this information for Grifton. 	This data is to provide information on crime and police activity in Grifton.		city	200	19	Department of Public Safety		(252) 524-4161		0	0	2013-10-14 01:56:57.272139+00	2013-10-14 16:09:02.699981+00	\N	1
172	20	Wallace Police Reports	This is to provide information on crime and police activity. The department's website does not provide this information for Wallace. 	This data is to provide information on crime and police activity in Wallace.		city	511	30			910-285-2126		0	0	2013-10-14 01:49:47.236482+00	2013-10-14 16:09:12.503067+00	\N	1
171	23	Robbins Police Reports	The data would provide information on crime and police activity, but this information is not available on the town's website. The police chief is Chief J.A. Sheffield, according to the website. Special services of the department include nightly door checks of the town's local businesses and morning calls to senior citizens. 	The data would provide information on crime and police activity. 		city	406	1	Department of Public Safety		910-948-3549		0	0	2013-10-13 16:28:54.910153+00	2013-10-14 16:09:26.345844+00	\N	1
170	23	Stanfield Police Reports	The data would provide information on crime and police activity in Stanfield. From January to May of 2011, the crime statistics are one aggravated assault, one residential burglary, three larcenies of more than $200, two larcenies between $50 to $200, one shoplifting occurrence, and one vehicle theft, according to the town's website. In 2010, there were 29 crimes. In 2009, there were 23 crimes. The PDF provides information on the number of cases per crime. 	The data provides information on crime and police activity. 		city	465	4	Department of Public Safety		704-986-3700 		0	0	2013-10-13 16:22:09.656639+00	2013-10-14 16:09:36.543272+00	\N	1
137	17	Nash County Food Establishment Inspections	Nash County's official website links its "County Restaurant Inspection Results" to a page on WRAL.com. It does not provide the data in another spot on its site. 	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://nc-nashcounty.civicplus.com/index.aspx?NID=389	county	\N	20	Nash County Health Department		252-459-9829		0	0	2013-10-12 02:24:50.594196+00	2013-10-14 16:26:42.814827+00	\N	1
100	19	Farmville Police Reports	This dataset would provide information about crime and police activity that cannot be found on the Farmville Police Department's website. According to the website, most police reports need to be obtained from the department headquarters and cost $2 each. 	This would tell us about crime and police activity in Farmville. 	http://www.farmville-nc.com/departments_police.htm	city	163	\N	Police Department 		(252) 753-4111		0	0	2013-10-10 18:14:34.170162+00	2013-10-14 16:33:54.34134+00	\N	1
179	2	West Jefferson Police Reports	The eight officers of the West Jefferson Public Safety Department file incident and arrest reports.	This information would allow the public to see how police are using their powers and which people are being arrested, as well as which areas of town have the most crime of different types.		city	530	91	West Jefferson Public Safety Department		http://www.townofwj.com/safety.htm		0	0	2013-10-14 17:06:29.421401+00	2013-10-14 17:06:29.421445+00	1	1
180	2	White Lake Police Reports	The town of White Lake has 12 police officers, but no website. Google's contact information appears to be correct: https://plus.google.com/112302791236094294718/about?gl=us&hl=en	Police incident and arrest reports would allow us to see whether crime is on the increase or decline, who is being arrested and what parts of town have the most crimes of various types.		city	533	33	White Lake Police Department		(910) 862-4057		0	0	2013-10-14 17:15:00.361817+00	2013-10-14 17:15:00.361861+00	1	1
181	2	Montreat Police Reports	The Montreat Police officers file incident and arrest reports, summarized in a month PDF document available from the department's website: http://www.townofmontreat.org/documents/SEPTEMBER_2013_MONTHLY_POLICE_ACTIVITY_REPORT_10102013.pdf	Incident and arrest reports would show which parts of town are most dangerous, who is being arrested and specific details about crimes that can be used to improve community safety.	http://www.townofmontreat.org/documents/SEPTEMBER_2013_MONTHLY_POLICE_ACTIVITY_REPORT_10102013.pdf	city	324	13	Montreat Police Department		828.669.8002		0	0	2013-10-14 17:19:33.031349+00	2013-10-14 17:19:33.031395+00	1	1
182	2	Pineville Police Reports	Pineville Police file incident and arrest reports more than 1,500 times per month.\r\n\r\n"The Records Division currently uses USA Software’s CrimeFile 2000 Incident Reporting software to generate the UCR reports and electronically submits them to the SBI in Raleigh. Data submitted includes, but is not limited to:\r\nClassification and scoring of offenses;\r\nClearances;\r\nProperty values;\r\nArrest counts; and\r\nSubmission of updated and/or corrected data."	This data would show us crime trends for specific locations, as well as the names of people whom the police are arresting. This data helps people stay safe. 	http://www.pinevillencpolice.com/CrimeStats.html	city	373	\N	Pineville Police Department	Records Division	Records Clerk Peggy Crenshaw		0	0	2013-10-15 16:14:54.714304+00	2013-10-15 16:15:07.252943+00	1	1
187	16	Wendell Police Records	This data set would tell us about crime and police activity in Wendell. Wendell's police records can be found in the Wake County Police 2 Citizen searchable web app, but there is no resource for just Wendell's police records. 	This would tell us about crime and police activity in Wendell.	http://p2c.wakeso.net/	city	527	\N	Police Department				0	0	2013-10-18 03:36:22.554726+00	2013-10-18 14:51:23.313982+00	\N	1
186	16	Seven Devils Police Records	This data set would tell us about crime and police activity that cannot be found on the Seven Devils Police Department's website. 	This would tell us about crime and police activity.		city	440	\N	Police Department		policechief@sevendevils.net		0	0	2013-10-18 03:31:25.745152+00	2013-10-18 14:51:34.198354+00	\N	1
185	16	Morrisville Police Records	This data set would tell us about crime and police activity in Morrisville that cannot be found from the Morrisville Police Department's website. You can find crime statistics from certain neighborhoods (see "Morrisville Crime Records" resource). 	This would tell us about crime and police activity.		city	329	\N	Police Department				0	0	2013-10-18 02:59:12.08296+00	2013-10-18 14:51:52.419747+00	\N	1
184	16	Knightdale Police Records	This data set would tell us about crime and police activity in Knightdale. Police records can be found on Wake County's resource for police records, but there is not a resource for just Knightdale records.	This would tell us about crime and police activity.		city	254	\N	Knightdale Police Department				0	0	2013-10-18 02:50:09.955741+00	2013-10-18 14:52:03.285324+00	\N	1
183	16	Mint Hill Police Records	This data set would tell us about crime and police activity that cannot be found on the Mint Hill Police Department's website. You can find some crime information for Mint Hill on https://www.crimereports.com/.	This would tell us about crime and police activity.		city	319	\N	Police Department				0	0	2013-10-18 01:54:34.281153+00	2013-10-18 14:52:13.411045+00	\N	1
189	22	Hope Mills Police Records	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Town of Hope Mills website.	This would tell us about crime and police activity.		city	230	69	Police Department 		(910) 425-4103		0	0	2013-10-18 22:18:18.177792+00	2013-10-28 05:26:08.555648+00	\N	1
196	23	Marshville Police Reports	The data would provide information on crime and police activity in Marshville, but the website does not provide this information. The police chief is Chief Carl Webber, according to the website. 	The data would provide information on crime and police activity. 		city	299	78	Department of Public Safety		704-624-6767		0	0	2013-10-19 19:54:12.516604+00	2013-10-28 05:24:19.807718+00	\N	1
195	20	Simpson Police Reports	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Simpson, N.C., website.	This would tell us about crime and police activity in Simpson, N.C.		city	447	19	Police Department		252-757-0101 		0	0	2013-10-19 19:50:33.629824+00	2013-10-28 05:24:38.48081+00	\N	1
194	20	Troy Police Reports	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Troy, NC website.	This would tell us about crime and police activity in Troy, N.C.		city	496	31	Police Department		(910) 576-8151		0	0	2013-10-19 19:45:08.83058+00	2013-10-28 05:24:55.398008+00	\N	1
193	22	Stanley Police Records	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Stanley, NC website.	This would tell us about crime and police activity.		city	466	26	Police Department				0	0	2013-10-18 23:45:53.012015+00	2013-10-28 05:25:15.075224+00	\N	1
192	22	Mount Holly Police Records	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Town of Hope Mills website.	This would tell us about crime and police activity.		city	333	26					0	0	2013-10-18 22:57:25.048877+00	2013-10-28 05:25:28.794293+00	\N	1
191	22	Lowell Police Records	This data set would provide information on crime and police activity that cannot be found on the police department's page on the City of Lowell website.	This would tell us about crime and police activity.		city	284	26					0	0	2013-10-18 22:55:49.331116+00	2013-10-28 05:25:39.845107+00	\N	1
190	22	Cherryville Police Records	This data set would provide information on crime and police activity that cannot be found on the police department's page on the City of Cherryville's website.	This would tell us about crime and police activity.		city	91	26	Police Department				0	0	2013-10-18 22:53:33.166751+00	2013-10-28 05:25:54.105984+00	\N	1
188	22	Weaverville Police Records 	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Town of Weaverville website.	This would tell us about crime and police activity.		city	523	13	Police Department 		(828) 645-5700		0	0	2013-10-18 21:52:08.109166+00	2013-10-28 05:26:36.920631+00	\N	1
214	19	Wingate Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Wingate Police Department's website. Currently, the website only offers aggregated crime data. 	This would tell us about crime and police activity.	http://www.townofwingatenc.gov/departments/police/	city	543	78	Police Department 		704-233-1697		0	0	2013-10-20 01:49:47.348034+00	2013-10-28 05:13:36.743993+00	\N	1
213	19	Waxhaw Police Reports	This data set would provide information about crime and police activity that cannot be found on the Waxhaw Police Department's website. 	This would tell us about crime and police activity.	http://www.waxhaw.com/index.aspx?nid=127	city	521	78	Police Department 		(704) 843-0353		0	0	2013-10-20 01:41:17.816987+00	2013-10-28 05:13:49.233098+00	\N	1
212	19	Spencer Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Spencer Police Department's website. 	This would tell us about crime and police activity.	http://www.ci.spencer.nc.us/index.asp?Type=B_BASIC&SEC={1E9225B3-CFEC-46EA-86FE-5E66F3FB62A8}	city	456	53	Police Department 		policechief@ci.spencer.nc.us		0	0	2013-10-20 01:16:17.358398+00	2013-10-28 05:14:02.047279+00	\N	1
211	19	Salisbury Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Salisbury Police Department's website. There was a scraperwiki for this data set, but it is no longer functional. 	This would tell us about crime and police activity.	http://www.salisburync.gov/Departments/Police/SupportServices/Pages/Police-Records.aspx	city	428	53	Police Department 		(704) 638-5333		0	0	2013-10-20 01:13:36.092683+00	2013-10-28 05:14:23.012967+00	\N	1
210	19	Rockwell Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Rockwell Police Department's website. Currently, accident reports can only be picked up from the police department in person and cost $2 each.	This would tell us about crime and police activity.	http://www.rockwellnc.gov/html/police.html	city	410	53	Police Department 		(704) 279-3420		0	0	2013-10-20 01:07:07.239987+00	2013-10-28 05:14:35.625482+00	\N	1
209	19	Landis Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Landis Police Department's website. Currently, police reports must be picked up in person at the Landis Police Department and cost $2 per report. 	This would tell us about crime and police activity.	http://www.townoflandis.com/police/	city	261	53	Police Department 		(704)-857-2129		0	0	2013-10-20 01:01:17.583646+00	2013-10-28 05:14:57.152367+00	\N	1
208	19	Kure Beach Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Kure Beach Police Department's website. 	This would tell us about crime and police activity.	http://www.townofkurebeach.org/police-department.aspx	city	255	47	Police Department 		910-458-7586		0	0	2013-10-20 00:44:09.045615+00	2013-10-28 05:15:20.087743+00	\N	1
206	20	Indian Beach Police Reports	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Indian Beach, N.C., website.	This would tell us about crime and police activity at Indian Beach, N.C.		city	234	16	Police Department		(252) 247-6700		0	0	2013-10-19 20:29:01.886081+00	2013-10-28 05:16:27.925861+00	\N	1
205	20	Southport Police Reports	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Southport, N.C., website.	This would tell us about crime and police activity in Southport, N.C.		city	453	22	Police Department		(910) 457-7917		0	0	2013-10-19 20:25:22.651823+00	2013-10-28 05:16:41.506127+00	\N	1
204	20	Rhodhiss Police Reports	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Rhodhiss, N.C., website.	This would tell us about crime and police activity in Rhodhiss, N.C.		city	400	34	Police Department		(828) 396-8401		0	0	2013-10-19 20:21:00.0386+00	2013-10-28 05:16:54.741781+00	\N	1
203	23	Stallings Police Reports	The data provides information on crime and police activity in Stallings. For example, the website provides monthly crime reports for 2011, 2012, and 2013. A weekly crime bulletin is also available. From Oct. 7 to Oct. 13, crimes that were reported include larcenies, felonies, an injury to personal property, and reports of assault and battery, according to the crime bulletin from the website. In the 2013 monthly report, crimes include 596 incident reports, 61 felony arrests, and 400 misdemeanor arrests, according to the report from the website. You cannot access individual police reports, however.	The data provides information on crime and police activity. 		city	464	78	Department of Public Safety		704-821-0300 		0	0	2013-10-19 20:16:53.11994+00	2013-10-28 05:19:05.421353+00	\N	1
202	20	Misenheimer Police Reports	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Misenheimer, N.C., website.	This would tell us about crime and police activity in Misenheimer, N.C.		city	320	4	Police Department		704-463-3000		0	0	2013-10-19 20:13:12.36134+00	2013-10-28 05:19:31.783309+00	\N	1
201	20	Mount Airy Police Reports	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Mount Airy, N.C., website.	This would tell us about crime and police activity in Mount Airy, N.C.		city	331	66		Police Department	(336) 786-3535		0	0	2013-10-19 20:09:44.991936+00	2013-10-28 05:20:29.055444+00	\N	1
200	20	King Police Reports	This data set would provide information on crime and police activity that cannot be found on the police department's page on the King, N.C., website. 	This would tell us about crime and police activity in King, N.C.		city	248	61	Police Department		336-944-6878		0	0	2013-10-19 20:06:28.296608+00	2013-10-28 05:20:42.129854+00	\N	1
199	23	Monroe Police Reports	The data could provide information about crime and police activity in Monroe. The website provides information such as crime reports, crime statistics, and activity reports in map form, but you have to request individual reports in person. For example, in 2011, there were 2,077 part one crimes, according to part one crimes listed in the crime report. These include 11 rapes, 46 robberies, 18 aggravated assaults, 359 burglaries, 1,551 larcenies, 89 motor vehicle thefts, and three arsons. In 2010, there were 2,094 part one crimes, according to the crime report from the website.	The data provides information on crime and police activity. 		city	323	78	Department of Public Safety		704-282-4700		0	0	2013-10-19 20:04:02.553984+00	2013-10-28 05:23:31.324415+00	\N	1
226	19	Warren County Food Establishment Inspections	Warren County does not make its food establishment inspection data readily available on its county website. WRAL.com has links to some reports.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://warrencountyhd.com/departments/environmental-health/	county	\N	92	Warren County Health Department		(252) 257-1185		0	0	2013-10-20 03:40:33.630741+00	2013-10-28 05:06:21.277933+00	\N	1
225	19	Vance County Food Establishment Inspections 	Vance County does not make its food establishment inspection data readily available on its county website. WRAL.com has links to some reports.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://gvdhd.org/	county	\N	85	Vance County Health Department 		(252) 492-5263		0	0	2013-10-20 03:26:24.474672+00	2013-10-28 05:08:03.281462+00	\N	1
224	19	Union County Food Establishment Inspections 	Union County does not make its food establishment inspection data readily available on its county website. WRAL.com has links to some reports.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.co.union.nc.us/Divisions/EnvironmentalHealth.aspx	county	\N	78	Union County Health Department		(704) 283-3553		0	0	2013-10-20 03:23:57.228612+00	2013-10-28 05:08:14.456362+00	\N	1
223	19	Swain County Food Establishment Inspections 	Swain County County does not make its food establishment inspection data readily available on its county website. WRAL.com has links to some reports.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.swaincountync.gov/health-home.html	county	\N	42	Swain County Health Department 		alisonc@swaincountync.gov		0	0	2013-10-20 03:21:00.008114+00	2013-10-28 05:08:26.482179+00	\N	1
222	19	Stokes County Food Establishment Inspections	Stokes County only makes a yearly report of food establishment grades available online. This report is not updated frequently, only includes the most recent inspection details, and does not include specific violations.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge.	http://www.co.stokes.nc.us/health/food.pdf	county	\N	61	Stokes County Health Department		(336)593-2403		0	0	2013-10-20 03:14:11.206253+00	2013-10-28 05:10:14.328889+00	4	1
221	19	Sampson County Food Establishment Inspections 	Sampson County does not make its food establishment inspection data readily available on its county website. WRAL.com has links to some reports.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.sampsonnc.com/healthdept.asp?sub=health	county	\N	18	Sampson County Health Department		wrobinson@sampsonnc.com 		0	0	2013-10-20 02:19:15.911138+00	2013-10-28 05:10:30.658006+00	\N	1
220	19	Rockingham County Food Establishment Inspections 	Rockingham County does not make its food establishment inspection data readily available on its county website. WRAL.com has links to some reports.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.rockinghamcountypublichealth.org/pView.aspx?id=15227&catid=414	county	\N	70	Rockingham County Health Department		336-342-8140 		0	0	2013-10-20 02:17:05.406064+00	2013-10-28 05:10:42.598921+00	\N	1
219	19	Moore County Food Establishment Inspections 	Moore County does not make its food establishment inspection data readily available on its county website. WRAL.com has links to some reports.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.moorecountync.gov/index.php/mnu-envhealth	county	\N	1	Moore County Health Department		(910) 947-6283		0	0	2013-10-20 02:13:42.569812+00	2013-10-28 05:11:43.456348+00	\N	1
218	19	Montgomery County Food Establishment Inspections 	Montgomery County does not make its food establishment inspection data readily available on its county website. WRAL.com has links to some reports.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.montgomerycountync.com/health_department.html	county	\N	31	Montgomery County Health Department		(910) 572-8175		0	0	2013-10-20 02:10:26.920237+00	2013-10-28 05:12:32.623872+00	\N	1
217	19	Mitchell County Food Establishment Inspections 	Mitchell County does not make its food establishment inspection data readily available on its county website. The Toe River District website is currently under construction. WRAL.com has links to some reports.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://trhd.dst.nc.us/Mitchell_Environmental_Health_Restaurant_Inspections.asp	county	\N	21	Mitchell County Health Department 				0	0	2013-10-20 02:06:49.360166+00	2013-10-28 05:12:45.834973+00	\N	1
216	19	State Capitol Police Reports 	This data set would provide information about crime and police activity that cannot be found on the State Capitol Police Department's website.	This would tell us about crime and police activity.	https://www.nccrimecontrol.org/index2.cfm?a=000003,001866	city	\N	8	Police Department		(919) 733-4646		0	0	2013-10-20 01:58:32.241714+00	2013-10-28 05:12:57.808527+00	\N	1
242	20	Warrenton Police Reports	This data set would provide information about crime and police activity that cannot be found on the Warrenton Police Department website. 	This would tell us about crime and police activity in Warrenton, N.C.		city	516	92	Police Department		(252) 257-3123		0	0	2013-10-20 21:59:21.391446+00	2013-10-28 05:04:27.641432+00	\N	1
231	19	Jacksonville Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Jacksonville Police Department website. Currently, the police department only publishes annual reports. 	This would tell us about crime and police activity.	https://jacksonvillenc.gov/index.aspx?NID=180	city	237	88	Police Department 		910-455-4000		0	0	2013-10-20 20:49:04.580144+00	2013-10-28 05:01:38.855047+00	\N	1
232	19	North Topsail Beach Police Reports	This data set would provide information about crime and police activity that cannot be found on the North Topsail Beach Police Department's website.	This would tell us about crime and police activity.	http://ntbpd.org/	city	349	88	Police Department 		910-328-0042 		0	0	2013-10-20 20:55:38.589157+00	2013-10-28 04:59:26.384224+00	\N	1
246	20	Sharpsburg Police Reports	This data set would provide information about crime and police activity that cannot be found on the Sharpsburg Police Department website. 	This would tell us about crime and police activity in Sharpsburg, N.C.		city	444	57	Police Department		(252) 977-1098		0	0	2013-10-20 22:14:14.581435+00	2013-10-28 04:52:48.078327+00	\N	1
245	20	Taylortown Police Reports	This data set would provide information about crime and police activity that cannot be found on the Taylortown Police Department website. 	This would tell us about crime and police activity in Taylortown, N.C.		city	487	1	Police Department		910-295-1392		0	0	2013-10-20 22:09:08.361039+00	2013-10-28 04:53:09.099612+00	\N	1
243	20	Plymouth Police Reports	This data set would provide information about crime and police activity that cannot be found on the Plymouth Police Department website. 	This would tell us about crime and police activity in Plymouth, N.C.		city	381	60	Police Department		(252) 793-4680		0	0	2013-10-20 22:01:38.339361+00	2013-10-28 04:54:09.234765+00	\N	1
241	20	Rutherfordton Police Reports	This data set would provide information about crime and police activity that cannot be found on the Rutherfordton Police Department website. 	This would tell us about crime and police activity in Rutherfordton, N.C.		city	424	37	Police Department		(828) 287-5062		0	0	2013-10-20 21:50:07.238131+00	2013-10-28 04:54:55.194493+00	\N	1
240	20	Spindale Police Reports	This data set would provide information about crime and police activity that cannot be found on the Spindale Police Department website. 	This would tell us about crime and police activity in Spindale, N.C.		city	458	37	Police Department		(828) 286-3464		0	0	2013-10-20 21:47:28.201512+00	2013-10-28 04:55:08.092912+00	\N	1
239	19	Fountain Police Reports 	This data set would provide information about crime and police activity that cannot be found online. The police department does not currently have a website 	This would tell us about crime and police activity.		city	170	19	Police Department 		(252) 749-2881		0	0	2013-10-20 21:27:18.969148+00	2013-10-28 04:55:28.965982+00	\N	1
238	19	Wilson's Mills Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Wilson's Mills Police Department website. 	This would tell us about crime and police activity.	http://www.wilsonsmillsnc.org/index.asp?Type=B_BASIC&SEC=%7B9A9E249E-F13B-4F3D-A558-D8218E40A68E%7D	city	540	12	Police Department 		919-938-3885 Ext. 24		0	0	2013-10-20 21:20:58.39872+00	2013-10-28 04:55:44.097713+00	\N	1
237	19	Smithfield Police Reports	This data set would provide information about crime and police activity that cannot be found on the Smithfield Police Department's website. Currently, they only publish an annual report online and the police department must be contacted directly to obtain copies of individual reports. 	This would tell us about crime and police activity.	http://www.smithfieldpd.org/index.html	city	449	12	Police Department 		919-934-2121		0	0	2013-10-20 21:17:16.539848+00	2013-10-28 04:57:26.073551+00	\N	1
236	19	Selma Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Selma Police Department's website. 	This would tell us about crime and police activity.	http://www.selma-nc.com/index.asp?Type=B_BASIC&SEC={6E0BBB91-B09C-45F7-85C0-1D1417B314DA}	city	439	12	Police Department 		(919) 965-8189 Ext. 211		0	0	2013-10-20 21:11:09.212321+00	2013-10-28 04:58:04.027293+00	\N	1
235	19	Micro Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Micro Police department's website. Currently, the website is under construction.	This would tell us about crime and police activity.	http://www.micro-nc.com/	city	310	12	Police Department		(919) 284-2572		0	0	2013-10-20 21:07:59.565952+00	2013-10-28 04:58:14.761757+00	\N	1
234	19	Kenly Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Kenly Police Department's website. Currently, the police department must be contacted directly to obtain reports. 	This would tell us about crime and police activity.	http://www.townofkenly.com/police.html	city	245	12	Police Department		josh.gibson@townofkenly.com		0	0	2013-10-20 21:05:08.632631+00	2013-10-28 04:58:46.089508+00	\N	1
233	19	Swansboro Police Reports	This data set would provide information about crime and police activity that cannot be found on the Swansboro Police Department's website.	This would tell us about crime and police activity.	http://swansboro-nc.org/index.asp?Type=B_BASIC&SEC={8BCF5A74-D504-4A96-B61F-6E1EC036F648}	city	480	88	Police Department 				0	0	2013-10-20 21:00:09.943966+00	2013-10-28 04:58:55.127831+00	\N	1
230	19	Cleveland Police Reports	This data set would provide information about crime and police activity that cannot be found online. Currently, the Cleveland Police Department does not have a website.	This would tell us about crime and police activity.		city	99	53	Police Department 		(704) 278-1900		0	0	2013-10-20 20:37:52.275492+00	2013-10-28 05:01:51.950841+00	\N	1
258	20	St. Pauls Police Reports	This data set would provide information about crime and police activity that cannot be found on the St. Pauls Police Department website. 	This would tell us about crime and police activity in the Town of St. Pauls in N.C.		city	426	77	Police Department		910-865-5155		0	0	2013-10-20 22:59:36.029312+00	2013-10-28 04:46:55.971446+00	\N	1
265	23	Mount Olive Police Reports	The data would provide information on crime and police activity in Mount Olive, but this information is not available on the police department's website. The police chief is Chief Brian Rhodes, according to the website. 	The data would provide information on crime and police activity. 		city	334	76	Department of Public Safety		919-658-5031 ext. 102 (police chief)		0	0	2013-10-21 00:29:28.485081+00	2013-10-28 04:30:50.604031+00	\N	1
264	23	Ramseur Police Reports 	The data would provide information on crime and police activity in Ramseur, but this information is not available on the website. The police chief is Chief Larry Lewallen, according to the department's website. 	The data would provide information about the crime and police activity. 		city	391	11	Department of Public Safety		336-824-8663		0	0	2013-10-21 00:24:19.710197+00	2013-10-28 04:31:02.068347+00	\N	1
263	23	Newton Police Reports	The data would provide information on crime and police activity in Newton. The telecommunicators answer approximately 150 administrative telephone calls and nine emergency 911 calls every day. The police chief is Chief Donald G. Brown, according to the department's website. 	The data could provide information on crime and police activity in Newton. 		city	345	41	Department of Public Safety		828-465-7430		0	0	2013-10-21 00:19:28.200042+00	2013-10-28 04:41:46.034055+00	\N	1
262	23	Long View Police Reports	The data would provide information on crime and police activity in Long View, but the website does not provide this information. The police chief is Chief Cecil Rogers, according to the website. 	The data could provide information on crime and police activity. 		city	281	\N	Department of Public Safety		828-327-2343		0	0	2013-10-21 00:10:54.276157+00	2013-10-28 04:42:51.196731+00	\N	1
261	19	Winterville Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Winterville Police Department's website. 	This would tell us about crime and police activity.	http://www.wintervillenc.com/department.aspx?dept=6&section=64	city	545	19	Police Department 		ryan.willhite@wintervillenc.com		0	0	2013-10-21 00:08:36.006163+00	2013-10-28 04:43:26.933699+00	\N	1
260	23	Troutman Police Reports	The data provides information on crimes and police activity in Troutman. The website provides press releases, such as press releases about burglaries, felonies, larcenies, arrests, and possession of drugs. The department has 20 commissioned police officers, according to the website. The data is lacking full database capability for all police records.	The data provides information about the crimes and police activity in Troutman. 		city	495	62	Department of Public Safety		704-528-7610		0	0	2013-10-21 00:06:27.532805+00	2013-10-28 04:44:39.576183+00	\N	1
257	20	Liberty Police Reports	This data set would provide information about crime and police activity that cannot be found on the Liberty Police Department website. 	This would tell us about crime and police activity in Liberty, N.C.		city	274	11	Police Department		336-622-9053		0	0	2013-10-20 22:52:40.477538+00	2013-10-28 04:47:06.726727+00	\N	1
256	20	Burgaw Police Reports	This data set would provide information about crime and police activity that cannot be found on the Burgaw Police Department website. 	This would tell us about crime and police activity in Burgaw, N.C.		city	64	15	Police Department		910-259-4924		0	0	2013-10-20 22:48:45.181979+00	2013-10-28 04:47:17.843726+00	\N	1
255	20	Conway Police Reports	This data set would provide information about crime and police activity that cannot be found on the Conway Police Department website. 	This would tell us about crime and police activity in Conway, N.C.		city	112	59	Police Department		(252) 585-1155		0	0	2013-10-20 22:46:17.286059+00	2013-10-28 04:47:27.091683+00	\N	1
254	20	Middlesex Police Reports	This data set would provide information about crime and police activity that cannot be found on the Middlesex Police Department website. 	This would tell us about crime and police activity in Middlesex, N.C.		city	312	20	Police Department		252-235-4077		0	0	2013-10-20 22:43:32.79158+00	2013-10-28 04:47:39.898934+00	\N	1
253	20	Spring Hope Police Reports	This data set would provide information about crime and police activity that cannot be found on the Spring Hope Police Department website. 	This would tell us about crime and police activity in Spring Hope, N.C.		city	459	20	Police Department		(252) 478-7347		0	0	2013-10-20 22:41:02.324538+00	2013-10-28 04:47:51.744884+00	\N	1
252	20	Star Police Reports	This data set would provide information about crime and police activity that cannot be found on the Star Police Department website. 	This would tell us about crime and police activity in Star, N.C.		city	468	31	Police Department		(910) 428-9224		0	0	2013-10-20 22:34:22.036775+00	2013-10-28 04:48:01.935484+00	\N	1
251	20	Mount Gilead Police Reports	This data set would provide information about crime and police activity that cannot be found on the Mount Gilead police department website.	This would tell us about crime and police activity in Mount Gilead, N.C.		city	332	31	Police Department		910-439-6711		0	0	2013-10-20 22:31:19.08144+00	2013-10-28 04:48:15.627156+00	\N	1
250	20	Vass Police Reports	This data set would provide information about crime and police activity that cannot be found on the Vass Police Department website. 	This would tell us about crime and police activity in Vass, N.C.		city	504	1	Police Department		910-245-4676 ext. 4		0	0	2013-10-20 22:28:03.58835+00	2013-10-28 04:51:03.925319+00	\N	1
249	20	Lillington Police Reports	This data set would provide information about crime and police activity that cannot be found on the Lillington Police Department website. 	This would tell us about crime and police activity in Lillington, N.C.		city	276	7	Police Department		(910) 893-3015		0	0	2013-10-20 22:25:33.72714+00	2013-10-28 04:51:14.795282+00	\N	1
248	20	Raeford Police Reports	This data set would provide information about crime and police activity that cannot be found on the Raeford Police Department website. 	This would tell us about crime and police activity in Raeford, N.C.		city	389	96	Police Department		(910) 875-4251		0	0	2013-10-20 22:22:23.690803+00	2013-10-28 04:52:00.632845+00	\N	1
276	23	Wagram Police Reports 	This data would provide information on crime and police activity in Wagram, but the website does not provide this information.	The data could provide information on crime and police activity. 		city	508	68	Department of Public Safety		910-369-2400 		0	0	2013-10-21 01:31:30.966686+00	2013-10-28 04:26:26.017721+00	\N	1
279	23	Ocean Isle Beach Police Reports	The data would provide information on crime and police activity in Ocean Isle Beach, but the website does not provide this information. The police chief is Chief John W. Goodwin, according to the town's website. Programs include Operation Identification and Community Watch. 	The data could provide information on crime and police activity. 		city	357	22	Department of Public Safety		910-579-4221		0	0	2013-10-21 01:52:25.165836+00	2013-10-28 04:25:09.758535+00	\N	1
278	23	Williamston Police Reports	The data would provide information about crime and police activity in Williamston, but the website does not provide this information. There are 20 sworn full-time officers, one civilian employee, 14 uniformed patrol officers, four detectives, and three administrative staff at the police department, according to the town's website. 	The data could provide information on crime and police activity. 		city	537	24	Department of Public Safety		252-792-2125		0	0	2013-10-21 01:38:49.061162+00	2013-10-28 04:25:44.627303+00	\N	1
277	23	Jefferson Police Reports	The data would provide information on crime and police activity in Jefferson, but the website does not provide this information.	The data could provide information about crime and police activity. 		city	240	91	Department of Public Safety		336-846-5529		0	0	2013-10-21 01:35:50.822466+00	2013-10-28 04:26:10.00574+00	\N	1
275	23	Taylorsville Police Reports	The data would provide information on crime and police activity in Taylorsville, but the website does not provide this information. The police chief is Chief Tony Jones, according to the department's website. 	The data could provide information on crime and police activity. 		city	486	99	Department of Public Safety				0	0	2013-10-21 01:28:49.561275+00	2013-10-28 04:26:46.78954+00	\N	1
274	19	Hamlet Police Reports 	This data set would provide information about crime and police activity that cannot be found online. Currently, the Hamlet Police Department does not have a website. 	This would tell us about crime and police activity.	http://www.hamletnc.us/gov.htm	city	205	65	Police Department 		910-582-2551		0	0	2013-10-21 01:20:23.114539+00	2013-10-28 04:27:08.125467+00	\N	1
273	23	Littleton Police Reports	The data would provide information on crime and police activity in Littleton, but the website does not provide this information. 	The data could provide information on crime and police activity. 		city	279	75	Department of Public Safety		252-586-3413		0	0	2013-10-21 01:16:30.681333+00	2013-10-28 04:27:28.470699+00	\N	1
272	19	Ellerbe Police Reports 	This data set would provide information about crime and police activity that cannot be found online. Currently, the Ellerbe Police Department does not have a website. 	This would tell us about crime and police activity.		city	147	65	Police Department 		(910) 652-6251		0	0	2013-10-21 01:15:24.836083+00	2013-10-28 04:27:40.249761+00	\N	1
271	23	Maggie Valley Police Reports	The data would provide information on crime and police activity in Maggie Valley, but this information is not available on the website. The police chief is Chief R. Scott Sutton, according to the department's website. 	The data could provide information on crime and police activity. 		city	291	46	Department of Public Safety		828-926-0867 (during office hours) and 828-452-6666 (after hours)		0	0	2013-10-21 01:11:38.578007+00	2013-10-28 04:27:56.661562+00	\N	1
270	19	Seagrove Police Reports 	This data set would provide information about crime and police activity that cannot be found online. Currently, the Seagrove Police Department does not have a website. 	This would tell us about crime and police activity.		city	437	11	Police Department 		(336) 873-8870		0	0	2013-10-21 01:04:11.710676+00	2013-10-28 04:28:14.518388+00	\N	1
269	23	Pittsboro Police Reports	The data would provide information on crime and police activity in Pittsboro, but the website does not provide this information. The police chief is Chief Percy Crutchfield, according to the department's website. 	The data could provide information on crime and police activity. 		city	379	49	Department of Public Safety		919-542-3200 ext. 33 (police chief) 		0	0	2013-10-21 01:03:26.090223+00	2013-10-28 04:28:36.772406+00	\N	1
268	23	Stantonsburg Police Reports	The data would provide information on crimes and police activity in Stantonsburg, but the website does not provide this information.	The data could provide information on crimes and police activity. 		city	467	32	Department of Public Safety		252-238-3534		0	0	2013-10-21 00:53:52.841358+00	2013-10-28 04:28:53.282406+00	\N	1
267	23	Kings Mountain Police Reports	The data would provide information on crimes and police activity in Kings Mountain, but the website does not provide this information. The police chief is Chief Melvin Proctor, according to the website. There are 33 full-time police officers, eight part-time police officers, and one part-time telecommunicator at the police department. 	The data could provide information on crime and police activity. 		city	249	27	Department of Public Safety		704-734-0444		0	0	2013-10-21 00:47:25.401247+00	2013-10-28 04:29:11.3099+00	\N	1
266	23	Leland Police Reports	The data provides information on crime and police activity in Leland. The website provides crime analysis reports, a most wanted list for Leland, and a list of patrol responses and reports, which has updates in October. The crime analysis reports are for 2009, 2010, and 2011. In 2011, from January to June, there were 246 crimes, which include eight vehicle thefts, one armed robbery, and 70 larcenies of more than $200, according to the department's website. The patrol responses and reports provide information on incidents such as an injury to personal property and larcenies. 	The data would provide information on crime and police activity. 		city	269	22	Department of Public Safety		910-371-1100		0	0	2013-10-21 00:38:25.720251+00	2013-10-28 04:29:55.763502+00	\N	1
259	23	Thomasville Police Reports	This data provides information on crime and police activity in Thomasville. The website provides crime reports and statistics based on the month in 2012 and 2013, but there do not appear to be reports for every month. In August, there were 13 violent crimes, 106 property crimes, 201 total arrests, and 3,996 calls for service, according to the website's crime report. The reports also compare changes from previous months. Provides trend information but it is not a searchable database for all police reports.	The data provides information on crime and police activity. 	http://www.thomasville-nc.gov/Departments/Police/CrimeStat/CrimeStats.html	city	489	63	Department of Public Safety				0	0	2013-10-20 23:59:34.532083+00	2013-10-28 04:46:41.610577+00	\N	1
247	20	Robersonville Police Reports	This data set would provide information about crime and police activity that cannot be found on the Robersonville Police Department website. 	This would tell us about crime and police activity in Robersonville, N.C.		city	408	24	Police Department		(252) 508-0312		0	0	2013-10-20 22:16:30.11935+00	2013-10-28 04:52:14.780764+00	\N	1
244	20	Jonesville Police Reports	This data set would provide information about crime and police activity that cannot be found on the Jonesville Police Department website. 	This would tell us about crime and police activity in Jonesville, N.C.		city	241	36	Police Department		336-835-3426		0	0	2013-10-20 22:06:15.611726+00	2013-10-28 04:53:34.537182+00	\N	1
229	19	Yancey County Food Establishment Inspections	Yancey County does not make its food establishment inspection data readily available on its county website. WRAL.com has links to some reports. Currently, the Toe River Health District website for health inspections is under construction, so it is possible that they are working on making the information available.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://trhd.dst.nc.us/Yancey_Environmental_Health.asp	county	\N	44	Yancey County Health Department		828 682-6118 		0	0	2013-10-20 04:05:00.154723+00	2013-10-28 05:05:05.179214+00	\N	1
228	19	Wilson County Food Establishment Inspections	Wilson County does not make its food establishment inspection data readily available on its county website. WRAL.com has links to some reports.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.wilson-co.com/index.aspx?NID=242	county	\N	32	Wilson County Health Department		(252) 291-5470		0	0	2013-10-20 04:00:06.911077+00	2013-10-28 05:05:28.1695+00	\N	1
227	19	Wayne County Food Establishment Inspections	Wayne County does not have complete information available for its health department inspections. Inspections do not include specific violations or scores/grades. Without this information, the inspection reports do not give much helpful information to users.	The public deserves to know about restaurant sanitation and health grades, and these reports would provide them with that knowledge. Also, it seems unfair that other counties have this data available on their websites, while some do not.	http://www.waynehealthdept.org/inspections	county	\N	76	Wayne County Health Department		304-272-6761		0	0	2013-10-20 03:54:16.70329+00	2013-10-28 05:06:05.559887+00	\N	1
215	19	Raleigh Police Reports 	This data set would provide information about crime and police activity that cannot be found on the Raleigh Police Department's website. Currently, reports must be picked up in person from the police department and only online report submissions (reports submitted by citizens online) can be viewed online. 	This would tell us about crime and police activity.	http://www.raleighnc.gov/home/content/Police/Articles/Requestreport.html	city	390	8	Police Department 		919-996-3325		0	0	2013-10-20 01:55:28.51515+00	2013-10-28 05:13:22.220104+00	\N	1
198	20	Mayodan Police Reports	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Mayodan, N.C., website.	This would tell us about crime and police activity in Mayodan, N.C.		city	303	70	Police Department		(336) 548-6038		0	0	2013-10-19 19:59:13.091406+00	2013-10-28 05:23:45.818663+00	\N	1
197	20	Randleman Police Reports	This data set would provide information on crime and police activity that cannot be found on the police department's page on the Randleman, N.C., website.	This would tell us about crime and police activity in Randleman, N.C.		city	392	11	Police Department		(336) 495-7510		0	0	2013-10-19 19:54:18.224052+00	2013-10-28 05:23:59.075345+00	\N	1
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
2	2013-09-06 19:54:24.931272+00	2013-09-06 20:12:39.756248+00		faq-page	/faq/	\n\t    <ul>\n\t    \t<li><a href="#q1">Why was Open-NC.org created?</a></li>\n\t    \t<li><a href="#q2">Who created Open-NC.org?</a></li>\n\t    \t<li><a href="#q3">Who can join the Open N.C. community?</a></li>\n\t    \t<li><a href="#q4">Does Open N.C. release private information stored in government databases?</a></li>\n\t    \t<li><a href="#q5">Is Open N.C. an official state government website?</a></li>\n\t    \t<li><a href="#q6">How does Open N.C. gather and verify information that is published on the site?</a></li>\n    \t</ul>\n    \t<ul>\n\t    \t<li><a href="#q7">Did you make all these databases?</a></li>\n\t    \t<li><a href="#q8">I see an error in a database. What do I do?</a></li>\n\t    \t<li><a href="#q9">I see data that I want removed. What do I do?</a></li>\n\t    \t<li><a href="#q10">Why is information about some databases incomplete?</a></li>\n\t    \t<li><a href="#q11">Can I contribute money to Open N.C.?</a></li>\n            <li><a href="#q12">How do I contact you?</a></li>\n\t\t</ul>\n\n\t\t<h4 id="q1">Why was Open-NC.org created?</h4>\n\t\t<p>\n\t\tState, county and local government agencies throughout North Carolina create millions of database entries every year, but few are easily available for public inspection  &mdash;  \n          especially by rural residents who may live many miles from the county courthouses where the databases are stored. The N.C. General Assembly created statutes that say these databases should be open to public inspection. This site aims to help support that law.\n \t\t<br><br>\n\t\tAs part of a project to help rural newspapers in North Carolina develop new revenue streams in the digital age, University of North Carolina professors Penny Abernathy and Ryan Thornburg \n          discovered that journalists were having difficulties obtaining access to current and complete digital public data. These difficulties increase the legal and personnel expenses of \n          news organizations while also limiting their revenue opportunities.\n\t\t<br><br>\n\t\tThis site hopes to help make more digital public records readily available to journalists, entrepreneurs and engaged citizens who we hope might use this data to spur innovation in a variety of fields.\n\t\t<br><br>\n\t\t<a href="#FAQ">Back to Top</a>\n\t\t</p> \n\t\t<h4 id="q2">Who created Open-NC.org?</h4>\n\t\t<p>\n\t\tUNC Associate Professor Ryan Thornburg led the development of the site, which was created with funding from the John S. &amp; James L. Knight Foundation, a 501(c)3 tax-exempt \n          private foundation that supports transformational ideas that promote quality journalism, advance media innovation, engage communities and foster the arts. \n          Developers at Caktus Consulting Group in Carrboro, N.C., programmed the site using some code that was first created by Azavea for OpenDataPhilly.com. \n          The original site design was done by UNC journalism and mass communication student Matt Hayes.\n\t\t<br><br>\n\t\t<a href="#FAQ">Back to Top</a>\n\t\t</p>\n\t\t<h4 id="q3">Who can join the Open N.C. community?</h4>\n\t\t<p>\n\t\tAnyone. We welcome citizens, journalists, librarians, other information professionals, politicians, activists, business people, government agency workers, web developers and everyone else to our community.\n\t\t<br><br>\n\t\t<a href="#FAQ">Back to Top</a>\n\t\t</p>\n\t\t<h4 id="q4">Does Open N.C. release private information stored in government databases?</h4>\n\t\t<p>\n\t\tDefinitely not. We follow privacy laws that have been passed by federal and state lawmakers. State and federal law specifically requires government agencies to redact (or remove) private data if it's mixed with public data, and release the public portion.\n\t\t<br><br>\n\t\t<a href="#FAQ">Back to Top</a>\n\t\t</p>\n\t\t<h4 id="q5">Is Open N.C. an official state government website?</h4>\n\t\t<p>\n\t\tNo, Open-NC.org is not officially affiliated with state government agencies, with one distinction. Open N.C. was created by and is edited by a professor working at the University of \n          North Carolina. The University of North Carolina School of Journalism and Mass Communication receives funding from the N.C. General Assembly.\n\t\t<br><br>\n\t\t<a href="#FAQ">Back to Top</a>\n\t\t</p>\n\t\t<h4 id="q6">How does Open N.C. gather and verify information that is published on the site?</h4>\n\t\t<p>\n\t\tWhen you and other community members suggest a database for the catalog, we ask you to provide as much information as you can. We edit this information and check it for accuracy before making it available on the site.\n\t\t<br><br>\n\t\t<a href="#FAQ">Back to Top</a>\n\t\t</p>\n\t\t<h4 id="q7">Did you make all these databases?</h4>\n\t\t<p>\n\t\tNo. In fact, all of the public data listed on this site is hosted by government agencies or other organizations that have acquired and published digital public data online for you to use. Those sites are responsible for the accuracy and completeness of the data they host. Wherever possible we link directly to the public data that is hosted by government agencies because that is the best way to know that the information is in its original format. However, original data hosted on government sites is not always free of errors and may not be as current or complete as versions of the data that private contributors have acquired from primary sources that are not available on the Internet.\n\t\t<br><br>\n\t\t<a href="#FAQ">Back to Top</a>\n\t\t</p>\n\t\t<h4 id="q8">I see an error in a database. What do I do?</h4>\n\t\t<p>\n\t\tThe databases’ creator and publisher is ultimately responsible, but we want to know about it, too. You should first contact the person listed on each dataset’s catalog page, but also please let us know at <a href:"mailto:info@open-nc.org?subject=Error in data on Open-NC.org">info@open-nc.org</a>.\n\t\t<br><br>\n\t\t<a href="#FAQ">Back to Top</a>\n\t\t</p>\n\t\t<h4 id="q9">I see data that I want removed. What do I do?</h4>\n\t\t<p>\n\t\tWe only catalog public data that was originally created and made public by government agencies in North Carolina. If you feel that this data was collected or released in violation of state or federal privacy laws, please contact the person listed on each dataset’s catalog page, but also please let us know at <a href:"mailto:info@open-nc.org?subject=Request to remove data from Open-NC.org">info@open-nc.org</a>.\n\t\t<br><br>\n\t\t<a href="#FAQ">Back to Top</a>\n\t\t</p>\n\t\t<h4 id="q10">Why is information about some databases incomplete?</h4>\n\t\t<p>\n\t\tWe strive to give you as much information as possible. However, sometimes agencies will fail to provide complete information. We believe it's better to get as much information out about these databases. You can help us by providing details later.\n\t\t<br><br>\n\t\t<a href="#FAQ">Back to Top</a>\n\t\t</p>\n\t\t<h4 id="q11">Can I contribute money to Open N.C.?</h4>\n\t\t<p>\n\t\tIf you'd like to support open records, data and government, you can <a href="http://www.jomc.unc.edu/gift" target="_blank">make a gift</a> to the University of North Carolina’s School of Journalism and Mass Communication and designate your contribution to support the work of Open-NC.org if you choose.\n\t\t<br><br>\n\t\t<a href="#FAQ">Back to Top</a>\n        <h4 id="q12">How do I contact you?</h4>\n\t\n          <ul>\n            <li>Got data to contribute? Fill out the form on the <a href="https://open-nc.org/suggest-data/" target="_blank">Share Data</a> page.</li> \n            <li>Is data missing that you think should be available? Visit the <a href="https://open-nc.org/request-data/" target="_blank">Request Data</a> page to add your suggestion or vote on other users' ideas.</li> \n            <li>Have you used N.C. public data in useful and inspiring ways? Email it to <a href="mailto:info@open-nc.org">info@open-nc.org</a></li>\n            <li>Other questions or ideas? Contact us at <a href="mailto:info@open-nc.org">info@open-nc.org</a></li>\n</ul>\n\t<br><br>\n\t\t<a href="#FAQ">Back to Top</a>  \n          \n          \n          \n          \n          \n          \n          \n          \n          \n          \n          \n\t\t</p>\n        
4	2013-09-06 20:34:49.517106+00	2013-09-06 20:34:49.517149+00		links-page	/useful-links/	\n\t<p>This page is intended to help you either use data or find additional data sets not included in Open-NC.org.</p>\n\n\t<h3>Bring Open N.C. to Your State</h3>\n\t<p>Open-NC.org is a free and open-source Django Web app. You can fork the code on <a href="github.com" target="_blank">GitHub</a> at <a href="github.com/openrural/open-data-nc" target="_blank">https://github.com/openrural/open-data-nc</a></p>\n\n\t<h3>Free, Open Source Software</h3>\n\t<ul>\n\t\t<li><a href="http://www.openoffice.org/" target="_blank">OpenOffice</a> – for Mac, PC and Linux. Can work with Excel files, CSV and other delimited text files.</li>\n\t\t<!-- <li>– For Mac and PC. For working with .shp files.\n\t\t<li>- Useful for cleaning data . -->\n\t\t<li><a href="http://www.r-project.org/" target="_blank">R</a> – statistical analysis software.</li>\n\t</ul>\n\n\t<h3>Free, but Not Open Source Software</h3>\n\t<ul>\n\t\t<li><a href="http://www.esri.com/software/arcgis/explorer" target="_blank">ArcGIS Explorer Desktop</a> – for viewing .shp files</li>\n\t\t<!-- \t<li>– for viewing KML files -->\t\n\t\t<li><a href="https://public.tableau.com" target="_blank">Tableau Public</a> – for PC only, a free but limited version of Tableau, a tool for creating quick data visualizations such as maps and charts</li>\n\t</ul>\n\t \n\t<h3>Paid Proprietary Software</h3>\n\t<ul>\n\t\t<li><a href="http://office.microsoft.com/en-us/access/" target="_blank">Access</a></li>\n\t\t<li><a href="http://www.oracle.com/technetwork/database/enterprise-edition/downloads/index.html" target="_blank">Oracle</a></li>\n\t\t<li><a href="http://www.esri.com/software/arcgis/arcgis-for-desktop" target="_blank">ESRI ArcGIS for Desktop</a> - available at little or no cost for non-profit organizations. Freely available to UNC students and faculty via ITS.</li>\n\t</ul>\n\n\t<h3>Other Catalogs of Public Data</h3>\n\t<ul>\n\t\t<li><a href="data.gov" target="_blank">Data.gov</a></li>\n\t\t<li><a href="ncopenbook.com" target="_blank">NCOpenbook.com</a></li>\n\t\t<li><a href="http://www.lib.ncsu.edu/gis/" target="_blank">GIS Library at N.C. State University</a></li>\n\t\t<li><a href="http://census.ire.org/" target="_blank">Investigative Reporters & Editor’s Census.ire.org</a></li>\n\t </ul>\n\n\t<h3>Tools for Acquiring Data</h3>\n\t<ul>\n\t\t<li><a href="http://www.rcfp.org/foia" target="_blank">Freedom of Information Act letter generator</a> - from Reporter’s Committee for Freedom of the Press.</li>\n\t\t<li><a href="http://www.splc.org/legalassistance/foiletter.asp" target="_blank">State Open Records Law Request letter generator</a> - from the Student Press Law Center.</li>\n\t\t<li><a href="https://www.muckrock.com/" target="_blank">MuckRock.com</a> - a web-based serviced to help you generate and track public records requests.</li>\n\t\t<li><a href="http://www.foiamachine.org/wiki/" target="_blank">FOIAmachine.org</a> - a web-based service to help you generate and track public records requests.</li>\n\t\t<li><a href="http://www.outwit.com/" target="_blank">OutWit</a> – a downloadable program for the Mac and PC that helps scrape data off of HTML webpages. Available in a free or paid full-feature version.</li>\n\t\t<li><a href="http://www.screen-scraper.com/" target="_blank">ScreenScraper</a> – a downloadable program for Mac, Windows or Linux that helps scrape data off of HTML webpages. Available in a free or paid full-feature version.</li>\n\t\t<li><a href="https://scraperwiki.com/help/code-in-your-browser/" target="_blank">ScraperWiki</a> – a self-service web platform where you can create and host web scrapping applications that you write in Python, Ruby, PHP or another programming language.</li>\n\t</ul>\n\t \n\t<h3>Learn About Public Records</h3>\n\t<ul>\n\t\t<li><a href="https://www.elon.edu/docs/e-web/academics/communications/ncopengov/seekers/NCMediaLawHandbook2007.pdf" target="_blank">N.C. Media Law Handbook</a> (pdf)</li>\n\t\t<li><a href="http://www.ncga.state.nc.us/gascripts/statutes/statutelookup.pl?statute=132" target="_blank">N.C. Statutes, Chapter 132</a></li>\n\t\t<li><a href="http://www.ncdoj.gov/getdoc/ef04d580-eee7-4cfe-b2ec-06c26a6f95b9/AG-open-government-booklet-4-8-08.aspx" target="_blank">N.C. Attorney General’s Guide to Open Government and Public Records </a></li>\n\t\t<li><a href="http://www.elon.edu/e-web/academics/communications/ncopengov/innc/pubrec.xhtml" target="_blank">Sunshine Center at the North Carolina Open Government Coalition at Elon University</a></li>\n\t\t<li><a href="http://www.dmlp.org/legal-guide/access-public-records-north-carolina" target="_blank">Digital Media Law Project’s Access to Public Records in North Carolina</a></li>\n\t\t<li><a href="http://www.ncpress.com/ncpa/openmeetings.html" target="_blank">N.C. Press Association </a></li>\n\t\t<li><a href="http://sunlightfoundation.com/issues/freeing-federal-data/" target="_blank">Sunlight Foundation</a></li>\n\t</ul>\n\n\t<h3>Learn About Open Data Concepts</h3>\n\t<ul>\n\t\t<li><a href="http://schoolofdata.org/handbook/" target="_blank">The School of Data Handbook</a></li>\n\t\t<li><a href="http://opendatahandbook.org/" target="_blank">Open Data Handbook</a></li>\n\t\t<li><a href="http://datajournalismhandbook.org/" target="_blank">Data Journalism Handbook</a></li>\n\t\t<li><a href="http://getthedata.org/" target="_blank">GettheData.org</a></li>\n\t</ul>\n\n\t<h3>Technical Tutorials</h3>\n\t<ul>\n\t\t<li><a href="https://www.diigo.com/user/rtburg/excel" target="_blank">Excel</a></li>\n\t\t<li><a href="https://www.diigo.com/user/rtburg/access" target="_blank">Access</a></li>\n\t\t<li><a href="https://www.diigo.com/user/rtburg/refine" target="_blank">Refine</a></li>\n\t\t<li><a href="https://www.diigo.com/user/rtburg/google-fusion" target="_blank">Google Fusion Tables</a></li>\n\t\t<li><a href="https://www.diigo.com/user/rtburg/google-maps" target="_blank">Google Maps</a></li>\n\t\t<li><a href="https://www.diigo.com/user/rtburg/qgis" target="_blank">QGIS</a></li>\n\t\t<li><a href="http://guides.lib.unc.edu/content.php?pid=434273&sid=3553419" target="_blank">ArcGIS</a></li>\n\t</ul>\n\t<ul>\n\t\t<li><a href="https://www.diigo.com/user/rtburg/outwithub" target="_blank">OutWit</a></li>\n\t\t<li><a href="https://www.diigo.com/user/rtburg/tableau" target="_blank">Tableau</a></li>\n\t\t<li><a href="https://www.diigo.com/user/rtburg/sql" target="_blank">SQL</a></li>\n\t\t<li><a href="https://www.diigo.com/user/rtburg/scraping" target="_blank">Data Scraping</a></li>\n\t\t<li><a href="https://www.diigo.com/user/rtburg/data-visualization" target="_blank">Data Visulatization</a></li>\n\t\t<li><a href="http://www.w3schools.com/" target="_blank">W3Schools</a></li>\n\t\t<li><a href="http://www.codecademy.com/" target="_blank">Code Academy</a></li>\n\t</ul>\n    
5	2013-09-06 20:36:10.355602+00	2013-09-06 20:40:13.862761+00		privacy-page	/privacy/	\n    \t<p>\n    \tOpen-NC.org takes the privacy of you &#8212; our site visitors and community members &#8212; seriously. Please read this policy closely so you understand our practices. If you have any questions, please address them to privacy@open-nc.org. Our goal is to sustain a vibrant community while protecting your privacy. This policy may be updated from time to time, so we encourage you to visit this page often and become familiar with any changes. By using our website, you consent to information practices outlined in our <a href="{% url 'terms' %}">Terms of Use</a> and Privacy Policy.\n    \t</p>\n\n\t\t<h3>Normal Browsing</h3>\n\t\t<p>\n\t\tAs with many websites, we collect certain information, even when you are not logged in. When you browse, read, or download information from the Site, data is collected by Open-NC.org, \n          including but not limited to your IP address, URL request, browser type, and date and time of your request. The data are analyzed in various ways, including using a service called \n          Google Analytics. (Google Analytics is subject to the privacy policy of Google, Inc., which you can find on Google’s website. Information collected and processed by Google Analytics \n          includes the user’s IP address, network location, and geographic location. Google Analytics acquires all its information directly from the user, by installing a “cookie” on the user’s \n          computer. We do not share any information we collect with Google, and Google Analytics does not collect any personal identifying information such as names, contact information, social \n          security numbers or financial information.) We collect this information on an aggregate basis only. For example, we track which pages are most popular among visitors as a whole. We do not track information on which pages an individual user visits. We do not collect any other information without your knowledge and permission. We use this information to improve the usefulness of the site to our visitors. Unless you affirmatively provide additional information to us, we do not collect or store personally identifiable information such as name, mailing address, email address, phone number, or social security number.\n\t\t</p>\n\n\t\t<h3>Information You Provide</h3>\n\t\t<p>\n\t\tOpen-NC.org requests personally identifiable information when you register for an account. Information may be used or requested to perform research, improve usability of the site, administer mailing lists or online communities, or other activities related to the site’s services. This information may include, but is not limited to, your personal names, e-mail addresses and the user names you create when you register.\n\t\t</p>\n\n\t\t<h3>Disclosure of Information</h3>\n\t\t<p>\n\t\tAvailable log records, account information, and all data stored on our servers may be accessed by our system administrators and site editors. In the event that we are required by law (including a court order) to disclose the information you submit, we will provide you with notice (unless we are prohibited) that a request for your information has been made so that you may object to the disclosure. We will send this notice by email to the address you have given us. We prefer to independently object to over-broad requests for access to information about users of our site, but we cannot assure you that we will be able to do this in all cases. If you do not challenge the disclosure request yourself, we may be legally required to turn over your information.\n\t\t</p>\n\n\t\t<h3>Transfer of information</h3>\n\t\t<p>\n\t\tIn the event that Open N.C. is transferred to another organization, all website content will also be transferred.\n\t\t</p>\n\n\t\t<h3>Cookies</h3>\n\t\t<p>\n\t\tCookies are small text files that Open-NC.org and other websites can send to your browser for storage on your computer's hard drive. They make your use of Open-NC.org easier by saving your status and preferences and are refreshed every time you visit. We may use session cookies when you visit our website while your browser is open, or while you are logged into Open-NC.org. To facilitate our registration and login functions, we may use cookies to recognize when you return to the site. If you do not logout of your account, these cookies allow us to keep track of your username and password so that you do not have to resubmit the information to log into your account. If others will be using your computer, you should log out of your account so that your \n          login information is cleared. Most browsers are initially set to accept cookies, but you may be able to change the settings to refuse cookies or to be alerted when cookies are being sent.\n\t\t</p>\n\n\t\t<h3>Children's Privacy</h3>\n\t\t<p>\n\t\tThe site’s content is intended for adults and we will not knowingly collect personal information from children under 13 years of age. If you are a parent or legal guardian of a child under age 13 who you believe has submitted personal information to the site, please contact us immediately.\n\t\t</p>\n\n\t\t<h3>Posting</h3> \n\t\t<p>\n\t\tPosting or updating content on the site is a public action, and all content may be publicly visible. Identification of all contributed content may include, but is not limited to, display of your account name. All content may be retained for restorative, archival, or research purposes by Open-NC.org. Editing or deleting content may alter the displayed state of the content, but will not permanently delete the content from the site.\n\t\t</p>\n\n\t\t<h3>Security</h3>\n\t\t<p>\n\t\tThe site has security measures in place to protect the loss, misuse and alteration of the information under our control. However, your confidential use of the site cannot be guaranteed by Open-NC.org. Open-NC.org shall not be responsible for any harm that you or any person may suffer as a result of a breach of confidentiality in respect to your use of this site or any information you transmitted to the site.\n\t\t</p>\n\n\t\t<h3>Other Websites</h3>\n\t\t<p>\n\t\tMaterial on this website may link to independently run websites outside of the www.open-nc.org domain. Open-NC.org is not responsible for the privacy practices or content of such websites. We encourage you to read the privacy policies of any websites you visit from this website.\n\t\t</p>\n        
6	2013-10-01 03:42:26.846984+00	2013-10-01 03:42:26.84703+00		share-page-1	/suggest-data/	\n\n<div class="gray-card">\n\t<p>We realize that we haven't listed every North Carolina-based government data\n\t set in the Open N.C. catalog. If you have a specific data set that you've found\n\t and would like to share, let us know by completing and submitting the form\n\t below. We'll review the information and determine whether the data set\n\t should be included in Open N.C.. The data must be specific to North\n\t Carolina, available online, and contain information in columns and rows. Our\n\t goal is to catalog government datasets that adhere as closely as possible to\n\t the <a href="http://www.opengovdata.org/home/8principles" target="_blank">8 Principles of Open Government Data</a>. A full list of review criteria is\n\t available on the <a href="{% url 'faq' %}">FAQ</a> page.\n\t</p>\n\n\t<p>\n\tThis form is for recommending specific data sets, applications, or APIs.\n\tIf you'd like to nominate a general area where you think data should be more\n\teasily available, visit the Request Data page.\n\t</p>\n\n\t<p>\n\tIf the data is not already online, there are several ways you can help put it\n\tonline. Remember, though, that the more disconnected data becomes from its\n\toriginal source the less it adheres to the 8 Principles of Open Government\n\tData. Data sets that aren't as close to the source as possible and for which\n\tthe acquisition and publication processes aren't transparent will not be\n\tincluded in the catalog.\n\t</p>\n    
1	2013-08-30 15:17:03.923597+00	2013-10-08 16:01:45.914029+00		about-page	/about/	\n    \t<p>\n    \tOpen-NC.org is a catalog of digital public data created by state and local governments in North Carolina. It was created by Ryan Thornburg, an Associate Professor in the School of Journalism and Mass Communication at the University of North Carolina at Chapel Hill with funding from a Knight Foundation News Challenge grant.\n    \t</p>\n \n\t\t<p>\n\t\tThe site’s goal is to make it easier for you to to find, request and share information about digital public data in North Carolina. With easy access to this public data, we hope to support the transparency of North Carolina government, to lower the cost of watchdog reporting and to increase innovation and economic development.\n\t\t</p>\n \t\t\n \t\t\n\t\t<h3><a href="http://www.jomc.unc.edu/" target="_blank">The UNC School of Journalism and Mass Communication</a></h3>\n\t\t<p>\n\t\tThe UNC School of Journalism and Mass Communication’s responsibility is to train the next generation of media professionals &mdash; including journalists, strategic communicators, teachers and researchers &mdash; and to serve journalism and communication professionals.\n\t\t</p> \n\n\t\t\n\t\t<h3><a href="http://www.knightfoundation.org/" target="_blank">The Knight Foundation</a></h3>\n\t\t<p>\n\t\tThe John S. and James L. Knight Foundation is a 501(c)3 tax-exempt private foundation that supports transformational ideas that promote quality journalism, advance media innovation, engage communities and foster the arts.\n\t\t</p>\n        
7	2013-10-14 15:10:40.281388+00	2013-10-14 15:15:22.421513+00		share-page-3	/suggest-data/	\n<h2>Tools for Sharing Public Data</h2>\n\n<br>\n<div class="sharing_tools">\n\t<div class="row-fluid">\n\t\t<h3 class="span2"><a href="http://opendata.socrata.com">Socrata</a></h3>\n\t\t<div class="span10">If you have a single file in the .csv, .tsv, .xls, or .xlsx formats, you can upload it to Socrata, where users will be able to download it or access it with an API. Note that there's a 200MB limit to the size of the file you can upload.\n\t\t<ul>\n<li><a href="https://opendata.socrata.com/login">Sign up for Socrata</a></li>\n<li><a href="http://support.socrata.com/entries/494171-How-to-import-a-new-dataset-from-a-CSV-or-XLS-file-">Upload a file</a></li>\n<li><a href="http://dev.socrata.com/publishers/getting-started">Upload data via the API</a></li></ul>\n\n\t\tOnce you have your data in Socrata, return to this page and paste the URL in the form above.\n\t\t</div>\n\t</div>\n\n\t<hr>\n\n\t<div class="row-fluid">\n\t\t<h3 class="span2"><a href="http://www.outwit.com/products/hub/pro">OutWit</a></h3>\n\t\t<div class="span10">OutWit is an application called a scraper that you download to your PC or Macintosh computer. It helps you "scrape" data from government websites when they don't make it available in a fielded file format. After scraping a website, you will have a data file on your local computer that you would need to upload to a site such as Socrata.\n\t\t<ul>\n<li><a href="http://www.outwit.com/products/hub/pro">Download OutWit</a> (free or paid versions available)</li>\n<li><a href="http://www.outwit.com/support/help/tutorials/">Write your first scraper</a></li>\n<li><a href="https://leanpub.com/scrapingforjournalists">Scraping for Journalists</a></li>\n  </ul>\n\n\t\t</div>\n\t</div>\n\n\t<hr>\n\n\t<div class="row-fluid">\n\t\t<h3 class="span2"><a href="http://www.scraperwiki.com">Scraper<br class="hidden-phone">Wiki</a></h3>\n\t\t<div class="span10">If you know a programming language such as Python or Ruby, you can use it to write very complex scrapers and make the data available via API on ScraperWiki. ScraperWiki offers a limited free service as well as robust professional subscription plans.\n\t\t<ul>\n<li><a href="https://leanpub.com/scrapingforjournalists">Scraping for Journalists</a>   ebook by Paul Bradshaw </li><li class="c1 c5"><span class="c3"><a href="https://github.com/frabcus/code-scraper-in-browser-tool/wiki">ScraperWiki Tutorials</a></li>\n<li><a href="http://www.propublica.org/nerds/item/doc-dollars-guides-collecting-the-data">ProPublica&#39;s &quot;Scraping for Journalists&quot;</a></li></ul>\n</div>\n\t</div>\n\n\t<hr>\n\n\t<div class="row-fluid">\n\t\t<h3 class="span2"><a href="https://www.documentcloud.org">Document<br class="hidden-phone">Cloud</a></h3>\n\t\t<div class="span10">In cases where important public information isn't recorded or available in a structured data format, journalists can use DocumentCloud to upload PDFs and then annotate and publish them. Once documents are online, they can later be turned into data using a variety of techniques and tools. DocumentCloud is a project of an organization called Investigative Reporters and Editors, and use of the site requires their permission.\n\t\t<ul>\n<li><a href="https://www.documentcloud.org/home">Sign up for DocumentCloud</a></li></ul>\n\n\t\t</div>\n\t</div>\n\n\t<hr>\n\n\t<div class="row-fluid">\n\t\t<h3 class="span2"><a href="http://raleighpublicrecord.org/tag/dochive/">DocHive</a></h3>\n\t\t<div class="span10">Founded by the non-profit Raleigh Public Record, DocHive is an open-source Java application that takes PDF versions of paper forms and turns them into structured data. The result is a CSV file that can be uploaded and shared via Socrata.<ul>\n<li><a href="https://github.com/raleighpublicrecord/dochive/blob/master/dochive/README.txt">Download DocHive</a></li></ul>\n</div>\n\t</div>\n\n\t<hr>\n\n\t<div class="row-fluid">\n\t\t<h3 class="span2"><a href="https://www.muckrock.com">MuckRock</a></h3>\n\t\t<div class="span10">Many public records remain offline and available only by writing a public records request. Public records requests are a very specific type of request governed by North Carolina state law. And requests don't always yield the results you want or on a reasonable deadline. MuckRock's online service helps you track your records requests and make the disclosure process more transparent. Once digital public data are made available to you either online or on a CD-ROM, you may still need to use one or more of the other tools to share them here.\n\t\t<ul>\n<li><a href="https://www.muckrock.com/accounts/register/">Register for MuckRock</a></li>\n<li><a href="http://www.elon.edu/e-web/academics/communications/ncopengov/seekers/faq.xhtml">FAQ on North Carolina public records law</a>  , from the N.C. Open Government Coalition </li>\n<li><a href="http://www.elon.edu/e-web/academics/communications/ncopengov/seekers/handbooks.xhtml">North Carolina Media Law Handbook</a>   (PDF), by Cathy Packer, Hugh Stevens and C. Amanda Martin. </li></ul>\n</div>\n\t</div>\n</div>\n
\.


--
-- Name: scribbler_scribble_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('scribbler_scribble_id_seq', 7, true);


--
-- Data for Name: south_migrationhistory; Type: TABLE DATA; Schema: public; Owner: -
--

COPY south_migrationhistory (id, app_name, migration, applied) FROM stdin;
1	catalog	0001_initial	2013-08-13 18:39:22.774026+00
2	requests	0001_initial	2013-08-13 18:39:23.259473+00
3	suggestions	0001_initial	2013-08-13 18:39:23.483636+00
4	suggestions	0002_auto__add_field_suggestion_other_category	2013-08-13 18:39:23.548886+00
5	scribbler	0001_initial	2013-08-13 18:39:23.663987+00
6	scribbler	0002_auto__add_unique_scribble_url_slug	2013-08-13 18:39:23.686825+00
7	scribbler	0003_auto__chg_field_scribble_slug	2013-08-13 18:39:23.948038+00
8	djcelery	0001_initial	2013-08-13 18:39:24.413834+00
9	djcelery	0002_v25_changes	2013-08-13 18:39:24.608575+00
10	djcelery	0003_v26_changes	2013-08-13 18:39:24.675989+00
11	djcelery	0004_v30_changes	2013-08-13 18:39:24.696726+00
12	djangoratings	0001_initial	2013-08-13 18:39:24.975459+00
13	djangoratings	0002_add_mean_and_stddev	2013-08-13 18:39:25.709182+00
14	djangoratings	0003_add_correlations	2013-08-13 18:39:25.848725+00
15	djangoratings	0004_rethink_recommendations	2013-08-13 18:39:25.901792+00
16	djangoratings	0005_add_exclusions	2013-08-13 18:39:25.987054+00
17	djangoratings	0006_add_cookies	2013-08-13 18:39:26.167251+00
18	catalog	0002_auto__add_field_resource_agency_type	2013-08-15 16:36:15.668167+00
19	catalog	0003_auto__add_field_resource_keywords	2013-08-15 16:36:15.900576+00
20	catalog	0004_auto__add_division__add_department__del_field_resource_division__del_f	2013-08-15 16:36:16.037181+00
21	catalog	0005_auto__add_field_resource_department__add_field_resource_division	2013-08-15 16:36:16.203521+00
22	catalog	0006_auto__add_field_urlimage_resource	2013-08-15 16:36:16.393249+00
23	catalog	0007_auto__del_field_urlimage_url	2013-08-15 16:36:16.446754+00
24	catalog	0008_auto__add_field_resource_newest_record__add_field_resource_oldest_reco	2013-08-21 20:02:11.734097+00
25	requests	0002_auto__del_field_request_date__add_field_request_creation_date	2013-08-22 13:51:47.412774+00
26	requests	0003_auto__del_field_request_date_last_modified__add_field_request_last_mod	2013-08-22 13:51:47.661017+00
27	requests	0004_auto__del_field_request_update_frequency__add_field_request_updates	2013-08-23 20:15:22.678369+00
28	suggestions	0003_auto__del_field_suggestion_data_format	2013-08-23 20:15:22.917342+00
29	suggestions	0004_auto__add_field_suggestion_data_format	2013-08-23 20:15:22.947768+00
30	suggestions	0005_auto__del_field_suggestion_update_frequency	2013-08-23 20:15:22.963286+00
31	suggestions	0006_auto__add_field_suggestion_updates	2013-08-23 20:15:23.05588+00
32	requests	0005_auto__add_field_request_status	2013-09-06 15:13:40.44829+00
\.


--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('south_migrationhistory_id_seq', 32, true);


--
-- Data for Name: suggestions_suggestion; Type: TABLE DATA; Schema: public; Owner: -
--

COPY suggestions_suggestion (id, date, date_last_modified, title, short_description, description, url, other_format, agency_name, agency_division, agency_type, city_id, county_id, last_updated, keywords, contact_name, phone_number, street_address, contact_city, zipcode, email_address, other_category, data_format_id, updates_id) FROM stdin;
1	2013-08-21 16:28:50.813781+00	2013-08-21 16:28:50.813824+00	admin sugg	brief des	long de	http:suggestion.com2	none	agency	division	state	16	2	2013-08-21	1,2	contact	phone	street	city	zip	email	no, other category	\N	\N
2	2013-08-21 18:24:25.61737+00	2013-08-21 18:24:25.617412+00	Title New	THis is required	so is this	http://caktusgroup.com	other	Police	ANother	state	4	13	2013-01-01		Police	919-90209988	151 E Rosemary St	Chapel Hill	27514	vrocha@caktusgroup.com		\N	\N
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
sorl-thumbnail||thumbnails||083e650439c8cdc3702b95d240568533	["d23c89eb748ecf6f557b06578ea6a922", "2f8301381241d86a21c925db7b916846", "73142c86019ef3843bcc084c206607fc", "a404a844d4ad2fea90aa88a268ed9a66", "d851acaec58c82c1e8cf5c69e86cb4ab"]
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
sorl-thumbnail||thumbnails||60a6750afcf4fd43f094ebfea7080bf4	["c1a422029c64e38556076e9328811aee", "d806e9c6f2cb7d4fa27344c7712ca160"]
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
sorl-thumbnail||thumbnails||d3c74b90aafa5ef1c8d44a178d1866b7	["6fa84920ca879cebfffe0a9f85b79a92", "7fa8e3898a4926fcaa164e8195a8cfdc", "7ab0f4d8e2014a5e9572f6bb92af3a04"]
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
sorl-thumbnail||thumbnails||48d7a918ac2faf2a440b7bf12dcdcbb1	["770f38dd50bb74e461f7b13f9f6752d0", "8f280d91bebb0919e915f0b1e0f7120e", "1fd03b9e28390ae55ed3233447b249de"]
sorl-thumbnail||image||770f38dd50bb74e461f7b13f9f6752d0	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/f0/0a/f00a377b0b04d43e9c2c72bfa525c2ec.jpg", "size": [254, 254]}
sorl-thumbnail||thumbnails||13da29abc18d2c12e7590cb772bfaf68	["9cf7f6588560d8e16f0a85e0c7d34af6", "9838fb5ea35981b8ab4e307577102fb3", "1f6726ee21039158dfc7b8a42aa769cf"]
sorl-thumbnail||image||f10a4f18d1bcb0043b63774f389ed3a1	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/22/ca/22cadc87c6e02992dace2b84faafa6a9.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||f84c9d25ae9a49b25c325e78e235c6c4	["f10a4f18d1bcb0043b63774f389ed3a1", "6fabaa07c7648803c91b4fb669af8bdf", "2d6611810d55032e4f94b3b462f3baa3"]
sorl-thumbnail||image||0d5d6fe37b0a69d4855cae4dd1cdb678	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/26/85/26854675161713457208a0b4af74bdae.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||0d8e9f57c41829bcaac82b903f46615e	["0d5d6fe37b0a69d4855cae4dd1cdb678"]
sorl-thumbnail||image||c3cec1b4f571248a3f483cc4e3de3efa	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/06/9c/069c14431c70a9befea373c2a890c01e.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||acabe2e40beda35f2518cdafcbee76f3	["2e12f9ed94f10263ddeec02ec940a666", "67b19e98c6ef12d0f98db46f60dc70d7", "c3cec1b4f571248a3f483cc4e3de3efa"]
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
sorl-thumbnail||thumbnails||fafb4f4e229997464c359313446275a3	["73d815a5fca55cd437ac759ac6a4ce7f", "329f0b088b11457a8b61719ee9dca050", "bcd5875f1f3bb4ad66ec08c1f10c64f0"]
sorl-thumbnail||image||0c79b028512b70bb8add2e5fa10e8bf6	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/1b/bd/1bbdb572d6d7d44aea68681875df3326.jpg", "size": [869, 450]}
sorl-thumbnail||image||51a4387c11d224fb116a60e3241603ba	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/2e/25/2e25b749a37a72491538fcc984f16a52.jpg", "size": [869, 450]}
sorl-thumbnail||thumbnails||d32cb2b2bd812875e00bc561476de768	["72e8be0262e79935ef33f9a266d730a7", "51a4387c11d224fb116a60e3241603ba", "d1b42fb1585f3ba41f68c90f6ba506b5"]
sorl-thumbnail||image||4cee0bda0b9b3b7c81e71e3f1ddd991b	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c6/ac/c6ac917971b7a31aa0f04452594ffaa4.jpg", "size": [869, 450]}
sorl-thumbnail||image||d36c3092721fa636f7be235d6cd27ecc	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/1c/e8/1ce8e100eb04bb756f01afb5eae8c6d1.jpg", "size": [869, 450]}
sorl-thumbnail||image||76c9f61dfe635ce911e9def8ee986e26	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/34/6d/346d69f3874bc07e683ff0c064988b25.jpg", "size": [869, 450]}
sorl-thumbnail||image||b08f8ad0c60752c98c45653e7650aa8c	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c1/8c/c18cfec6c8035fc476b19604370813df.jpg", "size": [869, 450]}
sorl-thumbnail||image||1f6726ee21039158dfc7b8a42aa769cf	{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ec/d1/ecd10af297b3367ac1ac3d0998a0af02.jpg", "size": [869, 450]}
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

