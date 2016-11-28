--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.5
-- Dumped by pg_dump version 9.5.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: admin_tools_dashboard_preferences; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE admin_tools_dashboard_preferences (
    id integer NOT NULL,
    data text NOT NULL,
    dashboard_id character varying(100) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE admin_tools_dashboard_preferences OWNER TO root;

--
-- Name: admin_tools_dashboard_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE admin_tools_dashboard_preferences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE admin_tools_dashboard_preferences_id_seq OWNER TO root;

--
-- Name: admin_tools_dashboard_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE admin_tools_dashboard_preferences_id_seq OWNED BY admin_tools_dashboard_preferences.id;


--
-- Name: admin_tools_menu_bookmark; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE admin_tools_menu_bookmark (
    id integer NOT NULL,
    url character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE admin_tools_menu_bookmark OWNER TO root;

--
-- Name: admin_tools_menu_bookmark_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE admin_tools_menu_bookmark_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE admin_tools_menu_bookmark_id_seq OWNER TO root;

--
-- Name: admin_tools_menu_bookmark_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE admin_tools_menu_bookmark_id_seq OWNED BY admin_tools_menu_bookmark.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO root;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO root;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO root;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO root;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO root;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO root;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO root;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO root;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO root;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO root;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO root;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO root;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE authtoken_token OWNER TO root;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO root;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO root;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO root;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO root;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO root;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO root;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_rq_jobs_job; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE django_rq_jobs_job (
    id integer NOT NULL,
    task character varying(200) NOT NULL,
    args character varying(255),
    schedule_type character varying(1) NOT NULL,
    repeats smallint NOT NULL,
    next_run timestamp with time zone,
    last_run timestamp with time zone,
    rq_id character varying(64),
    rq_origin character varying(64)
);


ALTER TABLE django_rq_jobs_job OWNER TO root;

--
-- Name: django_rq_jobs_job_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE django_rq_jobs_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_rq_jobs_job_id_seq OWNER TO root;

--
-- Name: django_rq_jobs_job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE django_rq_jobs_job_id_seq OWNED BY django_rq_jobs_job.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO root;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE django_site OWNER TO root;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_site_id_seq OWNER TO root;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: emotion_emotion; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE emotion_emotion (
    id integer NOT NULL,
    text character varying(100) NOT NULL,
    temperature double precision NOT NULL,
    index double precision NOT NULL,
    date_measured timestamp with time zone,
    whisker_high double precision NOT NULL,
    whisker_low double precision NOT NULL
);


ALTER TABLE emotion_emotion OWNER TO root;

--
-- Name: emotion_emotion_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE emotion_emotion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE emotion_emotion_id_seq OWNER TO root;

--
-- Name: emotion_emotion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE emotion_emotion_id_seq OWNED BY emotion_emotion.id;


--
-- Name: oauth2_provider_accesstoken; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE oauth2_provider_accesstoken (
    id integer NOT NULL,
    token character varying(255) NOT NULL,
    expires timestamp with time zone NOT NULL,
    scope text NOT NULL,
    application_id integer NOT NULL,
    user_id integer
);


ALTER TABLE oauth2_provider_accesstoken OWNER TO root;

--
-- Name: oauth2_provider_accesstoken_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE oauth2_provider_accesstoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE oauth2_provider_accesstoken_id_seq OWNER TO root;

--
-- Name: oauth2_provider_accesstoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE oauth2_provider_accesstoken_id_seq OWNED BY oauth2_provider_accesstoken.id;


--
-- Name: oauth2_provider_application; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE oauth2_provider_application (
    id integer NOT NULL,
    client_id character varying(100) NOT NULL,
    redirect_uris text NOT NULL,
    client_type character varying(32) NOT NULL,
    authorization_grant_type character varying(32) NOT NULL,
    client_secret character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    user_id integer NOT NULL,
    skip_authorization boolean NOT NULL
);


ALTER TABLE oauth2_provider_application OWNER TO root;

--
-- Name: oauth2_provider_application_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE oauth2_provider_application_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE oauth2_provider_application_id_seq OWNER TO root;

--
-- Name: oauth2_provider_application_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE oauth2_provider_application_id_seq OWNED BY oauth2_provider_application.id;


--
-- Name: oauth2_provider_grant; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE oauth2_provider_grant (
    id integer NOT NULL,
    code character varying(255) NOT NULL,
    expires timestamp with time zone NOT NULL,
    redirect_uri character varying(255) NOT NULL,
    scope text NOT NULL,
    application_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE oauth2_provider_grant OWNER TO root;

--
-- Name: oauth2_provider_grant_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE oauth2_provider_grant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE oauth2_provider_grant_id_seq OWNER TO root;

--
-- Name: oauth2_provider_grant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE oauth2_provider_grant_id_seq OWNED BY oauth2_provider_grant.id;


--
-- Name: oauth2_provider_refreshtoken; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE oauth2_provider_refreshtoken (
    id integer NOT NULL,
    token character varying(255) NOT NULL,
    access_token_id integer NOT NULL,
    application_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE oauth2_provider_refreshtoken OWNER TO root;

--
-- Name: oauth2_provider_refreshtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE oauth2_provider_refreshtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE oauth2_provider_refreshtoken_id_seq OWNER TO root;

--
-- Name: oauth2_provider_refreshtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE oauth2_provider_refreshtoken_id_seq OWNED BY oauth2_provider_refreshtoken.id;


--
-- Name: registration_registrationprofile; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE registration_registrationprofile (
    id integer NOT NULL,
    activation_key character varying(40) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE registration_registrationprofile OWNER TO root;

--
-- Name: registration_registrationprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE registration_registrationprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE registration_registrationprofile_id_seq OWNER TO root;

--
-- Name: registration_registrationprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE registration_registrationprofile_id_seq OWNED BY registration_registrationprofile.id;


--
-- Name: social_auth_association; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE social_auth_association (
    id integer NOT NULL,
    server_url character varying(255) NOT NULL,
    handle character varying(255) NOT NULL,
    secret character varying(255) NOT NULL,
    issued integer NOT NULL,
    lifetime integer NOT NULL,
    assoc_type character varying(64) NOT NULL
);


ALTER TABLE social_auth_association OWNER TO root;

--
-- Name: social_auth_association_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE social_auth_association_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE social_auth_association_id_seq OWNER TO root;

--
-- Name: social_auth_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE social_auth_association_id_seq OWNED BY social_auth_association.id;


--
-- Name: social_auth_code; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE social_auth_code (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    code character varying(32) NOT NULL,
    verified boolean NOT NULL
);


ALTER TABLE social_auth_code OWNER TO root;

--
-- Name: social_auth_code_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE social_auth_code_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE social_auth_code_id_seq OWNER TO root;

--
-- Name: social_auth_code_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE social_auth_code_id_seq OWNED BY social_auth_code.id;


--
-- Name: social_auth_nonce; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE social_auth_nonce (
    id integer NOT NULL,
    server_url character varying(255) NOT NULL,
    "timestamp" integer NOT NULL,
    salt character varying(65) NOT NULL
);


ALTER TABLE social_auth_nonce OWNER TO root;

--
-- Name: social_auth_nonce_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE social_auth_nonce_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE social_auth_nonce_id_seq OWNER TO root;

--
-- Name: social_auth_nonce_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE social_auth_nonce_id_seq OWNED BY social_auth_nonce.id;


--
-- Name: social_auth_usersocialauth; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE social_auth_usersocialauth (
    id integer NOT NULL,
    provider character varying(32) NOT NULL,
    uid character varying(255) NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE social_auth_usersocialauth OWNER TO root;

--
-- Name: social_auth_usersocialauth_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE social_auth_usersocialauth_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE social_auth_usersocialauth_id_seq OWNER TO root;

--
-- Name: social_auth_usersocialauth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE social_auth_usersocialauth_id_seq OWNED BY social_auth_usersocialauth.id;


--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE taggit_tag OWNER TO root;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE taggit_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE taggit_tag_id_seq OWNER TO root;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE taggit_tag_id_seq OWNED BY taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE taggit_taggeditem OWNER TO root;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE taggit_taggeditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE taggit_taggeditem_id_seq OWNER TO root;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE taggit_taggeditem_id_seq OWNED BY taggit_taggeditem.id;


--
-- Name: users_profile; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE users_profile (
    id integer NOT NULL,
    time_created timestamp with time zone,
    is_seller boolean,
    is_advertiser boolean,
    is_consumer boolean,
    is_cleared boolean,
    is_blocked boolean,
    address1 character varying(200),
    address2 character varying(200),
    city character varying(200),
    state_id integer,
    user_id integer,
    is_facebook_strategy_used boolean,
    is_googleplus_strategy_used boolean,
    is_linkedin_strategy_used boolean,
    is_plain_srategy_used boolean,
    is_twitter_strategy_used boolean,
    activation_key character varying(140) NOT NULL,
    bio text,
    ipaddress character varying(50),
    is_online boolean,
    time_cleared timestamp with time zone
);


ALTER TABLE users_profile OWNER TO root;

--
-- Name: users_profile_followers; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE users_profile_followers (
    id integer NOT NULL,
    profile_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE users_profile_followers OWNER TO root;

--
-- Name: users_profile_followers_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE users_profile_followers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_profile_followers_id_seq OWNER TO root;

--
-- Name: users_profile_followers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE users_profile_followers_id_seq OWNED BY users_profile_followers.id;


--
-- Name: users_profile_following; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE users_profile_following (
    id integer NOT NULL,
    profile_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE users_profile_following OWNER TO root;

--
-- Name: users_profile_following_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE users_profile_following_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_profile_following_id_seq OWNER TO root;

--
-- Name: users_profile_following_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE users_profile_following_id_seq OWNED BY users_profile_following.id;


--
-- Name: users_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE users_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_profile_id_seq OWNER TO root;

--
-- Name: users_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE users_profile_id_seq OWNED BY users_profile.id;


--
-- Name: users_state_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE users_state_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_state_id_seq OWNER TO root;

--
-- Name: users_state; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE users_state (
    id integer DEFAULT nextval('users_state_id_seq'::regclass) NOT NULL,
    state character varying(200),
    code character varying(200)
);


ALTER TABLE users_state OWNER TO root;

--
-- Name: users_usersession; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE users_usersession (
    id integer NOT NULL,
    username character varying(200),
    remote_ip character varying(20),
    session_key character varying(200),
    time_in timestamp with time zone NOT NULL,
    time_out timestamp with time zone,
    time_online_hours integer,
    time_online_minutes integer,
    time_online_seconds integer,
    time_online_total character varying(200),
    time_online_delta double precision,
    date_visited date,
    user_id integer NOT NULL
);


ALTER TABLE users_usersession OWNER TO root;

--
-- Name: users_usersession_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE users_usersession_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_usersession_id_seq OWNER TO root;

--
-- Name: users_usersession_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE users_usersession_id_seq OWNED BY users_usersession.id;


--
-- Name: utils_logger; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE utils_logger (
    id integer NOT NULL,
    log character varying(12500),
    "time" timestamp with time zone NOT NULL
);


ALTER TABLE utils_logger OWNER TO root;

--
-- Name: utils_logger_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE utils_logger_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE utils_logger_id_seq OWNER TO root;

--
-- Name: utils_logger_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE utils_logger_id_seq OWNED BY utils_logger.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY admin_tools_dashboard_preferences ALTER COLUMN id SET DEFAULT nextval('admin_tools_dashboard_preferences_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY admin_tools_menu_bookmark ALTER COLUMN id SET DEFAULT nextval('admin_tools_menu_bookmark_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_rq_jobs_job ALTER COLUMN id SET DEFAULT nextval('django_rq_jobs_job_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY emotion_emotion ALTER COLUMN id SET DEFAULT nextval('emotion_emotion_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY oauth2_provider_accesstoken ALTER COLUMN id SET DEFAULT nextval('oauth2_provider_accesstoken_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY oauth2_provider_application ALTER COLUMN id SET DEFAULT nextval('oauth2_provider_application_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY oauth2_provider_grant ALTER COLUMN id SET DEFAULT nextval('oauth2_provider_grant_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY oauth2_provider_refreshtoken ALTER COLUMN id SET DEFAULT nextval('oauth2_provider_refreshtoken_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY registration_registrationprofile ALTER COLUMN id SET DEFAULT nextval('registration_registrationprofile_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY social_auth_association ALTER COLUMN id SET DEFAULT nextval('social_auth_association_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY social_auth_code ALTER COLUMN id SET DEFAULT nextval('social_auth_code_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY social_auth_nonce ALTER COLUMN id SET DEFAULT nextval('social_auth_nonce_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY social_auth_usersocialauth ALTER COLUMN id SET DEFAULT nextval('social_auth_usersocialauth_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY taggit_tag ALTER COLUMN id SET DEFAULT nextval('taggit_tag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('taggit_taggeditem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY users_profile ALTER COLUMN id SET DEFAULT nextval('users_profile_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY users_profile_followers ALTER COLUMN id SET DEFAULT nextval('users_profile_followers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY users_profile_following ALTER COLUMN id SET DEFAULT nextval('users_profile_following_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY users_usersession ALTER COLUMN id SET DEFAULT nextval('users_usersession_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY utils_logger ALTER COLUMN id SET DEFAULT nextval('utils_logger_id_seq'::regclass);


--
-- Data for Name: admin_tools_dashboard_preferences; Type: TABLE DATA; Schema: public; Owner: root
--

COPY admin_tools_dashboard_preferences (id, data, dashboard_id, user_id) FROM stdin;
\.


--
-- Name: admin_tools_dashboard_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('admin_tools_dashboard_preferences_id_seq', 1, false);


--
-- Data for Name: admin_tools_menu_bookmark; Type: TABLE DATA; Schema: public; Owner: root
--

COPY admin_tools_menu_bookmark (id, url, title, user_id) FROM stdin;
\.


--
-- Name: admin_tools_menu_bookmark_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('admin_tools_menu_bookmark_id_seq', 1, false);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add group	4	add_group
11	Can change group	4	change_group
12	Can delete group	4	delete_group
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add bookmark	7	add_bookmark
20	Can change bookmark	7	change_bookmark
21	Can delete bookmark	7	delete_bookmark
22	Can add dashboard preferences	8	add_dashboardpreferences
23	Can change dashboard preferences	8	change_dashboardpreferences
24	Can delete dashboard preferences	8	delete_dashboardpreferences
25	Can add job	9	add_job
26	Can change job	9	change_job
27	Can delete job	9	delete_job
28	Can add nonce	10	add_nonce
29	Can change nonce	10	change_nonce
30	Can delete nonce	10	delete_nonce
31	Can add code	11	add_code
32	Can change code	11	change_code
33	Can delete code	11	delete_code
34	Can add user social auth	12	add_usersocialauth
35	Can change user social auth	12	change_usersocialauth
36	Can delete user social auth	12	delete_usersocialauth
37	Can add association	13	add_association
38	Can change association	13	change_association
39	Can delete association	13	delete_association
40	Can add registration profile	14	add_registrationprofile
41	Can change registration profile	14	change_registrationprofile
42	Can delete registration profile	14	delete_registrationprofile
43	Can add Token	15	add_token
44	Can change Token	15	change_token
45	Can delete Token	15	delete_token
46	Can add grant	16	add_grant
47	Can change grant	16	change_grant
48	Can delete grant	16	delete_grant
49	Can add access token	17	add_accesstoken
50	Can change access token	17	change_accesstoken
51	Can delete access token	17	delete_accesstoken
52	Can add application	18	add_application
53	Can change application	18	change_application
54	Can delete application	18	delete_application
55	Can add refresh token	19	add_refreshtoken
56	Can change refresh token	19	change_refreshtoken
57	Can delete refresh token	19	delete_refreshtoken
58	Can add Tag	20	add_tag
59	Can change Tag	20	change_tag
60	Can delete Tag	20	delete_tag
61	Can add Tagged Item	21	add_taggeditem
62	Can change Tagged Item	21	change_taggeditem
63	Can delete Tagged Item	21	delete_taggeditem
64	Can add emotion	22	add_emotion
65	Can change emotion	22	change_emotion
66	Can delete emotion	22	delete_emotion
67	Can add State	23	add_state
68	Can change State	23	change_state
69	Can delete State	23	delete_state
70	Can add Emotion	24	add_profile
71	Can change Emotion	24	change_profile
72	Can delete Emotion	24	delete_profile
73	Can add logger	25	add_logger
74	Can change logger	25	change_logger
75	Can delete logger	25	delete_logger
76	Can add site	26	add_site
77	Can change site	26	change_site
78	Can delete site	26	delete_site
79	Can add registration profile	27	add_registrationprofile
80	Can change registration profile	27	change_registrationprofile
81	Can delete registration profile	27	delete_registrationprofile
82	Can add Session	28	add_usersession
83	Can change Session	28	change_usersession
84	Can delete Session	28	delete_usersession
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_permission_id_seq', 84, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$30000$nsWg3VxnlQtr$fZYRW4MJDWYb936Pe3DmnxcUv6TtcF5J51VOyStGNHI=	2016-11-22 14:38:27.797767-05	t	root			dmitryro@gmail.com	t	t	2016-11-12 05:34:17.672695-05
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: root
--

COPY authtoken_token (key, created, user_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: root
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: root
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	user
4	auth	group
5	contenttypes	contenttype
6	sessions	session
7	menu	bookmark
8	dashboard	dashboardpreferences
9	django_rq_jobs	job
10	social_auth	nonce
11	social_auth	code
12	social_auth	usersocialauth
13	social_auth	association
14	registration	registrationprofile
15	authtoken	token
16	oauth2_provider	grant
17	oauth2_provider	accesstoken
18	oauth2_provider	application
19	oauth2_provider	refreshtoken
20	taggit	tag
21	taggit	taggeditem
22	emotion	emotion
23	users	state
24	users	profile
25	utils	logger
26	sites	site
27	registration_api	registrationprofile
28	users	usersession
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('django_content_type_id_seq', 28, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2016-11-12 04:19:54.114266-05
2	auth	0001_initial	2016-11-12 04:19:54.908342-05
3	admin	0001_initial	2016-11-12 04:19:55.132419-05
4	admin	0002_logentry_remove_auto_add	2016-11-12 04:19:55.236267-05
5	contenttypes	0002_remove_content_type_name	2016-11-12 04:19:55.349802-05
6	auth	0002_alter_permission_name_max_length	2016-11-12 04:19:55.408339-05
7	auth	0003_alter_user_email_max_length	2016-11-12 04:19:55.457434-05
8	auth	0004_alter_user_username_opts	2016-11-12 04:19:55.493539-05
9	auth	0005_alter_user_last_login_null	2016-11-12 04:19:55.552357-05
10	auth	0006_require_contenttypes_0002	2016-11-12 04:19:55.564269-05
11	auth	0007_alter_validators_add_error_messages	2016-11-12 04:19:55.599548-05
12	auth	0008_alter_user_username_max_length	2016-11-12 04:19:55.677702-05
13	sessions	0001_initial	2016-11-12 04:19:55.833083-05
14	authtoken	0001_initial	2016-11-12 05:19:16.67194-05
15	authtoken	0002_auto_20160226_1747	2016-11-12 05:19:17.009888-05
16	dashboard	0001_initial	2016-11-12 05:19:17.232207-05
17	django_rq_jobs	0001_initial	2016-11-12 05:19:17.310794-05
18	django_rq_jobs	0002_auto_20150721_1255	2016-11-12 05:19:17.387669-05
19	django_rq_jobs	0003_auto_20150729_1103	2016-11-12 05:19:17.433771-05
20	menu	0001_initial	2016-11-12 05:19:17.637097-05
21	oauth2_provider	0001_initial	2016-11-12 05:19:18.623244-05
22	oauth2_provider	0002_08_updates	2016-11-12 05:19:19.174503-05
23	registration	0001_initial	2016-11-12 05:19:19.316583-05
24	default	0001_initial	2016-11-12 05:19:19.939545-05
25	default	0002_add_related_name	2016-11-12 05:19:20.094212-05
26	default	0003_alter_email_max_length	2016-11-12 05:19:20.136815-05
27	default	0004_auto_20160423_0400	2016-11-12 05:19:20.229828-05
28	social_auth	0005_auto_20160727_2333	2016-11-12 05:19:20.308704-05
29	social_auth	0001_initial	2016-11-12 05:19:20.322478-05
30	social_auth	0003_alter_email_max_length	2016-11-12 05:19:20.340907-05
31	social_auth	0004_auto_20160423_0400	2016-11-12 05:19:20.353264-05
32	social_auth	0002_add_related_name	2016-11-12 05:19:20.366838-05
33	django_rq_jobs	0004_auto_20161112_1022	2016-11-12 05:23:00.100838-05
34	taggit	0001_initial	2016-11-20 12:58:44.345364-05
35	taggit	0002_auto_20150616_2121	2016-11-20 12:58:44.510513-05
36	emotion	0001_initial	2016-11-20 12:58:44.631238-05
37	emotion	0002_auto_20161120_1852	2016-11-20 13:52:32.531525-05
38	emotion	0003_emotion_date_measured	2016-11-20 15:01:12.519817-05
39	emotion	0004_auto_20161120_2003	2016-11-20 15:04:48.740958-05
40	emotion	0005_auto_20161120_2004	2016-11-20 15:04:48.825154-05
41	emotion	0006_auto_20161120_2038	2016-11-20 15:38:16.672845-05
42	emotion	0007_auto_20161120_2243	2016-11-20 22:43:26.494223-05
43	users	0001_initial	2016-11-21 12:46:56.76008-05
44	users	0002_auto_20161121_1338	2016-11-21 13:38:12.834138-05
45	users	0003_auto_20161121_1344	2016-11-21 13:44:24.862821-05
46	users	0004_auto_20161121_1606	2016-11-21 16:06:23.480999-05
47	users	0002_auto_20161121_1617	2016-11-21 16:26:40.328183-05
48	utils	0001_initial	2016-11-21 17:17:55.295186-05
49	sites	0001_initial	2016-11-21 17:53:45.035125-05
50	sites	0002_alter_domain_unique	2016-11-21 17:53:45.145971-05
51	users	0003_auto_20161121_1819	2016-11-21 18:19:17.282364-05
52	users	0004_usersession	2016-11-22 20:38:06.353082-05
53	utils	0002_auto_20161126_2311	2016-11-26 23:12:02.723275-05
54	utils	0003_auto_20161127_2310	2016-11-27 23:10:38.870862-05
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('django_migrations_id_seq', 54, true);


--
-- Data for Name: django_rq_jobs_job; Type: TABLE DATA; Schema: public; Owner: root
--

COPY django_rq_jobs_job (id, task, args, schedule_type, repeats, next_run, last_run, rq_id, rq_origin) FROM stdin;
\.


--
-- Name: django_rq_jobs_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('django_rq_jobs_job_id_seq', 1, false);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: root
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: root
--

COPY django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Data for Name: emotion_emotion; Type: TABLE DATA; Schema: public; Owner: root
--

COPY emotion_emotion (id, text, temperature, index, date_measured, whisker_high, whisker_low) FROM stdin;
3	sad	43	0.340000000000000024	2016-11-20 15:50:39.453366-05	0	0
1	smile	78	0.869999999999999996	2016-11-20 15:01:02.08886-05	0	0
\.


--
-- Name: emotion_emotion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('emotion_emotion_id_seq', 3, true);


--
-- Data for Name: oauth2_provider_accesstoken; Type: TABLE DATA; Schema: public; Owner: root
--

COPY oauth2_provider_accesstoken (id, token, expires, scope, application_id, user_id) FROM stdin;
\.


--
-- Name: oauth2_provider_accesstoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('oauth2_provider_accesstoken_id_seq', 1, false);


--
-- Data for Name: oauth2_provider_application; Type: TABLE DATA; Schema: public; Owner: root
--

COPY oauth2_provider_application (id, client_id, redirect_uris, client_type, authorization_grant_type, client_secret, name, user_id, skip_authorization) FROM stdin;
\.


--
-- Name: oauth2_provider_application_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('oauth2_provider_application_id_seq', 1, false);


--
-- Data for Name: oauth2_provider_grant; Type: TABLE DATA; Schema: public; Owner: root
--

COPY oauth2_provider_grant (id, code, expires, redirect_uri, scope, application_id, user_id) FROM stdin;
\.


--
-- Name: oauth2_provider_grant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('oauth2_provider_grant_id_seq', 1, false);


--
-- Data for Name: oauth2_provider_refreshtoken; Type: TABLE DATA; Schema: public; Owner: root
--

COPY oauth2_provider_refreshtoken (id, token, access_token_id, application_id, user_id) FROM stdin;
\.


--
-- Name: oauth2_provider_refreshtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('oauth2_provider_refreshtoken_id_seq', 1, false);


--
-- Data for Name: registration_registrationprofile; Type: TABLE DATA; Schema: public; Owner: root
--

COPY registration_registrationprofile (id, activation_key, user_id) FROM stdin;
\.


--
-- Name: registration_registrationprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('registration_registrationprofile_id_seq', 1, false);


--
-- Data for Name: social_auth_association; Type: TABLE DATA; Schema: public; Owner: root
--

COPY social_auth_association (id, server_url, handle, secret, issued, lifetime, assoc_type) FROM stdin;
\.


--
-- Name: social_auth_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('social_auth_association_id_seq', 1, false);


--
-- Data for Name: social_auth_code; Type: TABLE DATA; Schema: public; Owner: root
--

COPY social_auth_code (id, email, code, verified) FROM stdin;
\.


--
-- Name: social_auth_code_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('social_auth_code_id_seq', 1, false);


--
-- Data for Name: social_auth_nonce; Type: TABLE DATA; Schema: public; Owner: root
--

COPY social_auth_nonce (id, server_url, "timestamp", salt) FROM stdin;
\.


--
-- Name: social_auth_nonce_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('social_auth_nonce_id_seq', 1, false);


--
-- Data for Name: social_auth_usersocialauth; Type: TABLE DATA; Schema: public; Owner: root
--

COPY social_auth_usersocialauth (id, provider, uid, extra_data, user_id) FROM stdin;
\.


--
-- Name: social_auth_usersocialauth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('social_auth_usersocialauth_id_seq', 1, false);


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: root
--

COPY taggit_tag (id, name, slug) FROM stdin;
1	blue	blue
2	sad	sad
3	smile	smile
4	smiling	smiling
5	happy	happy
\.


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('taggit_tag_id_seq', 5, true);


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: root
--

COPY taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
1	3	22	1
2	3	22	2
3	1	22	3
4	1	22	4
5	1	22	5
\.


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('taggit_taggeditem_id_seq', 5, true);


--
-- Data for Name: users_profile; Type: TABLE DATA; Schema: public; Owner: root
--

COPY users_profile (id, time_created, is_seller, is_advertiser, is_consumer, is_cleared, is_blocked, address1, address2, city, state_id, user_id, is_facebook_strategy_used, is_googleplus_strategy_used, is_linkedin_strategy_used, is_plain_srategy_used, is_twitter_strategy_used, activation_key, bio, ipaddress, is_online, time_cleared) FROM stdin;
\.


--
-- Data for Name: users_profile_followers; Type: TABLE DATA; Schema: public; Owner: root
--

COPY users_profile_followers (id, profile_id, user_id) FROM stdin;
\.


--
-- Name: users_profile_followers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('users_profile_followers_id_seq', 1, false);


--
-- Data for Name: users_profile_following; Type: TABLE DATA; Schema: public; Owner: root
--

COPY users_profile_following (id, profile_id, user_id) FROM stdin;
\.


--
-- Name: users_profile_following_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('users_profile_following_id_seq', 1, false);


--
-- Name: users_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('users_profile_id_seq', 1, false);


--
-- Data for Name: users_state; Type: TABLE DATA; Schema: public; Owner: root
--

COPY users_state (id, state, code) FROM stdin;
1	Alabama	AL
2	Alaska	AK
3	Arizona	AZ
4	Arkansas	AR
5	California	CA
6	Colorado	CO
7	Connecticut	CT
8	Delaware	DE
9	District of Columbia	DC
10	Florida	FL
11	Georgia	GA
12	Hawaii	HI
13	Idaho	ID
14	Illinois	IL
15	Indiana	IN
16	Iowa	IA
17	Kansas	KS
18	Kentucky	KY
19	Louisiana	LA
20	Maine	ME
21	Montana	MT
22	Nebraska	NE
23	Nevada	NV
24	New Hampshire	NH
25	New Jersey	NJ
26	New Mexico	NM
27	New York	NY
28	North Carolina	NC
29	North Dakota	ND
30	Ohio	OH
31	Oklahoma	OK
32	Oregon	OR
33	Maryland	MD
34	Massachusetts	MA
35	Michigan	MI
36	Minnesota	MN
37	Mississippi	MS
38	Missouri	MO
39	Pennsylvania	PA
40	Rhode Island	RI
41	South Carolina	SC
42	South Dakota	SD
43	Tennessee	TN
44	Texas	TX
45	Utah	UT
46	Vermont	VT
47	Virginia	VA
48	Washington	WA
49	West Virginia	WV
50	Wisconsin	WI
51	Wyoming	WY
\.


--
-- Name: users_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('users_state_id_seq', 51, true);


--
-- Data for Name: users_usersession; Type: TABLE DATA; Schema: public; Owner: root
--

COPY users_usersession (id, username, remote_ip, session_key, time_in, time_out, time_online_hours, time_online_minutes, time_online_seconds, time_online_total, time_online_delta, date_visited, user_id) FROM stdin;
\.


--
-- Name: users_usersession_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('users_usersession_id_seq', 1, false);


--
-- Data for Name: utils_logger; Type: TABLE DATA; Schema: public; Owner: root
--

COPY utils_logger (id, log, "time") FROM stdin;
83	WE GOT FUCKED'ascii' codec can't decode byte 0xc3 in position 3043: ordinal not in range(128)	2016-11-27 23:58:27.417857-05
84	CHECKING URL <svg height="600" version="1.1" width="500" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="overflow: hidden; position: relative; left: -0.0195313px; background: rgb(0, 0, 0);" shape-rendering="crispEdges"><path fill="none" stroke="#ffffff" d="M87,276l0,0L88,276L91,276L95,276L98,276L103,276L107,276L113,276L118,276L127,276L131,276L135,276L138,276L141,276L145,276L147,276L150,276L152,276L155,276L158,276L162,276L166,276L168,276L172,276L176,276L178,276L181,276L185,276L186,277L190,277L192,277L195,277L197,277L200,277L201,277L203,277L205,277L207,277L210,277L211,277L212,278L215,278L216,278L217,278L218,278L218,280L221,280L222,280L225,280L227,280L228,280L232,280L233,280L237,280L240,280L242,280L245,280L247,280L250,280L251,280L253,280L255,281L256,281L257,281L258,281L260,282L261,282L262,282L263,282L265,282L266,282L268,282L270,282L271,282L272,282L273,282L275,282L276,282L277,282L278,282L280,282L281,282L282,282" stroke-linecap="round" stroke-width="5" id="5" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M116,198l0,0L115,198L113,198L113,197L115,197L116,197L118,196L122,196L126,196L128,196L131,196L135,195L137,195L141,195L143,195L146,195L150,195L152,195L153,195L156,195L158,195L161,195L163,195L167,195L170,195L172,195L175,195L177,195L181,195L185,195L188,195L192,195L195,195L198,195L202,195L206,195L210,195L213,195L216,195L218,195L220,195L222,195L223,195L225,195L227,195L228,195L230,195L231,195L232,195L233,195L235,195L236,195L237,195L238,195L240,195L241,195L242,195L243,195L245,195L246,195L247,195L248,195L250,195L251,195L252,195L253,195L255,195L256,195L258,195L261,195L262,195L263,195L265,195L266,195L267,195L268,195L270,195L271,195L272,195L273,195L275,195L276,195L277,195L278,195L280,195L281,195L282,195L283,195L285,195L286,195L287,195L288,195L290,195" stroke-linecap="round" stroke-width="5" id="4" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M255,92l0,0L255,91L253,91L253,92L252,95L252,97L251,101L251,106L250,112L248,120L247,127L247,133L246,141L245,150L243,158L242,168L242,176L242,183L241,192L241,197L241,203L240,210L240,216L240,221L240,225L238,228L238,233L238,236L238,241L238,245L238,247L238,251L238,255L238,257L238,260L238,263L238,266L238,268L238,271L238,276L238,277L238,278L238,281L238,282L238,283L238,285L238,286L238,287L238,288L238,290L238,291L238,292L238,293L238,295L238,296L238,297L238,298L238,300L238,301L238,302L238,303L238,305L238,306L238,308L238,312L237,316L237,318L237,322L236,326L236,330L236,333L235,337L235,341L235,345L235,346L235,348L235,351L235,352L233,355L233,356L233,357L233,358L233,360L233,361L233,362L233,363L232,363L232,365L232,366L232,367L232,368L232,370L231,370L231,368L231,370L230,371L230,372L230,375L230,377L230,380L230,382L230,383L230,385L230,387L230,388L230,390L228,391L228,392L228,393L228,396L228,397L228,398L228,400L228,401L228,402L228,403L228,405L227,405L227,406L226,408L226,411L225,412L225,416L225,420L223,422L222,426L222,428L222,431L221,433L221,435L221,436L221,437L221,438L221,440" stroke-linecap="round" stroke-width="5" id="3" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M192,93l0,0L192,96L192,98L192,100L192,103L192,107L192,111L191,116L191,123L191,128L191,133L191,138L190,143L190,147L190,152L190,156L188,158L188,162L188,163L188,166L188,168L188,171L188,175L188,176L188,177L188,178L188,180L188,181L188,183L188,187L188,190L188,193L188,197L188,200L187,202L187,203L187,206L187,207L187,210L187,211L187,212L187,213L187,215L187,216L187,217L186,218L186,220L186,223L186,226L186,228L186,232L186,236L186,240L186,241L186,243L185,245L185,247L185,248L185,250L185,251L185,252L185,253L185,255L185,256L185,257L185,258L183,258L183,260L183,261L183,265L182,267L182,273L181,281L180,291L180,298L178,307L177,315L176,321L176,327L175,332L175,336L175,340L173,343L173,346L173,348L173,352L173,356L173,361L173,365L173,368L173,372L172,376L172,380L172,383L172,387L172,390L172,393L172,396L172,400L172,402L172,405L172,407L172,410L172,412L172,413L172,415L172,416L172,417L172,418L171,420L171,422L171,423L171,425L171,426L171,427L170,427" stroke-linecap="round" stroke-width="5" id="2" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M192,102l0,0L192,101L192,100L192,98L192,97L192,96L192,95L192,93" stroke-linecap="round" stroke-width="5" id="1" style="margin-left:-200px"/><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.2.0</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"/></svg>	2016-11-28 00:00:19.532044-05
85	I TESTED ITdata:image/svg+xml;base64,PHN2ZyBoZWlnaHQ9IjYwMCIgdmVyc2lvbj0iMS4xIiB3aWR0aD0iNTAwIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiBzdHlsZT0ib3ZlcmZsb3c6IGhpZGRlbjsgcG9zaXRpb246IHJlbGF0aXZlOyBsZWZ0OiAtMC4wMTk1MzEzcHg7IGJhY2tncm91bmQ6IHJnYigwLCAwLCAwKTsiIHNoYXBlLXJlbmRlcmluZz0iY3Jpc3BFZGdlcyI+PHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlPSIjZmZmZmZmIiBkP	2016-11-28 00:00:19.673871-05
86	WE GOT FUCKED[Errno 2] No such file or directory: './media/out.svg'	2016-11-28 00:10:29.625778-05
87	WE GOT FUCKED[Errno 2] No such file or directory: 'out.svg'	2016-11-28 00:12:38.928581-05
88	CHECKING URL <svg height="600" version="1.1" width="500" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="overflow: hidden; position: relative; left: -0.0195313px; background: rgb(0, 0, 0);" shape-rendering="crispEdges"><path fill="none" stroke="#ffffff" d="M507,157l0,0L507,156L507,155L508,153L510,153L511,153L513,153L515,153L516,153L520,153L522,153L525,153L526,153L527,153L528,153L528,155L530,155L531,155L532,155L533,156L535,156L536,156L536,157L537,158L538,160L540,161L541,162L541,163L541,165L542,165L542,166L542,167L543,168L545,170L545,171L545,172L546,172L546,173L546,175L546,176L546,177L547,177L547,178L547,180L547,181L547,182L547,183L547,185L547,186L547,187L546,187L546,188L545,188L543,188L543,190L542,190L541,191L541,192L540,192L538,192L537,192L536,193L535,193L535,195L533,195L532,195L531,196L530,197L528,197L527,197L526,197L527,197L528,197L530,197L531,197L532,197L533,197L535,197L537,197L538,197L538,198L540,198L541,200L543,201L546,201L548,203L551,205L555,207L557,208L560,211L562,212L567,216L570,217L572,220L575,222L577,225L578,226L581,227L582,228L583,230L583,231L585,232L585,233L586,233L586,235L586,236L586,237L586,238L585,238L585,240L583,240L581,241L580,242L576,243L570,245L561,246L555,247L547,248L541,250L535,250L528,251L525,251L521,251L517,251L516,251L512,251L510,251L508,251L507,251L505,251L503,251L502,251L501,251L500,251" stroke-linecap="round" stroke-width="5" id="5" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M438,193l0,0L438,195L438,196L438,197L437,198L437,201L436,203L436,207L436,210L436,215L436,217L435,221L435,225L435,226L435,230L435,232L435,235L435,236L435,237L435,238L433,240L433,241L433,242L433,245L433,246L432,248L432,250L431,253L431,256L430,258L430,261L430,263L430,266L430,268L430,270L430,272L430,273L430,275L430,276L430,277L430,278L430,280L430,281L430,282L430,283L430,285L430,286L430,287L430,288L430,291L430,292L430,293L430,295L430,296L431,297L431,298L431,300L431,301L432,301L432,302L432,303L432,306L432,307L432,308L432,311L432,312L432,313L432,315L432,316L432,317L433,318L433,320L435,320L435,321L436,321L436,322L437,322L437,323L438,323L440,323L441,323L442,323L443,323L445,323L446,323L447,323L448,323L450,323L450,322L451,322L452,321L453,321L455,320L456,320L457,320L458,318L460,318L461,318L462,318L463,317L465,317L466,316L468,316L471,315L471,313L472,313L473,313L473,312L475,312L476,311L477,310L477,308L477,307L478,307L478,306L478,305L480,303L480,302L481,302" stroke-linecap="round" stroke-width="5" id="4" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M402,237l0,0L401,237L400,237L400,236L398,236L397,236L396,236L395,236L393,235L393,233L392,232L392,231L392,230L391,228L391,227L391,226L390,225L390,223L388,223L388,222L388,221L388,220L388,218L388,217L388,216L388,215L388,213L388,212L388,211L388,210L388,208L388,207L388,206L388,205L390,203L390,202L391,201L391,200L392,200L392,198L393,197L393,196L395,196L396,196L396,195L397,195L397,193L398,193L400,193L401,193L402,193L403,193L405,193L406,193L407,193L408,193L410,193L411,193L413,193L415,193L416,193L417,193L418,193L420,193L421,193L422,193L423,193L425,193L426,193L427,193L428,193L430,193L432,193L433,193L435,193L436,193L437,193L438,193L440,193L441,193L443,193L447,193L451,193L452,193L456,193L458,193L461,193L463,193L467,193L468,193L472,193L475,193L476,193L477,193L478,193L480,193L481,193L482,193L483,193L485,193L486,193L487,193L488,193L490,193L491,193L492,193L493,193" stroke-linecap="round" stroke-width="5" id="3" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M411,187l0,0L411,188L411,190L411,192L411,196L411,201L411,206L411,213L411,218L411,225L411,228L411,232L412,236L412,238L412,241L412,245L412,247L412,251L412,253L412,257L412,260L412,262L412,266L412,268L412,270L412,272L412,275L412,277L412,281L412,282L412,285L412,287L412,288L412,290L413,291L413,293L413,296L413,298L413,300L413,301L413,303L413,305L413,306L413,307L413,308L413,310L413,311L413,312L413,313L413,315L413,316L413,317L413,318L413,320L413,321L413,322L413,323L412,326L411,328L411,331L410,333L408,337L408,338L408,340L407,340L407,341L407,342L406,342L405,342L403,342L402,342L401,342L400,342L398,342L397,342L396,342L395,341L393,341L393,340L392,340L392,338L391,338L391,337L390,337L390,336L388,336" stroke-linecap="round" stroke-width="5" id="2" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M297,202l0,0L296,202L295,202L293,202L293,203L292,203L292,205L292,206L292,207L291,208L291,210L290,212L290,213L288,217L287,220L287,222L287,223L287,225L286,226L286,227L286,228L286,230L286,231L286,232L286,233L286,235L286,237L286,238L286,240L286,241L286,242L286,243L286,245L286,246L286,247L286,248L286,250L287,250L287,251L287,252L288,252L291,253L292,253L293,255L295,255L296,255L297,255L298,256L301,256L303,257L306,257L310,257L313,257L318,257L323,257L331,258L336,258L341,260L346,260L350,260L353,260L355,260L356,260L357,260L358,260L360,260L361,260L361,258L362,257L362,256L362,255L363,252L365,250L366,247L366,246L366,245L366,242L367,242L367,241L367,238L367,237L367,236L367,235L367,233L367,232L367,231L367,228L367,227L367,226L367,223L367,221L367,218L367,217L367,216L367,215L367,212L366,211L366,210L366,208L366,207L366,206L366,205L366,203L366,202L365,202L365,203L365,205L365,206L363,207L363,211L363,216L362,225L362,231L362,238L362,245L362,252L362,258L362,266L362,272L362,278L362,287L362,296L362,305L362,311L362,318L362,325L363,330L363,333L363,337L363,340L363,343L363,345L363,346L363,347L363,348L363,350" stroke-linecap="round" stroke-width="5" id="1" style="margin-left:-200px"/><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.2.0</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"/></svg>	2016-11-28 00:16:09.095656-05
89	I TESTED ITdata:image/svg+xml;base64,PHN2ZyBoZWlnaHQ9IjYwMCIgdmVyc2lvbj0iMS4xIiB3aWR0aD0iNTAwIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiBzdHlsZT0ib3ZlcmZsb3c6IGhpZGRlbjsgcG9zaXRpb246IHJlbGF0aXZlOyBsZWZ0OiAtMC4wMTk1MzEzcHg7IGJhY2tncm91bmQ6IHJnYigwLCAwLCAwKTsiIHNoYXBlLXJlbmRlcmluZz0iY3Jpc3BFZGdlcyI+PHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlPSIjZmZmZmZmIiBkP	2016-11-28 00:16:09.233544-05
90	CHECKING URL <svg height="600" version="1.1" width="500" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="overflow: hidden; position: relative; left: -0.0195313px; background: rgb(0, 0, 255);" shape-rendering="crispEdges"><path fill="none" stroke="#ffff00" d="M700,276l0,0L700,276L698,276L697,276L696,276L696,277L695,277L695,278L693,278L693,280L692,281L691,281L691,282L690,283L690,285L688,286L688,287L687,287L687,288L687,290L686,290L686,291L686,292L685,292L685,293L685,295L685,296L683,296L683,297L683,298L683,300L683,301L682,301L682,302L682,303L682,305L682,306L682,307L682,308L682,310L682,311L682,312L682,313L682,315L683,315L683,316L683,317L683,318L685,318L685,320L685,321L686,321L686,322L686,323L687,323L687,325L688,325L688,326L688,327L690,327L690,328L690,330L691,330L691,331L691,332L692,332L692,333L693,333L693,335L695,336L696,336L696,337L697,338L697,340L698,340L700,340L701,340L702,340L703,340L705,340L706,340L707,340L708,340L708,338L710,338L711,338L711,337L712,337L713,337L713,336L715,336" stroke-linecap="round" stroke-width="5" id="9" style="margin-left:-200px"/><path fill="none" stroke="#ffff00" d="M653,301l0,0L653,300L653,298L653,297L653,296L653,295L655,295L655,293L656,292L656,291L657,291L657,290L658,290L660,290L660,288L661,288L661,287L662,287L663,287L665,287L665,286L666,286L667,286L668,286L670,286L671,286L672,286L673,286L675,286L676,286L676,287L677,287L677,288L678,288L678,290L678,291L680,292L681,293L681,295L681,296L682,297L682,298L682,300L682,301L683,302L683,303L683,305L685,306L685,307L685,308L685,310L685,311L685,312L685,313L685,315L685,316L685,317L685,320L685,321L685,322L685,323L685,325L685,326L685,327L685,328L685,330L685,331L685,332L685,333L685,335L685,336L683,337L683,338L683,340L682,340L682,341L681,341L681,342L680,342L678,342L678,343L677,343L676,343L675,343L673,343L672,343L671,343L671,342L670,342L670,341L668,341L668,340L667,338L667,337L666,337L666,336L665,336L665,335L663,333L663,332L662,332" stroke-linecap="round" stroke-width="5" id="8" style="margin-left:-200px"/><path fill="none" stroke="#ffff00" d="M641,300l0,0L640,300L638,300L637,300L636,300L635,300L633,300L632,300L632,298L631,298L630,298L628,298L627,298L626,298L625,298L623,298L622,298L621,298L620,298L618,298L617,298L616,298L616,300L615,300L615,301L613,301L613,302L612,303L611,303L611,305L610,306L610,307L610,308L608,308L608,310L607,310L607,311L606,311L606,312L605,313L605,315L603,317L602,317L602,318L602,320L602,321L601,321L601,322L601,323L600,325L600,326L600,327L600,328L600,330L600,331L600,332L600,333L600,335L600,336L600,337L600,338L601,338L601,340L601,341L602,341L603,342L605,343L606,343L606,345L607,345L608,345L610,345L611,345L612,345L613,345L615,345L615,343L616,343L617,343L617,342L618,342L618,341L620,341L620,340L621,338L621,337L622,337L622,336L622,335L622,333L623,332L623,331L625,330L625,328L625,327L625,325L626,322L626,320L627,316L627,312L628,307L628,302L628,297L630,291L630,286L630,281L630,276L630,272L631,268L631,265L631,262L632,260L632,257L632,256L632,253L632,252L632,251L632,250L632,248L632,247L632,245L632,243L632,242L632,241L632,240L632,238L632,237L632,236L632,235L632,233L632,231L632,230L632,228L632,227L632,226L632,225L632,223L632,221L632,218L632,216L633,213L633,212L633,210L633,208L633,207L633,206L633,205L633,206L633,207L633,210L633,211L633,215L633,217L633,220L633,223L632,226L632,230L632,233L632,236L631,237L631,240L631,242L631,246L631,247L630,250L630,251L630,253L630,257L630,260L630,262L630,266L630,268L630,273L630,277L630,280L630,283L630,287L630,290L630,293L630,297L630,300L630,302L630,306L630,308L630,311L630,312L630,313L630,316L630,317L630,320L630,321L630,323L630,326L630,328L630,332L630,333L630,335L630,336L630,337L630,338L630,340L630,341L630,342L630,343L630,345L630,346L631,346L632,347L633,347L635,347L636,347L638,347L638,346L641,346L642,346L642,345L643,345L645,345L646,345L647,345" stroke-linecap="round" stroke-width="5" id="7" style="margin-left:-200px"/><path fill="none" stroke="#ffff00" d="M280,132l0,0L280,131L278,131L277,131L276,131L275,131L273,131L272,131L271,131L270,131L268,131L267,131L267,132L266,133L265,133L265,135L265,136L263,136L263,137L263,138L263,140L263,141L262,141L262,142L262,143L262,145L262,146L262,147L262,148L262,150L262,151L262,152L262,153L262,155L262,156L262,157L262,158L262,160L262,161L262,162L262,163L262,165L262,166L262,168L262,170L262,171L262,172L262,173L262,175L262,176L262,177L263,177L263,178L263,180L263,181L263,182L263,183L263,185L265,186L265,187L265,188L265,190L266,190L266,191L266,192L266,193L266,195L266,196L266,197L267,197L267,198L267,201L267,203L267,205L267,208L267,212L267,215L267,217L267,220L267,222L267,223L267,225L267,226L267,227L267,228L267,230L267,231L267,232L267,233L267,235L267,236L267,237L267,238L267,240L267,241L267,242L267,245L267,246L267,247L267,248L267,250L267,251L267,252L267,253L267,255L267,256L267,257L267,260L267,261L268,262L268,265L268,266L268,267L268,268L268,271L268,272L268,273L268,275L268,276L268,277L268,278L268,280L268,281L268,282L268,283L268,285L268,286L270,286L270,287L270,288L270,290L270,291L270,292L270,295L270,296L270,298L270,302L270,305L270,307L270,310L270,312L270,313L270,316L270,317L270,320L270,321L270,323L270,326L270,330L270,331L270,332L270,333L270,335L270,336L270,337L271,338L271,340L271,341L271,342L271,343L271,345L271,346L271,347L271,348L271,350L271,351L271,352L271,353L271,355L271,356L271,358L271,360L271,362L271,363L271,366L271,367L272,370L272,371L272,373L272,375L272,376L272,377L272,378L272,380L273,381L273,382L273,385L273,386L273,387L273,390L273,392L273,393L273,395L273,396L273,397L273,398L273,400L273,401L273,402L273,403L273,405L273,406L273,407L273,408L273,410L273,411L273,413L272,416L272,418L272,421L272,425L271,427L271,431L271,435L271,437L271,440L271,443L270,446L270,447L270,448L270,451L270,452L270,453L270,455L270,456L268,456L268,457L268,458L267,458L267,460L267,461L267,462L267,463L266,463L266,465L265,465L265,466L263,466L263,467L262,467L261,467L261,468L260,468L258,470L257,470L256,470L255,470L253,470L252,470L251,470L250,470L250,468L248,468L248,467L247,467L247,466L246,466L246,465L246,463L245,463L245,462L245,461L245,460" stroke-linecap="round" stroke-width="5" id="6" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M297,202l0,0L296,202L295,202L293,202L293,203L292,203L292,205L292,206L292,207L291,208L291,210L290,212L290,213L288,217L287,220L287,222L287,223L287,225L286,226L286,227L286,228L286,230L286,231L286,232L286,233L286,235L286,237L286,238L286,240L286,241L286,242L286,243L286,245L286,246L286,247L286,248L286,250L287,250L287,251L287,252L288,252L291,253L292,253L293,255L295,255L296,255L297,255L298,256L301,256L303,257L306,257L310,257L313,257L318,257L323,257L331,258L336,258L341,260L346,260L350,260L353,260L355,260L356,260L357,260L358,260L360,260L361,260L361,258L362,257L362,256L362,255L363,252L365,250L366,247L366,246L366,245L366,242L367,242L367,241L367,238L367,237L367,236L367,235L367,233L367,232L367,231L367,228L367,227L367,226L367,223L367,221L367,218L367,217L367,216L367,215L367,212L366,211L366,210L366,208L366,207L366,206L366,205L366,203L366,202L365,202L365,203L365,205L365,206L363,207L363,211L363,216L362,225L362,231L362,238L362,245L362,252L362,258L362,266L362,272L362,278L362,287L362,296L362,305L362,311L362,318L362,325L363,330L363,333L363,337L363,340L363,343L363,345L363,346L363,347L363,348L363,350" stroke-linecap="round" stroke-width="5" id="1" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M411,187l0,0L411,188L411,190L411,192L411,196L411,201L411,206L411,213L411,218L411,225L411,228L411,232L412,236L412,238L412,241L412,245L412,247L412,251L412,253L412,257L412,260L412,262L412,266L412,268L412,270L412,272L412,275L412,277L412,281L412,282L412,285L412,287L412,288L412,290L413,291L413,293L413,296L413,298L413,300L413,301L413,303L413,305L413,306L413,307L413,308L413,310L413,311L413,312L413,313L413,315L413,316L413,317L413,318L413,320L413,321L413,322L413,323L412,326L411,328L411,331L410,333L408,337L408,338L408,340L407,340L407,341L407,342L406,342L405,342L403,342L402,342L401,342L400,342L398,342L397,342L396,342L395,341L393,341L393,340L392,340L392,338L391,338L391,337L390,337L390,336L388,336" stroke-linecap="round" stroke-width="5" id="2" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M402,237l0,0L401,237L400,237L400,236L398,236L397,236L396,236L395,236L393,235L393,233L392,232L392,231L392,230L391,228L391,227L391,226L390,225L390,223L388,223L388,222L388,221L388,220L388,218L388,217L388,216L388,215L388,213L388,212L388,211L388,210L388,208L388,207L388,206L388,205L390,203L390,202L391,201L391,200L392,200L392,198L393,197L393,196L395,196L396,196L396,195L397,195L397,193L398,193L400,193L401,193L402,193L403,193L405,193L406,193L407,193L408,193L410,193L411,193L413,193L415,193L416,193L417,193L418,193L420,193L421,193L422,193L423,193L425,193L426,193L427,193L428,193L430,193L432,193L433,193L435,193L436,193L437,193L438,193L440,193L441,193L443,193L447,193L451,193L452,193L456,193L458,193L461,193L463,193L467,193L468,193L472,193L475,193L476,193L477,193L478,193L480,193L481,193L482,193L483,193L485,193L486,193L487,193L488,193L490,193L491,193L492,193L493,193" stroke-linecap="round" stroke-width="5" id="3" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M438,193l0,0L438,195L438,196L438,197L437,198L437,201L436,203L436,207L436,210L436,215L436,217L435,221L435,225L435,226L435,230L435,232L435,235L435,236L435,237L435,238L433,240L433,241L433,242L433,245L433,246L432,248L432,250L431,253L431,256L430,258L430,261L430,263L430,266L430,268L430,270L430,272L430,273L430,275L430,276L430,277L430,278L430,280L430,281L430,282L430,283L430,285L430,286L430,287L430,288L430,291L430,292L430,293L430,295L430,296L431,297L431,298L431,300L431,301L432,301L432,302L432,303L432,306L432,307L432,308L432,311L432,312L432,313L432,315L432,316L432,317L433,318L433,320L435,320L435,321L436,321L436,322L437,322L437,323L438,323L440,323L441,323L442,323L443,323L445,323L446,323L447,323L448,323L450,323L450,322L451,322L452,321L453,321L455,320L456,320L457,320L458,318L460,318L461,318L462,318L463,317L465,317L466,316L468,316L471,315L471,313L472,313L473,313L473,312L475,312L476,311L477,310L477,308L477,307L478,307L478,306L478,305L480,303L480,302L481,302" stroke-linecap="round" stroke-width="5" id="4" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M507,157l0,0L507,156L507,155L508,153L510,153L511,153L513,153L515,153L516,153L520,153L522,153L525,153L526,153L527,153L528,153L528,155L530,155L531,155L532,155L533,156L535,156L536,156L536,157L537,158L538,160L540,161L541,162L541,163L541,165L542,165L542,166L542,167L543,168L545,170L545,171L545,172L546,172L546,173L546,175L546,176L546,177L547,177L547,178L547,180L547,181L547,182L547,183L547,185L547,186L547,187L546,187L546,188L545,188L543,188L543,190L542,190L541,191L541,192L540,192L538,192L537,192L536,193L535,193L535,195L533,195L532,195L531,196L530,197L528,197L527,197L526,197L527,197L528,197L530,197L531,197L532,197L533,197L535,197L537,197L538,197L538,198L540,198L541,200L543,201L546,201L548,203L551,205L555,207L557,208L560,211L562,212L567,216L570,217L572,220L575,222L577,225L578,226L581,227L582,228L583,230L583,231L585,232L585,233L586,233L586,235L586,236L586,237L586,238L585,238L585,240L583,240L581,241L580,242L576,243L570,245L561,246L555,247L547,248L541,250L535,250L528,251L525,251L521,251L517,251L516,251L512,251L510,251L508,251L507,251L505,251L503,251L502,251L501,251L500,251" stroke-linecap="round" stroke-width="5" id="5" style="margin-left:-200px"/><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.2.0</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"/></svg>	2016-11-28 00:18:15.651634-05
91	I TESTED ITdata:image/svg+xml;base64,PHN2ZyBoZWlnaHQ9IjYwMCIgdmVyc2lvbj0iMS4xIiB3aWR0aD0iNTAwIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiBzdHlsZT0ib3ZlcmZsb3c6IGhpZGRlbjsgcG9zaXRpb246IHJlbGF0aXZlOyBsZWZ0OiAtMC4wMTk1MzEzcHg7IGJhY2tncm91bmQ6IHJnYigwLCAwLCAyNTUpOyIgc2hhcGUtcmVuZGVyaW5nPSJjcmlzcEVkZ2VzIj48cGF0aCBmaWxsPSJub25lIiBzdHJva2U9IiNmZmZmMDAiI	2016-11-28 00:18:15.741143-05
92	CHECKING URL <svg height="600" version="1.1" width="500" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="overflow: hidden; position: relative; left: -0.0195313px; background: rgb(0, 0, 255);" shape-rendering="crispEdges"><path fill="none" stroke="#ffff00" d="M427,221l0,0L427,221L427,220L426,220L426,218L425,218L425,217L423,217L422,217L421,217L420,217L418,217L417,217L416,217L415,217L413,217L412,217L411,217L410,217L410,218L408,218L408,220L408,221L407,221L407,222L407,223L406,225L406,226L406,227L406,228L406,230L406,231L406,232L406,233L406,235L406,236L406,237L406,238L405,238L405,241L405,243L405,246L405,247L405,248L405,250L405,251L405,252L405,253L405,255L405,256L405,257L405,260L405,261L406,263L406,265L407,265L407,266L408,266L410,266L411,267L413,267L415,267L420,268L422,268L427,268L436,268L441,268L446,270L452,270L456,270L458,270L460,270L461,270L462,270L463,270" stroke-linecap="round" stroke-width="5" id="7" style="margin-left:-200px"/><path fill="none" stroke="#ffff00" d="M356,238l0,0L356,238L356,237L356,236L356,235L356,233L356,232L356,231L357,231L357,230L358,228L360,228L360,227L361,227L361,226L362,226L362,225L362,223L363,222L365,222L365,221L366,221L366,220L367,220L368,220L370,220L370,218L371,218L372,217L373,217L375,217L376,217L377,217L378,217L380,217L381,216L382,216L383,216L385,216L386,216L387,216L388,216L390,216L391,216L391,217L392,217L392,218L393,218L393,220L395,220L396,221L396,222L396,223L396,225L397,226L397,228L397,230L397,231L400,233L400,235L400,236L401,238L402,240L402,241L402,242L402,243L402,245L402,246L402,247L402,248L402,250L402,251L402,252L402,253L402,255L402,256L402,257L402,258L402,260L402,261L402,262L401,263L401,265L400,267L400,270L398,270L397,271L397,272L396,272L395,272L393,272L392,272L390,272L388,272L387,272L385,272L383,272L382,271L381,271L380,270L378,270L377,270L376,270L376,268L375,268L375,267" stroke-linecap="round" stroke-width="5" id="6" style="margin-left:-200px"/><path fill="none" stroke="#ffff00" d="M325,222l0,0L325,221L326,220L326,218L325,218L323,218L322,218L321,218L320,218L318,218L317,218L316,218L315,218L313,218L312,218L312,220L311,220L311,221L310,221L308,221L307,222L306,222L306,223L305,223L305,225L305,226L303,226L302,226L302,227L302,228L301,228L301,230L301,231L300,231L300,232L300,233L298,235L298,236L297,237L297,238L297,241L297,242L297,245L296,247L296,248L296,250L296,251L296,252L296,253L296,255L296,256L296,257L296,258L296,260L296,261L296,262L296,263L296,265L296,266L296,267L296,268L297,268L298,268L300,268L301,268L302,268L303,267L305,266L306,266L307,265L307,263L308,263L310,262L311,261L312,260L313,258L313,257L315,256L316,255L316,253L316,252L318,250L318,248L320,247L320,246L320,245L321,245L322,242L322,240L323,238L325,236L325,232L326,231L326,227L327,223L327,221L327,213L327,210L328,206L328,202L328,200L330,193L330,190L331,186L331,182L331,180L332,173L332,168L332,167L333,165L333,163L333,161L333,160L333,158L335,158L335,157L335,156L335,155L335,153L335,155L335,156L335,157L333,161L333,165L331,178L331,186L331,193L330,200L330,205L330,211L328,220L327,223L327,226L327,230L326,233L326,236L326,237L326,238L326,240L326,241L326,242L326,243L326,245L326,246L326,247L326,248L326,250L326,251L326,252L326,253L327,253L327,256L327,257L328,258L328,260L328,261L328,265L330,271L331,273L331,276L332,281L332,282L332,283L332,285L333,285L333,286L335,286L336,286L337,286L337,285L337,283L338,283L338,282L338,281L340,281" stroke-linecap="round" stroke-width="5" id="5" style="margin-left:-200px"/><path fill="none" stroke="#ffff00" d="M240,158l0,0L240,158L240,157L238,157L238,156L238,155L238,153L240,153L241,153L242,153L243,153L245,152L247,152L248,152L251,152L253,152L255,152L257,151L258,151L260,151L261,151L262,151L263,151L265,151L266,151L267,151L268,151L268,152L268,153L270,153L270,155L270,156L270,157L270,158L270,160L270,161L270,162L270,163L270,165L270,166L270,167L270,170L268,171L268,172L267,172L267,173L267,175L266,175L266,176L266,177L265,178L263,178L263,180L262,181L262,182L261,182L261,183L260,183L258,185L258,186L258,187L257,187L257,188L256,188L256,190L255,190L253,191L253,192L252,192L252,193L252,195L251,195L251,196L250,196L250,197L248,197L248,198L247,200L246,201L246,202L245,203L243,203L243,205L242,205L241,205L241,206L241,205L242,203L243,203L243,202L245,202L246,202L246,201L247,201L248,201L250,201L251,201L252,201L253,201L255,201L256,201L257,201L258,201L258,202L260,202L261,202L261,203L262,203L263,205L265,205L266,205L267,205L268,205L270,205L271,205" stroke-linecap="round" stroke-width="5" id="4" style="margin-left:-200px"/><path fill="none" stroke="#ffff00" d="M185,205l0,0L185,205L183,205L183,206L182,206L182,207L182,208L182,210L182,211L181,211L181,212L181,213L181,215L180,216L180,217L180,218L180,220L180,221L180,222L180,223L180,226L180,227L180,230L178,231L178,232L178,233L178,235L178,236L178,237L178,238L178,241L177,243L177,245L177,247L177,250L177,252L177,256L177,258L177,260L177,262L177,263L177,266L177,267L177,268L177,270L177,271L177,272L177,273L177,275L177,277L177,278L177,280L177,281L177,282L177,283L177,285L177,286L177,287L177,288L178,290L180,291L181,291L182,292L183,293L183,295L185,295L185,296L186,296L186,297L187,297L188,298L190,298L191,298L192,298L193,298L195,298L196,298L196,297L197,297L197,296" stroke-linecap="round" stroke-width="5" id="3" style="margin-left:-200px"/><path fill="none" stroke="#ffff00" d="M153,233l0,0L153,232L152,232L152,231L151,231L151,230L151,228L150,228L150,227L150,226L148,226L148,225L148,223L148,222L148,220L148,218L148,217L148,216L148,215L148,213L148,212L148,211L148,210L148,208L150,208L150,207L151,207L152,206L153,206L153,205L155,205L156,205L157,203L158,203L160,203L161,203L162,203L163,203L165,203L166,203L167,203L168,203L171,203L172,203L173,203L176,203L177,203L178,203L180,203L181,203L182,203L183,203L185,203L186,203L187,203L188,203L190,203L191,203L192,203L193,203L195,203L196,203L197,203L198,203L200,203L201,203L201,202L202,201L203,201L205,200L207,200L207,198L208,197L210,197L211,196L212,196L212,195L213,195" stroke-linecap="round" stroke-width="5" id="2" style="margin-left:-200px"/><path fill="none" stroke="#ffff00" d="M163,216l0,0L163,218L163,220L163,222L163,226L163,230L163,232L163,233L163,236L163,238L163,240L163,241L163,242L163,243L163,245L163,246L163,247L163,248L163,250L163,251L163,252L163,253L163,255L163,256L163,257L163,260L163,261L163,262L163,265L163,266L163,267L163,268L163,270L163,271L163,272L163,273L162,275L162,276L162,277L162,280L162,281L162,282L161,282L161,283L161,285L160,286L160,287L160,288L158,288L158,290L157,290L157,291L156,291L155,291L153,291L153,292L152,292L151,292L150,292L148,292L148,291L148,290L147,288" stroke-linecap="round" stroke-width="5" id="1" style="margin-left:-200px"/><path fill="none" stroke="#ffff00" d="M116,132l0,0L115,132L113,132L112,132L111,132L110,132L108,132L107,132L107,133L107,135L106,135L106,136L106,137L105,137L105,138L105,140L105,141L105,142L105,143L105,145L105,146L105,147L105,148L105,150L103,151L103,152L103,153L103,155L103,156L103,157L103,158L103,160L103,161L103,162L103,163L103,165L103,166L103,167L103,168L103,170L103,171L103,172L103,173L103,175L103,176L105,177L105,178L105,180L105,181L105,182L106,182L106,183L106,186L106,187L106,188L106,190L107,191L107,192L107,193L107,195L107,196L107,197L107,198L108,198L110,200L111,200L112,200L112,201L112,202L113,203L113,205L113,206L113,207L113,208L113,210L113,211L113,212L113,213L115,216L115,217L116,220L116,222L116,225L116,228L117,230L117,232L117,235L117,236L117,237L117,238L117,240L117,241L117,242L117,243L117,245L117,246L117,247L117,248L117,250L118,252L118,255L118,258L120,261L120,263L120,267L120,268L120,271L120,273L120,277L120,280L120,281L121,283L121,285L121,286L121,287L121,288L121,291L122,292L122,295L122,297L122,298L122,301L122,302L122,303L123,303L123,305L123,306L123,308L123,310L123,311L123,312L125,312L125,313L125,315L125,316L125,317L125,318L123,321L123,325L123,327L122,328L122,331L122,332L122,333L122,335L122,336L122,337L122,338L122,340L122,341L122,342L121,343L121,345L121,346L121,348L121,350L121,351L121,352L121,353L120,355L120,356L120,357L120,358L120,360L120,361L118,362L118,363L118,365L118,367L117,367L117,368L117,370L117,371L116,372L116,373L115,375L113,375L113,376L112,376L111,376L110,376L108,376L107,376L106,376L105,375L103,375L102,375L102,373L101,373L101,372L100,372L98,371L98,370L97,370L97,368L96,368L96,367" stroke-linecap="round" stroke-width="5" id="0" style="margin-left:-200px"/><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.2.0</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"/></svg>	2016-11-28 00:19:18.291032-05
93	I TESTED ITdata:image/svg+xml;base64,PHN2ZyBoZWlnaHQ9IjYwMCIgdmVyc2lvbj0iMS4xIiB3aWR0aD0iNTAwIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiBzdHlsZT0ib3ZlcmZsb3c6IGhpZGRlbjsgcG9zaXRpb246IHJlbGF0aXZlOyBsZWZ0OiAtMC4wMTk1MzEzcHg7IGJhY2tncm91bmQ6IHJnYigwLCAwLCAyNTUpOyIgc2hhcGUtcmVuZGVyaW5nPSJjcmlzcEVkZ2VzIj48cGF0aCBmaWxsPSJub25lIiBzdHJva2U9IiNmZmZmMDAiI	2016-11-28 00:19:18.423675-05
94	CHECKING URL <svg height="600" version="1.1" width="500" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="overflow: hidden; position: relative; left: -0.0195313px; background: rgb(0, 0, 0);" shape-rendering="crispEdges"><path fill="none" stroke="#ffffff" d="M682,178l0,0L682,178L683,178L685,178L686,178L686,180L687,181L688,182L691,185L692,188L695,191L696,193L698,196L700,201L702,203L703,206L705,208L706,211L707,213L708,215L710,217L710,220L711,220L711,221L711,222L711,223L712,223L712,226L712,227L713,228L713,230L713,231L713,232L713,233L713,235L715,236L715,237L716,238L716,240L716,241L716,242L716,243L717,245L717,246L717,248L718,251L718,253L718,257L718,261L718,263L718,266L718,270L718,273L718,276L718,278L718,281L720,283L720,285L720,287L720,288L720,290L720,291L720,292L720,293L720,295L718,295L717,296L717,297L716,301L715,303L713,306L712,308L711,311L711,315L710,318L710,322L710,326L708,330L708,332L707,337L707,340L706,342L706,345L706,347L706,348L706,350L705,351L705,352L703,352L703,353L702,353L702,355L701,356L700,356" stroke-linecap="round" stroke-width="5" id="13" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M678,208l0,0L677,208L676,208L676,210L675,212L673,213L672,216L670,220L668,222L667,226L665,230L663,233L663,237L661,240L660,242L660,243L657,247L657,248L656,251L653,253L653,256L651,258L650,261L650,263L648,266L647,268L645,272L643,275L642,278L640,282L638,285L638,287L637,291L636,292L635,295L633,296L633,297L633,298L633,300L632,300L632,301L632,302L631,302L631,303L631,305L631,306L631,307L630,308L630,310L628,312L628,313L628,315L627,315L627,316L627,317L626,317L626,318L626,320L625,320L625,321" stroke-linecap="round" stroke-width="5" id="12" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M597,233l0,0L597,233L597,232L598,232L601,232L603,232L607,232L610,232L613,233L617,235L620,236L626,237L630,238L633,241L636,242L640,243L643,246L647,247L650,248L652,252L657,255L661,258L666,261L668,266L673,268L676,272L678,275L680,277L682,280L683,283L686,285L687,287L687,288L688,290L688,292L688,293L690,293L691,295L691,296L692,297L692,298L693,300L693,301L695,302L695,303L696,305L697,306L697,307L697,308L697,310L697,311L697,312L697,313L697,315L697,316L697,317L697,318L697,320L697,321L697,322" stroke-linecap="round" stroke-width="5" id="11" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M577,195l0,0L577,195L576,195L575,195L575,196L573,198L572,200L571,203L570,206L568,210L567,213L566,216L566,220L565,223L563,226L562,230L562,232L561,235L561,237L560,240L560,241L560,242L560,243L560,245L560,246L558,246L558,247L558,250L558,251L558,252L558,253L558,255L558,256L558,257L558,258L558,261L557,263L557,265L557,267L557,268L557,270L557,271L557,272L557,273L557,275L557,276L557,277L557,280L557,281L557,283L557,285L557,286L557,287L557,288L557,290L557,291L557,292L557,293L557,295L557,296L557,297L557,298L557,300L557,301L558,301L558,302L560,302L560,303L561,303L561,305L561,306L561,307L561,310L561,312L561,315L561,317L561,320L561,322L561,326L561,328L562,331L563,333L565,336L565,338L566,343L567,345L568,347L568,348L570,350L570,351L571,351L571,352L572,353L573,353L575,353L575,355L576,355L578,356L580,357L581,357L582,357L582,358" stroke-linecap="round" stroke-width="5" id="10" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M497,277l0,0L497,276L497,275L497,273L498,273L498,272L500,271L501,271L502,270L503,270L505,270L506,268L507,268L510,267L511,267L513,267L515,267L517,266L518,266L520,266L522,266L523,266L526,266L527,266L528,266L530,266L531,266" stroke-linecap="round" stroke-width="5" id="9" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M503,221l0,0L505,221L506,221L507,221L508,221L510,221L512,221L513,221L515,221L516,221L517,221L518,221L520,221L521,221L523,221L525,221L526,221L527,221L528,221L530,221L531,221L532,221L533,221L535,221L536,221L537,221L538,221L540,221L541,221L542,221L543,221L545,221" stroke-linecap="round" stroke-width="5" id="8" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M511,218l0,0L511,218L510,218L510,220L510,221L510,222L510,225L510,226L510,228L508,231L508,233L508,235L508,236L508,241L508,243L507,246L507,248L507,251L507,253L507,255L507,256L507,258L507,261L507,263L507,265L507,266L507,267L507,268L507,270L507,271L507,272L507,273L507,275L507,276L507,277L507,278L507,280L507,281L507,282L507,283L507,285L507,286L507,287L507,288L507,290L507,291L507,292L507,293L507,295L507,297L507,298L507,300L507,301L507,302L507,303L507,305L507,306L507,307L508,307L508,308L508,310L508,311L510,311L510,312L510,313L510,315L510,316L510,317L510,318L510,320L510,321L510,322" stroke-linecap="round" stroke-width="5" id="7" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M407,275l0,0L407,275L407,273L407,272L408,272L411,272L415,272L417,272L421,272L425,272L428,272L431,272L435,272L440,272L443,272L447,272L452,272L455,272L460,272L462,272L466,272L468,273L472,273L473,273L475,273L476,275L477,275L478,275L480,275L481,275L482,275L483,275L483,273" stroke-linecap="round" stroke-width="5" id="6" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M401,255l0,0L401,253L401,252L402,252L402,251L403,250L405,250L406,250L408,248L415,246L420,245L427,245L431,243L433,243L436,243L438,243L442,243L445,243L447,243L451,243L453,243L457,243L458,243L460,243L461,243L462,242L463,242L465,242L466,242L467,242L468,242L470,242L471,242L472,242L473,242L475,242L476,242L477,242L478,242L480,242" stroke-linecap="round" stroke-width="5" id="5" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M346,175l0,0L346,175L346,173L347,173L348,173L350,173L351,173L352,173L353,173L355,173L356,173L357,173L358,173L360,173L361,173L362,173L363,173L365,173L366,173L366,175L366,176L367,176L367,177L367,178L367,180L368,182L368,183L368,185L368,186L368,188L367,191L367,193L366,195L366,196L366,197L366,198L366,200L365,200L365,201L365,202L363,202L363,203L362,205L361,205L361,206L360,206L360,207L358,207L357,208L356,210L355,210L353,210L352,210L351,210L351,208L352,208L352,207L353,207L355,207L356,207L357,207L358,207L360,207L361,207L362,207L363,207L365,207L366,207L367,207L367,208L367,210L368,210L370,210L370,211L370,212L370,213L371,215L371,216L371,217L371,218L371,220L371,221L372,222L372,223L372,225L372,226L372,227L372,228L371,230L371,231L370,231L370,232L368,232L368,233L367,235L366,235L365,236L363,236L362,237L361,237L360,237L358,237L356,237L353,237L351,237L350,237L348,237L347,237L346,237L345,237L343,237L342,237L341,237L340,237L338,237L337,237L336,237" stroke-linecap="round" stroke-width="5" id="4" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M253,208l0,0L253,208L252,208L251,208L251,210L251,211L251,212L251,215L250,218L250,221L250,226L248,230L248,235L248,238L247,242L247,245L247,247L247,250L247,251L247,252L247,255L247,256L247,257L247,258L247,260L247,262L247,263L247,266L247,270L247,272L247,275L247,277L247,280L247,282L247,283L247,285L247,286L247,287L247,288L247,290L247,291L247,292L247,295L247,296L247,297L247,298L247,300L247,301L247,302L247,303L247,305L247,306L247,307L247,308L247,310L247,311L247,312L248,312L248,313L248,315L250,316L250,317L251,317L252,317L253,317L255,317L255,318L256,320L257,320L257,321L258,321L260,322L261,322L261,323L262,323L262,325L263,325L265,325L266,325L267,325L268,325L270,325L271,325L272,325L273,325L275,325L276,325L277,325L277,323L278,323L280,323L281,322L282,321L283,318L285,317L286,315L287,315L287,313L288,312L290,312L290,311L291,310L292,308L293,307L293,306L295,305L296,303L296,302L297,301L298,301L298,300" stroke-linecap="round" stroke-width="5" id="3" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M181,247l0,0L180,247L180,246L180,245L178,245L178,243L177,243L176,242L175,242L175,241L173,240L172,238L171,238L171,237L170,237L170,236L168,235L168,233L167,233L166,233L166,232L166,231L165,231L165,230L165,228L165,227L165,226L165,225L165,223L165,222L165,221L165,220L165,218L165,217L165,216L165,215L165,213L165,212L166,211L166,207L167,205L168,202L170,201L171,198L172,198L172,197L172,196L172,195L173,195L173,193L175,193L175,192L176,192L177,191L178,191L178,190L180,190L181,190L182,190L183,190L186,190L190,190L191,190L193,190L195,190L197,190L198,188L200,188L201,188L202,188L205,188L206,188L207,188L210,188L211,188L212,188L213,188L217,188L220,188L222,188L225,188L228,188L232,188L235,188L240,188L243,188L248,188L253,188L258,188L265,190L268,190L271,190L275,190L277,190L278,190L281,190L282,190L283,190L285,190L286,190L287,191L288,191L291,191L295,191L297,191L302,191L307,191L312,191L317,191L322,191L326,190L330,190L331,190L332,190L333,190L335,188L336,188" stroke-linecap="round" stroke-width="5" id="2" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M200,210l0,0L200,211L200,212L200,213L200,215L200,216L200,218L200,220L200,222L200,225L200,228L200,230L200,233L200,237L200,241L200,243L200,247L201,251L201,253L201,257L202,261L202,263L202,266L202,270L202,271L202,273L202,276L202,277L202,280L202,281L202,282L202,283L202,286L202,288L202,291L202,293L202,295L202,298L202,302L202,305L202,308L202,311L202,313L202,316L202,318L202,321L202,323L202,326L202,327L202,328L202,330L202,332L202,333L202,335L202,336L202,337L202,338L201,340L201,341L198,341L198,342L197,342L195,343L192,345L190,345L188,345L185,345L182,345L180,345L178,345L177,345L176,345L175,345L173,345L172,345L171,345L170,345L168,345L166,345L165,345L163,343L162,343L161,342L161,341L160,341" stroke-linecap="round" stroke-width="5" id="1" style="margin-left:-200px"/><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.2.0</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"/></svg>	2016-11-28 00:23:31.014567-05
95	I TESTED ITdata:image/svg+xml;base64,PHN2ZyBoZWlnaHQ9IjYwMCIgdmVyc2lvbj0iMS4xIiB3aWR0aD0iNTAwIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiBzdHlsZT0ib3ZlcmZsb3c6IGhpZGRlbjsgcG9zaXRpb246IHJlbGF0aXZlOyBsZWZ0OiAtMC4wMTk1MzEzcHg7IGJhY2tncm91bmQ6IHJnYigwLCAwLCAwKTsiIHNoYXBlLXJlbmRlcmluZz0iY3Jpc3BFZGdlcyI+PHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlPSIjZmZmZmZmIiBkP	2016-11-28 00:23:31.114708-05
96	CHECKING URL <svg height="600" version="1.1" width="500" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="overflow: hidden; position: relative; left: -0.0195313px; background: rgb(0, 0, 0);" shape-rendering="crispEdges"><path fill="none" stroke="#ffffff" d="M565,170l0,0L565,170L563,170L562,170L562,171L561,171L560,171L560,172L558,172L557,172L557,173L556,173L555,173L555,175L553,175L553,176L552,176L551,177L551,178L550,178L550,180L550,181L550,182L548,182L548,185L547,186L547,187L547,188L547,190L547,191L547,193L546,196L546,198L546,200L545,202L545,205L545,207L545,208L545,210L545,211L545,212L545,213L545,215L545,216L545,217L545,218L546,218L546,220L546,221L547,222L547,223L548,223L548,225L550,225L550,226L551,226L552,226L553,226L555,226L556,226L558,225L561,225L563,222L566,221L568,220L571,218L572,218L573,217L573,216L575,216" stroke-linecap="round" stroke-width="5" id="9" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M517,191l0,0L518,191L518,190L520,188L521,187L521,186L522,186L522,185L523,185L525,183L526,181L527,181L527,180L528,180L530,180L530,178L531,178L531,177L532,177L533,177L535,177L535,178L536,178L536,180L536,181L536,182L537,183L537,185L538,187L540,190L540,191L541,193L542,195L542,197L543,197L543,198L545,201L546,201L546,202L546,203L546,205L547,206L547,207L547,208L547,210L547,211L547,212L547,213L547,215L547,216L547,217L546,217L546,218L546,220L545,220L543,221L542,221L541,221L541,222L540,222L540,223L538,223L538,225L537,225L537,226L536,226L535,226L533,226L532,227L531,227L530,227L528,227L527,227L525,227L523,227L522,227L521,227L520,227L520,226L520,225L520,223" stroke-linecap="round" stroke-width="5" id="8" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M503,187l0,0L501,187L500,187L498,187L497,187L496,187L495,187L493,187L492,187L491,187L491,188L490,188L490,190L488,190L488,191L487,192L486,192L486,193L485,193L485,195L483,196L483,197L483,198L482,198L482,201L481,202L481,205L481,207L481,208L481,210L481,211L481,212L481,213L480,213L480,215L480,216L480,217L478,218L478,220L478,221L478,222L478,223L478,225L478,227L478,228L478,231L478,232L478,233L478,235L478,236L480,236L481,236L481,237L482,237L483,237L485,237L486,237L486,236L487,235L488,233L490,232L491,230L492,227L495,225L495,222L497,217L498,215L500,211L501,210L503,206L503,202L506,200L506,197L507,195L508,192L510,190L510,188L510,187L511,186L511,185L512,183L512,182L512,181L512,180L512,178L513,177L513,176L513,175L513,173L513,171L513,170L513,167L513,166L513,165L513,163L513,162L513,161L513,160L513,161L513,162L513,165L512,166L511,168L510,172L510,175L510,177L508,180L507,182L507,185L507,187L506,191L506,193L506,196L505,197L505,198L505,200L505,201L505,202L505,203L505,205L505,206L505,207L505,208L505,210L505,211L503,213L503,215L503,216L503,218L503,221L503,222L503,223L503,226L503,227L503,228L503,230L503,231L503,232L503,233" stroke-linecap="round" stroke-width="5" id="7" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M503,187l0,0L503,187" stroke-linecap="round" stroke-width="5" id="6" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M420,166l0,0L420,166L420,165L420,163L420,165L420,166L420,167L420,168L420,170L420,171L420,172L420,173L420,175L420,176L420,177L420,178L420,180L420,181L420,182L420,183L420,185L420,186L420,187L420,188L420,190L420,191L420,192L420,193L420,195L420,196L420,197L420,198L420,200L420,201L420,202L420,203L420,205L420,206L420,207L420,208L421,208L421,210L421,211L421,212L422,212L422,213L422,215L422,216L422,217L423,217L423,218L423,220L425,221L425,222L425,223L426,223L426,225L427,225L428,225L428,226L428,227L430,227L431,227L432,227L433,227L435,227L436,227L437,227L438,227L440,227L440,226L441,226L442,226L443,225L443,223L445,223L445,222L446,221L446,220L447,220" stroke-linecap="round" stroke-width="5" id="5" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M382,172l0,0L382,171L382,170L382,168L382,167L382,166L382,165L381,165L381,163L381,162L381,161L381,160L381,158L381,157L381,156L382,156L382,155L383,155L385,155L386,153L387,153L388,153L390,153L391,153L392,153L393,153L395,153L396,153L397,153L398,153L400,153L401,153L402,153L403,153L405,153L406,153L407,153L408,153L410,153L411,153L412,153L413,153L415,153L416,153L417,153L418,153L420,153L421,153L422,153L423,153L425,153L426,153L427,153L428,153L430,153L431,153L432,153L433,153L435,153L436,153L437,153L438,153L440,153L441,153L442,153L443,153L445,153L446,153L447,153L448,153L448,152" stroke-linecap="round" stroke-width="5" id="4" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M405,171l0,0L405,172L406,172L406,173L406,175L406,176L406,177L406,178L407,178L407,180L407,181L408,182L408,183L408,185L408,186L408,187L408,188L408,190L408,191L410,191L410,192L410,193L410,195L410,196L410,197L410,198L410,200L411,200L411,201L411,202L411,203L411,205L411,206L411,207L411,208L411,210L411,211L411,212L411,213L411,215L411,216L411,217L411,218L411,220L411,221L411,222L411,223L411,225L411,226L411,227L411,228L411,230L411,231L411,232L411,233L410,235L410,236L408,237L407,237L406,237L405,237L403,237L402,237L401,237L400,237L398,237L397,237L396,237L395,237L393,237L392,237L392,236L392,235L391,235L391,233" stroke-linecap="round" stroke-width="5" id="3" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M340,175l0,0L340,173L341,173L342,173L343,173L343,172L345,172L346,172L347,172L348,172L350,172L351,172L352,172L353,172L355,172L356,172L357,172L358,172L358,173L360,173L361,173L361,175L361,176L362,177L362,178L362,180L362,181L362,182L362,183L362,186L362,187L362,188L362,190L362,191L362,192L362,195L362,196L362,197L362,198L362,200L362,201L362,202L362,203L362,205L362,206L362,207L362,208L362,210L362,211L362,212L362,213L362,215L362,216L362,217L362,218L362,220L362,221L362,222L361,222L361,223L360,223L360,225L360,227L358,228L358,230L358,231L358,232L357,233L357,235L356,235L356,236L356,237L356,238L356,240L355,240L355,241L355,242L355,243L353,243L353,245L352,246L352,247L351,247L351,248L350,250L348,251L348,252L347,252L347,251L347,250L347,248L347,247L347,246L347,245L347,243L347,242L347,241L348,241L348,240L350,240L350,238L351,238L352,238L353,238L355,238L356,238L357,238L358,238L358,240L360,240L361,240L362,240L362,241L363,241L365,241L365,242L366,242L367,242L368,243L368,245L370,245L371,246L372,246L372,247L373,247L373,248L375,248L375,250L376,250L376,251L377,251L378,251L378,252L380,252L381,252L382,252L383,252L383,251L383,250L383,248L383,247L383,246" stroke-linecap="round" stroke-width="5" id="2" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M326,133l0,0L325,133L323,133L323,132L322,132L321,132L321,131L320,131L318,131L317,131L316,131L315,131L313,132L312,132L311,133L310,133L310,135L308,135L307,136L307,137L306,137L306,138L305,140L305,141L303,141L303,142L303,143L302,143L302,145L302,146L302,147L301,147L301,148L301,150L301,151L301,152L301,153L300,153L300,155L300,156L300,157L300,158L300,160L300,161L300,162L300,163L300,165L300,167L300,168L300,170L300,171L300,172L300,175L300,176L301,180L301,182L301,185L301,186L301,187L301,188L302,188L302,191L302,192L302,193L302,195L302,196L302,197L302,198L302,200L303,201L303,202L303,203L303,205L303,206L305,208L305,210L305,211L305,212L305,213L305,215L306,217L306,218L306,220L306,223L306,227L306,231L307,233L307,237L307,241L307,243L308,246L308,247L308,248L308,251L310,251L310,252L310,253L310,255L310,256L310,257L311,258L311,260L311,261L312,263L312,265L312,267L312,270L313,271L313,273L315,277L315,280L316,282L316,283L316,285L316,286L316,287L316,288L316,291L317,291L317,292L317,293L317,295L317,296L317,297L317,298L317,300L318,300L318,301L318,302L320,303L320,305L320,306L320,307L320,308L320,310L320,311L320,313L320,315L320,316L320,317L320,318L320,320L320,321L320,322L320,323L320,325L321,327L321,331L321,333L321,336L321,337L321,338L321,341L322,341L322,342L322,343L322,345L322,346L322,347L322,348L323,350L323,351L323,352L323,353L323,355L323,356L323,357L323,358L323,360L323,361L323,362L323,363L323,365L323,366L323,367L323,368L323,370L323,371L323,372L323,373L323,375L322,375L322,376L321,378L321,380L320,380L320,381L318,381L317,382L317,383L316,383L316,385L315,385L315,386L313,386L312,386L311,387L310,387L310,388L308,388L307,388L306,388L305,388L303,388L302,388L302,387L301,387L300,387L300,386L298,386L297,385L297,383L296,382L296,381L295,380L295,378L293,377L292,376L292,375L291,373" stroke-linecap="round" stroke-width="5" id="1" style="margin-left:-200px"/><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.2.0</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"/></svg>	2016-11-28 01:00:30.081631-05
97	I TESTED ITdata:image/svg+xml;base64,PHN2ZyBoZWlnaHQ9IjYwMCIgdmVyc2lvbj0iMS4xIiB3aWR0aD0iNTAwIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiBzdHlsZT0ib3ZlcmZsb3c6IGhpZGRlbjsgcG9zaXRpb246IHJlbGF0aXZlOyBsZWZ0OiAtMC4wMTk1MzEzcHg7IGJhY2tncm91bmQ6IHJnYigwLCAwLCAwKTsiIHNoYXBlLXJlbmRlcmluZz0iY3Jpc3BFZGdlcyI+PHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlPSIjZmZmZmZmIiBkP	2016-11-28 01:00:30.212912-05
98	WE GOT FUCKEDvalue too long for type character varying(12500)\n	2016-11-28 01:03:13.18034-05
99	CHECKING URL <svg height="600" version="1.1" width="800" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="overflow: hidden; position: relative; left: -0.234375px; background: rgb(0, 0, 0);" shape-rendering="crispEdges"><path fill="none" stroke="#ffffff" d="M688,205l0,0L688,205L690,203L690,202L691,201L692,201L693,200L695,200L696,200L697,200L698,200L700,200L701,200L702,200L703,200L705,200L706,200L707,200L708,200L708,201L710,201L710,202L710,203L711,205L711,206L711,207L711,208L711,210L711,211L711,212L711,215L711,217L711,218L711,220L711,221L711,222L711,223L711,225L711,227L711,228L711,230L711,231L710,233L708,235L708,237L707,240L707,241L706,242L706,243L706,245L705,246L705,247L705,248L703,248L703,250L702,250L701,250L701,251L700,251L700,252L700,253L701,253L702,253L703,253L705,253L706,253L707,253L708,253L710,253L711,253L712,253L713,253L715,253L716,253L717,253L718,253L720,253" stroke-linecap="round" stroke-width="5" id="14" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M632,252l0,0L632,252L632,253L632,255L632,256L632,257L632,258L632,260L632,262L632,265L632,267L632,270L632,272L632,275L633,278L633,281L633,283L635,286L635,288L635,291L636,293L636,296L636,297L636,300L636,301L636,302L636,303L636,305L636,306L637,306L637,307L637,308L637,310L638,310L638,311L640,311L640,312L641,312L641,313L641,315L641,316L642,316L642,317L642,318L642,320L642,321L643,322L643,323L645,325L645,326L645,327L645,328L645,330L646,330L646,331L646,332L647,332L647,333L647,335L648,335L650,335L651,335L652,335L653,335L655,335L656,335L657,333L658,333L660,333L661,332L662,332L663,331L665,330" stroke-linecap="round" stroke-width="5" id="13" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M583,267l0,0L582,266L581,266L581,265L580,263L578,263L578,262L577,261L576,261L576,258L575,257L575,256L575,255L573,255L573,253L573,252L573,251L573,250L573,248L573,247L573,246L573,245L573,243L573,242L573,241L576,241L577,241L580,241L581,241L585,241L587,240L591,240L595,240L597,240L600,238L603,238L605,238L607,238L608,238L610,238L611,238L612,238L613,238L615,238L616,238L617,238L618,238L620,238L621,238L622,238L623,238L625,238L626,238L626,237L627,237L628,237L630,237L631,237L632,237L633,237L635,237L636,237L637,237L638,237L640,237L641,237L642,237L643,237L645,237L647,237L648,237L650,237L651,237L652,237L653,237L655,237L657,237L658,237L660,237L661,237L663,237L665,237L666,237L667,237L668,237L670,237L671,237L672,237L675,237L676,237L677,237L680,237L681,237L682,237L683,237L685,237L686,237L687,237L688,237L690,237L691,237L692,237L693,237L695,237L696,237" stroke-linecap="round" stroke-width="5" id="12" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M602,221l0,0L602,222L602,223L602,226L602,228L602,232L602,235L602,237L603,241L605,243L605,246L605,250L606,252L606,255L607,257L608,260L608,262L608,265L608,267L610,270L611,272L612,275L612,278L613,281L613,285L615,287L615,290L615,293L616,297L617,300L617,305L617,308L618,312L618,316L618,320L618,322L620,325L620,326L621,328L621,330L621,331L621,332L621,333L621,335L621,336L621,337L621,338L621,340L621,341L621,342L621,343L621,345L620,345L618,345L617,345L616,345L613,345L612,345L611,345L607,345L605,345L601,345L597,345L593,343L588,342L586,342L582,341L578,340L576,340L573,338L571,338L570,338L568,338L567,337L566,337" stroke-linecap="round" stroke-width="5" id="11" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M483,221l0,0L483,221L485,221L485,220L486,220L487,220L488,220L488,218L490,218L491,218L492,218L493,218L495,218L496,218L496,220L497,220L498,221L500,221L500,222L500,223L501,223L502,225L503,225L503,226L505,227L505,228L505,230L506,230L506,231L507,231L507,232L508,233L508,235L510,235L510,237L511,238L512,241L512,242L512,243L513,245L513,246L513,247L515,247L515,248L515,250L515,251L516,252L516,253L516,255L516,256L516,257L516,258L516,260L516,261L516,262L516,263L516,265L516,266L516,267L515,267L515,268L515,270L515,271L513,271L513,272L513,273L512,273L512,275L511,275L511,276L510,277L508,278L508,280L507,280L506,281L505,282L503,282L503,283L502,283L501,283L500,283L498,283L497,285L496,285L496,286L495,286L495,285L495,283L496,283L496,282L497,282L498,282L500,282L501,282L502,282L503,282L505,282L506,282L507,282L508,282L510,282L511,282L512,282L513,282L515,282L516,283L517,283L517,285L518,285L518,286L520,286L520,287L521,288L522,288L522,290L522,291L523,292L523,293L523,295L525,296L526,297L526,298L526,300L527,301L527,302L527,303L527,305L527,306L528,306L528,307L528,308L528,310L528,311L528,312L528,313L528,315L528,316L528,317L528,318L528,320L528,321L528,322L528,323L527,323L527,325L527,326L526,326L526,327L525,327L525,328L523,328L523,330L523,331L522,331L521,331L520,332L518,332L516,332L515,333L513,333L512,333L511,333L510,335L508,335L506,335L505,335L503,335L501,335L500,335L498,335L497,335L495,335L493,335L492,335L491,335L490,335L488,335L487,335L486,335L485,335" stroke-linecap="round" stroke-width="5" id="10" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M373,277l0,0L373,277L373,276L375,276L376,276L377,276L378,276L380,276L381,276L382,276L383,276L385,276L386,276L387,276L388,276L391,276L392,276L395,276L396,276L398,276L401,276L402,277L405,277L407,277L408,278L410,278L411,280L412,280L413,280L415,280L416,280L417,280L418,281L420,281L421,281L422,281L423,281L425,281L426,281L427,281L428,281" stroke-linecap="round" stroke-width="5" id="9" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M366,257l0,0L366,257L367,257L368,257L370,257L371,257L373,257L377,257L381,257L383,256L386,256L390,256L392,255L395,255L397,253L401,253L403,253L406,253L407,253L408,253L410,253L411,253L412,253L413,253L415,253L416,253L417,253L418,253L420,253L421,253L423,253L426,253L428,253L430,253L431,253L432,253L433,253L435,253L436,253L437,253L438,253L440,253L441,253L442,253" stroke-linecap="round" stroke-width="5" id="8" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M291,233l0,0L291,233L292,233L293,233L295,233L296,233L297,233L298,233L300,233L301,233L302,233L302,235L303,235L305,235L305,236L306,236L306,237L307,238L308,240L310,242L311,243L313,245L313,248L316,250L316,252L318,256L320,257L320,260L321,261L322,265L322,266L322,267L322,268L323,268L323,270L323,271L325,272L325,273L325,275L325,276L325,277L325,278L326,280L326,282L326,283L327,285L327,286L327,287L327,288L327,290L328,291L328,292L328,293L328,295L328,296L328,297L328,298L328,300L330,301L330,302L330,303L330,305L330,306L330,307L330,308L330,310L330,311L328,312L328,313L328,315L327,316L327,317L327,318L326,318L326,320L326,321L325,321L325,322L323,323L322,325L321,326L320,326L318,327L317,328L316,328L316,330L315,330L313,330L312,330L311,330L310,331L308,331L307,331L306,331L305,331L303,331" stroke-linecap="round" stroke-width="5" id="7" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M305,287l0,0L303,287L303,286L303,285L302,285L301,283L300,283L300,282L298,282L298,281L297,281L297,280L296,280L295,280L295,278L293,278L292,278L291,278L290,278L288,278L287,278L286,278L285,278L283,278L282,278L281,278L280,278L278,278L277,278L277,280L276,280L275,281L273,281L272,282L270,285L268,286L267,286L267,287L266,287L265,287L265,288L265,290L263,290L262,291L262,292L261,292L261,293L260,295L260,296L260,297L258,298L258,300L258,301L260,302L261,302L262,302L262,303L263,303L265,305L267,305L270,306L272,307L275,308L276,308L277,310L278,310L280,310L281,310L281,311L282,311L283,311L285,311L286,311L287,311L287,312L288,312L290,312L291,312" stroke-linecap="round" stroke-width="5" id="6" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M210,278l0,0L210,278L210,277L211,277L212,277L213,277L215,277L216,277L216,276L217,276L218,276L220,276L221,276L222,276L225,276L226,276L227,276L228,275L230,275L231,275L232,275L233,275L235,275L236,275L237,275L238,275L240,275L241,275L242,275L243,275L245,276L246,277L247,278L247,280L248,281L248,282L250,283L251,285L251,286L251,287L251,288L251,290L251,291L251,292L252,292L252,293L252,295L252,296L252,297L252,298L252,300L252,301L252,302L252,303L252,305L252,306L252,307L251,307L251,308L250,308L250,310L248,310L248,311L247,311L247,312L246,312L245,312L245,313L243,313L242,313L242,315L241,315L240,315L238,315L236,315L235,316L233,316L232,316L231,316L230,316L228,316L227,316L226,316L225,316L225,315" stroke-linecap="round" stroke-width="5" id="5" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M226,225l0,0L226,225L225,225L223,225L222,225L221,225L220,225L218,225L218,226L216,227L215,230L212,232L208,236L206,240L202,245L198,250L196,255L192,260L188,263L187,268L186,271L185,272L183,275L183,276L182,277L182,278L182,280L181,281L181,282L180,282L180,283L180,285L180,286L178,287L178,291L177,293L177,297L177,301L176,303L176,307L176,310L175,311L175,312L175,315L175,316L175,317L175,318L175,320L175,321L175,322L175,323L175,325L175,326L175,327L176,327L176,328L177,328L178,330L180,330L182,331L183,332L185,332L186,332L186,333L187,333L187,335L188,335L190,336L191,336L192,336L193,336L195,336" stroke-linecap="round" stroke-width="5" id="4" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M142,267l0,0L143,267L145,267L146,267L147,267L148,267L151,267L152,267L153,267L155,267L156,267L157,267L158,267L160,267L161,267L162,267L163,267L165,267L166,267L167,267" stroke-linecap="round" stroke-width="5" id="3" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M138,222l0,0L140,222L141,222L142,222L143,221L145,221L147,221L148,221L151,221L153,221L156,221L158,221L161,221L165,221L166,221L167,221L168,221L170,221L171,221L172,221L175,221L176,221L178,221L180,221L181,221L182,221L183,221L185,221L186,221L187,221L188,221L190,221L191,221" stroke-linecap="round" stroke-width="5" id="2" style="margin-left:-200px"/><path fill="none" stroke="#ffffff" d="M138,212l0,0L137,212L136,213L136,215L136,216L136,220L136,223L136,226L136,231L136,237L136,243L136,252L135,260L135,266L133,273L132,283L131,297L130,307L128,317L128,323L128,331L128,336L127,340L127,343L127,346L127,347L127,348L127,350L127,351L127,352" stroke-linecap="round" stroke-width="5" id="1" style="margin-left:-200px"/><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.2.0</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"/></svg>	2016-11-28 01:07:10.135087-05
100	I TESTED ITdata:image/svg+xml;base64,PHN2ZyBoZWlnaHQ9IjYwMCIgdmVyc2lvbj0iMS4xIiB3aWR0aD0iODAwIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiBzdHlsZT0ib3ZlcmZsb3c6IGhpZGRlbjsgcG9zaXRpb246IHJlbGF0aXZlOyBsZWZ0OiAtMC4yMzQzNzVweDsgYmFja2dyb3VuZDogcmdiKDAsIDAsIDApOyIgc2hhcGUtcmVuZGVyaW5nPSJjcmlzcEVkZ2VzIj48cGF0aCBmaWxsPSJub25lIiBzdHJva2U9IiNmZmZmZmYiIGQ9I	2016-11-28 01:07:10.307623-05
101	WE GOT FUCKEDvalue too long for type character varying(12500)\n	2016-11-28 01:12:17.410526-05
\.


--
-- Name: utils_logger_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('utils_logger_id_seq', 101, true);


--
-- Name: admin_tools_dashboard_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY admin_tools_dashboard_preferences
    ADD CONSTRAINT admin_tools_dashboard_preferences_pkey PRIMARY KEY (id);


--
-- Name: admin_tools_dashboard_preferences_user_id_74da8e56_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY admin_tools_dashboard_preferences
    ADD CONSTRAINT admin_tools_dashboard_preferences_user_id_74da8e56_uniq UNIQUE (user_id, dashboard_id);


--
-- Name: admin_tools_menu_bookmark_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY admin_tools_menu_bookmark
    ADD CONSTRAINT admin_tools_menu_bookmark_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_rq_jobs_job_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_rq_jobs_job
    ADD CONSTRAINT django_rq_jobs_job_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: emotion_emotion_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY emotion_emotion
    ADD CONSTRAINT emotion_emotion_pkey PRIMARY KEY (id);


--
-- Name: oauth2_provider_accesstoken_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_pkey PRIMARY KEY (id);


--
-- Name: oauth2_provider_application_client_id_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_application_client_id_key UNIQUE (client_id);


--
-- Name: oauth2_provider_application_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_application_pkey PRIMARY KEY (id);


--
-- Name: oauth2_provider_grant_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_pkey PRIMARY KEY (id);


--
-- Name: oauth2_provider_refreshtoken_access_token_id_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_access_token_id_key UNIQUE (access_token_id);


--
-- Name: oauth2_provider_refreshtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_pkey PRIMARY KEY (id);


--
-- Name: registration_registrationprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY registration_registrationprofile
    ADD CONSTRAINT registration_registrationprofile_pkey PRIMARY KEY (id);


--
-- Name: registration_registrationprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY registration_registrationprofile
    ADD CONSTRAINT registration_registrationprofile_user_id_key UNIQUE (user_id);


--
-- Name: social_auth_association_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY social_auth_association
    ADD CONSTRAINT social_auth_association_pkey PRIMARY KEY (id);


--
-- Name: social_auth_association_server_url_078befa2_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY social_auth_association
    ADD CONSTRAINT social_auth_association_server_url_078befa2_uniq UNIQUE (server_url, handle);


--
-- Name: social_auth_code_email_801b2d02_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY social_auth_code
    ADD CONSTRAINT social_auth_code_email_801b2d02_uniq UNIQUE (email, code);


--
-- Name: social_auth_code_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY social_auth_code
    ADD CONSTRAINT social_auth_code_pkey PRIMARY KEY (id);


--
-- Name: social_auth_nonce_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY social_auth_nonce
    ADD CONSTRAINT social_auth_nonce_pkey PRIMARY KEY (id);


--
-- Name: social_auth_nonce_server_url_f6284463_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY social_auth_nonce
    ADD CONSTRAINT social_auth_nonce_server_url_f6284463_uniq UNIQUE (server_url, "timestamp", salt);


--
-- Name: social_auth_usersocialauth_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_pkey PRIMARY KEY (id);


--
-- Name: social_auth_usersocialauth_provider_e6b5e668_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_provider_e6b5e668_uniq UNIQUE (provider, uid);


--
-- Name: taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- Name: taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- Name: taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: users_profile_followers_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY users_profile_followers
    ADD CONSTRAINT users_profile_followers_pkey PRIMARY KEY (id);


--
-- Name: users_profile_followers_profile_id_bfc17be2_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY users_profile_followers
    ADD CONSTRAINT users_profile_followers_profile_id_bfc17be2_uniq UNIQUE (profile_id, user_id);


--
-- Name: users_profile_following_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY users_profile_following
    ADD CONSTRAINT users_profile_following_pkey PRIMARY KEY (id);


--
-- Name: users_profile_following_profile_id_d811f5b1_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY users_profile_following
    ADD CONSTRAINT users_profile_following_profile_id_d811f5b1_uniq UNIQUE (profile_id, user_id);


--
-- Name: users_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY users_profile
    ADD CONSTRAINT users_profile_pkey PRIMARY KEY (id);


--
-- Name: users_profile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY users_profile
    ADD CONSTRAINT users_profile_user_id_key UNIQUE (user_id);


--
-- Name: users_state_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY users_state
    ADD CONSTRAINT users_state_pkey PRIMARY KEY (id);


--
-- Name: users_usersession_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY users_usersession
    ADD CONSTRAINT users_usersession_pkey PRIMARY KEY (id);


--
-- Name: utils_logger_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY utils_logger
    ADD CONSTRAINT utils_logger_pkey PRIMARY KEY (id);


--
-- Name: admin_tools_dashboard_preferences_e8701ad4; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX admin_tools_dashboard_preferences_e8701ad4 ON admin_tools_dashboard_preferences USING btree (user_id);


--
-- Name: admin_tools_menu_bookmark_e8701ad4; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX admin_tools_menu_bookmark_e8701ad4 ON admin_tools_menu_bookmark USING btree (user_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX django_site_domain_a2e37b91_like ON django_site USING btree (domain varchar_pattern_ops);


--
-- Name: oauth2_provider_accesstoken_6bc0a4eb; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX oauth2_provider_accesstoken_6bc0a4eb ON oauth2_provider_accesstoken USING btree (application_id);


--
-- Name: oauth2_provider_accesstoken_94a08da1; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX oauth2_provider_accesstoken_94a08da1 ON oauth2_provider_accesstoken USING btree (token);


--
-- Name: oauth2_provider_accesstoken_e8701ad4; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX oauth2_provider_accesstoken_e8701ad4 ON oauth2_provider_accesstoken USING btree (user_id);


--
-- Name: oauth2_provider_accesstoken_token_8af090f8_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX oauth2_provider_accesstoken_token_8af090f8_like ON oauth2_provider_accesstoken USING btree (token varchar_pattern_ops);


--
-- Name: oauth2_provider_application_9d667c2b; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX oauth2_provider_application_9d667c2b ON oauth2_provider_application USING btree (client_secret);


--
-- Name: oauth2_provider_application_client_id_03f0cc84_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX oauth2_provider_application_client_id_03f0cc84_like ON oauth2_provider_application USING btree (client_id varchar_pattern_ops);


--
-- Name: oauth2_provider_application_client_secret_53133678_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX oauth2_provider_application_client_secret_53133678_like ON oauth2_provider_application USING btree (client_secret varchar_pattern_ops);


--
-- Name: oauth2_provider_application_e8701ad4; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX oauth2_provider_application_e8701ad4 ON oauth2_provider_application USING btree (user_id);


--
-- Name: oauth2_provider_grant_6bc0a4eb; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX oauth2_provider_grant_6bc0a4eb ON oauth2_provider_grant USING btree (application_id);


--
-- Name: oauth2_provider_grant_c1336794; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX oauth2_provider_grant_c1336794 ON oauth2_provider_grant USING btree (code);


--
-- Name: oauth2_provider_grant_code_49ab4ddf_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX oauth2_provider_grant_code_49ab4ddf_like ON oauth2_provider_grant USING btree (code varchar_pattern_ops);


--
-- Name: oauth2_provider_grant_e8701ad4; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX oauth2_provider_grant_e8701ad4 ON oauth2_provider_grant USING btree (user_id);


--
-- Name: oauth2_provider_refreshtoken_6bc0a4eb; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX oauth2_provider_refreshtoken_6bc0a4eb ON oauth2_provider_refreshtoken USING btree (application_id);


--
-- Name: oauth2_provider_refreshtoken_94a08da1; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX oauth2_provider_refreshtoken_94a08da1 ON oauth2_provider_refreshtoken USING btree (token);


--
-- Name: oauth2_provider_refreshtoken_e8701ad4; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX oauth2_provider_refreshtoken_e8701ad4 ON oauth2_provider_refreshtoken USING btree (user_id);


--
-- Name: oauth2_provider_refreshtoken_token_d090daa4_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX oauth2_provider_refreshtoken_token_d090daa4_like ON oauth2_provider_refreshtoken USING btree (token varchar_pattern_ops);


--
-- Name: social_auth_code_c1336794; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX social_auth_code_c1336794 ON social_auth_code USING btree (code);


--
-- Name: social_auth_code_code_a2393167_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX social_auth_code_code_a2393167_like ON social_auth_code USING btree (code varchar_pattern_ops);


--
-- Name: social_auth_usersocialauth_e8701ad4; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX social_auth_usersocialauth_e8701ad4 ON social_auth_usersocialauth USING btree (user_id);


--
-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX taggit_tag_name_58eb2ed9_like ON taggit_tag USING btree (name varchar_pattern_ops);


--
-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX taggit_tag_slug_6be58b2c_like ON taggit_tag USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_taggeditem_417f1b1c; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX taggit_taggeditem_417f1b1c ON taggit_taggeditem USING btree (content_type_id);


--
-- Name: taggit_taggeditem_76f094bc; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX taggit_taggeditem_76f094bc ON taggit_taggeditem USING btree (tag_id);


--
-- Name: taggit_taggeditem_af31437c; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX taggit_taggeditem_af31437c ON taggit_taggeditem USING btree (object_id);


--
-- Name: taggit_taggeditem_content_type_id_196cc965_idx; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX taggit_taggeditem_content_type_id_196cc965_idx ON taggit_taggeditem USING btree (content_type_id, object_id);


--
-- Name: users_profile_d5582625; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX users_profile_d5582625 ON users_profile USING btree (state_id);


--
-- Name: users_profile_followers_83a0eb3f; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX users_profile_followers_83a0eb3f ON users_profile_followers USING btree (profile_id);


--
-- Name: users_profile_followers_e8701ad4; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX users_profile_followers_e8701ad4 ON users_profile_followers USING btree (user_id);


--
-- Name: users_profile_following_83a0eb3f; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX users_profile_following_83a0eb3f ON users_profile_following USING btree (profile_id);


--
-- Name: users_profile_following_e8701ad4; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX users_profile_following_e8701ad4 ON users_profile_following USING btree (user_id);


--
-- Name: users_usersession_e8701ad4; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX users_usersession_e8701ad4 ON users_usersession USING btree (user_id);


--
-- Name: admin_tools_dashboard_preferen_user_id_8f768e6c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY admin_tools_dashboard_preferences
    ADD CONSTRAINT admin_tools_dashboard_preferen_user_id_8f768e6c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: admin_tools_menu_bookmark_user_id_0382e410_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY admin_tools_menu_bookmark
    ADD CONSTRAINT admin_tools_menu_bookmark_user_id_0382e410_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oaut_access_token_id_775e84e8_fk_oauth2_provider_accesstoken_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY oauth2_provider_refreshtoken
    ADD CONSTRAINT oaut_access_token_id_775e84e8_fk_oauth2_provider_accesstoken_id FOREIGN KEY (access_token_id) REFERENCES oauth2_provider_accesstoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_accesstoken_user_id_6e4c9a65_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_user_id_6e4c9a65_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_application_user_id_79829054_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_application_user_id_79829054_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_grant_user_id_e8f62af8_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_user_id_e8f62af8_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_refreshtoken_user_id_da837fce_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_user_id_da837fce_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth_application_id_2d1c311b_fk_oauth2_provider_application_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth_application_id_2d1c311b_fk_oauth2_provider_application_id FOREIGN KEY (application_id) REFERENCES oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth_application_id_81923564_fk_oauth2_provider_application_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY oauth2_provider_grant
    ADD CONSTRAINT oauth_application_id_81923564_fk_oauth2_provider_application_id FOREIGN KEY (application_id) REFERENCES oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth_application_id_b22886e1_fk_oauth2_provider_application_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY oauth2_provider_accesstoken
    ADD CONSTRAINT oauth_application_id_b22886e1_fk_oauth2_provider_application_id FOREIGN KEY (application_id) REFERENCES oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: registration_registrationprofi_user_id_5fcbf725_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY registration_registrationprofile
    ADD CONSTRAINT registration_registrationprofi_user_id_5fcbf725_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_tagge_content_type_id_9957a03c_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY taggit_taggeditem
    ADD CONSTRAINT taggit_tagge_content_type_id_9957a03c_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_profile_followers_profile_id_7802f006_fk_users_profile_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY users_profile_followers
    ADD CONSTRAINT users_profile_followers_profile_id_7802f006_fk_users_profile_id FOREIGN KEY (profile_id) REFERENCES users_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_profile_followers_user_id_9523e6ad_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY users_profile_followers
    ADD CONSTRAINT users_profile_followers_user_id_9523e6ad_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_profile_following_profile_id_e45bc273_fk_users_profile_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY users_profile_following
    ADD CONSTRAINT users_profile_following_profile_id_e45bc273_fk_users_profile_id FOREIGN KEY (profile_id) REFERENCES users_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_profile_following_user_id_d19300c2_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY users_profile_following
    ADD CONSTRAINT users_profile_following_user_id_d19300c2_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_profile_user_id_2112e78d_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY users_profile
    ADD CONSTRAINT users_profile_user_id_2112e78d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_usersession_user_id_2873d35e_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY users_usersession
    ADD CONSTRAINT users_usersession_user_id_2873d35e_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

