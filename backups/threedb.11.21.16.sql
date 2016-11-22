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
-- Name: utils_logger; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE utils_logger (
    id integer NOT NULL,
    log character varying(400),
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
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_permission_id_seq', 81, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$30000$nsWg3VxnlQtr$fZYRW4MJDWYb936Pe3DmnxcUv6TtcF5J51VOyStGNHI=	2016-11-21 16:29:49.060447-05	t	root			dmitryro@gmail.com	t	t	2016-11-12 05:34:17.672695-05
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
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('django_content_type_id_seq', 27, true);


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
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('django_migrations_id_seq', 51, true);


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
-- Data for Name: utils_logger; Type: TABLE DATA; Schema: public; Owner: root
--

COPY utils_logger (id, log, "time") FROM stdin;
\.


--
-- Name: utils_logger_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('utils_logger_id_seq', 1, false);


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
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

