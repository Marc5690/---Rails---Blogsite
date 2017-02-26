--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.6
-- Dumped by pg_dump version 9.5.6

-- Started on 2017-02-26 03:53:21

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12355)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2198 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 192 (class 1259 OID 16565)
-- Name: active_admin_comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE active_admin_comments (
    id integer NOT NULL,
    namespace character varying,
    body text,
    resource_id character varying NOT NULL,
    resource_type character varying NOT NULL,
    author_type character varying,
    author_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE active_admin_comments OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 16563)
-- Name: active_admin_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE active_admin_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE active_admin_comments_id_seq OWNER TO postgres;

--
-- TOC entry 2199 (class 0 OID 0)
-- Dependencies: 191
-- Name: active_admin_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE active_admin_comments_id_seq OWNED BY active_admin_comments.id;


--
-- TOC entry 190 (class 1259 OID 16549)
-- Name: admin_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE admin_users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE admin_users OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 16547)
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE admin_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE admin_users_id_seq OWNER TO postgres;

--
-- TOC entry 2200 (class 0 OID 0)
-- Dependencies: 189
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE admin_users_id_seq OWNED BY admin_users.id;


--
-- TOC entry 182 (class 1259 OID 16501)
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 16511)
-- Name: blogposts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE blogposts (
    id integer NOT NULL,
    text character varying,
    daterelease date,
    category integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE blogposts OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 16509)
-- Name: blogposts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE blogposts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blogposts_id_seq OWNER TO postgres;

--
-- TOC entry 2201 (class 0 OID 0)
-- Dependencies: 183
-- Name: blogposts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE blogposts_id_seq OWNED BY blogposts.id;


--
-- TOC entry 194 (class 1259 OID 16579)
-- Name: ckeditor_assets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ckeditor_assets (
    id integer NOT NULL,
    data_file_name character varying NOT NULL,
    data_content_type character varying,
    data_file_size integer,
    data_fingerprint character varying,
    type character varying(30),
    width integer,
    height integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ckeditor_assets OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 16577)
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ckeditor_assets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ckeditor_assets_id_seq OWNER TO postgres;

--
-- TOC entry 2202 (class 0 OID 0)
-- Dependencies: 193
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ckeditor_assets_id_seq OWNED BY ckeditor_assets.id;


--
-- TOC entry 186 (class 1259 OID 16522)
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE posts (
    id integer NOT NULL,
    text character varying,
    daterelease date,
    category integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    "Title" character varying
);


ALTER TABLE posts OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 16520)
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE posts_id_seq OWNER TO postgres;

--
-- TOC entry 2203 (class 0 OID 0)
-- Dependencies: 185
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE posts_id_seq OWNED BY posts.id;


--
-- TOC entry 181 (class 1259 OID 16493)
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 16533)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE users OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 16531)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO postgres;

--
-- TOC entry 2204 (class 0 OID 0)
-- Dependencies: 187
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- TOC entry 2037 (class 2604 OID 16568)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY active_admin_comments ALTER COLUMN id SET DEFAULT nextval('active_admin_comments_id_seq'::regclass);


--
-- TOC entry 2033 (class 2604 OID 16552)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY admin_users ALTER COLUMN id SET DEFAULT nextval('admin_users_id_seq'::regclass);


--
-- TOC entry 2027 (class 2604 OID 16514)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blogposts ALTER COLUMN id SET DEFAULT nextval('blogposts_id_seq'::regclass);


--
-- TOC entry 2038 (class 2604 OID 16582)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ckeditor_assets ALTER COLUMN id SET DEFAULT nextval('ckeditor_assets_id_seq'::regclass);


--
-- TOC entry 2028 (class 2604 OID 16525)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY posts ALTER COLUMN id SET DEFAULT nextval('posts_id_seq'::regclass);


--
-- TOC entry 2029 (class 2604 OID 16536)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- TOC entry 2188 (class 0 OID 16565)
-- Dependencies: 192
-- Data for Name: active_admin_comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY active_admin_comments (id, namespace, body, resource_id, resource_type, author_type, author_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 2205 (class 0 OID 0)
-- Dependencies: 191
-- Name: active_admin_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('active_admin_comments_id_seq', 1, false);


--
-- TOC entry 2186 (class 0 OID 16549)
-- Dependencies: 190
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY admin_users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
2	marclaffan@gmail.com	$2a$11$FuXvMd5GWjjxJVNKaekhk.Pwy.cKs4/mIXbaqhDxCCClxCje/zTQu	\N	\N	\N	0	\N	\N	\N	\N	2017-02-26 03:32:45.58872	2017-02-26 03:32:45.58872
1	admin@example.com	$2a$11$O7ptNVrPdfu4LSl9CZgV6.3NSqzVWHLdUD6Z.cpDK8q45JJankG/2	\N	\N	2017-02-26 03:32:27.578661	2	2017-02-26 03:47:06.623043	2017-02-26 03:32:27.607059	127.0.0.1	127.0.0.1	2017-02-26 03:32:09.188417	2017-02-26 03:47:06.624041
\.


--
-- TOC entry 2206 (class 0 OID 0)
-- Dependencies: 189
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('admin_users_id_seq', 2, true);


--
-- TOC entry 2178 (class 0 OID 16501)
-- Dependencies: 182
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	production	2017-02-26 03:25:26.930532	2017-02-26 03:25:26.930532
\.


--
-- TOC entry 2180 (class 0 OID 16511)
-- Dependencies: 184
-- Data for Name: blogposts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY blogposts (id, text, daterelease, category, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 2207 (class 0 OID 0)
-- Dependencies: 183
-- Name: blogposts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('blogposts_id_seq', 1, false);


--
-- TOC entry 2190 (class 0 OID 16579)
-- Dependencies: 194
-- Data for Name: ckeditor_assets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ckeditor_assets (id, data_file_name, data_content_type, data_file_size, data_fingerprint, type, width, height, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 2208 (class 0 OID 0)
-- Dependencies: 193
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ckeditor_assets_id_seq', 1, false);


--
-- TOC entry 2182 (class 0 OID 16522)
-- Dependencies: 186
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY posts (id, text, daterelease, category, created_at, updated_at, "Title") FROM stdin;
1	<p>Hello, and welcome to my blog!</p>\r\n\r\n<p>As mentioned in the introduction on the main website, this blogsite is used to detail my projects and served as an interesting Rails 5&nbsp;project.</p>\r\n\r\n<p>This website began with me following <a href="https://www.youtube.com/watch?v=i2x995hm8r8">this video tutorial on youtube</a>.</p>\r\n\r\n<p>And eventually branched off into it&#39;s own project. For anyone wishing to create their own single-page website and blog, I highly recommend it.</p>\r\n\r\n<p>This blogsite uses active admin, bootstrap and a few other gems mentioned in the video. In order to go beyond this tutorial and learn more by myself, I learned how to use ckeditor and PostgreSQL ( And spent many evenings doing so trimming the bugs :) ).</p>\r\n\r\n<p>At this time of writing, this blogsite is hosted on heroku under the URL &quot;https://blooming-harbor-29656.herokuapp.com/&quot;. It will soon be hosted on Digital Ocean and (hopefully) be found under the domain &quot;https://marclaffan.com&quot;. This blog will detail my crazy adventures through software development and likely a few things about myself that I think will help with peoples soft skills.</p>\r\n\r\n<p>I hope you enjoy it as much as I do B)</p>\r\n	2017-02-19	1	2017-02-26 03:49:21.778033	2017-02-26 03:49:21.778033	INTRODUCTION AND THIS BLOGSITE
2	<p>Variables are always passed by copy in Java. This is an unchanging rule of the language, but one that can be easily misinterpreted when running code.</p>\r\n\r\n<p>Take the following example, which you should place in a package called &ldquo;misc&rdquo;:</p>\r\n\r\n<blockquote>\r\n<p>package misc;</p>\r\n\r\n<p>public class ArgumentsAreCopies {</p>\r\n\r\n<p>&nbsp; static int number = 1;</p>\r\n\r\n<p>&nbsp; public static void main(String[] arguments){<br />\r\n&nbsp; &nbsp; ArgumentsAreCopies copies = new ArgumentsAreCopies();<br />\r\n&nbsp; &nbsp; System.out.println(&ldquo;Number&nbsp;before/outside method: &rdquo; + number);<br />\r\n&nbsp; &nbsp; copies.increaseNumber(number);<br />\r\n&nbsp; &nbsp; System.out.println(&ldquo;Number&nbsp;after/outside method: &rdquo; + number);<br />\r\n&nbsp; }</p>\r\n\r\n<p>&nbsp; static void increaseNumber(int num){<br />\r\n&nbsp; &nbsp; num++;<br />\r\n&nbsp; &nbsp; System.out.println(&ldquo;Number&nbsp;in method: &rdquo; + num);<br />\r\n&nbsp; }</p>\r\n\r\n<p>}</p>\r\n</blockquote>\r\n\r\n<p>When run, this program should output the following:</p>\r\n\r\n<p>Number before/outside method: 1</p>\r\n\r\n<p>Number in method: 2</p>\r\n\r\n<p>Number after/outside method: 1</p>\r\n\r\n<p>This makes sense because, as previously mentioned, arguments are passed as copies. We aren&rsquo;t changing the original number variable.</p>\r\n\r\n<p>However, what happens when we put something that isn&rsquo;t a primitive type in there, like an object?</p>\r\n\r\n<p>Use the following code to create a new class, in the same package:</p>\r\n\r\n<blockquote>\r\n<p>package misc;<br />\r\npublic class TestObject {</p>\r\n\r\n<p>&nbsp; int attributeOne;&nbsp; int attributeTwo ;<br />\r\n&nbsp; public void setAttributeOne(int attributeOne) { this.attributeOne = attributeOne; }<br />\r\n&nbsp; public void setAttributeTwo(int attributeTwo) { this.attributeTwo = attributeTwo; }<br />\r\n&nbsp; public String toString(){ return &ldquo;Attribute one: &rdquo; + attributeOne + &rdquo; Attribute two: &rdquo; + &nbsp; &nbsp; &nbsp; attributeTwo; }</p>\r\n\r\n<p>}</p>\r\n</blockquote>\r\n\r\n<p>For the sake of brevity, this class ignores best practice (getter methods, etc). Change the &ldquo;ArgumentsAreCopies&rdquo; class to the following and run it:</p>\r\n\r\n<blockquote>\r\n<p>package misc;</p>\r\n\r\n<p>public class ArgumentsAreCopies {</p>\r\n\r\n<p>&nbsp; static TestObject test = new TestObject();</p>\r\n\r\n<p>&nbsp; public static void main(String[] arguments){</p>\r\n\r\n<p>&nbsp; &nbsp; ArgumentsAreCopies copies = new ArgumentsAreCopies();<br />\r\n&nbsp; &nbsp; System.out.println(&ldquo;Test&nbsp;Object outside method: &rdquo; + test.toString());<br />\r\n&nbsp; &nbsp; copies.increaseNumber(test);<br />\r\n&nbsp; &nbsp; System.out.println(&ldquo;Test&nbsp;Object outside method: &rdquo; + test.toString());</p>\r\n\r\n<p>&nbsp; }</p>\r\n\r\n<p>&nbsp; public void increaseNumber(TestObject test){<br />\r\n&nbsp; &nbsp; test.setAttributeOne(3);<br />\r\n&nbsp; &nbsp;System.out.println(&ldquo;Test&nbsp;Object inside method: &rdquo; + test.toString());<br />\r\n&nbsp; }</p>\r\n\r\n<p>}</p>\r\n</blockquote>\r\n\r\n<p>After running this, you should get the following output:</p>\r\n\r\n<p>Test Object outside method: Attribute one: 0 Attribute two: 0</p>\r\n\r\n<p>Test Object inside method: Attribute one: 3 Attribute two: 0</p>\r\n\r\n<p>Test Object outside method: Attribute one: 3 Attribute two: 0</p>\r\n\r\n<p>Looks strange because the field changed this time, right? This isn&rsquo;t a bug or anything of the sort at all. What&rsquo;s happening here is that a copy of the TestObject reference is being sent to the method, but &nbsp;that reference&nbsp;<i>still points to the same object</i>.</p>\r\n\r\n<p>We aren&rsquo;t changing the object in this case (We can&rsquo;t anyway), but the fields that both the TestObject copy and the original TestObject both point towards the same fields/values. And those values are&nbsp;<b>not&nbsp;</b>being passed into the method, therefore are not copies.</p>\r\n\r\n<p>This is an easy concept to get tripped up on and might not make sense when you first encounter it, but as you continue down the path of Java you will find that it is consistent with these kind of &ldquo;rules&rdquo;.</p>\r\n	2017-02-25	2	2017-02-26 03:50:11.065664	2017-02-26 03:50:46.806205	PASSING ARGUMENTS TO METHODS IN JAVA
\.


--
-- TOC entry 2209 (class 0 OID 0)
-- Dependencies: 185
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('posts_id_seq', 2, true);


--
-- TOC entry 2177 (class 0 OID 16493)
-- Dependencies: 181
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY schema_migrations (version) FROM stdin;
20170128233219
20170128233250
20170206203216
20170206221232
20170206221707
20170206221717
20170222205514
\.


--
-- TOC entry 2184 (class 0 OID 16533)
-- Dependencies: 188
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 2210 (class 0 OID 0)
-- Dependencies: 187
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('users_id_seq', 1, false);


--
-- TOC entry 2056 (class 2606 OID 16573)
-- Name: active_admin_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY active_admin_comments
    ADD CONSTRAINT active_admin_comments_pkey PRIMARY KEY (id);


--
-- TOC entry 2052 (class 2606 OID 16560)
-- Name: admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- TOC entry 2042 (class 2606 OID 16508)
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- TOC entry 2044 (class 2606 OID 16519)
-- Name: blogposts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blogposts
    ADD CONSTRAINT blogposts_pkey PRIMARY KEY (id);


--
-- TOC entry 2061 (class 2606 OID 16587)
-- Name: ckeditor_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ckeditor_assets
    ADD CONSTRAINT ckeditor_assets_pkey PRIMARY KEY (id);


--
-- TOC entry 2046 (class 2606 OID 16530)
-- Name: posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- TOC entry 2040 (class 2606 OID 16500)
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- TOC entry 2050 (class 2606 OID 16544)
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2057 (class 1259 OID 16574)
-- Name: index_active_admin_comments_on_author_type_and_author_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_active_admin_comments_on_author_type_and_author_id ON active_admin_comments USING btree (author_type, author_id);


--
-- TOC entry 2058 (class 1259 OID 16575)
-- Name: index_active_admin_comments_on_namespace; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_active_admin_comments_on_namespace ON active_admin_comments USING btree (namespace);


--
-- TOC entry 2059 (class 1259 OID 16576)
-- Name: index_active_admin_comments_on_resource_type_and_resource_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_active_admin_comments_on_resource_type_and_resource_id ON active_admin_comments USING btree (resource_type, resource_id);


--
-- TOC entry 2053 (class 1259 OID 16561)
-- Name: index_admin_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_admin_users_on_email ON admin_users USING btree (email);


--
-- TOC entry 2054 (class 1259 OID 16562)
-- Name: index_admin_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_admin_users_on_reset_password_token ON admin_users USING btree (reset_password_token);


--
-- TOC entry 2062 (class 1259 OID 16588)
-- Name: index_ckeditor_assets_on_type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_ckeditor_assets_on_type ON ckeditor_assets USING btree (type);


--
-- TOC entry 2047 (class 1259 OID 16545)
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- TOC entry 2048 (class 1259 OID 16546)
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- TOC entry 2197 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-02-26 03:53:22

--
-- PostgreSQL database dump complete
--

