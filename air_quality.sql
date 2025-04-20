--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4 (Postgres.app)
-- Dumped by pg_dump version 17.4 (Postgres.app)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: air_quality_readings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.air_quality_readings (
    reading_id integer NOT NULL,
    location_id integer NOT NULL,
    datetime timestamp with time zone NOT NULL,
    aqi integer NOT NULL
);


ALTER TABLE public.air_quality_readings OWNER TO postgres;

--
-- Name: air_quality_readings_reading_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.air_quality_readings_reading_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.air_quality_readings_reading_id_seq OWNER TO postgres;

--
-- Name: air_quality_readings_reading_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.air_quality_readings_reading_id_seq OWNED BY public.air_quality_readings.reading_id;


--
-- Name: components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components (
    component_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.components OWNER TO postgres;

--
-- Name: components_component_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.components_component_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_component_id_seq OWNER TO postgres;

--
-- Name: components_component_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.components_component_id_seq OWNED BY public.components.component_id;


--
-- Name: locations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.locations (
    location_id integer NOT NULL,
    latitude double precision NOT NULL,
    longitude double precision NOT NULL
);


ALTER TABLE public.locations OWNER TO postgres;

--
-- Name: locations_location_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.locations_location_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.locations_location_id_seq OWNER TO postgres;

--
-- Name: locations_location_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.locations_location_id_seq OWNED BY public.locations.location_id;


--
-- Name: metal_bands; Type: TABLE; Schema: public; Owner: jacobplax
--

CREATE TABLE public.metal_bands (
    band_name text,
    fans integer,
    formed integer,
    origin text,
    split integer,
    style text
);


ALTER TABLE public.metal_bands OWNER TO jacobplax;

--
-- Name: raw_air_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.raw_air_data (
    id integer NOT NULL,
    request_time timestamp with time zone DEFAULT now(),
    location jsonb NOT NULL,
    air_data jsonb NOT NULL
);


ALTER TABLE public.raw_air_data OWNER TO postgres;

--
-- Name: raw_air_data_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.raw_air_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.raw_air_data_id_seq OWNER TO postgres;

--
-- Name: raw_air_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.raw_air_data_id_seq OWNED BY public.raw_air_data.id;


--
-- Name: reading_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reading_components (
    reading_id integer NOT NULL,
    component_id integer NOT NULL,
    value double precision NOT NULL
);


ALTER TABLE public.reading_components OWNER TO postgres;

--
-- Name: air_quality_readings reading_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.air_quality_readings ALTER COLUMN reading_id SET DEFAULT nextval('public.air_quality_readings_reading_id_seq'::regclass);


--
-- Name: components component_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components ALTER COLUMN component_id SET DEFAULT nextval('public.components_component_id_seq'::regclass);


--
-- Name: locations location_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locations ALTER COLUMN location_id SET DEFAULT nextval('public.locations_location_id_seq'::regclass);


--
-- Name: raw_air_data id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raw_air_data ALTER COLUMN id SET DEFAULT nextval('public.raw_air_data_id_seq'::regclass);


--
-- Data for Name: air_quality_readings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.air_quality_readings (reading_id, location_id, datetime, aqi) FROM stdin;
1	4	2025-04-20 11:46:53-07	2
2	4	2025-03-21 00:00:00-07	2
3	4	2025-03-21 01:00:00-07	2
4	4	2025-03-21 02:00:00-07	2
5	4	2025-03-21 03:00:00-07	2
6	4	2025-03-21 04:00:00-07	2
7	4	2025-03-21 05:00:00-07	2
8	4	2025-03-21 06:00:00-07	2
9	4	2025-03-21 07:00:00-07	2
10	4	2025-03-21 08:00:00-07	2
11	4	2025-03-21 09:00:00-07	2
12	4	2025-03-21 10:00:00-07	2
13	4	2025-03-21 11:00:00-07	2
14	4	2025-03-21 12:00:00-07	2
15	4	2025-03-21 13:00:00-07	2
16	4	2025-03-21 14:00:00-07	2
17	4	2025-03-21 15:00:00-07	2
18	4	2025-03-21 16:00:00-07	2
19	4	2025-03-21 17:00:00-07	2
20	4	2025-03-21 18:00:00-07	2
21	4	2025-03-21 19:00:00-07	2
22	4	2025-03-21 20:00:00-07	2
23	4	2025-03-21 21:00:00-07	2
24	4	2025-03-21 22:00:00-07	1
25	4	2025-03-21 23:00:00-07	1
26	4	2025-03-22 00:00:00-07	1
28	4	2025-03-22 01:00:00-07	2
29	4	2025-03-22 02:00:00-07	2
30	4	2025-03-22 03:00:00-07	2
31	4	2025-03-22 04:00:00-07	2
32	4	2025-03-22 05:00:00-07	2
33	4	2025-03-22 06:00:00-07	2
34	4	2025-03-22 07:00:00-07	2
35	4	2025-03-22 08:00:00-07	2
36	4	2025-03-22 09:00:00-07	1
37	4	2025-03-22 10:00:00-07	1
38	4	2025-03-22 11:00:00-07	1
39	4	2025-03-22 12:00:00-07	3
40	4	2025-03-22 13:00:00-07	3
41	4	2025-03-22 14:00:00-07	3
42	4	2025-03-22 15:00:00-07	3
43	4	2025-03-22 16:00:00-07	3
44	4	2025-03-22 17:00:00-07	3
45	4	2025-03-22 18:00:00-07	3
46	4	2025-03-22 19:00:00-07	2
47	4	2025-03-22 20:00:00-07	2
48	4	2025-03-22 21:00:00-07	2
49	4	2025-03-22 22:00:00-07	1
50	4	2025-03-22 23:00:00-07	1
51	4	2025-03-23 00:00:00-07	1
53	4	2025-03-23 01:00:00-07	1
54	4	2025-03-23 02:00:00-07	1
55	4	2025-03-23 03:00:00-07	1
56	4	2025-03-23 04:00:00-07	2
57	4	2025-03-23 05:00:00-07	2
58	4	2025-03-23 06:00:00-07	2
59	4	2025-03-23 07:00:00-07	2
60	4	2025-03-23 08:00:00-07	2
61	4	2025-03-23 09:00:00-07	2
62	4	2025-03-23 10:00:00-07	1
63	4	2025-03-23 11:00:00-07	1
64	4	2025-03-23 12:00:00-07	2
65	4	2025-03-23 13:00:00-07	2
66	4	2025-03-23 14:00:00-07	2
67	4	2025-03-23 15:00:00-07	2
68	4	2025-03-23 16:00:00-07	2
69	4	2025-03-23 17:00:00-07	2
70	4	2025-03-23 18:00:00-07	2
71	4	2025-03-23 19:00:00-07	2
72	4	2025-03-23 20:00:00-07	2
73	4	2025-03-23 21:00:00-07	2
74	4	2025-03-23 22:00:00-07	2
75	4	2025-03-23 23:00:00-07	2
76	4	2025-03-24 00:00:00-07	2
78	4	2025-03-24 01:00:00-07	2
79	4	2025-03-24 02:00:00-07	2
80	4	2025-03-24 03:00:00-07	2
81	4	2025-03-24 04:00:00-07	1
82	4	2025-03-24 05:00:00-07	1
83	4	2025-03-24 06:00:00-07	1
84	4	2025-03-24 07:00:00-07	1
85	4	2025-03-24 08:00:00-07	1
86	4	2025-03-24 09:00:00-07	1
87	4	2025-03-24 10:00:00-07	1
88	4	2025-03-24 11:00:00-07	1
89	4	2025-03-24 12:00:00-07	1
90	4	2025-03-24 13:00:00-07	1
91	4	2025-03-24 14:00:00-07	1
92	4	2025-03-24 15:00:00-07	2
93	4	2025-03-24 16:00:00-07	2
94	4	2025-03-24 17:00:00-07	2
95	4	2025-03-24 18:00:00-07	1
96	4	2025-03-24 19:00:00-07	1
97	4	2025-03-24 20:00:00-07	1
98	4	2025-03-24 21:00:00-07	1
99	4	2025-03-24 22:00:00-07	1
100	4	2025-03-24 23:00:00-07	1
101	4	2025-03-25 00:00:00-07	1
103	4	2025-03-25 01:00:00-07	1
104	4	2025-03-25 02:00:00-07	1
105	4	2025-03-25 03:00:00-07	2
106	4	2025-03-25 04:00:00-07	2
107	4	2025-03-25 05:00:00-07	2
108	4	2025-03-25 06:00:00-07	2
109	4	2025-03-25 07:00:00-07	2
110	4	2025-03-25 08:00:00-07	2
111	4	2025-03-25 09:00:00-07	2
112	4	2025-03-25 10:00:00-07	2
113	4	2025-03-25 11:00:00-07	2
114	4	2025-03-25 12:00:00-07	1
115	4	2025-03-25 13:00:00-07	1
116	4	2025-03-25 14:00:00-07	2
117	4	2025-03-25 15:00:00-07	2
118	4	2025-03-25 16:00:00-07	2
119	4	2025-03-25 17:00:00-07	3
120	4	2025-03-25 18:00:00-07	2
121	4	2025-03-25 19:00:00-07	2
122	4	2025-03-25 20:00:00-07	2
123	4	2025-03-25 21:00:00-07	2
124	4	2025-03-25 22:00:00-07	2
125	4	2025-03-25 23:00:00-07	2
126	4	2025-03-26 00:00:00-07	2
128	4	2025-03-26 01:00:00-07	2
129	4	2025-03-26 02:00:00-07	2
130	4	2025-03-26 03:00:00-07	2
131	4	2025-03-26 04:00:00-07	2
132	4	2025-03-26 05:00:00-07	2
133	4	2025-03-26 06:00:00-07	1
134	4	2025-03-26 07:00:00-07	1
135	4	2025-03-26 08:00:00-07	1
136	4	2025-03-26 09:00:00-07	1
137	4	2025-03-26 10:00:00-07	1
138	4	2025-03-26 11:00:00-07	1
139	4	2025-03-26 12:00:00-07	1
140	4	2025-03-26 13:00:00-07	1
141	4	2025-03-26 14:00:00-07	1
142	4	2025-03-26 15:00:00-07	2
143	4	2025-03-26 16:00:00-07	2
144	4	2025-03-26 17:00:00-07	2
145	4	2025-03-26 18:00:00-07	2
146	4	2025-03-26 19:00:00-07	2
147	4	2025-03-26 20:00:00-07	2
148	4	2025-03-26 21:00:00-07	2
149	4	2025-03-26 22:00:00-07	2
150	4	2025-03-26 23:00:00-07	2
151	4	2025-03-27 00:00:00-07	2
153	4	2025-03-27 01:00:00-07	2
154	4	2025-03-27 02:00:00-07	2
155	4	2025-03-27 03:00:00-07	2
156	4	2025-03-27 04:00:00-07	2
157	4	2025-03-27 05:00:00-07	2
158	4	2025-03-27 06:00:00-07	1
159	4	2025-03-27 07:00:00-07	1
160	4	2025-03-27 08:00:00-07	2
161	4	2025-03-27 09:00:00-07	2
162	4	2025-03-27 10:00:00-07	2
163	4	2025-03-27 11:00:00-07	2
164	4	2025-03-27 12:00:00-07	2
165	4	2025-03-27 13:00:00-07	2
166	4	2025-03-27 14:00:00-07	3
167	4	2025-03-27 15:00:00-07	3
168	4	2025-03-27 16:00:00-07	3
169	4	2025-03-27 17:00:00-07	2
170	4	2025-03-27 18:00:00-07	2
171	4	2025-03-27 19:00:00-07	2
172	4	2025-03-27 20:00:00-07	2
173	4	2025-03-27 21:00:00-07	2
174	4	2025-03-27 22:00:00-07	2
175	4	2025-03-27 23:00:00-07	2
176	4	2025-03-28 00:00:00-07	2
178	4	2025-03-28 01:00:00-07	2
179	4	2025-03-28 02:00:00-07	2
180	4	2025-03-28 03:00:00-07	2
181	4	2025-03-28 04:00:00-07	2
182	4	2025-03-28 05:00:00-07	2
183	4	2025-03-28 06:00:00-07	2
184	4	2025-03-28 07:00:00-07	2
185	4	2025-03-28 08:00:00-07	2
186	4	2025-03-28 09:00:00-07	2
187	4	2025-03-28 10:00:00-07	2
188	4	2025-03-28 11:00:00-07	2
189	4	2025-03-28 12:00:00-07	2
190	4	2025-03-28 13:00:00-07	2
191	4	2025-03-28 14:00:00-07	3
192	4	2025-03-28 15:00:00-07	3
193	4	2025-03-28 16:00:00-07	3
194	4	2025-03-28 17:00:00-07	3
195	4	2025-03-28 18:00:00-07	2
196	4	2025-03-28 19:00:00-07	2
197	4	2025-03-28 20:00:00-07	2
198	4	2025-03-28 21:00:00-07	2
199	4	2025-03-28 22:00:00-07	2
200	4	2025-03-28 23:00:00-07	2
201	4	2025-03-29 00:00:00-07	2
203	4	2025-03-29 01:00:00-07	2
204	4	2025-03-29 02:00:00-07	2
205	4	2025-03-29 03:00:00-07	2
206	4	2025-03-29 04:00:00-07	2
207	4	2025-03-29 05:00:00-07	2
208	4	2025-03-29 06:00:00-07	2
209	4	2025-03-29 07:00:00-07	2
210	4	2025-03-29 08:00:00-07	2
211	4	2025-03-29 09:00:00-07	2
212	4	2025-03-29 10:00:00-07	2
213	4	2025-03-29 11:00:00-07	2
214	4	2025-03-29 12:00:00-07	2
215	4	2025-03-29 13:00:00-07	2
216	4	2025-03-29 14:00:00-07	2
217	4	2025-03-29 15:00:00-07	2
218	4	2025-03-29 16:00:00-07	2
219	4	2025-03-29 17:00:00-07	2
220	4	2025-04-03 18:00:00-07	2
221	4	2025-04-03 19:00:00-07	2
222	4	2025-04-03 20:00:00-07	2
223	4	2025-04-03 21:00:00-07	2
224	4	2025-04-03 22:00:00-07	2
225	4	2025-04-03 23:00:00-07	2
226	4	2025-04-04 00:00:00-07	2
228	4	2025-04-04 01:00:00-07	2
229	4	2025-04-04 02:00:00-07	2
230	4	2025-04-04 03:00:00-07	2
231	4	2025-04-04 04:00:00-07	2
232	4	2025-04-04 05:00:00-07	2
233	4	2025-04-04 06:00:00-07	2
234	4	2025-04-04 07:00:00-07	2
235	4	2025-04-04 08:00:00-07	2
236	4	2025-04-04 09:00:00-07	2
237	4	2025-04-04 10:00:00-07	2
238	4	2025-04-04 11:00:00-07	2
239	4	2025-04-04 12:00:00-07	2
240	4	2025-04-04 13:00:00-07	2
241	4	2025-04-04 14:00:00-07	2
242	4	2025-04-04 15:00:00-07	2
243	4	2025-04-04 16:00:00-07	2
244	4	2025-04-04 17:00:00-07	2
245	4	2025-04-05 18:00:00-07	2
246	4	2025-04-05 19:00:00-07	2
247	4	2025-04-05 20:00:00-07	2
248	4	2025-04-05 21:00:00-07	2
249	4	2025-04-05 22:00:00-07	1
250	4	2025-04-05 23:00:00-07	1
251	4	2025-04-06 00:00:00-07	1
253	4	2025-04-06 01:00:00-07	1
254	4	2025-04-06 02:00:00-07	1
255	4	2025-04-06 03:00:00-07	1
256	4	2025-04-06 04:00:00-07	1
257	4	2025-04-06 05:00:00-07	1
258	4	2025-04-06 06:00:00-07	1
259	4	2025-04-06 07:00:00-07	1
260	4	2025-04-06 08:00:00-07	1
261	4	2025-04-06 09:00:00-07	1
262	4	2025-04-06 10:00:00-07	1
263	4	2025-04-06 11:00:00-07	1
264	4	2025-04-06 12:00:00-07	2
265	4	2025-04-06 13:00:00-07	2
266	4	2025-04-06 14:00:00-07	2
267	4	2025-04-06 15:00:00-07	1
268	4	2025-04-06 16:00:00-07	1
269	4	2025-04-06 17:00:00-07	1
270	4	2025-04-06 18:00:00-07	1
271	4	2025-04-06 19:00:00-07	1
272	4	2025-04-06 20:00:00-07	1
273	4	2025-04-06 21:00:00-07	1
274	4	2025-04-06 22:00:00-07	1
275	4	2025-04-06 23:00:00-07	1
276	4	2025-04-07 00:00:00-07	1
278	4	2025-04-07 01:00:00-07	1
279	4	2025-04-07 02:00:00-07	1
280	4	2025-04-07 03:00:00-07	1
281	4	2025-04-07 04:00:00-07	1
282	4	2025-04-07 05:00:00-07	1
283	4	2025-04-07 06:00:00-07	1
284	4	2025-04-07 07:00:00-07	2
285	4	2025-04-07 08:00:00-07	2
286	4	2025-04-07 09:00:00-07	2
287	4	2025-04-07 10:00:00-07	2
288	4	2025-04-07 11:00:00-07	2
289	4	2025-04-07 12:00:00-07	2
290	4	2025-04-07 13:00:00-07	2
291	4	2025-04-07 14:00:00-07	2
292	4	2025-04-07 15:00:00-07	2
293	4	2025-04-07 16:00:00-07	2
294	4	2025-04-07 17:00:00-07	2
295	4	2025-04-07 18:00:00-07	2
296	4	2025-04-07 19:00:00-07	2
297	4	2025-04-07 20:00:00-07	2
298	4	2025-04-07 21:00:00-07	2
299	4	2025-04-07 22:00:00-07	2
300	4	2025-04-07 23:00:00-07	2
301	4	2025-04-08 00:00:00-07	2
303	4	2025-04-08 01:00:00-07	2
304	4	2025-04-08 02:00:00-07	2
305	4	2025-04-08 03:00:00-07	2
306	4	2025-04-08 04:00:00-07	2
307	4	2025-04-08 05:00:00-07	2
308	4	2025-04-08 06:00:00-07	2
309	4	2025-04-08 07:00:00-07	2
310	4	2025-04-08 08:00:00-07	2
311	4	2025-04-08 09:00:00-07	2
312	4	2025-04-08 10:00:00-07	2
313	4	2025-04-08 11:00:00-07	2
314	4	2025-04-08 12:00:00-07	2
315	4	2025-04-08 13:00:00-07	2
316	4	2025-04-08 14:00:00-07	2
317	4	2025-04-08 15:00:00-07	2
318	4	2025-04-08 16:00:00-07	2
319	4	2025-04-08 17:00:00-07	2
320	4	2025-04-08 18:00:00-07	2
321	4	2025-04-08 19:00:00-07	2
322	4	2025-04-08 20:00:00-07	2
323	4	2025-04-08 21:00:00-07	2
324	4	2025-04-08 22:00:00-07	2
325	4	2025-04-08 23:00:00-07	2
326	4	2025-04-09 00:00:00-07	2
328	4	2025-04-09 01:00:00-07	2
329	4	2025-04-09 02:00:00-07	1
330	4	2025-04-09 03:00:00-07	1
331	4	2025-04-09 04:00:00-07	1
332	4	2025-04-09 05:00:00-07	1
333	4	2025-04-09 06:00:00-07	1
334	4	2025-04-09 07:00:00-07	1
335	4	2025-04-09 08:00:00-07	1
336	4	2025-04-09 09:00:00-07	2
337	4	2025-04-09 10:00:00-07	2
338	4	2025-04-09 11:00:00-07	2
339	4	2025-04-09 12:00:00-07	2
340	4	2025-04-09 13:00:00-07	2
341	4	2025-04-09 14:00:00-07	2
342	4	2025-04-09 15:00:00-07	2
343	4	2025-04-09 16:00:00-07	2
344	4	2025-04-09 17:00:00-07	2
345	4	2025-04-09 18:00:00-07	2
346	4	2025-04-09 19:00:00-07	2
347	4	2025-04-09 20:00:00-07	2
348	4	2025-04-09 21:00:00-07	1
349	4	2025-04-09 22:00:00-07	1
350	4	2025-04-09 23:00:00-07	1
351	4	2025-04-10 00:00:00-07	1
353	4	2025-04-10 01:00:00-07	1
354	4	2025-04-10 02:00:00-07	1
355	4	2025-04-10 03:00:00-07	1
356	4	2025-04-10 04:00:00-07	1
357	4	2025-04-10 05:00:00-07	1
358	4	2025-04-10 06:00:00-07	1
359	4	2025-04-10 07:00:00-07	1
360	4	2025-04-10 08:00:00-07	1
361	4	2025-04-10 09:00:00-07	1
362	4	2025-04-10 10:00:00-07	1
363	4	2025-04-10 11:00:00-07	1
364	4	2025-04-10 12:00:00-07	2
365	4	2025-04-10 13:00:00-07	2
366	4	2025-04-10 14:00:00-07	2
367	4	2025-04-10 15:00:00-07	2
368	4	2025-04-10 16:00:00-07	2
369	4	2025-04-10 17:00:00-07	2
370	4	2025-04-10 18:00:00-07	2
371	4	2025-04-10 19:00:00-07	2
372	4	2025-04-10 20:00:00-07	2
373	4	2025-04-10 21:00:00-07	2
374	4	2025-04-10 22:00:00-07	2
375	4	2025-04-10 23:00:00-07	2
376	4	2025-04-11 00:00:00-07	1
378	4	2025-04-11 01:00:00-07	1
379	4	2025-04-11 02:00:00-07	1
380	4	2025-04-11 03:00:00-07	1
381	4	2025-04-11 04:00:00-07	1
382	4	2025-04-11 05:00:00-07	1
383	4	2025-04-11 06:00:00-07	1
384	4	2025-04-11 07:00:00-07	1
385	4	2025-04-11 08:00:00-07	1
386	4	2025-04-11 09:00:00-07	1
387	4	2025-04-11 10:00:00-07	1
388	4	2025-04-11 11:00:00-07	2
389	4	2025-04-11 12:00:00-07	2
390	4	2025-04-11 13:00:00-07	2
391	4	2025-04-11 14:00:00-07	2
392	4	2025-04-11 15:00:00-07	2
393	4	2025-04-11 16:00:00-07	2
394	4	2025-04-11 17:00:00-07	2
395	4	2025-04-11 18:00:00-07	2
396	4	2025-04-11 19:00:00-07	2
397	4	2025-04-11 20:00:00-07	2
398	4	2025-04-11 21:00:00-07	2
399	4	2025-04-11 22:00:00-07	2
400	4	2025-04-11 23:00:00-07	2
401	4	2025-04-12 00:00:00-07	2
403	4	2025-04-12 01:00:00-07	2
404	4	2025-04-12 02:00:00-07	2
405	4	2025-04-12 03:00:00-07	2
406	4	2025-04-12 04:00:00-07	2
407	4	2025-04-12 05:00:00-07	2
408	4	2025-04-12 06:00:00-07	2
409	4	2025-04-12 07:00:00-07	2
410	4	2025-04-12 08:00:00-07	2
411	4	2025-04-12 09:00:00-07	2
412	4	2025-04-12 10:00:00-07	2
413	4	2025-04-12 11:00:00-07	2
414	4	2025-04-12 12:00:00-07	2
415	4	2025-04-12 13:00:00-07	2
416	4	2025-04-12 14:00:00-07	2
417	4	2025-04-12 15:00:00-07	2
418	4	2025-04-12 16:00:00-07	2
419	4	2025-04-12 17:00:00-07	2
420	4	2025-04-12 18:00:00-07	2
421	4	2025-04-12 19:00:00-07	2
422	4	2025-04-12 20:00:00-07	2
423	4	2025-04-12 21:00:00-07	2
424	4	2025-04-12 22:00:00-07	1
425	4	2025-04-12 23:00:00-07	2
426	4	2025-04-13 00:00:00-07	2
428	4	2025-04-13 01:00:00-07	2
429	4	2025-04-13 02:00:00-07	2
430	4	2025-04-13 03:00:00-07	2
431	4	2025-04-13 04:00:00-07	2
432	4	2025-04-13 05:00:00-07	2
433	4	2025-04-13 06:00:00-07	2
434	4	2025-04-13 07:00:00-07	2
435	4	2025-04-13 08:00:00-07	2
436	4	2025-04-13 09:00:00-07	2
437	4	2025-04-13 10:00:00-07	2
438	4	2025-04-13 11:00:00-07	2
439	4	2025-04-13 12:00:00-07	2
440	4	2025-04-13 13:00:00-07	2
441	4	2025-04-13 14:00:00-07	2
442	4	2025-04-13 15:00:00-07	2
443	4	2025-04-13 16:00:00-07	2
444	4	2025-04-13 17:00:00-07	2
445	4	2025-04-13 18:00:00-07	2
446	4	2025-04-13 19:00:00-07	2
447	4	2025-04-13 20:00:00-07	2
448	4	2025-04-13 21:00:00-07	2
449	4	2025-04-13 22:00:00-07	2
450	4	2025-04-13 23:00:00-07	2
451	4	2025-04-14 00:00:00-07	2
453	4	2025-04-14 01:00:00-07	2
454	4	2025-04-14 02:00:00-07	2
455	4	2025-04-14 03:00:00-07	2
456	4	2025-04-14 04:00:00-07	2
457	4	2025-04-14 05:00:00-07	2
458	4	2025-04-14 06:00:00-07	1
459	4	2025-04-14 07:00:00-07	1
460	4	2025-04-14 08:00:00-07	1
461	4	2025-04-14 09:00:00-07	1
462	4	2025-04-14 10:00:00-07	1
463	4	2025-04-14 11:00:00-07	2
464	4	2025-04-14 12:00:00-07	2
465	4	2025-04-14 13:00:00-07	2
466	4	2025-04-14 14:00:00-07	2
467	4	2025-04-14 15:00:00-07	3
468	4	2025-04-14 16:00:00-07	3
469	4	2025-04-14 17:00:00-07	3
470	4	2025-04-14 18:00:00-07	2
471	4	2025-04-14 19:00:00-07	2
472	4	2025-04-14 20:00:00-07	2
473	4	2025-04-14 21:00:00-07	1
474	4	2025-04-14 22:00:00-07	1
475	4	2025-04-14 23:00:00-07	1
476	4	2025-04-15 00:00:00-07	1
478	4	2025-04-15 01:00:00-07	1
479	4	2025-04-15 02:00:00-07	1
480	4	2025-04-15 03:00:00-07	1
481	4	2025-04-15 04:00:00-07	1
482	4	2025-04-15 05:00:00-07	1
483	4	2025-04-15 06:00:00-07	1
484	4	2025-04-15 07:00:00-07	1
485	4	2025-04-15 08:00:00-07	1
486	4	2025-04-15 09:00:00-07	2
487	4	2025-04-15 10:00:00-07	2
488	4	2025-04-15 11:00:00-07	2
489	4	2025-04-15 12:00:00-07	2
490	4	2025-04-15 13:00:00-07	3
491	4	2025-04-15 14:00:00-07	3
492	4	2025-04-15 15:00:00-07	3
493	4	2025-04-15 16:00:00-07	3
494	4	2025-04-15 17:00:00-07	3
495	4	2025-04-15 18:00:00-07	2
496	4	2025-04-15 19:00:00-07	2
497	4	2025-04-15 20:00:00-07	2
498	4	2025-04-15 21:00:00-07	2
499	4	2025-04-15 22:00:00-07	1
500	4	2025-04-15 23:00:00-07	1
501	4	2025-04-16 00:00:00-07	1
503	4	2025-04-16 01:00:00-07	1
504	4	2025-04-16 02:00:00-07	1
505	4	2025-04-16 03:00:00-07	1
506	4	2025-04-16 04:00:00-07	1
507	4	2025-04-16 05:00:00-07	1
508	4	2025-04-16 06:00:00-07	1
509	4	2025-04-16 07:00:00-07	1
510	4	2025-04-16 08:00:00-07	1
511	4	2025-04-16 09:00:00-07	1
512	4	2025-04-16 10:00:00-07	1
513	4	2025-04-16 11:00:00-07	1
514	4	2025-04-16 12:00:00-07	2
515	4	2025-04-16 13:00:00-07	2
516	4	2025-04-16 14:00:00-07	2
517	4	2025-04-16 15:00:00-07	2
518	4	2025-04-16 16:00:00-07	2
519	4	2025-04-16 17:00:00-07	2
520	4	2025-04-16 18:00:00-07	2
521	4	2025-04-16 19:00:00-07	2
522	4	2025-04-16 20:00:00-07	2
523	4	2025-04-16 21:00:00-07	2
524	4	2025-04-16 22:00:00-07	1
525	4	2025-04-16 23:00:00-07	1
526	4	2025-04-17 00:00:00-07	1
528	4	2025-04-17 01:00:00-07	1
529	4	2025-04-17 02:00:00-07	1
530	4	2025-04-17 03:00:00-07	2
531	4	2025-04-17 04:00:00-07	2
532	4	2025-04-17 05:00:00-07	2
533	4	2025-04-17 06:00:00-07	2
534	4	2025-04-17 07:00:00-07	2
535	4	2025-04-17 08:00:00-07	2
536	4	2025-04-17 09:00:00-07	2
537	4	2025-04-17 10:00:00-07	2
538	4	2025-04-17 11:00:00-07	2
539	4	2025-04-17 12:00:00-07	2
540	4	2025-04-17 13:00:00-07	3
541	4	2025-04-17 14:00:00-07	3
542	4	2025-04-17 15:00:00-07	3
543	4	2025-04-17 16:00:00-07	3
544	4	2025-04-17 17:00:00-07	3
545	4	2025-04-17 18:00:00-07	3
546	4	2025-04-17 19:00:00-07	3
547	4	2025-04-17 20:00:00-07	3
548	4	2025-04-17 21:00:00-07	2
549	4	2025-04-17 22:00:00-07	2
550	4	2025-04-17 23:00:00-07	2
551	4	2025-04-18 00:00:00-07	2
553	4	2025-04-18 01:00:00-07	2
554	4	2025-04-18 02:00:00-07	2
555	4	2025-04-18 03:00:00-07	2
556	4	2025-04-18 04:00:00-07	2
557	4	2025-04-18 05:00:00-07	2
558	4	2025-04-18 06:00:00-07	2
559	4	2025-04-18 07:00:00-07	2
560	4	2025-04-18 08:00:00-07	2
561	4	2025-04-18 09:00:00-07	2
562	4	2025-04-18 10:00:00-07	2
563	4	2025-04-18 11:00:00-07	2
564	4	2025-04-18 12:00:00-07	2
565	4	2025-04-18 13:00:00-07	2
566	4	2025-04-18 14:00:00-07	2
567	4	2025-04-18 15:00:00-07	3
568	4	2025-04-18 16:00:00-07	3
569	4	2025-04-18 17:00:00-07	3
570	4	2025-04-18 18:00:00-07	3
571	4	2025-04-18 19:00:00-07	2
572	4	2025-04-18 20:00:00-07	2
573	4	2025-04-18 21:00:00-07	2
574	4	2025-04-18 22:00:00-07	2
575	4	2025-04-18 23:00:00-07	2
576	4	2025-04-19 00:00:00-07	2
578	4	2025-04-19 01:00:00-07	2
579	4	2025-04-19 02:00:00-07	2
580	4	2025-04-19 03:00:00-07	2
581	4	2025-04-19 04:00:00-07	2
582	4	2025-04-19 05:00:00-07	2
583	4	2025-04-19 06:00:00-07	2
584	4	2025-04-19 07:00:00-07	2
585	4	2025-04-19 08:00:00-07	2
586	4	2025-04-19 09:00:00-07	2
587	4	2025-04-19 10:00:00-07	2
588	4	2025-04-19 11:00:00-07	2
589	4	2025-04-19 12:00:00-07	2
590	4	2025-04-19 13:00:00-07	2
591	4	2025-04-19 14:00:00-07	2
592	4	2025-04-19 15:00:00-07	2
593	4	2025-04-19 16:00:00-07	2
594	4	2025-04-19 17:00:00-07	2
595	4	2025-04-19 18:00:00-07	2
596	4	2025-04-19 19:00:00-07	2
597	4	2025-04-19 20:00:00-07	2
598	4	2025-04-19 21:00:00-07	2
599	4	2025-04-19 22:00:00-07	2
600	4	2025-04-19 23:00:00-07	2
601	4	2025-04-20 00:00:00-07	2
\.


--
-- Data for Name: components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components (component_id, name) FROM stdin;
1	co
2	no
3	no2
4	o3
5	so2
6	pm2_5
7	pm10
8	nh3
\.


--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.locations (location_id, latitude, longitude) FROM stdin;
4	44.9369	-123.028
\.


--
-- Data for Name: metal_bands; Type: TABLE DATA; Schema: public; Owner: jacobplax
--

COPY public.metal_bands (band_name, fans, formed, origin, split, style) FROM stdin;
Iron Maiden	4195	1975	United Kingdom	\N	New wave of british heavy,Heavy
Opeth	4147	1990	Sweden	1990	Extreme progressive,Progressive rock,Progressive
Metallica	3712	1981	USA	\N	Heavy,Bay area thrash
Megadeth	3105	1983	USA	1983	Thrash,Heavy,Hard rock
Amon Amarth	3054	1988	Sweden	\N	Melodic death
Slayer	2955	1981	USA	1981	Thrash
Death	2690	1983	USA	2001	Progressive death,Death,Progressive thrash
Dream Theater	2329	1985	USA	1985	Progressive
Black Sabbath	2307	1968	United Kingdom	\N	Doom,Heavy,Hard rock
Nightwish	2183	1996	Finland	1996	Symphonic power,Gothic,Symphonic
Children Of Bodom	2153	1993	Finland	\N	Extreme power
Judas Priest	2094	1969	United Kingdom	1969	Heavy,Hard rock
Blind Guardian	2040	1984	Germany	\N	Power,Speed
In Flames	1932	1990	Sweden	1990	Gothenburg,Alternative
Pantera	1920	1981	USA	2003	Heavy,Groove thrash,Groove metal
Dark Tranquillity	1898	1989	Sweden	1989	Gothenburg
Agalloch	1881	1995	USA	2016	Atmospheric black,Neofolk
Ensiferum	1879	1995	Finland	1995	Extreme folk
Arch Enemy	1750	1996	Sweden	\N	Gothenburg
Katatonia	1735	1991	Sweden	1991	Blackened doom,Death doom,Alternative rock,Gothic doom
Behemoth	1721	1991	Poland	\N	Death,Black,Blackened death
Dimmu Borgir	1688	1993	Norway	1993	Symphonic black,Black
Kreator	1646	1982	Germany	\N	Teutonic thrash
Wintersun	1640	2004	Finland	2004	Extreme power
Insomnium	1547	1997	Finland	\N	Melodic death
Amorphis	1528	1990	Finland	1990	Death,Melodic death,Folk,Progressive
Kamelot	1520	1991	USA	\N	Symphonic power
Tool	1506	1988	USA	1988	Progressive,Alternative
Helloween	1501	1978	Germany	\N	Speed,Power
Testament	1500	1983	USA	1983	Bay area thrash
Epica	1450	2002	The Netherlands	\N	Symphonic
Immortal	1436	1990	Norway	1990	Death,Black
Lamb Of God	1433	1999	USA	\N	Groove thrash
Iced Earth	1403	1985	USA	1985	Heavy,Us power
Anathema	1400	1990	United Kingdom	\N	Death doom,Atmospheric rock,Doom
Symphony X	1343	1994	USA	1994	Progressive,Symphonic power
Eluveitie	1328	2002	Switzerland	\N	Celtic folk,Gothenburg
Gojira	1300	1996	France	1996	Progressive death
Rammstein	1251	1994	Germany	\N	Industrial
Sonata Arctica	1242	1996	Finland	1996	Power
Mastodon	1232	1999	USA	\N	Progressive stoner,Progressive sludge
Nile	1189	1993	USA	1993	Brutal death,Technical death
Sepultura	1185	1984	Brazil	\N	Alternative,Death,Groove thrash,Thrash
Moonspell	1173	1989	Portugal	1989	Folk,Gothic black,Gothic,Symphonic black,Black
Therion	1167	1987	Sweden	\N	Death,Symphonic
Cannibal Corpse	1162	1988	USA	1988	Death
Enslaved	1146	1991	Norway	\N	Viking black,Progressive black
Emperor	1132	1991	Norway	1991	Black,Symphonic black
Porcupine Tree	1094	1987	United Kingdom	\N	Progressive rock,Progressive
Cradle Of Filth	1084	1991	United Kingdom	1991	Extreme gothic,Symphonic black,Death,Symphonic
Iron Maiden	4195	1975	United Kingdom	\N	New wave of british heavy,Heavy
Opeth	4147	1990	Sweden	1990	Extreme progressive,Progressive rock,Progressive
Metallica	3712	1981	USA	\N	Heavy,Bay area thrash
Megadeth	3105	1983	USA	1983	Thrash,Heavy,Hard rock
Amon Amarth	3054	1988	Sweden	\N	Melodic death
Slayer	2955	1981	USA	1981	Thrash
Death	2690	1983	USA	2001	Progressive death,Death,Progressive thrash
Dream Theater	2329	1985	USA	1985	Progressive
Black Sabbath	2307	1968	United Kingdom	\N	Doom,Heavy,Hard rock
Nightwish	2183	1996	Finland	1996	Symphonic power,Gothic,Symphonic
Children Of Bodom	2153	1993	Finland	\N	Extreme power
Judas Priest	2094	1969	United Kingdom	1969	Heavy,Hard rock
Blind Guardian	2040	1984	Germany	\N	Power,Speed
In Flames	1932	1990	Sweden	1990	Gothenburg,Alternative
Pantera	1920	1981	USA	2003	Heavy,Groove thrash,Groove metal
Dark Tranquillity	1898	1989	Sweden	1989	Gothenburg
Agalloch	1881	1995	USA	2016	Atmospheric black,Neofolk
Ensiferum	1879	1995	Finland	1995	Extreme folk
Arch Enemy	1750	1996	Sweden	\N	Gothenburg
Katatonia	1735	1991	Sweden	1991	Blackened doom,Death doom,Alternative rock,Gothic doom
Behemoth	1721	1991	Poland	\N	Death,Black,Blackened death
Dimmu Borgir	1688	1993	Norway	1993	Symphonic black,Black
Kreator	1646	1982	Germany	\N	Teutonic thrash
Wintersun	1640	2004	Finland	2004	Extreme power
Insomnium	1547	1997	Finland	\N	Melodic death
Amorphis	1528	1990	Finland	1990	Death,Melodic death,Folk,Progressive
Kamelot	1520	1991	USA	\N	Symphonic power
Tool	1506	1988	USA	1988	Progressive,Alternative
Helloween	1501	1978	Germany	\N	Speed,Power
Testament	1500	1983	USA	1983	Bay area thrash
Epica	1450	2002	The Netherlands	\N	Symphonic
Immortal	1436	1990	Norway	1990	Death,Black
Lamb Of God	1433	1999	USA	\N	Groove thrash
Iced Earth	1403	1985	USA	1985	Heavy,Us power
Anathema	1400	1990	United Kingdom	\N	Death doom,Atmospheric rock,Doom
Symphony X	1343	1994	USA	1994	Progressive,Symphonic power
Eluveitie	1328	2002	Switzerland	\N	Celtic folk,Gothenburg
Gojira	1300	1996	France	1996	Progressive death
Rammstein	1251	1994	Germany	\N	Industrial
Sonata Arctica	1242	1996	Finland	1996	Power
Mastodon	1232	1999	USA	\N	Progressive stoner,Progressive sludge
Nile	1189	1993	USA	1993	Brutal death,Technical death
Sepultura	1185	1984	Brazil	\N	Alternative,Death,Groove thrash,Thrash
Moonspell	1173	1989	Portugal	1989	Folk,Gothic black,Gothic,Symphonic black,Black
Therion	1167	1987	Sweden	\N	Death,Symphonic
Cannibal Corpse	1162	1988	USA	1988	Death
Enslaved	1146	1991	Norway	\N	Viking black,Progressive black
Emperor	1132	1991	Norway	1991	Black,Symphonic black
Porcupine Tree	1094	1987	United Kingdom	\N	Progressive rock,Progressive
Cradle Of Filth	1084	1991	United Kingdom	1991	Extreme gothic,Symphonic black,Death,Symphonic
Be'lakor	1083	2004	Australia	\N	Melodic death
My Dying Bride	1069	1990	United Kingdom	1990	Death doom,Gothic doom
Led Zeppelin	1054	1968	United Kingdom	1980	Progressive hard rock,Heavy,Blues rock
Nevermore	1051	1991	USA	1991	Heavy,Progressive,Thrash
Stratovarius	1046	1982	Finland	\N	Power,Heavy
Paradise Lost	1042	1988	United Kingdom	1988	Gothic,Electro gothic,Death doom
Dio	1023	1982	USA	2010	Heavy
Kalmah	1004	1991	Finland	1991	Extreme power,Melodic death
Carcass	1001	1985	United Kingdom	\N	Grindcore,Melodic death
Burzum	978	1989	Norway	1989	Black,Dark,Ambient,Ambient
Anthrax	976	1981	USA	\N	Thrash,Heavy
Morbid Angel	975	1984	USA	1984	Death
Meshuggah	970	1987	Sweden	\N	Technical thrash,Math,Progressive
Finntroll	967	1997	Finland	1997	Extreme folk
Septicflesh	967	1990	Greece	\N	Atmospheric death,Symphonic death
Moonsorrow	966	1995	Finland	1995	Viking folk
Machine Head	957	1992	USA	\N	Groove thrash,Progressive thrash
System Of A Down	956	1995	USA	1995	Alternative
Within Temptation	956	1996	The Netherlands	\N	Symphonic,Gothic
Bathory	942	1983	Sweden	1983	Viking black,First wave of black
Exodus	937	1980	USA	\N	Bay area thrash
Draconian	936	1994	Sweden	1994	Gothic doom
Slipknot	928	1995	USA	\N	Alternative,Nu
AC/DC	923	1973	Australia	1973	Hard rock,Blues rock
Ayreon	903	1995	The Netherlands	\N	Progressive
Swallow The Sun	900	2000	Finland	2000	Melodic death,Melodic doom
Gamma Ray	898	1988	Germany	\N	Power
Rhapsody Of Fire	896	1993	Italy	1993	Symphonic power
Hypocrisy	885	1990	Sweden	\N	Death,Melodic death,Gothenburg
Motörhead	875	1975	United Kingdom, USA	1975	Heavy
Bloodbath	872	1998	Sweden	\N	Death
Korpiklaani	864	2003	Finland	2003	Folk
Manowar	863	1980	USA	\N	Heavy,Us power
HammerFall	861	1993	Sweden	1993	Power
At The Gates	839	1990	Sweden	\N	Melodic death,Gothenburg
Sabaton	824	1999	Sweden	1999	Power
Mayhem	823	1984	Norway	\N	Death,Black
Vader	822	1983	Poland	1983	Death
Avantasia	819	1999	Germany	\N	Symphonic power
Rotting Christ	807	1987	Greece	1987	Black,Gothic
Summoning	799	1993	Austria	\N	Atmospheric black
Sodom	783	1980	Germany	1980	Teutonic thrash
Overkill	770	1980	USA	\N	Thrash
Dissection	768	1989	Sweden	1989	Melodic death,Melodic black
Satyricon	768	1990	Norway	\N	Black
Rush	767	1968	Canada	1968	Progressive rock
Darkthrone	753	1986	Norway	\N	Death,Black,Crust punk ,Heavy
Ozzy Osbourne	750	1979	United Kingdom, USA	1979	Heavy
Devin Townsend	747	1996	Canada	\N	Industrial progressive,Progressive
Alcest	734	2000	France	2000	Black,Shoegaze
Equilibrium	729	2001	Germany	\N	Viking folk
Deep Purple	714	1968	United Kingdom	1968	Heavy,Hard rock
Edguy	714	1992	Germany	\N	Power
Soilwork	702	1995	Sweden	1995	Gothenburg
Riverside	684	2001	Poland	\N	Progressive
Trivium	681	2000	USA	2000	Metalcore,Alternative thrash
Turisas	672	1997	Finland	\N	Folk
Orphaned Land	662	1991	Israel	1991	Progressive folk,Death,Folk
Apocalyptica	656	1993	Finland	\N	Symphonic heavy
King Diamond	641	1985	Denmark, USA	1985	Heavy
Angra	633	1991	Brazil	\N	Progressive power
Deicide	628	1987	USA	1987	Death
Alice In Chains	627	1985	USA	\N	Grunge ,Heavy
Haggard	622	1991	Germany	1991	Experimental death,Symphonic
Disturbed	620	1996	USA	\N	Nu,Alternative
DragonForce	607	1999	United Kingdom	1999	Power
Lacuna Coil	604	1994	Italy	\N	Gothic,Alternative
Accept	601	1968	Germany	1968	Heavy
Arcturus	601	1990	Norway	\N	Avantgarde black,Avantgarde
Omnium Gatherum	599	1996	Finland	1996	Melodic death
Obituary	596	1984	USA	\N	Death
Pain Of Salvation	596	1984	Sweden	1984	Progressive,Progressive rock
Necrophagist	595	1992	Germany	\N	Technical death
Fear Factory	594	1989	USA	1989	Industrial,Death
Tristania	594	1996	Norway	\N	Symphonic gothic,Gothic
Decapitated	587	1996	Poland	1996	Technical death
Fleshgod Apocalypse	586	2007	Italy	\N	Symphonic death
Primordial	583	1987	Ireland	1987	Black,Celtic folk
Candlemass	579	1984	Sweden	\N	Epic doom
Scar Symmetry	574	2004	Sweden	2004	Melodic death,Progressive power
Eternal Tears Of Sorrow	573	1991	Finland	\N	Extreme power,Melodic death
Marduk	567	1990	Sweden	1990	Black
Annihilator	565	1984	Canada	\N	Thrash,Heavy
Alestorm	558	2004	United Kingdom	2004	Folk,Power
Ghost	547	2008	Sweden	\N	Heavy,Psychedelic rock
Ulver	545	1992	Norway	1992	Folk,Electronic,Avantgarde ,Black
Cynic	542	1987	USA	\N	Progressive death,Progressive
Ne Obliviscaris	539	2003	Australia	2003	Extreme progressive
In Mourning	533	2000	Sweden	\N	Gothic,Melodic death,Progressive
Obscura	532	2002	Germany	2002	Progressive death,Technical death
Korn	531	1993	USA	\N	Nu,Alternative
Evergrey	528	1996	Sweden	1996	Progressive,Power
Týr	526	1998	Faroe Islands	\N	Folk
Type O Negative	526	1989	USA	1989	Gothic,Doom
Mercyful Fate	525	1981	Denmark, USA	\N	Heavy,First wave of black
Saturnus	522	1991	Denmark	1991	Death,Gothic doom
Bolt Thrower	519	1986	United Kingdom	2016	Death,Grindcore
Scorpions	519	1965	Germany	1965	Progressive rock,Hard rock,Heavy
Napalm Death	516	1981	United Kingdom	\N	Hardcore,Grindcore,Punk
Windir	514	1994	Norway	1994	Viking black
Sentenced	510	1988	Finland	2005	Death,Suomi,Depressive heavy,Melodic death
Tiamat	510	1988	Sweden	1988	Death,Atmospheric gothic
Killswitch Engage	500	1999	USA	\N	Melodic metalcore
Gorgoroth	498	1992	Norway	1992	Black
Celtic Frost	497	1984	Switzerland	2008	First wave of black,Avantgarde,Thrash
Rainbow	497	1975	United Kingdom	1975	Hard rock,Heavy
Suffocation	497	1990	USA	\N	Brutal death
Kataklysm	493	1991	Canada	1991	Death
Dying Fetus	488	1991	USA	\N	Brutal death,Deathgrind,Technical death
Norther	488	1996	Finland	1996	Extreme power
Sirenia	488	2001	Norway	\N	Symphonic gothic
Savatage	482	1978	USA	1978	Progressive heavy
Empyrium	481	1994	Germany	\N	Doom,Folk,Neofolk
Guns N' Roses	481	1985	USA	1985	Hard rock
Venom	481	1979	United Kingdom	\N	First wave of black,Heavy
Dark Funeral	479	1993	Sweden	1993	Black
Avenged Sevenfold	477	1999	USA	\N	Metalcore,Heavy,Alternative
Destruction	477	1983	Germany	1983	Teutonic thrash
Edge Of Sanity	472	1989	Sweden	2003	Progressive death
After Forever	470	1995	The Netherlands	1995	Symphonic gothic,Symphonic progressive
Ihsahn	464	2005	Norway	\N	Extreme progressive,Avantgarde
Diablo Swing Orchestra	458	2003	Sweden	2003	Avantgarde,Symphonic
Arkona	450	2002	Russia	\N	Pagan folk
Leprous	444	2001	Norway	2001	Progressive
Between The Buried And Me	441	2000	USA	\N	Progressive metalcore
Death Angel	441	1982	USA	1982	Bay area thrash
W.A.S.P.	440	1982	USA	\N	Heavy
As I Lay Dying	424	2001	USA	2001	Melodic metalcore
Black Label Society	424	1998	USA	\N	Heavy
Borknagar	420	1995	Norway	1995	Melodic black,Progressive black
Isis	420	1997	USA	2010	Post-metal,Atmospheric sludge
Soulfly	417	1997	USA	1997	Groove thrash,Nu
Atheist	411	1984	USA	\N	Technical death
DevilDriver	411	2002	USA	2002	Nu,Melodic death,Groove thrash
Shining	410	1996	Sweden	\N	Depressive black,Progressive black
Strapping Young Lad	409	1995	Canada	1995	Industrial,Thrash
The Gathering	409	1989	The Netherlands	\N	Doom,Death doom,Atmospheric gothic,Experimental rock
Anaal Nathrakh	399	1998	United Kingdom	1998	Black,Grindcore
Ghost Brigade	398	2005	Finland	\N	Post-metal,Alternative
Delain	395	2002	The Netherlands	2002	Symphonic
Watain	391	1998	Sweden	\N	Black
Saxon	387	1976	United Kingdom	1976	New wave of british heavy,Heavy
Vektor	387	2002	USA	\N	Technical thrash,Progressive thrash
Immolation	386	1986	USA	1986	Death
Firewind	382	1998	Greece	\N	Power,Heavy
Mors Principium Est	381	1999	Finland	1999	Gothenburg
Samael	381	1987	Switzerland	\N	Black,Electro industrial
Bullet For My Valentine	379	1998	United Kingdom	1998	Melodic metalcore
Entombed	379	1987	Sweden	\N	Death,Death ',N',Roll
Steven Wilson	375	2003	United Kingdom	2003	Progressive rock
Xandria	372	1994	Germany	\N	Gothic,Symphonic
Drudkh	369	2002	Ukraine	2002	Atmospheric black,Pagan black
Animals As Leaders	367	2007	USA	\N	Progressive,Instrumental,Djent
Queensrÿche	367	1981	USA	1981	Heavy,Progressive heavy,Progressive rock
Powerwolf	364	2003	Germany	\N	Power
Belphegor	363	1991	Austria	1991	Black,Death
Before The Dawn	359	1999	Finland	1999	Gothic,Melodic death
The Faceless	358	2004	USA	\N	Deathcore,Progressive death,Technical death
Deftones	357	1988	USA	1988	Nu,Alternative
Primal Fear	354	1997	Germany	\N	Power
Theatre Of Tragedy	354	1993	Norway	1993	Gothic,Gothic industrial
KISS	352	1972	USA	\N	Hard rock,Symphonic rock,Glam,Heavy
Down	351	1991	USA	1991	Heavy,Sludge,Stoner
Skeletonwitch	349	2003	USA	\N	Blackened thrash
Rage Against The Machine	344	1991	USA	1991	Alternative,Nu
Wolves In The Throne Room	343	2004	USA	\N	Atmospheric black
Five Finger Death Punch	342	2005	USA	2005	Groove metal
Electric Wizard	341	1993	United Kingdom	\N	Doom,Stoner
Nine Inch Nails	341	1988	USA	1988	Industrial rock,Industrial
Novembers Doom	341	1989	USA	\N	Death doom,Melodic death
Dethklok	337	2006	USA	2006	Melodic death
Faith No More	337	1981	USA	\N	Alternative
Cryptopsy	334	1988	Canada	1988	Brutal death,Technical death,Death
Falkenbach	332	1989	Germany	\N	Black,Viking folk,Folk
Graveworm	331	1992	Italy	1992	Gothic,Symphonic black
Taake	331	1993	Norway	\N	Black
Grave Digger	328	1980	Germany	1980	Heavy
Rob Zombie	326	1998	USA	\N	Alternative,Industrial
The Black Dahlia Murder	326	2001	USA	2001	Melodic death,Metalcore
Running Wild	324	1976	Germany	\N	Heavy,Speed
Neurosis	322	1985	USA	1985	Atmospheric sludge,Post-hardcore ,Post-metal
Carach Angren	320	2003	The Netherlands	\N	Symphonic black
Dark Moor	320	1994	Spain	1994	Symphonic power
Baroness	319	2003	USA	\N	Sludge,Stoner rock,Progressive rock
King Crimson	319	1969	United Kingdom	1969	Progressive rock
Shape Of Despair	319	1995	Finland	\N	Funeral doom
Bruce Dickinson	315	1989	United Kingdom	1989	Heavy
Demons And Wizards	315	1999	USA	\N	Heavy,Power
Deathspell Omega	314	1998	France	1998	Black,Avantgarde
Lacrimosa	312	1990	Germany	\N	Gothic,Symphonic
Coroner	311	1985	Switzerland	1985	Technical thrash
Masterplan	311	2001	Germany	\N	Progressive power
Tarja	310	2004	Finland	2004	Symphonic
Ahab	309	2004	Germany	\N	Funeral doom
Melechesh	307	1993	Israel, The Netherlands	1993	Melodic black,Folk
Rage	306	1986	Germany	\N	Heavy
Cult Of Luna	305	1998	Sweden	1998	Post-metal,Sludge
Suidakra	305	1994	Germany	\N	Melodic death,Folk
Yngwie Malmsteen	304	1978	Sweden	1978	Neoclassical power
Kyuss	301	1988	USA	1995	Stoner,Stoner rock
All That Remains	298	1998	USA	1998	Melodic metalcore
Marilyn Manson	298	1989	USA	\N	Industrial rock,Alternative,Industrial,Glam rock,Alternative rock
Sólstafir	297	1995	Iceland	1995	Atmospheric black,Post-rock
Woods Of Ypres	297	2002	Canada	2011	Melodic black,Doom,Gothic doom
Blut Aus Nord	296	1994	France	1994	Atmospheric black,Industrial
Godsmack	296	1995	USA	\N	Alternative,Hard rock
Haken	293	2007	United Kingdom	2007	Progressive
HIM	293	1995	Finland	\N	Suomi
Warbringer	293	2004	USA	2004	Thrash
Havok	289	2004	USA	\N	Thrash
Novembre	288	1990	Italy	1990	Death doom,Extreme progressive
Evile	285	2004	United Kingdom	\N	Thrash
Six Feet Under	283	1993	USA	1993	Death
Leaves' Eyes	281	2003	Germany	\N	Atmospheric symphonic
Old Man's Child	281	1989	Norway	1989	Thrash,Death,Symphonic black
Chimaira	280	1998	USA	2014	Groove thrash
Persefone	279	2001	Andorra	2001	Melodic death,Progressive
Heaven Shall Burn	276	1996	Germany	\N	Metalcore,Melodic death
Myrath	275	2001	Tunisia, France	2001	Progressive,Oriental folk
Freedom Call	272	1998	Germany	\N	Power
Green Carnation	272	1990	Norway	1990	Death,Gothic,Progressive
High On Fire	272	1998	USA	\N	Stoner,Sludge
Metal Church	268	1980	USA	1980	Heavy,Thrash
Sylosis	267	2000	United Kingdom	\N	Melodic death,Progressive thrash
Danzig	266	1988	USA	1988	Hard rock
Elvenking	265	1997	Italy	\N	Folk,Power
Triptykon	265	2008	Switzerland	2008	Blackened thrash,Death
Volbeat	264	2001	Denmark	\N	Heavy,Hard rock
The Haunted	263	1996	Sweden	1996	Alternative thrash,Thrash,Melodic death
Carpathian Forest	262	1990	Norway	\N	Black
Van Halen	262	1972	USA	1972	Hard rock,Heavy
Falconer	261	1999	Sweden	\N	Folk,Power
Pain	261	1996	Sweden	1996	Gothic industrial
Unleashed	260	1989	Sweden	\N	Melodic death
Protest The Hero	258	2001	Canada	2001	Metalcore,Progressive metalcore
Gorguts	257	1989	Canada	\N	Death,Technical death,Avantgarde
Circus Maximus	256	2000	Norway	2000	Progressive
Aborted	255	1995	Belgium	\N	Brutal death,Melodic death,Grindcore
Municipal Waste	254	2000	USA	2000	Crossover thrash
Virgin Black	253	1995	Australia	\N	Gothic,Doom
Dismember	252	1988	Sweden	1988	Death
Joe Satriani	252	1984	USA	\N	Hard rock,Rock,Instrumental
Barren Earth	250	2007	Finland	2007	Melodic death,Progressive
Dream Evil	250	1999	Sweden	\N	Heavy,Power
Krisiun	249	1990	Brazil	1990	Brutal death
Negur? Bunget	249	1995	Romania	\N	Black,Folk
Uaral	248	1996	Chile	1996	Doom,Neofolk
Amaranthe	247	2008	Sweden	\N	Power,Industrial
Whitesnake	247	1978	United Kingdom	1978	Hard rock
Quo Vadis	246	1992	Canada	\N	Technical death
Mercenary	245	1991	Denmark	1991	Melodic death,Thrash,Gothenburg,Heavy
Pestilence	245	1986	The Netherlands	\N	Death,Progressive death,Technical death
The Agonist	244	2004	Canada	2004	Metalcore,Melodic death
Cavalera Conspiracy	243	2007	USA	\N	Thrash
Mudvayne	243	1996	USA	1996	Nu,Alternative
Origin	243	1997	USA	\N	Technical death
The Ocean	243	2000	Germany	2000	Post-metal,Sludge,Hardcore
Vintersorg	243	1994	Sweden	\N	Black,Progressive,Folk
Voivod	243	1982	Canada	1982	Thrash,Progressive
Fates Warning	242	1982	USA	\N	Us power,Progressive
Skid Row	240	1987	USA	1987	Heavy,Hard rock
Unexpect	239	1996	Canada	2015	Extreme avantgarde
Vital Remains	239	1989	USA	1989	Death
Kvelertak	238	2007	Norway	\N	Blackened hardcore,Punk
1349	236	1997	Norway	1997	Black
Mötley Crüe	236	1981	USA	2015	Glam rock,Glam
Tankard	236	1982	Germany	1982	Thrash
Dragonland	235	1999	Sweden	\N	Symphonic power
Cattle Decapitation	234	1996	USA	1996	Deathgrind,Goregrind
Revocation	234	2006	USA	\N	Technical death,Thrash
Pagan's Mind	233	2000	Norway	2000	Progressive,Power
Artillery	232	1982	Denmark	\N	Thrash
Shade Empire	232	1999	Finland	1999	Symphonic black
Arsis	231	2000	USA	\N	Melodic death,Technical death
Autopsy	231	1987	USA	1987	Death
Dark Fortress	230	1994	Germany	\N	Black
Lake Of Tears	230	1992	Sweden	1992	Gothic,Doom
Daylight Dies	229	1996	USA	\N	Melodic death,Doom
Lost Horizon	229	1990	Sweden	1990	Power
TesseracT	226	2003	United Kingdom	\N	Progressive math,Djent
Keep Of Kalessin	222	1994	Norway	1994	Black,Melodic black,Progressive black
Toxic Holocaust	222	1999	USA	\N	Blackened thrash,Crossover thrash
Possessed	220	1983	USA	1983	Death,Thrash
3 Inches Of Blood	219	1999	Canada	2015	Heavy,Power
Allegaeon	218	2005	USA	2005	Technical death,Melodic death
Beyond Creation	217	2005	Canada	\N	Technical death,Progressive death
Catamenia	215	1995	Finland	1995	Melodic black,Melodic death,Heavy
Def Leppard	215	1977	United Kingdom	\N	New wave of british heavy,Hard rock
Hatebreed	215	1994	USA	1994	Hardcore,Metalcore
Heavenly	215	1994	France	\N	Power
Heidevolk	215	2002	The Netherlands	2002	Folk
Soundgarden	215	1984	USA	\N	Grunge ,Stoner
Textures	215	2001	The Netherlands	2001	Progressive math
Sigh	214	1989	Japan	\N	Death,Black,Avantgarde,Thrash
Antimatter	213	1998	United Kingdom	1998	Atmospheric rock
Clutch	213	1990	USA	\N	Hard rock,Stoner rock
Crematory	211	1991	Germany	1991	Death,Gothic
Gorod	211	1997	France	\N	Technical death
Les Discrets	211	2003	France	2003	Black,Shoegaze
October Tide	211	1995	Sweden	\N	Death doom
Periphery	211	2005	USA	2005	Progressive math,Djent
Seventh Wonder	211	2000	Sweden	\N	Progressive
Stone Sour	209	1992	USA	1992	Hard rock,Alternative
Estatic Fear	208	1994	Austria	1999	Symphonic doom
Malevolent Creation	208	1987	USA	1987	Death
Esoteric	207	1992	United Kingdom	\N	Psychedelic doom,Funeral doom
Hate Eternal	207	1996	USA	1996	Brutal death
The Foreshadowing	207	1999	Italy	\N	Doom,Gothic
Atoma	206	2011	Sweden	2011	Post-metal,Post-rock
Deathstars	206	2000	Sweden	\N	Industrial gothic
Luca Turilli's Rhapsody	206	2011	Italy	2011	Symphonic power
Iron Savior	205	1996	Germany	\N	Power
Asphyx	204	1987	The Netherlands	1987	Death
Control Denied	204	1995	USA	2001	Progressive
Job For A Cowboy	203	2002	USA	2002	Deathcore,Death
Heaven And Hell	201	2006	USA	2010	Heavy
Thyrfing	200	1995	Sweden	1995	Viking black
Ministry	199	1981	USA	\N	Industrial,Synth pop
Queens Of The Stone Age	199	1997	USA	1997	Stoner,Stoner rock
Slumber	199	2002	Sweden	2010	Melodic doom
Threshold	199	1988	United Kingdom	1988	Progressive
Grave	198	1986	Sweden	\N	Death
Naglfar	198	1992	Sweden	1992	Melodic black
Benighted	197	1998	France	\N	Brutal death,Blackened death,Grindcore
Lordi	195	1992	Finland	1992	Hard rock,Glam
Alter Bridge	194	2004	USA	\N	Hard rock,Rock
Doom:VS	194	2004	Sweden	2004	Funeral doom
Finsterforst	194	2004	Germany	\N	Pagan folk
Luca Turilli	192	1999	Italy	1999	Symphonic power
Shadows Fall	192	1996	USA	\N	Modern thrash,Melodic death
Steve Vai	191	1982	USA	1982	Progressive rock
Twisted Sister	191	1972	USA	\N	Hard rock,Glam
Suicidal Tendencies	190	1981	USA	1981	Crossover thrash,Hardcore,Punk
Whitechapel	189	2006	USA	\N	Deathcore
Jeff Loomis	188	2005	USA	2005	Progressive,Instrumental
Månegarm	188	1995	Sweden	\N	Black,Viking folk
Van Canto	188	2006	Germany	2006	Power,A,Cappella
Nuclear Assault	187	1984	USA	\N	Thrash
A Forest Of Stars	186	2007	United Kingdom	2007	Atmospheric black
All Shall Perish	186	2002	USA	\N	Deathcore
The Sword	186	2003	USA	2003	Doom,Stoner
Caladan Brood	185	2008	USA	\N	Atmospheric black,Folk
Galneryus	185	2001	Japan	2001	Power
Adagio	184	2000	France	\N	Progressive,Symphonic power
Akercocke	184	1996	United Kingdom	1996	Black,Death,Progressive death
Axel Rudi Pell	184	1989	Germany	\N	Heavy,Power
Edenbridge	184	1998	Austria	1998	Symphonic,Progressive,Power
Inquisition	184	1988	Colombia, USA	\N	Black,Thrash
Chthonic	183	1995	Taiwan	1995	Melodic black,Extreme power,Folk
Dark Angel	183	1981	USA	\N	Bay area thrash
Parkway Drive	183	2002	Australia	2002	Metalcore
Psycroptic	183	1999	Australia	\N	Technical death
Poisonblack	182	2000	Finland	2000	Suomi,Depressive heavy
The Dillinger Escape Plan	182	1997	USA	\N	Math,Metalcore
Deafheaven	179	2010	USA	2010	Atmospheric black,Post-metal,Shoegaze
Rapture	179	1998	Finland	\N	Melodic death,Doom
Kauan	178	2005	Russia	2005	Folk,Doom,Black
Into Eternity	177	1997	Canada	\N	Melodic death,Progressive
Thy Catafalque	177	1998	Hungary, United Kingdom	1998	Avantgarde black
Enshine	175	2009		\N	Gothic doom
Kylesa	173	2001	USA	2001	Sludge
Cain's Offering	172	2005	Finland	\N	Power
Cathedral	172	1989	United Kingdom	1989	Doom,Stoner
Forbidden	172	1985	USA	\N	Bay area thrash
Spawn Of Possession	172	1997	Sweden	1997	Brutal death,Technical death
Soen	171	2004	Sweden	\N	Progressive,Alternative
Dalriada	170	2006	Hungary	2006	Folk
Evoken	170	1992	USA	\N	Death,Funeral doom
Misery Index	170	2001	USA	2001	Deathgrind
August Burns Red	169	2003	USA	\N	Technical metalcore
Disarmonia Mundi	169	2000	Italy	2000	Gothenburg
In Vain	168	2003	Norway	\N	Death,Progressive death
Jorn	167	2000	Norway	2000	Heavy
Absu	166	1989	USA	\N	Death,Blackened thrash
Anorexia Nervosa	166	1995	France	1995	Symphonic black,Industrial
Charon	166	1992	Finland	2011	Suomi,Death
Suicide Silence	166	2002	USA	2002	Deathcore
Vomitory	166	1989	Sweden	2013	Death
Born Of Osiris	165	2003	USA	2003	Progressive deathcore
Sleep	165	1990	USA	\N	Stoner
Unearth	165	1998	USA	1998	Metalcore
Forest Of Shadows	164	1997	Sweden	\N	Death doom,Atmospheric doom
Goatwhore	164	1997	USA	1997	Blackened thrash,Blackened death
Noumena	164	1998	Finland	\N	Melodic death
Stream Of Passion	164	2005	The Netherlands	2005	Symphonic progressive
White Zombie	164	1985	USA	1998	Noise rock,Alternative thrash,Industrial
Onslaught	162	1983	United Kingdom	1983	Thrash
Thin Lizzy	162	1969	Ireland	\N	Hard rock,Heavy
Ulcerate	162	2000	New Zealand	2000	Technical death
Battlelore	161	1999	Finland	\N	Folk,Power
Black Sun Aeon	161	2008	Finland	2008	Melodic death,Doom
Lacrimas Profundere	161	1993	Germany	\N	Doom,Gothic
Nocturnal Rites	161	1990	Sweden	1990	Power
Heathen	160	1984	USA	\N	Bay area thrash
Pelican	160	2001	USA	2001	Instrumental post-metal
Acid Bath	159	1990	USA	1997	Doom,Sludge
Amberian Dawn	158	2006	Finland	2006	Symphonic power
Converge	158	1990	USA	\N	Metalcore,Hardcore,Post-hardcore,Punk
Serenity	158	2001	Austria	2001	Symphonic power
Star One	158	2002	The Netherlands	\N	Progressive
Mar De Grises	157	2000	Chile	2000	Doom
Wolfheart	157	2013	Finland	\N	Melodic death
Darkspace	156	1999	Switzerland	1999	Ambient black
Legion Of The Damned	156	2005	The Netherlands	\N	Thrash,Death
Liquid Tension Experiment	155	1998	USA	1998	Progressive,Instrumental
Tarot	155	1985	Finland	\N	Power
The Sins Of Thy Beloved	154	1996	Norway	1996	Symphonic gothic
The Vision Bleak	154	2000	Germany	\N	Gothic
Fallujah	153	2007	USA	2007	Progressive death,Technical deathcore
Witherscape	153	2013	Sweden	\N	Atmospheric death,Extreme progressive
Einherjer	152	1993	Norway	1993	Viking folk
Primus	152	1984	USA	\N	Alternative,Experimental rock
Sunn O)))	152	1998	USA	1998	Drone doom,Dark,Ambient
Airbourne	151	2001	Australia	\N	Hard rock
Decrepit Birth	151	2001	USA	2001	Brutal death,Technical death
Grand Magus	151	1996	Sweden	\N	Doom,Heavy
Uriah Heep	151	1969	United Kingdom	1969	Hard rock
Flotsam And Jetsam	150	1983	USA	\N	Thrash
Blotted Science	149	2005	USA	2005	Progressive,Instrumental
Limbonic Art	149	1993	Norway	\N	Symphonic black,Black
Shadow Gallery	149	1985	USA	1985	Progressive
Fen	148	2006	United Kingdom	\N	Atmospheric black,Post-rock
Skyfire	148	1995	Sweden	1995	Extreme power
Corrosion Of Conformity	146	1982	USA	\N	Stoner
Vanden Plas	146	1990	Germany	1990	Power,Progressive
Halford	145	1999	United Kingdom	\N	Heavy
In Extremo	145	1995	Germany	1995	Medieval folk
Mg?a	145	2000	Poland	\N	Black
Solution .45	145	2007	Sweden	2007	Melodic death
Whispered	145	2001	Finland	\N	Extreme power
Diamond Head	144	1976	United Kingdom	1976	New wave of british heavy,Heavy
Hate	144	1990	Poland	\N	Death
God Dethroned	143	1990	The Netherlands	1990	Death,Thrash
Vreid	143	2004	Norway	\N	Black
In The Silence	142	2009	USA	2009	Progressive
Static-X	142	1994	USA	2013	Nu,Industrial,Alternative
Nachtmystium	141	2000	USA	2000	Black,Psychedelic black
Royal Hunt	141	1989	Denmark	\N	Symphonic power
Xasthur	141	1995	USA	1995	Depressive black
Suicidal Angels	140	2001	Greece	\N	Thrash
Wolfchant	140	2003	Germany	2003	Pagan folk,Melodic death
ReVamp	139	2009	The Netherlands	2016	Symphonic,Progressive
Sadus	139	1984	USA	1984	Death,Technical thrash
Blackfield	138	2000	Israel	\N	Progressive rock,Avantgarde rock
Nightrage	138	2000	Greece, Sweden	2000	Melodic death
The 69 Eyes	138	1990	Finland	\N	Gothic,Glam rock,Gothic rock,Punk rock
Pyramaze	137	2001	Denmark	2001	Progressive power
Serj Tankian	137	2007	USA	\N	Alternative,Hard rock
Gloryhammer	136	2010	United Kingdom	2010	Power
Hour Of Penance	136	1999	Italy	\N	Brutal death
Kalisia	136	1994	France	1994	Progressive death
Nargaroth	136	1996	Germany	\N	Black
Trail Of Tears	136	1996	Norway	1996	Gothic
Sanctuary	135	1985	USA	\N	Us power
Woods Of Desolation	135	2005	Australia	2005	Atmospheric black
Agathodaimon	134	1995	Germany	2014	Symphonic black,Extreme gothic
Sinergy	134	1997	Sweden, Finland	1997	Heavy,Power
Sonic Syndicate	134	2002	Sweden	\N	Gothenburg,Metalcore
Wuthering Heights	134	1989	Denmark	1989	Progressive power,Folk
I	133	2006	Norway	\N	Blackened heavy
Heavenwood	132	1992	Portugal	1992	Death,Gothic,Gothic doom
Pig Destroyer	132	1997	USA	\N	Grindcore
Doro	131	1987	Germany	1987	Hard rock,Heavy
Incantation	131	1989	USA	\N	Death
Virgin Steele	131	1981	USA	1981	Heavy,Symphonic
Anvil	130	1978	Canada	\N	Heavy
Bal-Sagoth	130	1989	United Kingdom	1989	Symphonic black,Power
Crowbar	130	1989	USA	\N	Sludge
Mourning Beloveth	130	1992	Ireland	1992	Death doom
Oranssi Pazuzu	130	2007	Finland	\N	Psychedelic black
Saor	130	2013	United Kingdom	2013	Atmospheric black,Folk
Ancient Bards	129	2006	Italy	\N	Symphonic power
Dark Lunacy	129	1997	Italy	1997	Melodic death,Symphonic
Fairyland	129	1998	France	\N	Symphonic power
Gama Bomb	129	2002	Ireland	2002	Thrash
In The Woods...	129	1991	Norway	\N	Black,Avantgarde,Progressive
Leviathan	129	1998	USA	1998	Ambient black
Sybreed	129	2003	Switzerland	2013	Groove thrash,Industrial
Spiritual Beggars	127	1992	Sweden	1992	Heavy,Stoner
In This Moment	126	2005	USA	\N	Melodic metalcore,Alternative
Saint Vitus	126	1979	USA	1979	Doom
U.D.O.	126	1987	Germany	\N	Heavy
Atreyu	125	1998	USA	1998	Melodic metalcore,Alternative
Communic	125	2003	Norway	\N	Progressive
Godflesh	125	1988	United Kingdom	1988	Industrial
Nightingale	125	1994	Sweden	\N	Gothic,Progressive
Anubis Gate	124	2001	Denmark	2001	Progressive,Power
Deströyer 666	124	1994	Australia, United Kingdom	\N	Blackened thrash
Europe	124	1979	Sweden	1979	Heavy,Hard rock
Pentagram	124	1971	USA	\N	Doom
Zyklon	124	1998	Norway	1998	Black,Death
Aeon	122	1999	Sweden	\N	Death
Orden Ogan	122	1996	Germany	1996	Medieval folk,Power
Skyclad	122	1990	United Kingdom	\N	Folk
Stormlord	122	1991	Italy	1991	Symphonic black
X Japan	122	1982	Japan	\N	Power
Aquilus	121	2000	Australia	2000	Atmospheric black,Symphonic black,Ambient
Hail Spirit Noir	121	2010	Greece	\N	Blackened progressive,Psychedelic rock
Wine From Tears	121	2002	Russia	2002	Death doom
Amesoeurs	120	2004	France	2009	Black,Shoegaze
Kampfar	120	1994	Norway	1994	Black,Folk
Unisonic	120	2009	Germany	\N	Melodic power,Hard rock
Visions Of Atlantis	120	2000	Austria	2000	Symphonic
Karnivool	119	1996	Australia	\N	Alternative,Progressive
OSI	119	2003	USA	2003	Progressive
Ouroboros	119	2001	Australia	\N	Technical death,Thrash
Russian Circles	119	2004	USA	2004	Post-metal
Vulture Industries	119	1998	Norway	\N	Avantgarde,Progressive
Blue Öyster Cult	118	1967	USA	1967	Hard rock
Drowning Pool	118	1996	USA	\N	Alternative
Hellhammer	118	1982	Switzerland	1982	First wave of black
Benediction	117	1989	United Kingdom	\N	Death
Blood Red Throne	117	1998	Norway	1998	Death
Gwar	117	1985	USA	\N	Alternative,Thrash,Hardcore,Punk
Illnath	117	1997	Denmark	1997	Symphonic black
Crimson Glory	116	1982	USA	\N	Progressive heavy
James LaBrie	116	1998	Canada	1998	Progressive
Witchcraft	116	2000	Sweden	\N	Stoner
Darkest Hour	115	1995	USA	1995	Melodic death,Metalcore
Otep	115	2000	USA	\N	Nu,Alternative
Red Fang	115	2005	USA	2005	Stoner,Stoner rock
Sacred Reich	115	1985	USA	\N	Speed,Thrash
Solefald	115	1995	Norway	1995	Progressive black,Avantgarde
Solitude Aeturnus	115	1987	USA	\N	Doom
Cruachan	114	1992	Ireland	1992	Celtic folk
D.R.I.	114	1982	USA	\N	Crossover thrash,Hardcore,Punk
Exhumed	114	1991	USA	1991	Deathgrind
Forefather	114	1997	United Kingdom	\N	Folk,Black
The Ruins Of Beverast	114	2003	Germany	2003	Black,Doom
Vision Divine	114	1998	Italy	\N	Power
Dokken	113	1977	USA	1977	Heavy
Hollenthon	113	1994	Austria	\N	Symphonic,Melodic death
Mägo De Oz	113	1989	Spain	1989	Heavy,Folk
Tribulation	113	2001	Sweden	\N	Thrash,Death,Black
Battle Beast	112	2008	Finland	2008	Heavy
Bring Me The Horizon	112	2004	United Kingdom	\N	Metalcore,Deathcore,Post-hardcore
Ex Deo	112	2008	Canada	2008	Symphonic death
Metsatöll	112	1999	Estonia	\N	Heavy,Folk
Skepticism	112	1991	Finland	1991	Funeral doom
Dordeduh	111	2009	Romania	\N	Atmospheric black
Redemption	111	2000	USA	2000	Progressive
Scale The Summit	111	2004	USA	\N	Progressive,Instrumental
Vildhjarta	111	2005	Sweden	2005	Progressive math,Djent
Blood Stain Child	110	2000	Japan	\N	Extreme power,Trancecore,Melodic death
Gorefest	110	1989	The Netherlands	1989	Death,Hard rock
Intronaut	110	2004	USA	\N	Post-metal,Atmospheric sludge
Monster Magnet	110	1989	USA	1989	Stoner
Sinister	110	1989	The Netherlands	\N	Death
Impaled Nazarene	109	1990	Finland	1990	Black,Grindcore,Crust punk
Kiuas	109	2000	Finland	2013	Power
While Heaven Wept	109	1989	USA	1989	Doom,Progressive power
Brymir	108	2006	Finland	\N	Extreme folk
Celesty	108	1998	Finland	1998	Power
Darkseed	108	1992	Germany	\N	Gothic
Die Apokalyptischen Reiter	108	1995	Germany	1995	Death,Heavy
Gris	108	2006	Canada	\N	Depressive black
Orange Goblin	108	1995	United Kingdom	1995	Stoner
The Crown	108	1998	Sweden	\N	Death,Thrash
Theocracy	108	2002	USA	2002	Progressive power
Violator	108	2002	Brazil	\N	Thrash
Mechina	107	2004	USA	2004	Industrial death
Necrophobic	107	1989	Sweden	\N	Death
Om	107	2003	USA	2003	Stoner,Drone doom
Vesania	107	1997	Poland	\N	Symphonic black
Lifelover	106	2005	Sweden	2005	Depressive black,Post-punk
The Kovenant	106	1998	Norway	\N	Industrial
Monstrosity	105	1990	USA	1990	Death
Persuader	104	1997	Sweden	\N	Power,Heavy
Razor	104	1984	Canada	1984	Thrash
Svartsot	104	2005	Denmark	\N	Folk
Avatarium	103	2013	Sweden	2013	Doom
Caliban	103	1997	Germany	\N	Metalcore
Graveyard	103	2006	Sweden	2006	Hard rock,Blues rock
Hail Of Bullets	103	2006	The Netherlands	\N	Death
Melvins	103	1984	USA	1984	Sludge,Doom
Oomph!	103	1989	Germany	\N	E,B,M ,Industrial,Industrial rock,Industrial
UnSun	103	2006	Poland	2006	Gothic
Vio-lence	103	1985	USA	2005	Thrash
Abbath	102	2015	Norway	2015	Black
Angelus Apatrida	102	2000	Spain	\N	Thrash
Blackmore's Night	102	1997	United Kingdom	1997	Folk rock
Labyrinth	102	1991	Italy	\N	Progressive power
Shining (NOR)	102	1999	Norway	1999	Jazz,Experimental,Jazz ,Avantgarde
Steel Panther	102	2000	USA	\N	Glam,Hard rock
Toxik	102	1985	USA	1985	Technical thrash
Tsjuder	102	1993	Norway	\N	Black
Bilocate	101	2003	Jordan	2003	Blackened death,Death doom,Extreme progressive
Brainstorm	101	1989	Germany	\N	Power
ColdWorld	101	2005	Germany	2005	Ambient black
Forgotten Tomb	101	1999	Italy	\N	Doom,Black,Melodic black
Nasum	101	1993	Sweden	1993	Grindcore
Beherit	100	1989	Finland	\N	Black,Ambient
Lord Belial	100	1992	Sweden	1992	Black
Marillion	100	1979	United Kingdom	\N	Progressive rock
Deadlock	99	1997	Germany	1997	Alternative,Melodic metalcore,Melodic death
Dominia	99	1999	Russia	\N	Symphonic death,Melodic death,Gothic
Lazarus A.D.	99	2005	USA	2005	Thrash
Midnattsol	99	2002	Norway	\N	Folk,Gothic
Pathfinder	99	2006	Poland	2006	Symphonic power
Skyforger	99	1991	Latvia	\N	Black,Folk
Thurisaz	99	1997	Belgium	1997	Atmospheric black,Death doom
Altar Of Plagues	98	2006	Ireland	2013	Black,Post-metal
Angel Witch	98	1977	United Kingdom	1977	New wave of british heavy,Heavy
Cephalic Carnage	98	1992	USA	\N	Grindcore
Demon Hunter	98	2000	USA	2000	Metalcore
Neurotech	98	2007	Slovenia	\N	Industrial,Symphonic
Thy Light	98	2005	Brazil	2005	Depressive black
Abigail Williams	97	2005	USA	\N	Symphonic black,Metalcore,Atmospheric black
Aura Noir	97	1993	Norway	1993	Black,Thrash
Enforcer	97	2005	Sweden	\N	Heavy,Speed
Hell	97	1982	United Kingdom	1982	New wave of british heavy,Heavy
Jesu	97	2003	United Kingdom	\N	Drone,Shoegaze ,Post-metal
Obscure Sphinx	97	2008	Poland	2008	Post-metal,Doom,Sludge
Prong	97	1986	USA	\N	Thrash,Industrial
Earth	96	1990	USA	1990	Drone doom,Psychedelic rock
Killing Joke	96	1979	United Kingdom	\N	Industrial,Post-,Punk,Darkwave
Mr. Bungle	96	1985	USA	1985	Avantgarde
MyGrain	96	2004	Finland	2015	Gothenburg
October Falls	96	2001	Finland	2001	Doom,Folk,Ambient black
Trees Of Eternity	96	2008	Finland	\N	Gothic doom
Wilderun	96	2012	USA	2012	Symphonic folk
Disillusion	95	1994	Germany	\N	Extreme progressive,Progressive
Dreamtale	95	1998	Finland	1998	Power
Mushroomhead	95	1993	USA	\N	Alternative,Industrial,Nu
Officium Triste	95	1994	The Netherlands	1994	Death doom
Rosetta	95	2003	USA	\N	Post-metal,Sludge
Silencer	95	1995	Sweden	1995	Black
Trollfest	95	2004	Norway	\N	Folk
Varg	95	2005	Germany	2005	Melodic black,Pagan folk
Angtoria	94	2004	United Kingdom	2011	Symphonic
Blackguard	94	2001	Canada	2001	Gothic,Folk,Power
Dir En Grey	94	1997	Japan	\N	Alternative
Forest Stream	94	1995	Russia	1995	Doom
Morbid Saint	94	1986	USA	\N	Thrash
Terrorizer	94	1986	USA	1986	Grindcore,Death
Threat Signal	94	2004	Canada	\N	Melodic death
Axxis	93	1988	Germany	1988	Heavy,Power
Carnifex	93	2005	USA	\N	Deathcore
Eyehategod	93	1988	USA	1988	Doom,Sludge
Riot V	93	1976	USA	\N	Heavy,Hard rock
Stormwarrior	93	1998	Germany	1998	Power
Terra Tenebrosa	93	2009	Sweden	\N	Avantgarde,Ambient
Theatres Des Vampires	93	1994	Italy	1994	Symphonic black,Gothic
Witchery	93	1997	Sweden	\N	Thrash
Darkane	92	1998	Sweden	1998	Death,Thrash
Diabolical Masquerade	92	1993	Sweden	2004	Avantgarde black
Gotthard	92	1992	Switzerland	1992	Hard rock
Isole	92	1990	Sweden	\N	Epic doom
Dan Swanö	91	1998	Sweden	1998	Extreme progressive
Deeds Of Flesh	91	1993	USA	\N	Brutal death
Thunderstone	91	2000	Finland	2000	Power,Heavy
Warning	91	1993	United Kingdom	2009	Epic doom
Xerath	91	2007	United Kingdom	2007	Symphonic math
40 Watt Sun	90	2009	United Kingdom	\N	Doom
Allen/Lande	90	2005	USA	2005	Heavy
KMFDM	90	1984	Germany	\N	Industrial,Dance
Savage Circus	90	2004	Germany	2004	Power
Beseech	89	1992	Sweden	\N	Gothic
King Of Asgard	89	2008	Sweden	2008	Viking black
Machinae Supremacy	89	2000	Sweden	\N	Power
Pallbearer	89	2008	USA	2008	Doom
Ratt	89	1983	USA	\N	Glam,Hard rock
The Absence	89	2002	USA	2002	Melodic death
The Project Hate MCMXCIX	89	1998	Sweden	\N	Industrial death
Voyager	89	1999	Australia	1999	Symphonic progressive
Demolition Hammer	88	1986	USA	\N	Thrash
Entwine	88	1999	Finland	1999	Suomi
Kivimetsän Druidi	88	2002	Finland	\N	Symphonic folk
Mordab	88	2001	Iran	2001	Progressive death
Skálmöld	88	2009	Iceland	\N	Viking folk
Warmen	88	2000	Finland	2000	Progressive power
Agent Steel	87	1984	USA	\N	Speed,Thrash
Anata	87	1993	Sweden	1993	Technical death
Andromeda	87	1999	Sweden	\N	Progressive
Brujeria	87	1989	Mexico	1989	Grindcore,Death
Enthroned	87	1993	Belgium	\N	Black
Lantlôs	87	2005	Germany	2005	Atmospheric black,Post-rock
Mnemic	87	1998	Denmark	\N	Industrial,Nu
Penumbra	87	1996	France	1996	Symphonic gothic
Veil Of Maya	87	2004	USA	\N	Deathcore
Augury	86	2001	Canada	2001	Technical death
Austere	86	2007	Australia	2010	Depressive black
Northern Kings	86	2007	Finland	2007	Symphonic
Portal	86	1994	Australia	\N	Experimental death
Rata Blanca	86	1985	Argentina	1985	Heavy,Hard rock,Power
To/Die/For	86	1993	Finland	2016	Suomi
UFO	85	1969	United Kingdom	1969	Hard rock,Heavy
Fields Of The Nephilim	84	1984	United Kingdom	\N	Gothic rock,Gothic,Death
Helevorn	84	1999	Spain	1999	Gothic doom
Lunatica	84	1998	Switzerland	\N	Symphonic power
Aenaon	83	2005	Greece	2005	Progressive black
At Vance	83	1998	Germany	\N	Heavy,Power
Behexen	83	1994	Finland	1994	Black
Holy Grail	83	2008	USA	\N	Heavy,Power
Zonaria	83	2001	Sweden	2001	Power,Melodic death
Dark The Suns	82	2005	Finland	2013	Gothic
Funeral	82	1991	Norway	1991	Funeral doom,Doom
Hellyeah	82	2006	USA	\N	Groove heavy
Jag Panzer	82	1981	USA	1981	Us power
Mournful Congregation	82	1993	Australia	\N	Funeral doom
Ragnarok	82	1994	Norway	1994	Black
Wodensthrone	82	2005	United Kingdom	2016	Atmospheric black
Yob	82	1996	USA	1996	Doom,Stoner
An Autumn For Crippled Children	81	2008	The Netherlands	\N	Atmospheric black,Post-rock,Shoegaze
Flowing Tears	81	1999	Germany	1999	Gothic
Helstar	81	1982	USA	\N	Power,Speed,Thrash
Mezarkabul	81	1987	Turkey	1987	Heavy,Thrash
The 3rd And The Mortal	81	1992	Norway	2005	Atmospheric doom,Experimental doom,Jazz rock
Abigor	80	1993	Austria	1993	Black
Bonded By Blood	80	2005	USA	\N	Thrash
Sabbat	80	1985	United Kingdom	1985	Pagan thrash
Slash	80	2009	USA	\N	Hard rock,Blues rock
Turmion Kätilöt	80	2003	Finland	2003	Industrial
Almah	79	2006	Brazil	\N	Power,Heavy
Anciients	79	2010	Canada	2010	Progressive
Ark	79	1990	Norway	2011	Heavy,Progressive
Blindead	79	1999	Poland	1999	Progressive,Post-metal
Cobalt	79	2003	USA	\N	Black
Devourment	79	1995	USA	1995	Brutal death
Divine Heresy	79	2006	USA	\N	Death
Gehenna	79	1993	Norway	1993	Black
Grim Reaper	79	1979	United Kingdom	1988	Heavy,New wave of british heavy
Iron Fire	79	1995	Denmark	1995	Speed,Power,Heavy
Nervecell	79	2000	UAE	\N	Hardcore,Death
Nortt	79	1995	Denmark	1995	Funeral doom,Black
Versailles	79	2007	Japan	\N	J rock,Power
Ancient Rites	78	1988	Belgium	1988	Viking black
Crimfall	78	2007	Finland	\N	Symphonic folk
Exumer	78	1985	Germany	1985	Thrash
Fractal Gates	78	2007	France	\N	Melodic death
Hirax	78	1984	USA	1984	Thrash
Lethian Dreams	78	2002	France	\N	Atmospheric doom
Mystic Prophecy	78	2000	Germany	2000	Power
Stam1na	78	1996	Finland	\N	Alternative thrash,Progressive
Winterfylleth	78	2007	United Kingdom	2007	Atmospheric black,Pagan black
Abysmal Dawn	77	2003	USA	\N	Death
Arkan	77	2005	France	2005	Melodic death,Oriental folk
DGM	77	1994	Italy	\N	Progressive
Diabulus In Musica	77	2006	Spain	2006	Symphonic
Fair To Midland	77	1998	USA	\N	Progressive,Alternative
God Forbid	77	1996	USA	1996	Melodic thrash,Metalcore
In Solitude	77	2002	Sweden	2015	Heavy
Kittie	77	1996	Canada	1996	Nu,Alternative
Marty Friedman	77	1988	USA	\N	Neoclassical heavy,Progressive
Power Quest	77	2001	United Kingdom	2001	Power
Reverend Bizarre	77	1994	Finland	2007	Doom
SikTh	77	2001	United Kingdom	2001	Math,Progressive metalcore
Skinless	77	1992	USA	\N	Brutal death
Stormtroopers Of Death	77	1985	USA	1985	Crossover thrash,Hardcore,Punk
The Angelic Process	77	1999	USA	2007	Drone,Ambient,Shoegaze
Urgehal	77	1992	Norway	1992	Black
Armored Saint	76	1982	USA	\N	Heavy
Brutal Truth	76	1990	USA	1990	Grindcore
For My Pain	76	1999	Finland	\N	Suomi
Madder Mortem	76	1993	Norway	1993	Avantgarde,Gothic
Mirrorthrone	76	2000	Switzerland	\N	Avantgarde
Neuraxis	76	1994	Canada	1994	Technical death
Thrawsunblat	76	2009	Canada	\N	Blackened folk
Thulcandra	76	2003	Germany	2003	Melodic black,Melodic death
Ajattara	75	1996	Finland	2012	Black
Aria	75	1985	Russia	1985	Heavy
Boris	75	1992	Japan	\N	Drone doom,Psychedelic stoner
Despised Icon	75	2002	Canada	2002	Deathcore
Hibria	75	1996	Brazil	\N	Heavy
Imperanon	75	1999	Finland	1999	Extreme power,Melodic death
Manilla Road	75	1976	USA	\N	Heavy,Power
Shaman	75	2000	Brazil	2000	Progressive power
Vallenfyre	75	2010	United Kingdom	\N	Death
Alkaloid	74	2014	Germany	2014	Extreme progressive
Bloodbound	74	2004	Sweden	\N	Heavy
Caligula's Horse	74	2011	Australia	2011	Alternative,Progressive
Damageplan	74	2003	USA	2004	Groove metal
Demonaz	74	2007	Norway	2007	Viking black
Ektomorf	74	1994	Hungary	\N	Groove thrash,Hardcore
Elis	74	2003	Liechtenstein	2003	Gothic
Nocturnus AD	74	1986	USA	\N	Atmospheric death,Technical death
Sarcófago	74	1985	Brazil	1985	Black,Thrash,Death
Warrel Dane	74	2007	USA	\N	Gothic,Gothic rock
Whiplash	74	1984	USA	1984	Thrash
Beneath The Massacre	73	2004	Canada	\N	Brutal death,Technical death
Blaze Bayley	73	2007	United Kingdom	2007	Heavy
Bloodshot Dawn	73	2003	United Kingdom	\N	Melodic death
Colosseum	73	2006	Finland	2006	Funeral doom
Derdian	73	1998	Italy	\N	Symphonic power
Godgory	73	1992	Sweden	1992	Melodic death
Halestorm	73	1998	USA	\N	Hard rock
Process Of Guilt	73	2002	Portugal	2002	Doom,Atmospheric sludge
Warlock	73	1983	Germany	1988	Heavy
Lumsk	72	2000	Norway	2000	Viking folk
MaYaN	72	2010	The Netherlands	\N	Melodic death
Morgoth	72	1987	Germany	1987	Death,Industrial
Paradox	72	1986	Germany	\N	Thrash
Rebellion	72	2001	Germany	2001	Heavy,Power
Ufomammut	72	1999	Italy	\N	Doom,Stoner
As Blood Runs Black	71	2003	USA	2003	Deathcore
Astral Doors	71	2002	Sweden	\N	Heavy
Babymetal	71	2010	Japan	2010	J-,Pop,Melodic death
Demilich	71	1990	Finland	\N	Progressive death
Exhorder	71	1985	USA	1985	Thrash,Groove thrash
Hatesphere	71	1993	Denmark	\N	Death,Thrash
Iron Mask	71	2002	Belgium	2002	Power
Martyr	71	1994	Canada	\N	Technical death
Mistur	71	2005	Norway	2005	Black,Viking folk
Raintime	71	1999	Italy	2012	Progressive,Extreme power
Sevendust	71	1994	USA	1994	Nu,Alternative
Amaseffer	70	2004	Israel	\N	Progressive,Oriental folk
Ancient	70	1992	Norway	1992	Melodic black
Darkwater	70	2003	Sweden	\N	Melodic progressive
Dornenreich	70	1996	Austria	1996	Melodic black,Acoustic rock,Ambient
Opera IX	70	1988	Italy	\N	Symphonic black,Black,Folk
Trouble	70	1979	USA	1979	Doom,Psychedelic doom
Andre Matos	69	2006	Brazil	\N	Power
Conception	69	1989	Norway	1989	Thrash,Progressive,Power
Diablo	69	1995	Finland	\N	Melodic death,Progressive,Groove thrash
Illdisposed	69	1991	Denmark	1991	Death
Rotten Sound	69	1993	Finland	\N	Grindcore
WarCry	69	2001	Spain	2001	Power
Winds Of Plague	69	2002	USA	\N	Deathcore,Symphonic
Bethlehem	68	1991	Germany	1991	Black,Gothic rock
Civil War	68	2012	Sweden	\N	Heavy,Power
Darzamat	68	1995	Poland	1995	Symphonic black,Gothic
Freak Kitchen	68	1992	Sweden	\N	Melodic hard rock,Progressive hard rock
Krypteria	68	2004	Germany	2004	Symphonic gothic
Nemesea	68	2002	The Netherlands	\N	Symphonic gothic,Gothic rock
Pretty Maids	68	1981	Denmark	1981	Heavy
Psychotic Waltz	68	1985	USA	\N	Progressive
Satan	68	1979	United Kingdom	1979	New wave of british heavy,Thrash,Heavy
Astarte	67	1995	Greece	2014	Black
Beyond Twilight	67	1992	Denmark	1992	Progressive
Cinderella	67	1982	USA	\N	Glam
Coal Chamber	67	1994	USA	1994	Nu
Cor Scorpii	67	2004	Norway	\N	Black
Cormorant	67	2007	USA	2007	Melodic death,Progressive
Cult Of Fire	67	2010	Czech Republic	\N	Black
Dew-Scented	67	1992	Germany	1992	Death,Thrash
Nocturnal Depression	67	2004	France	\N	Depressive black
The Cult	67	1983	United Kingdom	1983	Heavy,Hard rock,Gothic rock
The Fall Of Every Season	67	2004	Norway	\N	Atmospheric doom
Tierra Santa	67	1997	Spain	1997	Heavy,Power
After The Burial	66	2004	USA	\N	Progressive deathcore,Metalcore
Secrets Of The Moon	66	1995	Germany	1995	Black
Thy Art Is Murder	66	2006	Australia	\N	Technical deathcore
Arckanum	65	1992	Sweden	1992	Black
Elysion	65	2006	Greece	\N	Symphonic gothic
Ereb Altor	65	2003	Sweden	2003	Doom,Pagan black
Jason Becker	65	1988	USA	\N	Neoclassical heavy,Progressive
Jungle Rot	65	1994	USA	1994	Death
Remembrance	65	2004	France	\N	Funeral doom,Death doom
To-Mera	65	2005	United Kingdom	2005	Symphonic progressive
Wolverine	65	1995	Sweden	\N	Melodic death,Progressive
Batushka	64	2015	Poland	2015	Black,Doom
Black Tide	64	2004	USA	\N	Heavy
Bucovina	64	2000	Romania	2000	Folk
Gary Moore	64	1970	Ireland	2011	Hard rock,Blues rock,Heavy
Myrkgrav	64	2003	Norway, Finland	2003	Black,Folk
Newsted	64	2012	USA	2013	Heavy
Panopticon	64	2007	USA	2007	Atmospheric black
Savage Messiah	64	2007	United Kingdom	\N	Thrash
Sear Bliss	64	1993	Hungary	1993	Black
Wizard	64	1989	Germany	\N	Power
Amiensus	63	2010	USA	2010	Melodic black,Progressive
Brain Drill	63	2005	USA	\N	Technical death,Grindcore
Cacophony	63	1986	USA	1986	Neoclassical power,Progressive
Desire	63	1992	Portugal	2015	Doom
Hacride	63	2001	France	2001	Progressive death,Alternative,Progressive
Horna	63	1993	Finland	\N	Black
Ill Niño	63	1999	USA	1999	Nu
Killer Be Killed	63	2011	USA	\N	Groove metal
Massacre	63	1984	USA	1984	Death
Mekong Delta	63	1985	Germany	\N	Progressive thrash
Royal Thunder	63	2006	USA	2006	Heavy,Stoner
Symfonia	63	2010	Finland	2011	Power
The Monolith Deathcult	63	2002	The Netherlands	2002	Death,Atmospheric death,Brutal death
Throes Of Dawn	63	1994	Finland	\N	Extreme symphonic,Gothic
Adrenaline Mob	62	2011	USA	2011	Heavy
Black Crown Initiate	62	2013	USA	\N	Progressive death
Defeated Sanity	62	1994	Germany	1994	Brutal death
Desaster	62	1988	Germany	\N	Blackened thrash
Falloch	62	2010	United Kingdom	2010	Folk,Post-,Rock
Loudness	62	1981	Japan	\N	Hard rock,Heavy
Subrosa	62	2005	USA	2005	Sludge
Swashbuckle	62	2005	USA	\N	Thrash
The Human Abstract	62	2004	USA	2004	Progressive metalcore
XIV Dark Centuries	62	1998	Germany	\N	Viking folk
Year Of No Light	62	2001	France	2001	Atmospheric sludge
Angel Dust	61	1984	Germany	2011	Thrash,Power
Battlecross	61	2003	USA	2003	Melodic death,Thrash
Cannabis Corpse	61	2006	USA	\N	Death
Clouds	61	2013		2013	Atmospheric doom
Dagoba	61	2000	France	\N	Industrial thrash,Groove thrash
God Seed	61	2009	Norway	2009	Black
Heathen Foray	61	2005	Austria	\N	Viking folk,Pagan folk
Midnight Odyssey	61	2007	Australia	2007	Atmospheric black,Ambient black
Powerglove	61	2005	USA	\N	Instrumental power
Racer X	61	1985	USA	1985	Heavy
Slough Feg	61	2005	USA	\N	Heavy
Thorns	61	1989	Norway	1989	Industrial black
Tuatha De Danann	61	1995	Brazil	\N	Celtic folk
White Wizzard	61	2007	USA	2007	Heavy
Xanthochroid	61	2005	USA	\N	Melodic black,Progressive black
Xentrix	61	1985	United Kingdom	1985	Thrash
Avalanch	60	1989	Spain	2012	Heavy,Power
Circle II Circle	60	2001	USA	2001	Progressive power,Progressive heavy
Dawn Of Tears	60	1999	Spain	\N	Melodic death
Exciter	60	1978	Canada	1978	Speed,Thrash
Lich King	60	2004	USA	\N	Thrash
Nails	60	2007	USA	2007	Grindcore,Hardcore,Punk
Stolen Babies	60	1997	USA	\N	Extreme avantgarde,Dark cabaret
Stryper	60	1982	USA	1982	Heavy,Glam
Susperia	60	1998	Norway	\N	Blackened thrash,Melodic death,Thrash
Urfaust	60	2003	The Netherlands	2003	Black
Blood Ceremony	59	2006	Canada	\N	Psychedelic doom
Exivious	59	1997	The Netherlands	1997	Progressive,Fusion,Instrumental
Forever Storm	59	2006	Serbia	\N	Heavy,Power
Kroda	59	2003	Ukraine	2003	Black,Pagan folk
Kypck	59	2007	Finland	\N	Doom
Northland	59	2004	Spain	2004	Extreme folk,Melodic death
Lindemann	44	2015	Germany	\N	Industrial
Raven	59	1974	United Kingdom, USA	\N	New wave of british heavy,Heavy
The Gentle Storm	59	2014	The Netherlands	2014	Symphonic progressive,Acoustic,Folk
Void Of Silence	59	1999	Italy	\N	Doom
Bölzer	58	2008	Switzerland	2008	Black,Death
Bleeding Through	58	1999	USA	2014	Metalcore
Dååth	58	2000	USA	2000	Death,Industrial death,Thrash
Dødheimsgard	58	1994	Norway	\N	Black,Avantgarde black,Industrial black
Funeral Mist	58	1993	Sweden	1993	Black
Holy Moses	58	1980	Germany	\N	Thrash
Lurker Of Chalice	58	2001	USA	2001	Ambient black
Lustre	58	2008	Sweden	\N	Atmospheric black
Neaera	58	2003	Germany	2003	Melodic death,Metalcore
Nightfall	58	1991	Greece	\N	Melodic death
Pantheist	58	2000	Belgium, United Kingdom	2000	Funeral doom
Revolution Renaissance	58	2008	Finland	2010	Heavy,Power
Rigor Mortis	58	1983	USA	1983	Speed,Thrash
Scarab	58	2001	Egypt	\N	Brutal death
Severe Torture	58	1997	The Netherlands	1997	Brutal death,Death
The Great Old Ones	58	2009	France	\N	Atmospheric black,Ambient
Tvangeste	58	1996	Russia, Canada	1996	Symphonic black
Wisdom	58	2001	Hungary	\N	Power
Witchfinder General	58	1979	United Kingdom	1979	New wave of british heavy,Heavy,Doom
Words Of Farewell	58	2007	Germany	\N	Melodic death
Aeternam	57	2007	Canada	2007	Melodic death
Agrypnie	57	2004	Germany	\N	Melodic black,Post-metal
Alchemist	57	1987	Australia	1987	Progressive
Architects	57	2004	United Kingdom	\N	Math,Hardcore,Metalcore
Avatar	57	2001	Sweden	2001	Melodic death,Nu
Conquering Dystopia	57	2013	USA	\N	Progressive
Dark Age	57	1994	Germany	1994	Gothenburg,Metalcore
Devil Doll	57	1987	Slovenia	\N	Progressive rock,Symphonic rock
Guilt Machine	57	2009	The Netherlands	2009	Progressive
ICS Vortex	57	2011	Norway	\N	Progressive
Isengard	57	1989	Norway	1989	Black,Folk
Mithotyn	57	1992	Sweden	1999	Black,Folk
Saratoga	57	1992	Spain	1992	Heavy,Power
Sargeist	57	1999	Finland	\N	Black
Secret Sphere	57	1997	Italy	1997	Power
Sieges Even	57	1986	Germany	2008	Progressive
Silentium	57	1995	Finland	1995	Gothic,Doom
Tesla	57	1984	USA	\N	Hard rock
Twilightning	57	1998	Finland	1998	Power,Heavy,Hard rock
Vanishing Point	57	1997	Australia	\N	Progressive,Symphonic power
Watchtower	57	1982	USA	1982	Progressive thrash
Wolf	57	1995	Sweden	\N	Heavy
Asking Alexandria	56	2008	United Kingdom	2008	Metalcore,Trancecore
Dawn Of Solace	56	2006	Finland	2013	Doom,Gothic
Dimension Zero	56	1995	Sweden	1995	Gothenburg
Hardcore Superstar	56	1997	Sweden	\N	Glam rock,Glam
Krallice	56	2007	USA	2007	Black
Mortemia	56	2009	Norway	\N	Symphonic gothic
Siebenbürgen	56	1994	Sweden	1994	Melodic black
Avulsed	55	1991	Spain	\N	Brutal death
Debauchery	55	2000	Germany	2000	Death
Kronos	55	1994	France	\N	Heavy,Death,Thrash
Lost Soul	55	1990	Poland	1990	Technical death
Lunar Aurora	55	1994	Germany	2012	Black
Planet X	55	1999	USA	1999	Progressive,Fusion
Silent Stream Of Godless Elegy	55	1995	Czech Republic	\N	Doom,Folk
Soulfallen	55	2003	Finland	2003	Symphonic,Melodic death
Twilight Force	55	2011	Sweden	\N	Power,Symphonic
Winds	55	1998	Norway	1998	Avantgarde,Progressive,Symphonic
Axenstar	54	1998	Sweden	\N	Power
Black Messiah	54	1994	Germany	1994	Symphonic black,Pagan folk
Der Weg Einer Freiheit	54	2009	Germany	\N	Black
Eisbrecher	54	2002	Germany	2002	Industrial
Gnaw Their Tongues	54	2005	The Netherlands	\N	Experimental black,Noise,Drone
Impellitteri	54	1987	USA	1987	Heavy
Judas Iscariot	54	1992	USA	2002	Black
Keldian	54	2005	Norway	2005	Symphonic power,Adult,Oriented rock
Menhir	54	1995	Germany	\N	Viking black
Myrkur	54	2013	Denmark	2013	Black
Nifelheim	54	1990	Sweden	\N	Black,Speed
Scars On Broadway	54	2005	USA	2005	Alternative,Hard rock
Schammasch	54	2009	Switzerland	\N	Black,Death
The Devil's Blood	54	2007	The Netherlands	2007	Hard rock
Uneven Structure	54	2008	France	\N	Djent,Ambient
Wyrd	54	1997	Finland	1997	Black,Folk
Cerebral Bore	53	2006	United Kingdom	\N	Brutal death
Dark Empire	53	2004	USA	2004	Progressive power
Dragged Into Sunlight	53	2006	United Kingdom	\N	Blackened sludge,Death
Hanging Garden	53	2004	Finland	2004	Death doom
Hexen	53	2003	USA	\N	Thrash
Kingcrow	53	1996	Italy	1996	Heavy,Progressive
Mob Rules	53	1994	Germany	\N	Power
Quiet Riot	53	1973	USA	1973	Glam,Hard rock,Heavy
Subway To Sally	53	1992	Germany	\N	Industrial heavy,Medieval folk
Wolfmother	53	2004	Australia	2004	Hard rock
!T.O.O.H.!	52	1990	Czech Republic	2013	Technical death,Progressive grindcore
Agoraphobic Nosebleed	52	1994	USA	1994	Grindcore
Akphaezya	52	2002	France	\N	Avantgarde
Anacrusis	52	1986	USA	1986	Progressive thrash
Cadaveria	52	2001	Italy	\N	Avantgarde,Symphonic
Deadsoul Tribe	52	2000	Austria	2000	Progressive
Dolorian	52	1997	Finland	\N	Black,Doom
Glorior Belli	52	2002	France	2002	Black,Sludge
Hypno5e	52	2003	France	\N	Experimental progressive,Math,Metalcore
Silent Force	52	1999	Germany	1999	Progressive power
Teräsbetoni	52	2003	Finland	\N	Power,Hard rock
The Meads Of Asphodel	52	1998	United Kingdom	1998	Experimental black
The Unguided	52	2010	Sweden	\N	Melodic death
Todtgelichter	52	2002	Germany	2002	Black,Avantgarde
Torture Killer	52	2002	Finland	\N	Death
Unleash The Archers	52	2007	Canada	2007	Heavy,Power
Vallendusk	52	2011	Indonesia	\N	Atmospheric black
Acrassicauda	51	2001	Iraq, USA	2001	Thrash
Aina	51	2003	The Netherlands	\N	Progressive power
Klimt 1918	51	1999	Italy	1999	Gothic,Atmospheric rock
Lyriel	51	2003	Germany	\N	Folk
Monolithe	51	2001	France	2001	Doom
Mortician	51	1989	USA	\N	Deathgrind
SIG:AR:TYR	51	2003	Canada	2003	Blackened folk
Skiltron	51	2004	Argentina	\N	Folk
Azarath	50	1998	Poland	1998	Blackened death
Chrome Division	50	2004	Norway	\N	Heavy
DoomSword	50	1997	Italy	1997	Doom
Folkearth	50	2004	Lithuania	\N	Folk
Indukti	50	2001	Poland	2001	Progressive,Progressive rock
Kontinuum	50	2001	Iceland	\N	Death doom,Post-metal
Luca Turilli's Dreamquest	50	2005	Italy	2005	Electronic symphonic
Nagelfar	50	1993	Germany	2002	Black
Pagan Altar	50	1978	United Kingdom	1978	Doom
ShamRain	50	2000	Finland	\N	Gothic
Slugdge	50	2012	United Kingdom	2012	Blackened death,Sludge
The Duskfall	50	1999	Sweden	\N	Melodic death
Triosphere	50	2004	Norway	2004	Progressive,Power
Acid Drinkers	49	1986	Poland	\N	Crossover thrash,Groove thrash
Black Majesty	49	2002	Australia	2002	Power
Cloudkicker	49	2005	USA	\N	Progressive,Instrumental
Dead Congregation	49	2004	Greece	2004	Death
Demonical	49	2006	Sweden	\N	Death
Manticora	49	1996	Denmark	1996	Progressive power
Metalium	49	1999	Germany	2011	Power
Ov Hell	49	2009	Norway	2009	Black
Tank	49	1980	United Kingdom	\N	New wave of british heavy,Heavy
Tengger Cavalry	49	2010	China	2010	Melodic death,Folk
Abominable Putridity	48	2003	Russia	\N	Brutal death
Alkonost	48	1995	Russia	1995	Pagan folk
Arsames	48	2002	Iran	\N	Death,Thrash
Autumn	48	1995	The Netherlands	1995	Gothic,Symphonic rock,Symphonic
Disembowelment	48	1989	Australia	1993	Death doom
Dragonlord	48	2000	USA	2000	Symphonic black
Ephel Duath	48	1998	Italy	2014	Progressive black,Avantgarde
Fantômas	48	1998	USA	1998	Avantgarde
Jon Oliva's Pain	48	2003	USA	\N	Progressive
Kotipelto	48	2002	Finland	2002	Power
Macbeth	48	1995	Italy	\N	Gothic
Magica	48	2002	Romania	2002	Symphonic power
Majesty	48	1997	Germany	\N	Heavy,Power
Mortal Sin	48	1985	Australia	1985	Thrash
Skyharbor	48	2009	India	\N	Progressive math,Djent
Sleepytime Gorilla Museum	48	1999	USA	1999	Avantgarde,Avantgarde rock
The Berzerker	48	1995	Australia	2010	Industrial grindcore,Death
Becoming The Archetype	47	1999	USA	1999	Progressive metalcore
Cancer	47	1987	United Kingdom	\N	Death,Thrash
Chelsea Grin	47	2007	USA	2007	Deathcore
Entrails	47	1990	Sweden	\N	Death
Lux Occulta	47	1994	Poland	1994	Atmospheric black,Avantgarde black,Extreme avantgarde
Noctem	47	2001	Spain	\N	Melodic black,Death
Ophis	47	2001	Germany	2001	Death doom
Skull Fist	47	2006	Canada	\N	Heavy,Speed
Tourniquet	47	1990	USA	1990	Thrash
Tracedawn	47	2005	Finland	\N	Melodic death
Aeternus	46	1993	Norway	1993	Blackened death
Aghora	46	1995	USA	\N	Progressive
Alghazanth	46	1995	Finland	1995	Symphonic black
Anterior	46	2003	United Kingdom	2012	Metalcore
Arjen Anthony Lucassen	46	1980	The Netherlands	1980	Progressive rock
Dark Suns	46	1997	Germany	\N	Progressive death,Extreme progressive,Progressive,Progressive rock
Imperium Dekadenz	46	2004	Germany	2004	Black
Lock Up	46	1998	United Kingdom	\N	Death,Grindcore
Miseration	46	2006	Sweden	2006	Death
Pensées Nocturnes	46	2009	France	\N	Depressive black,Neoclassical
Raunchy	46	1994	Denmark	1994	Alternative,Industrial,Melodic death
ReinXeed	46	2002	Sweden	\N	Power
Sulphur Aeon	46	2010	Germany	2010	Death
The Man-Eating Tree	46	2009	Finland	\N	Suomi
Thy Majestie	46	1998	Italy	1998	Symphonic power
Transcending Bizarre?	46	2000	Greece	\N	Avantgarde,Symphonic black
Ved Buens Ende	46	1994	Norway	1994	Black,Avantgarde
Warlord	46	1980	USA	\N	Heavy
Ava Inferi	45	2005	Portugal	2005	Gothic doom
Before The Rain	45	1997	Portugal	\N	Death doom
ETHS	45	1999	France	1999	Nu,Metalcore
Euphoreon	45	2009	New Zealand	\N	Extreme power
Extol	45	1993	Norway	1993	Progressive death,Extreme progressive
Feared	45	2007	Sweden	\N	Progressive death
Harakiri For The Sky	45	2011	Austria	2011	Black,Post-metal
Impending Doom	45	2005	USA	\N	Deathcore
Lord Mantis	45	2008	USA	2008	Blackened sludge
Macabre	45	1985	USA	\N	Grindcore,Death
Mutiny Within	45	2002	USA	2002	Progressive metalcore,Extreme power
Pink Cream 69	45	1987	Germany	\N	Melodic hard rock,Heavy
Repulsion	45	1985	USA	1985	Grindcore
Rishloo	45	2002	USA	\N	Alternative,Progressive
Timeless Miracle	45	2001	Sweden	2001	Power
Universum	45	2006	Australia	\N	Gothenburg
Archgoat	44	1989	Finland	1989	Black,Death
Archspire	44	2007	Canada	\N	Technical death
Disgorge	44	1992	USA	1992	Brutal death
Engel	44	2004	Sweden	\N	Modern gothenburg
Entombed A.D.	44	2014	Sweden	2014	Death
Hannes Grossmann	44	2013	Germany	\N	Progressive death,Technical death
Impaled	44	1997	USA	1997	Deathgrind,Goregrind ,Death
Shylmagoghnar	44	2004	The Netherlands	2004	Atmospheric black,Progressive black,Melodic death
The Old Dead Tree	44	1997	France	\N	Gothic
Waylander	44	1993	United Kingdom	1993	Celtic folk
Zero Hour	44	1993	USA	2008	Progressive
Abyssal	43	2011	United Kingdom	2011	Blackened death
Amenra	43	2003	Belgium	\N	Doom,Sludge,Hardcore
Antestor	43	1990	Norway	1990	Death doom,Black,Symphonic black
Ataraxie	43	2000	France	\N	Death,Funeral doom
Black Tusk	43	2005	USA	2005	Sludge,Hardcore,Punk
Deceased	43	1985	USA	\N	Death,Thrash,Heavy
Dionysus	43	1999	Sweden	1999	Melodic power
Elysian Blaze	43	2003	Australia	\N	Atmospheric black,Funeral doom
Enthrope	43	2006	Finland	2006	Melodic death
Horrendous	43	2009	USA	\N	Death
Imperia	43	2003	Norway	2003	Symphonic,Gothic
Infestus	43	2003	Germany	\N	Black
Jolly	43	2008	USA	2008	Progressive
Kromlek	43	2004	Germany	2012	Pagan folk
Lost Society	43	2010	Finland	2010	Thrash
Master	43	1983	USA	\N	Death
Morgana Lefay	43	1986	Sweden	1986	Power
Sacramentum	43	1990	Sweden	2001	Black,Death
Skindred	43	1999	United Kingdom	1999	Nu,Alternative,Ragga
Starkill	43	2012	USA	\N	Melodic death
Virus	43	2000	Norway	2000	Avantgarde
Atrocity	42	1985	Germany	\N	Death,Gothic industrial
Borealis	42	2005	Canada	2005	Power
Cancer Bats	42	2004	Canada	\N	Hardcore,Metalcore,Punk
Charred Walls Of The Damned	42	2009	USA	2009	Us power,Thrash
Clawfinger	42	1990	Sweden	\N	Alternative,Nu
Crimson Shadows	42	2006	Canada	2006	Extreme power
Degradead	42	2006	Sweden	\N	Gothenburg
Demonic Resurrection	42	2000	India	2000	Death,Symphonic,Blackened death
Echoes Of Eternity	42	2005	USA	\N	Symphonic progressive
Evocation	42	1991	Sweden	1991	Death
Galadriel	42	1995	Slovak Republic	\N	Symphonic doom
Helrunar	42	2001	Germany	2001	Black
Hooded Menace	42	2007	Finland	\N	Death doom
Ikuinen Kaamos	42	1997	Finland	1997	Black,Death doom,Progressive death
Kat	42	1979	Poland	\N	Heavy,Speed,Thrash
Klone	42	1999	France	1999	Alternative,Progressive
Magic Kingdom	42	1998	Belgium	\N	Power
Maximum The Hormone	42	1998	Japan	1998	Alternative,Hardcore,Punk
Mouth Of The Architect	42	2003	USA	\N	Atmospheric sludge,Post-metal
Nadja	42	2002	Canada	2002	Ambient,Drone ,Doom
Nocte Obducta	42	1995	Germany	\N	Black,Progressive black,Avantgarde black
Otyg	42	1995	Sweden	1995	Folk
Setherial	42	1993	Sweden	\N	Black
Skogen	42	2009	Sweden	2009	Black
SOiL	42	1997	USA	\N	Hard rock,Grunge
Timo Tolkki's Avalon	42	2012	Finland	2012	Power,Symphonic
Unanimated	42	1988	Sweden	\N	Melodic death
Vicious Rumors	42	1980	USA	1980	Us power
36 Crazyfists	41	1994	USA	\N	Alternative,Metalcore,Melodic metalcore
Acid Witch	41	2007	USA	2007	Death doom
Carnivore	41	1982	USA	2010	Crossover thrash,Hardcore,Punk
Craft	41	1994	Sweden	1994	Black
Dark Forest	41	2003	Canada	\N	Viking black
Darkestrah	41	1999	Kyrgyzstan, Germany	1999	Pagan black
Excalion	41	2000	Finland	\N	Power
Fleshcrawl	41	1987	Germany	1987	Death
Heljareyga	41	2009	Faroe Islands	\N	Progressive
Mithras	41	1998	United Kingdom	1998	Atmospheric death,Brutal death
Necrophagia	41	1983	USA	\N	Death
Pathology	41	2006	USA	2006	Brutal death
Peccatum	41	1998	Norway	2006	Avantgarde
Saint Deamon	41	2006	Sweden	2006	Heavy,Power
Saltatio Mortis	41	2000	Germany	\N	Medieval folk
Suspyre	41	2001	USA	2001	Progressive
Taranis	41	1999	Hungary	2013	Symphonic black,Progressive
Trepalium	41	2000	France	2000	Death
A Pale Horse Named Death	40	2011	USA	\N	Doom,Gothic
Ablaze In Hatred	40	2004	Finland	2004	Melodic death,Doom
Aetherian	40	2013	Greece	\N	Melodic death
Almôra	40	2001	Turkey	2001	Power,Folk
Dreamshade	40	2006	Switzerland	\N	Melodic death
Dredg	40	1993	USA	1993	Alternative,Progressive rock
Gwydion	40	1995	Portugal	\N	Viking folk
Huntress	40	2009	USA	2009	Heavy
Inborn Suffering	40	2002	France	\N	Death,Doom
Leverage	40	2004	Finland	2004	Symphonic power,Progressive heavy
Man Must Die	40	2002	United Kingdom	\N	Technical death
Mandragora Scream	40	1997	Italy	1997	Gothic
Mokoma	40	1996	Finland	\N	Grunge rock,Thrash
Mortal Love	40	2000	Norway	2000	Gothic
Mortiis	40	1993	Norway	\N	Ambient,Darkwave,Gothic industrial
Sunset In The 12th House	40	2011	Romania	2011	Post-metal,Post-rock,Psychedelic rock
Warrant	40	1984	USA	\N	Hard rock
Assassin	39	1982	Germany	1982	Thrash
Azaghal	39	1995	Finland	\N	Black
Brutality	39	1986	USA	1986	Death
Budgie	39	1967	United Kingdom	\N	Hard rock,Heavy,Progressive rock
Cauldron	39	2006	Canada	2006	Heavy
Demigod	39	1990	Finland	2008	Death
Dissona	39	2005	USA	2005	Progressive,Avantgarde
Ixion	39	2004	France	\N	Atmospheric doom
Katra	39	2006	Finland	2006	Symphonic
Nomans Land	39	1996	Russia	\N	Doom,Viking folk,Viking black
Ondskapt	39	2000	Sweden	2000	Black
Rudra	39	1992	Singapore	\N	Death,Thrash
Shattered Hope	39	2002	Greece	2002	Death doom
Spastic Ink	39	1993	USA	\N	Progressive,Instrumental
Wormed	39	1998	Spain	1998	Brutal death,Grindcore
Aborym	38	1991	Italy	\N	Industrial black
Belenos	38	1995	France	1995	Pagan black
Church Of Misery	38	1995	Japan	\N	Doom,Stoner
Cirith Ungol	38	1972	USA	1972	Heavy,Doom
Crystal Viper	38	2003	Poland	\N	Heavy
Darkwell	38	1999	Austria	1999	Gothic
Destinity	38	1996	France	\N	Symphonic black,Melodic death
Dismal Euphony	38	1992	Norway	1992	Death,Melodic black
Divinefire	38	2004	Sweden	\N	Power
Domine	38	1983	Italy	1983	Power
Falls Of Rauros	38	2005	USA	\N	Atmospheric black,Neofolk
Gates Of Ishtar	38	1992	Sweden	1992	Melodic death
Girlschool	38	1975	United Kingdom	\N	New wave of british heavy,Heavy
Gorgasm	38	1996	USA	1996	Brutal death
Hecate Enthroned	38	1993	United Kingdom	\N	Symphonic black,Blackened death,Melodic black
Intervals	38	2011	Canada	2011	Progressive
Lita Ford	38	1979	USA	\N	Hard rock,Heavy
Luna Mortis	38	2008	USA	2008	Melodic death
Morgul	38	1991	Norway	\N	Black
Outworld	38	1997	USA	1997	Progressive power
Pomegranate Tiger	38	2008	Canada	\N	Progressive,Instrumental
Seven Kingdoms	38	2006	USA	2006	Power
Striker	38	2007	Canada	\N	Thrash,Speed
Uncle Acid & The Deadbeats	38	2009	United Kingdom	2009	Doom,Psychedelic rock
Varathron	38	1988	Greece	\N	Black
Wormrot	38	2007	Singapore	2007	Grindcore
Yearning	38	1994	Finland	2010	Symphonic gothic,Atmospheric doom
Adorned Brood	37	1993	Germany	1993	Folk,Black
Ancient Wisdom	37	1992	Sweden	\N	Atmospheric black
Burst	37	1993	Sweden	1993	Progressive metalcore,Hardcore,Post-hardcore ,Post-metal,Progressive sludge
Demonoid	37	2002	Sweden	\N	Death,Thrash
Detonation	37	1997	The Netherlands	1997	Melodic death,Thrash
Downfall Of Nur	37	2013	Argentina	\N	Atmospheric black,Folk
Grip Inc.	37	1993	USA	1993	Thrash
Katalepsy	37	2003	Russia	\N	Brutal death
Khors	37	2004	Ukraine	2004	Black
Mael Mórdha	37	1998	Ireland	\N	Celtic doom
Omen	37	1983	USA	1983	Heavy,Us power
On Thorns I Lay	37	1992	Greece	\N	Gothic,Death doom,Doom
Progenie Terrestre Pura	37	2009	Italy	2009	Atmospheric black,Industrial black
Pungent Stench	37	1988	Austria	2007	Death
Steel Attack	37	1995	Sweden	1995	Heavy,Power
Superjoint Ritual	37	1993	USA	2004	Sludge
Torchbearer	37	2003	Sweden	2003	Blackened death,Thrash
Viikate	37	1996	Finland	\N	Melodic heavy
Waltari	37	1986	Finland	1986	Progressive thrash,Avantgarde,Alternative,Symphonic death,Industrial
Æther Realm	36	2010	USA	\N	Melodic death,Folk
...And Oceans	36	1995	Finland	1995	Symphonic black,Industrial
Agruss	36	2009	Ukraine	\N	Atmospheric black,Death
Anal Cunt	36	1988	USA	1988	Grindcore,Noisecore
Aquaria	36	1999	Brazil	\N	Symphonic power
Arena	36	1995	United Kingdom	1995	Progressive
Broken Hope	36	1988	USA	\N	Death,Goregrind
Chimp Spanner	36	2004	United Kingdom	2004	Progressive,Djent,Instrumental
Crisix	36	2008	Spain	\N	Thrash
Draugnim	36	1999	Finland	1999	Pagan black
Fueled By Fire	36	2002	USA	\N	Thrash
Hammers Of Misfortune	36	1998	USA	1998	Progressive
Khold	36	2000	Norway	\N	Black
Krampus	36	2009	Italy	2009	Folk,Melodic death
Krux	36	2002	Sweden	\N	Doom
Lunarsea	36	2003	Italy	2003	Melodic death
Mitochondrion	36	2003	Canada	\N	Progressive death,Blackened death
Monuments	36	2006	United Kingdom	2006	Progressive math,Djent
Mortification	36	1990	Australia	\N	Death
Nader Sadek	36	2011	USA	2011	Death
Nightmare	36	1979	France	\N	Heavy,Symphonic power
Paul Wardingham	36	2010	Australia	2010	Progressive math
Protector	36	1986	Germany	\N	Death,Thrash
Putrid Pile	36	2000	USA	2000	Brutal death
Times Of Grace	36	2007	USA	\N	Melodic metalcore
Tombs	36	2007	USA	2007	Black,Sludge
Trick Or Treat	36	2002	Italy	\N	Power
Tyranny	36	2001	Finland	2001	Funeral doom
Vehemence	36	1997	USA	\N	Technical death
Aesma Daeva	35	1998	USA	1998	Symphonic
Altaria	35	1999	Finland	2016	Power
Chevelle	35	1995	USA	1995	Alternative,Hard rock
Dirge	35	1994	France	\N	Sludge,Industrial,Atmospheric sludge,Doom
Estradasphere	35	1998	USA	1998	Avantgarde,Fusion
Evereve	35	1993	Germany	\N	Atmospheric gothic
Fferyllt	35	2003	Russia	2003	Folk
Inferi	35	2006	USA	\N	Melodic death,Technical death
Kahtmayan	35	1998	Iran	1998	Progressive,Thrash,Instrumental
Kimaera	35	2000	Lebanon	\N	Death doom
Korzus	35	1983	Brazil	1983	Thrash
Minsk	35	2002	USA	\N	Post-metal
Noekk	35	2004	Germany	2004	Progressive doom
Nyktalgia	35	2001	Germany	2008	Depressive black
Odious Mortem	35	1998	USA	1998	Technical death
Orchid	35	2007	USA	\N	Doom
Pan.thy.monium	35	1990	Sweden	1990	Avantgarde,Progressive death
Pro-Pain	35	1992	USA	\N	Crossover thrash,Hardcore
Spectral Lore	35	2005	Greece	2005	Atmospheric black,Dark ambient
Steelwing	35	2009	Sweden	\N	Heavy
Subsignal	35	2007	Germany	2007	Progressive
Subterranean Masquerade	35	1997		\N	Progressive,Psychedelic rock
Walls Of Jericho	35	1998	USA	1998	Metalcore
Abnormality	34	2005	USA	\N	Brutal death,Technical death
Ambeon	34	2001	The Netherlands	2001	Progressive,Ambient
Arafel	34	1997	Israel	\N	Melodic black
Ashes Of Ares	34	2012	USA	2012	Heavy
Ashes You Leave	34	1995	Croatia	\N	Doom,Gothic doom
Atrophy	34	1986	USA	1986	Thrash
Dawn Of Demise	34	2003	Denmark	\N	Death
Emptiness	34	1998	Belgium	1998	Blackened death
Ghost Bath	34	2012	USA	\N	Depressive black,Post-metal
Menace Ruine	34	2006	Canada	2006	Atmospheric black,Drone doom,Neofolk,Noise
Prostitute Disfigurement	34	2000	The Netherlands	\N	Brutal death
Pythia	34	2007	United Kingdom	2007	Symphonic power
Sadist	34	1991	Italy	\N	Progressive death
Shaolin Death Squad	34	2001	USA	2001	Progressive,Avantgarde
Storm	34	1993	Norway	1995	Blackened folk
Tad Morose	34	1991	Sweden	1991	Progressive power
Torture Squad	34	1990	Brazil	\N	Death,Thrash
Tygers Of Pan Tang	34	1978	United Kingdom	1978	New wave of british heavy,Heavy
White Skull	34	1988	Italy	\N	Power
Acid King	33	1993	USA	1993	Stoner
Age Of Silence	33	2004	Norway	\N	Avantgarde
Antaeus	33	1994	France	1994	Black
Aosoth	33	2002	France	\N	Black
Artrosis	33	1995	Poland	1995	Gothic
Beyond The Black	33	2014	Germany	\N	Symphonic
Butterfly Temple	33	1995	Russia	1995	Pagan folk
Callisto	33	2001	Finland	\N	Post-metal
Eye Of Solitude	33	2010	United Kingdom	2010	Death doom
Falchion	33	2002	Finland	2009	Melodic death,Folk
Fjoergyn	33	2003	Germany	2003	Folk,Symphonic
Funeralium	33	2003	France	\N	Funeral doom
InnerWish	33	1995	Greece	1995	Power
Kalevala	33	2007	Russia	\N	Folk
Life Of Agony	33	1989	USA	1989	Hardcore,Alternative,Grunge
Loits	33	1996	Estonia	\N	Black
Manes	33	1993	Norway	1993	Black,Electro avantgarde
Misþyrming	33	2013	Iceland	\N	Black
Morgion	33	1990	USA	1990	Death,Doom
Obsidian Kingdom	33	2005	Spain	\N	Extreme progressive
Olympos Mons	33	2002	Finland	2002	Power
Slaughter	33	1984	Canada	1990	Death,Thrash
Spineshank	33	1996	USA	1996	Industrial,Nu
Sunburst	33	2010	Greece	\N	Progressive,Power
The 11th Hour	33	2008	The Netherlands	2008	Doom
The Exploited	33	1979	United Kingdom	\N	Hardcore,Crossover thrash,Punk
Thergothon	33	1990	Finland	1990	Funeral doom
Torche	33	2004	USA	\N	Stoner,Sludge
Viathyn	33	2006	Canada	2006	Progressive power
Weeping Silence	33	1998	Malta	\N	Gothic,Doom
Whyzdom	33	2007	France	2007	Symphonic
Ásmegin	32	1998	Norway	\N	Viking folk
Arthemesia	32	1994	Finland	1994	Melodic black
Botanist	32	2009	USA	\N	Experimental black
Coffins	32	1996	Japan	1996	Death
Crashdïet	32	2000	Sweden	\N	Glam
Cryptic Wintermoon	32	1993	Germany	1993	Symphonic black,Thrash
Dawn Of Destiny	32	2005	Germany	\N	Power
Deals Death	32	2008	Sweden	2008	Gothenburg
Elder	32	2006	USA	\N	Psychedelic rock,Stoner
Enslavement Of Beauty	32	1995	Norway	1995	Melodic black,Gothic
Ghoul	32	2001	USA	\N	Death,Thrash
Hamferð	32	2008	Faroe Islands	2008	Doom
Heavens Gate	32	1987	Germany	1999	Heavy
Megaherz	32	1993	Germany	1993	Industrial,Alternative
Michael Angelo Batio	32	1993	USA	\N	Neoclassical heavy,Instrumental hard rock
Nanowar Of Steel	32	2003	Italy	2003	Heavy,Power
Narnia	32	1996	Sweden	\N	Power
Native Construct	32	2011	USA	2011	Progressive
Nox Aurea	32	2005	Sweden	\N	Melodic death,Doom
Raventale	32	2005	Ukraine	2005	Atmospheric black,Doom
Sinner	32	1980	Germany	\N	Heavy
SpellBlast	32	1999	Italy	1999	Folk,Power
Spiral Architect	32	1993	Norway	\N	Technical progressive
Three	32	1994	USA	1994	Progressive rock
Windhand	32	2008	USA	\N	Doom,Stoner
Amoral	31	1997	Finland	1997	Technical death,Power,Death,Thrash
Blind Stare	31	1999	Finland	\N	Melodic death,Extreme power
Coffinworm	31	2007	USA	2007	Blackened sludge,Doom
Crucified Barbara	31	1998	Sweden	2016	Hard rock,Heavy
Desultory	31	1989	Sweden	1989	Death
Devian	31	2006	Sweden	2011	Black,Death
Dreadnought	31	2012	USA	2012	Black,Folk,Progressive
Endstille	31	2000	Germany	\N	Black
Faithful Darkness	31	2004	Sweden	2004	Gothenburg
Forest Silence	31	1997	Hungary	\N	Dark,Ambient,Atmospheric black
Helheim	31	1992	Norway	1992	Viking black
Human Fortress	31	1997	Germany	\N	Hard rock,Power
Lascaille's Shroud	31	2008	USA	2008	Progressive death
Le Grand Guignol	31	1996	Luxembourg	\N	Symphonic black,Avantgarde black
Lingua Mortis Orchestra	31	2013	Germany	2013	Symphonic
Longing For Dawn	31	2002	Canada	\N	Death doom,Funeral doom
Murmuüre	31	2006	France	2006	Ambient black
Nailbomb	31	1994	Brazil	1995	Industrial thrash
Negative	31	1997	Finland	1997	Suomi,Glam
Panzerchrist	31	1994	Denmark	\N	Death,Blackened death
Rivers Of Nihil	31	2009	USA	2009	Technical death
Root	31	1987	Czech Republic	\N	Black
Skuggsjá	31	2014	Norway	2014	Pagan folk
System Divide	31	2008	USA	2014	Melodic death
Teitanblood	31	2003	Spain	2003	Black,Death
The Chasm	31	1993	Mexico	\N	Death
The Red Chord	31	1999	USA	1999	Deathcore,Grindcore,Technical deathcore
Verdunkeln	31	1998	Germany	\N	Psychedelic black
Abruptum	30	1990	Sweden	1990	Black,Ambient,Noise
Cadacross	30	1997	Finland	2005	Death,Melodic death,Folk,Power
Carpe Noctem	30	2005	Iceland	2005	Black
Cloak Of Altering	30	2011	The Netherlands	\N	Avantgarde black
Code	30	1998	United Kingdom	1998	Black,Doom,Post-rock,Progressive rock
Criminal	30	1991	Chile	\N	Death,Thrash
Rob Rock	22	2000	USA	\N	Us power
Cryonic Temple	30	1996	Sweden	1996	Power
Extreme Noise Terror	30	1985	United Kingdom	\N	Crust,Punk ,Death,Grindcore
Faal	30	2005	The Netherlands	2005	Black,Doom
Gormathon	30	2009	Sweden	\N	Melodic death
Heretoir	30	2006	Germany	2006	Depressive black
Hermética	30	1987	Argentina	1994	Thrash
Highland Glory	30	2001	Norway	2001	Power
Iskald	30	2005	Norway	\N	Melodic black
Katharsis	30	1994	Germany	1994	Black
Kawir	30	1993	Greece	\N	Pagan black
Kuolemanlaakso	30	2010	Finland	2010	Death doom
Light This City	30	2002	USA	2008	Melodic death,Metalcore
Lizzy Borden	30	1983	USA	1983	Heavy
Lullacry	30	1999	Finland	2014	Suomi
Merciless	30	1986	Sweden	1986	Thrash
Mourning Lenore	30	2008	Portugal	2012	Death doom
Netherion	30	2010	Syria	2010	Death
Phideaux	30	1996	USA	\N	Progressive rock
Runic	30	2001	Spain	2001	Viking folk,Extreme power
Saurom	30	1996	Spain	\N	Folk,Power
ScoX	30	2010	Iran	2010	Brutal death
Solstice	30	1990	United Kingdom	\N	Epic doom
Todesbonden	30	2003	USA	2003	Atmospheric doom,Atmospheric gothic
Troll	30	1992	Norway	\N	Industrial black
Valkyrja	30	2004	Sweden	2004	Black
Wulfgar	30	2005	Sweden	\N	Melodic death
Ævangelist	29	2010	USA	2010	Blackened death
Almafuerte	29	1995	Argentina	\N	Heavy,Thrash,Folk
American Head Charge	29	1996	USA	1996	Industrial,Nu
Autumnblaze	29	1996	Germany	\N	Black,Gothic rock,Doom,Gothic
Beheaded	29	1991	Malta	1991	Brutal death,Technical death
Christian Mistress	29	2008	USA	\N	Heavy
Daemonarch	29	1998	Portugal	1998	Melodic black
Destrage	29	2005	Italy	\N	Melodic death,Metalcore
Hammerforce	29	2006	Russia	2006	Symphonic,Power,Progressive
King's X	29	1980	USA	\N	Progressive rock,Progressive
Mare Cognitum	29	2011	USA	2011	Atmospheric black
Nahemah	29	1997	Spain	2012	Symphonic black,Progressive death,Post-metal
Necrodeath	29	1984	Italy	1984	Blackened thrash
Nothgard	29	2008	Germany	\N	Pagan black
Onmyo-Za	29	1999	Japan	1999	Heavy,Folk
Pharaoh	29	1997	USA	\N	Heavy,Us power
Procession	29	2006	Chile	2006	Doom
Scar The Martyr	29	2013	USA	\N	Alternative,Industrial
Stravaganzza	29	2003	Spain	2003	Symphonic
Sunless Rise	29	2006	Russia	\N	Melodic death,Extreme power
Theory In Practice	29	1995	Sweden	1995	Melodic death,Technical death
Thrudvangar	29	1998	Germany	\N	Viking black
Trauma	29	1988	Poland	1988	Death
Vale Of Pnath	29	2006	USA	\N	Technical death
Zimmers Hole	29	1991	Canada	1991	Speed,Thrash
Acheron	28	1988	USA	\N	Blackened death
Barathrum	28	1990	Finland	1990	Black
Bell Witch	28	2010	USA	\N	Funeral doom
Bifröst	28	2005	Austria	2005	Pagan black,Folk
Biomechanical	28	2001	United Kingdom	\N	Progressive,Thrash
Black Flag	28	1976	USA	1976	Sludge,Hardcore,Punk
Dies Irae	28	1992	Poland	2005	Death
Dreams Of Sanity	28	1991	Austria	1991	Symphonic
Ekove Efrits	28	2001	Iran	\N	Black
Folkstone	28	2004	Italy	2004	Folk
Gloria Morti	28	1999	Finland	\N	Thrash,Melodic black,Melodic death
Kälter	28	2006	Canada	2006	Melodic death,Progressive
Kobra And The Lotus	28	2008	Canada	\N	Heavy
Kongh	28	2004	Sweden	2004	Sludge,Doom
Negator	28	2003	Germany	\N	Black
Nervosa	28	2010	Brazil	2010	Thrash
Nightbringer	28	1999	USA	\N	Black
Obliteration	28	2001	Norway	2001	Death
Odious	28	1998	Egypt	\N	Black,Oriental folk
Omega Lithium	28	2007	Croatia	2007	Gothic industrial
Poema Arcanus	28	1992	Chile	\N	Progressive doom
Scarve	28	1994	France	1994	Technical death
Sceptic	28	1994	Poland	\N	Technical death
Schandmaul	28	1998	Germany	1998	Medieval folk,Medieval,Folk rock
Skagos	28	2007	Canada	\N	Atmospheric black
SpiRitual	28	2005	Germany	2005	Gothic
Svartby	28	2004	Russia	\N	Folk
The Amenta	28	2002	Australia	2002	Industrial death
The Axis Of Perdition	28	2002	United Kingdom	2013	Industrial black,Dark,Ambient
Weakling	28	1998	USA	1998	Black
Welicoruss	28	2005	Russia	\N	Symphonic black
When Nothing Remains	28	2010	Sweden	2010	Funeral doom
Winger	28	1987	USA	\N	Glam,Hard rock
Wretched	28	2005	USA	2005	Melodic deathcore,Technical death
Zeal And Ardor	28	2014	USA	\N	Avantgarde black
Armageddon	27	1997	Sweden	1997	Melodic death,Heavy,Power
Atlantean Kodex	27	2005	Germany	\N	Heavy,Doom
Beautiful Sin	27	2005	Germany	2005	Heavy
Callenish Circle	27	1992	The Netherlands	2007	Gothenburg
Chaos Divine	27	2005	Australia	2005	Melodic death,Progressive
Crionics	27	1997	Poland	2011	Black,Death
Crom	27	1997	Germany	1997	Viking folk,Power
Decadence	27	2003	Sweden	\N	Thrash,Melodic death
Dekadent	27	2005	Slovenia	2005	Symphonic black
Dråpsnatt	27	2005	Sweden	\N	Atmospheric black,Pagan black
Emigrate	27	2005	Germany	2005	Industrial
Eucharist	27	1989	Sweden	\N	Melodic death
Frosttide	27	2009	Finland	2009	Extreme power
Hammer Horde	27	2007	USA	\N	Pagan black
Immortal Souls	27	1991	Finland	1991	Melodic death,Heavy,Doom
Ingested	27	2004	United Kingdom	\N	Brutal death
Insania	27	1992	Sweden	1992	Power
Kekal	27	1995	Indonesia	\N	Black,Avantgarde
Khanate	27	2000	USA	2000	Extreme sludge,Doom
Leah	27	2010	Canada	\N	Symphonic
Oceans Of Sadness	27	1995	Belgium	1995	Extreme avantgarde,Extreme progressive
Paragon	27	1990	Germany	\N	Power
Parasite Inc.	27	2007	Germany	2007	Melodic death
Planet Of Zeus	27	2000	Greece	\N	Stoner
Sister Sin	27	2002	Sweden	2002	Heavy
Slechtvalk	27	1999	The Netherlands	\N	Black
Sons Of Seasons	27	2007	Germany	2007	Symphonic progressive
Sun Of The Blind	27	2006	Switzerland	\N	Avantgarde black
Svart Crown	27	2004	France	2004	Black,Death
The Few Against Many	27	2008	Sweden	\N	Melodic death,Symphonic
The Haarp Machine	27	2007	United Kingdom	2007	Technical death,Progressive
Therapy?	27	1989	United Kingdom	\N	Alternative,Hard rock
Thou	27	2005	USA	2005	Sludge,Doom
Timo Tolkki	27	1994	Finland	\N	Neoclassical power,Progressive
Worship	27	1998	Germany	1998	Funeral doom
Al-Namrood	26	2008	Saudi Arabia	\N	Black
An Abstract Illusion	26	2007	Sweden	2007	Melodic death,Progressive death
Arakain	26	1982	Czech Republic	\N	Thrash
Arcana Coelestia	26	2005	Italy	2005	Funeral doom,Atmospheric black
Bornholm	26	2000	Hungary	\N	Pagan black
Bulldozer	26	1980	Italy	1980	Thrash
Cage	26	1992	USA	\N	Heavy
Cold Body Radiation	26	2009	The Netherlands	2009	Atmospheric black,Shoegaze,Post-rock
Crystal Eyes	26	1992	Sweden	\N	Power
Deathchain	26	2001	Finland	2001	Thrash,Death
Derek Sherinian	26	1996	USA	\N	Progressive,Progressive rock
Desolate Shrine	26	2010	Finland	2010	Death
Destroy Destroy Destroy	26	2003	USA	\N	Extreme power
Drowning The Light	26	2003	Australia	2003	Black
Elegy	26	1992	The Netherlands	\N	Progressive power
Elf	26	1967	USA	1967	Blues rock,Hard rock
Fozzy	26	1999	USA	\N	Heavy
Gardenian	26	1996	Sweden	1996	Melodic death
Hades Almighty	26	1998	Norway	\N	Black
Holy Terror	26	1985	USA	1985	Thrash
HolyHell	26	2005	USA	\N	Symphonic power
Illidiance	26	2004	Russia	2004	Symphonic black,Industrial
Lord	26	2003	Australia	\N	Power,Heavy
Manslaughter	26	2007	Poland	2007	Death,Black
Obtest	26	1992	Lithuania	\N	Brutal death,Pagan black,Pagan folk
Oceans Of Slumber	26	2011	USA	2011	Extreme progressive
Ram-Zet	26	1998	Norway	\N	Extreme avantgarde
Sacrifice	26	1983	Canada	1983	Thrash
Salem	26	1985	Israel	\N	Black,Doom,Death
Satariel	26	1993	Sweden	1993	Black,Melodic death
Shakra	26	1997	Switzerland	\N	Hard rock,Heavy
Tharaphita	26	1995	Estonia	1995	Pagan black
The Black Mages	26	2003	Japan	2010	Progressive
Thy Serpent	26	1992	Finland	1992	Melodic black
To Cast A Shadow	26	2005	Norway	\N	Doom,Gothic
Yggdrasil	26	2001	Sweden	2001	Folk
1000 Funerals	25	2005	Iran	2011	Funeral doom
Aaskereia	25	1997	Germany	1997	Pagan black
Amaran	25	2000	Sweden	2005	Gothenburg
Angelcorpse	25	1995	USA	1995	Blackened death
ASP	25	1999	Germany	\N	Industrial gothic,Gothic rock
Beyond Fear	25	2005	USA	2005	Heavy
Blackthorn	25	2004	Russia	\N	Symphonic gothic
Blitzkrieg	25	1980	United Kingdom	1980	New wave of british heavy,Heavy
Christian Muenzner	25	2011	Germany	\N	Progressive,Instrumental
Christopher Lee	25	2009	United Kingdom	2009	Heavy,Power
Concerto Moon	25	1996	Japan	\N	Power
Coronatus	25	2002	Germany	2002	Gothic
Death Breath	25	2005	Sweden	\N	Death
Depressed Mode	25	2005	Finland	2005	Funeral doom,Melodic death
Fall Of The Leafe	25	1996	Finland	2007	Melodic death,Gothic,Heavy
Forever Slave	25	2000	Spain	2000	Gothic
Gallhammer	25	2003	Japan	\N	Black,Crust,Punk
Germ	25	2003	Australia	2003	Depressive black,Electronica,Shoegaze
Glittertind	25	2001	Norway	\N	Viking folk,Punk rock
Irminsul	25	2005	Sweden	2005	Viking folk
Izegrim	25	1996	The Netherlands	\N	Death,Melodic death,Thrash
Lääz Rockit	25	1982	USA	1982	Bay area thrash
Make Them Suffer	25	2008	Australia	\N	Symphonic deathcore
Michael Schenker's Temple Of Rock	25	1979	Germany	1979	Hard rock
Moi Dix Mois	25	2002	Japan	\N	Symphonic gothic
Mustasch	25	1998	Sweden	1998	Heavy
Odroerir	25	1998	Germany	\N	Pagan folk
Pillorian	25	2016	USA	2016	Atmospheric black
Sanctity	25	2000	USA	2008	Melodic thrash
Saviour Machine	25	1989	USA	1989	Gothic
Sinamore	25	1998	Finland	\N	Gothic,Gothic rock
Sons Of Aeon	25	2009	Finland	2009	Melodic death
Steelheart	25	1990	USA	\N	Glam,Gothic
Stone	25	1985	Finland	1985	Speed,Thrash
The Howling Void	25	2007	USA	\N	Funeral doom,Symphonic doom
The Prophecy	25	2001	United Kingdom	2001	Death doom
Thronar	25	1998	The Netherlands	2009	Atmospheric black,Folk
Toundra	25	2007	Spain	2007	Instrumental post-metal
Tremonti	25	2011	USA	\N	Heavy
Visceral Bleeding	25	1999	Sweden	1999	Brutal death
Winter	25	1988	USA	\N	Death doom
Alarum	24	1992	Australia	1992	Progressive,Fusion
Barón Rojo	24	1980	Spain	\N	Hard rock,Heavy
Battle Of Mice	24	2005	USA	2005	Post-metal
Benedictum	24	2005	USA	\N	Heavy
Bison B.C.	24	2006	Canada	2006	Sludge
Black Country Communion	24	2009	USA	2013	Hard rock,Blues rock
Carnal Forge	24	1997	Sweden	1997	Death,Thrash
Cemetary	24	1989	Sweden	2005	Death,Gothic
Abonos	7	1999	Serbia	1999	Gothic
Demon	24	1979	United Kingdom	1979	New wave of british heavy,Hard rock,Heavy
Diamond Plate	24	2004	USA	\N	Thrash
Disincarnate	24	1992	USA	1992	Death
End Of You	24	2003	Finland	\N	Suomi
Eulen	24	2009	Syria	2009	Doom,Black
Forsaken	24	1990	Malta	\N	Doom,Heavy
Galloglass	24	1999	Germany	1999	Power
Grave Miasma	24	2006	United Kingdom	\N	Death
Harmony	24	2000	Sweden	2000	Progressive power
Hatriot	24	2010	USA	\N	Thrash
Headspace	24	2006	United Kingdom	2006	Progressive,Progressive rock
Horseback	24	2006	USA	\N	Ambient,Drone,Post-,Rock
Hoth	24	2011	USA	2011	Melodic black,Melodic death
Hunter	24	1986	Poland	\N	Thrash,Alternative
Indian	24	2003	USA	2003	Blackened sludge,Doom
Living Sacrifice	24	1989	USA	\N	Death,Metalcore,Thrash
Naildown	24	2003	Finland	2003	Melodic death
One Man Army And The Undead Quartet	24	2004	Sweden	2012	Death,Thrash
Prototype	24	1994	USA	1994	Progressive
Regurgitate	24	1990	Sweden	\N	Goregrind
Sahg	24	2004	Norway	2004	Stoner
Severed Savior	24	1999	USA	\N	Brutal death,Technical death
Spheric Universe Experience	24	1999	France	1999	Progressive
Tokyo Blade	24	1982	United Kingdom	\N	New wave of british heavy,Heavy
Votum	24	2003	Poland	2003	Heavy,Progressive
Ade	23	2007	Italy	\N	Death
Anti	23	2004	Germany	2004	Depressive black
Arch/Matheos	23	2010	USA	\N	Progressive
Believer	23	1986	USA	1986	Technical thrash
Blaze Of Perdition	23	2004	Poland	\N	Black
Byfrost	23	2007	Norway	2007	Black,Thrash
Catacombs	23	2000	USA	\N	Funeral doom
Conan	23	2006	United Kingdom	2006	Doom,Stoner
Count Raven	23	1989	Sweden	\N	Doom
Cripper	23	2005	Germany	2005	Thrash
Darkest Era	23	2005	United Kingdom	\N	Folk,Doom,Heavy
Defiance	23	1985	USA	1985	Thrash
Demonica	23	2008	Denmark	\N	Thrash
Downfall Of Gaia	23	2008	Germany	2008	Atmospheric sludge,Post-metal
Fifth Angel	23	1983	USA	\N	Us power
Galar	23	2004	Norway	2004	Viking black,Folk,Neofolk
Helltrain	23	2002	Sweden	\N	Death ',N',Roll
Hypomanie	23	2007	The Netherlands	2007	Shoegaze ,Black
Inter Arma	23	2006	USA	\N	Blackened sludge
Iommi	23	2000	United Kingdom	2000	Heavy,Hard rock
Kipelov	23	1997	Russia	\N	Heavy
Mantic Ritual	23	2005	USA	2005	Thrash
Massacra	23	1986	France	1997	Death,Groove thrash,Heavy,Thrash
Mechanical Poet	23	2002	Russia	2002	Symphonic progressive
Mindplotter	23	2008	Ukraine	\N	Math
Misery Signals	23	2002	USA	2002	Metalcore
Nasheim	23	2001	Sweden	\N	Black
Nazxul	23	1993	Australia	1993	Black
Obscurity	23	1997	Germany	\N	Pagan folk,Viking black
Ramp	23	1989	Portugal	1989	Heavy,Industrial thrash,Thrash
Regarde Les Hommes Tomber	23	2011	France	\N	Black,Post-metal,Sludge
Runemagick	23	1990	Sweden	1990	Death,Death doom
Shrinebuilder	23	2008	USA	\N	Doom,Sludge,Stoner
Stormwitch	23	1979	Germany	1979	Heavy
Thanatos	23	1984	The Netherlands	\N	Death,Thrash
The Hourglass	23	2002	Syria	2002	Heavy
The Provenance	23	1995	Sweden	2008	Experimental gothic,Progressive death,Doom
The Rotted	23	1997	United Kingdom	1997	Grindcore,Brutal death,Death,Punk
Today Is The Day	23	1992	USA	\N	Hardcore,Noise rock
Vampiria	23	1997	Argentina	1997	Blackened gothic
Wormlust	23	2003	Iceland	\N	Black
Yyrkoon	23	1995	France	1995	Death
Zonata	23	1998	Sweden	2003	Power
Ørkenkjøtt	22	2005	Norway	2005	Extreme progressive
Acherontas	22	2007	Greece	\N	Black
Alabama Thunderpussy	22	1996	USA	1996	Stoner,Heavy
Antediluvian	22	2006	Canada	\N	Blackened death
Argus	22	2005	USA	2005	Doom,Heavy
Black Fast	22	2010	USA	\N	Thrash,Progressive black
Breakdown Of Sanity	22	2007	Switzerland	2007	Metalcore,Deathcore
Celeste	22	2005	France	\N	Black,Sludge,Hardcore
Chaos Moon	22	2004	USA	2004	Atmospheric black
Christ Agony	22	1990	Poland	\N	Black
Comatose Vigil	22	2003	Russia	2003	Funeral doom
Crimson Moonlight	22	1997	Sweden	\N	Black
De Profundis	22	2005	United Kingdom	2005	Death doom,Extreme progressive,Technical death
Demians	22	2007	France	\N	Alternative rock,Progressive
Descending	22	2007	Greece	2007	Gothenburg,Metalcore
Dreamscape	22	1986	Germany	\N	Progressive
For Today	22	2005	USA	2005	Metalcore
Frailty	22	2003	Latvia	\N	Death doom
Genghis Tron	22	2004	USA	2004	Cyber grindcore
Gernotshagen	22	1999	Germany	\N	Pagan black,Folk
Happy Days	22	2004	USA	2004	Depressive black
Hatchet	22	2006	USA	\N	Bay area thrash
How Like A Winter	22	1999	Italy	1999	Gothic doom
Liege Lord	22	1982	USA	\N	Us power,Thrash
Loudblast	22	1985	France	1985	Death,Thrash
Lychgate	22	2001	United Kingdom	\N	Progressive black,Atmospheric black
Mütiilation	22	1991	France	1991	Black
Magrudergrind	22	2002	USA	\N	Grindcore
Michael Kiske	22	1996	Germany	1996	Hard rock
Misanthrope	22	1988	France	\N	Melodic death
Nirvana 2002	22	1988	Sweden	1988	Death
Orphanage	22	1993	The Netherlands	2005	Melodic death,Gothic
Ovid's Withering	22	2010	USA	2010	Blackened deathcore,Symphonic deathcore,Progressive deathcore
Realm	22	1985	USA	1992	Progressive thrash
Repugnant	22	1998	Sweden	1998	Death,Thrash
RoutaSielu	22	2010	Finland	2010	Melodic death
Shadowside	22	2001	Brazil	\N	Power
Signum Regis	22	2007	Slovak Republic	2007	Progressive,Power
Sombres Forêts	22	2005	Canada	\N	Black
Sunpocrisy	22	2007	Italy	2007	Progressive death,Atmospheric sludge,Post-metal
Symphorce	22	1998	Germany	2011	Power
The Arcane Order	22	2000	Denmark	2000	Melodic death,Thrash
The Browning	22	2005	USA	\N	Metalcore,Trancecore
The Flight Of Sleipnir	22	2007	USA	2007	Doom,Folk,Stoner
Turbo	22	1980	Poland	\N	Hard rock,Heavy,Thrash,Speed
Until Death Overtakes Me	22	1999	Belgium	1999	Funeral doom,Ambient
Vinnie Moore	22	1986	USA	\N	Hard rock,Neoclassical,Instrumental
Viraemia	22	2008	USA	2008	Brutal death,Technical death
Voices	22	2011	United Kingdom	\N	Black
Wormphlegm	22	2000	Finland	2000	Funeral doom,Drone
Act Of Defiance	21	2014	USA	\N	Heavy,Thrash
Aes Dana	21	1994	France	1994	Atmospheric black,Celtic black
Aeveron	21	2002	Germany	\N	Melodic death,Black
Aluk Todolo	21	2004	France	2004	Black,Krautrock
Armory	21	2001	USA	\N	Power
Autumnia	21	2003	Ukraine	2003	Melodic death,Doom
Avrigus	21	1995	Australia	\N	Gothic doom,Neoclassical darkwave
Blazing Eternity	21	1993	Denmark	1993	Atmospheric doom
Catafalque	21	1997	Turkey	\N	Gothic
Chalice Of Doom	21	2010	Jordan	2010	Melodic death,Doom
Chthe'ilist	21	2010	Canada	\N	Death
Cruciamentum	21	2005	United Kingdom	2005	Death
Divinity	21	1999	Canada	\N	Progressive death,Thrash
Dol Ammad	21	2000	Greece	2000	Electronic symphonic
Dreamland	21	2003	Sweden	\N	Heavy,Power
Eisregen	21	1995	Germany	1995	Gothic black
Eyefear	21	1994	Australia	\N	Progressive,Power
Fear Of Domination	21	2006	Finland	2006	Melodic death,Industrial
First Fragment	21	2007	Canada	\N	Technical death
Frequency Of Butterfly Wings	21	2009	Iran	2009	Melodic death,Doom
Fuck The Facts	21	1999	Canada	\N	Grindcore,Noise
Grey Heaven Fall	21	2006	Russia	2006	Black,Death
Gruesome	21	2014	USA	\N	Death
Illogicist	21	1997	Italy	1997	Technical death
Insect Warfare	21	2004	USA	2008	Grindcore
Ion Dissonance	21	2002	Canada	2002	Deathcore,Math,Metalcore
Istapp	21	2005	Sweden	\N	Melodic black
Kriegsmaschine	21	2002	Poland	2002	Black
Mörk Gryning	21	1993	Sweden	2005	Black
Mar?olea	21	2008	Romania	2008	Pagan black
Nevid	21	2004	Russia	\N	Pagan folk
Nostradameus	21	1998	Sweden	1998	Power,Thrash
Phantasma (NED)	21	2015	The Netherlands	\N	Symphonic
Psyopus	21	2002	USA	2002	Metalcore,Technical grindcore
Rise Of Avernus	21	2010	Australia	\N	Progressive gothic,Progressive doom
Sarke	21	2008	Norway	2008	Black,Black 'n,Roll
Serious Black	21	2013	Germany	\N	Power
Seth	21	1995	France	1995	Black
Supreme Majesty	21	1999	Sweden	\N	Power
Symphonity	21	1994	Czech Republic	1994	Symphonic power
The Wretched End	21	2008	Norway	\N	Death,Thrash
Unholy	21	1988	Finland	1988	Death doom
Valtari	21	2010	Australia	\N	Melodic death
Volumes	21	2009	USA	2009	Math,Djent
Árstíðir Lífsins	20	2008	Iceland	\N	Black,Folk
Advent Sorrow	20	2010	Australia	2010	Symphonic black,Death
Amogh Symphony	20	2003	India	\N	Progressive death,Avantgarde
Ancient Ascendant	20	2005	United Kingdom	2005	Death
Annotations Of An Autopsy	20	2006	United Kingdom	2013	Deathcore,Brutal death
Attacker	20	1983	USA	1983	Us power
Canaan	20	1996	Italy	\N	Doom
Carcariass	20	1991	France	1991	Technical death
Centinex	20	1990	Sweden	\N	Death
Ceremonial Oath	20	1988	Sweden	1988	Melodic death,Gothenburg
Circle Of Dead Children	20	1998	USA	2013	Grindcore
Convulse	20	1988	Finland	1988	Death,Speed
Crystalic	20	1998	Finland	\N	Progressive,Melodic death
Doom	20	1987	United Kingdom	1987	Crust,Punk
Enter Shikari	20	1999	United Kingdom	\N	Metalcore,Trancecore
Flourishing	20	2009	USA	2009	Technical death,Grindcore,Sludge
Forgotten Tales	20	1999	Canada	\N	Power
Garden Of Shadows	20	1995	USA	1995	Melodic death
Grayceon	20	2005	USA	\N	Progressive
Hackneyed	20	2006	Germany	2006	Death
I Killed The Prom Queen	20	2000	Australia	\N	Metalcore
Infinite Tales	20	2007	Ukraine	2007	Gothenburg
Insision	20	1997	Sweden	\N	Brutal death
iwrestledabearonce	20	2007	USA	2007	Avantgarde metalcore,Avantgarde math
Karlahan	20	2006	Spain	\N	Melodic death,Symphonic death
Karma To Burn	20	1994	USA	1994	Stoner
Krieg	20	1995	USA	\N	Black
Lamented Souls	20	1991	Norway	1991	Doom
Landmine Marathon	20	2004	USA	\N	Death
Malignancy	20	1992	USA	1992	Brutal death
Myrkskog	20	1993	Norway	\N	Black,Brutal death
Necros Christos	20	2001	Germany	2001	Black,Death
Netherbird	20	2004	Sweden	\N	Melodic black
November-7	20	2005	Switzerland	2005	Symphonic,Heavy,Industrial
Octavia Sperati	20	2000	Norway	\N	Gothic
Old Man Gloom	20	1999	USA	1999	Post-metal,Sludge
Pokolgép	20	1980	Hungary	\N	Heavy
Pressure Points	20	2004	Finland	2004	Progressive,Death
Profetus	20	2006	Finland	\N	Funeral doom
Psychonaut 4	20	2010	Georgia	2010	Depressive black
Raubtier	20	2008	Sweden	\N	Industrial
Ride The Sky	20	2006	Sweden	2006	Progressive power
Ripping Corpse	20	1987	USA	1993	Death,Thrash
Steve Harris	20	2012	United Kingdom	2012	Heavy
Sunrise	20	2003	Ukraine	\N	Power
Thank You Scientist	20	2009	USA	2009	Progressive rock
The Gates Of Slumber	20	1998	USA	2013	Doom
Vordven	20	1996	Finland	1996	Atmospheric black
Abyssic Hate	19	1993	Australia	\N	Black,Depressive black
Ador Dorath	19	1997	Czech Republic	1997	Gothic black
Agora	19	1995	Mexico	\N	Progressive
Alkerdeel	19	2005	Belgium	2005	Black,Sludge
Arion	19	2011	Finland	\N	Symphonic,Power
Arizmenda	19	2007	USA	2007	Psychedelic black
Arrayan Path	19	2011	USA, Cyprus	\N	Power,Heavy
Ash Borer	19	2008	USA	2008	Black
Atargatis	19	1997	Germany	\N	Symphonic gothic
Battleroar	19	2000	Greece	2000	Heavy
Besatt	19	1991	Poland	\N	Black
Blood Tsunami	19	2004	Norway	2004	Thrash,Death
Bullet	19	2001	Sweden	\N	Heavy,Hard rock
Cirith Gorgor	19	1993	The Netherlands	1993	Black
Coprofago	19	1993	Chile	\N	Technical thrash,Progressive thrash,Math
Darksun	19	2002	Spain	2002	Symphonic power
Dawnbringer	19	1995	USA	\N	Blackened heavy,Heavy
Den Saakaldte	19	2006	Norway	2006	Black
Device	19	2012	USA	\N	Alternative,Industrial
Dezperadoz	19	1999	Germany	1999	Heavy
Empyrios	19	2001	Italy	\N	Progressive thrash
FEJD	19	2001	Sweden	2001	Folk
Filter	19	1993	USA	\N	Industrial rock,Alternative rock
Fortíð	19	2002	Iceland	2002	Black
Guardians Of Time	19	1997	Norway	\N	Power
Hangar	19	1997	Brazil	1997	Power
Heol Telwen	19	1999	France	\N	Celtic black,Celtic folk
Krypt	19	2006	Norway	2006	Black
Machine Men	19	1998	Finland	2011	Heavy
Marionette	19	2005	Sweden	2005	Melodic death,Metalcore
Meliah Rage	19	1987	USA	\N	Power,Thrash
Minas Morgul	19	1997	Germany	1997	Pagan black
Mystic Circle	19	1992	Germany	\N	Melodic black
Narjahanam	19	2004	Bahrain	2004	Death
Norma Jean	19	1997	USA	\N	Metalcore
Pryapisme	19	2000	France	2000	Avantgarde
Revenge	19	2000	Canada	\N	Black,Death
Scanner	19	1986	Germany	1986	Power
Seeds Of Iblis	19	2011	Iraq	\N	Black
Seraphim	19	2001	Taiwan	2001	Power
Sex Machineguns	19	1989	Japan	\N	Power,Speed
Skylark	19	1994	Italy	1994	Power
Striborg	19	1994	Australia	\N	Ambient black
Sun Caged	19	1999	The Netherlands	1999	Progressive
Sun Devoured Earth	19	2009	Latvia	\N	Atmospheric black,Post-,Rock,Shoegaze
Teramaze	19	1993	Australia	1993	Progressive
The Bishop Of Hexen	19	1994	Israel	\N	Symphonic black
The Blinded	19	2000	Sweden	2000	Gothenburg,Melodic metalcore
The Murder Of My Sweet	19	2007	Sweden	\N	Symphonic
Trist	19	2000	Germany	2000	Ambient black
Usurper	19	1993	USA	\N	Black,Death,Thrash
What Mad Universe	19	2008	France	2008	Post-,Rock,Atmospheric sludge
Öxxö Xööx	18	2005	France	\N	Doom,Gothic
Akelei	18	2006	The Netherlands	2006	Atmospheric doom
Alda	18	2007	USA	\N	Atmospheric black,Neofolk
Appearance Of Nothing	18	2004	Switzerland	2004	Progressive,Symphonic power
Arven	18	2006	Germany	2015	Melodic power
Battlesoul	18	2007	Canada	2007	Folk,Thrash
Beto Vázquez Infinity	18	2000	Argentina	\N	Symphonic
Betraying The Martyrs	18	2008	France	2008	Progressive deathcore,Symphonic death
Borgne	18	1998	Switzerland	\N	Atmospheric black
Bran Barr	18	1995	France	1995	Celtic folk
Cloudscape	18	2001	Sweden	\N	Progressive
Cryptic Slaughter	18	1984	USA	1984	Crossover thrash
Crystallion	18	2003	Germany	\N	Power
Dark Flood	18	1996	Finland	1996	Melodic death
Darkened Nocturn Slaughtercult	18	1997	Germany	\N	Black
Deathhammer	18	2005	Norway	2005	Thrash
Eden's Curse	18	2006	United Kingdom	\N	Hard rock,Heavy
Evil Masquerade	18	2003	Denmark	2003	Power,Progressive
Farshid Arabi	18	2003	Iran	\N	Heavy
Funeral Mourning	18	2005	Australia	2005	Black,Funeral doom
George Kollias	18	2008	Greece	\N	Death
Ghost Ship Octavius	18	2012	USA	2012	Progressive
Hands Of Despair	18	2008	Canada	\N	Progressive black
Hanoi Rocks	18	1979	Finland	1979	Glam rock
Holocaust	18	1977	United Kingdom	\N	New wave of british heavy,Heavy,Progressive
Inactive Messiah	18	2001	Greece	2001	Industrial death,Melodic death
Infernäl Mäjesty	18	1986	Canada	\N	Thrash
Khemmis	18	2012	USA	2012	Doom
Lonewolf	18	1992	France	\N	Heavy,Power
Mind's Eye	18	1992	Sweden	1992	Progressive
Mortad	18	2010	United Kingdom	\N	Death,Thrash
My Shameful	18	1999	Finland	1999	Death doom
My Sleeping Karma	18	2005	Germany	\N	Psychedelic rock,Stoner rock
Nazgul	18	1996	Italy	1996	Black,Folk
Nero Di Marte	18	2007	Italy	\N	Extreme progressive,Progressive death,Alternative
New Keepers Of The Water Towers	18	2009	Sweden	2009	Doom,Stoner,Progressive rock
Okera	18	2006	Australia	\N	Melodic death,Doom
Priestess	18	2003	Canada	2003	Hard rock,Stoner rock
Profane Omen	18	1999	Finland	\N	Groove thrash,Alternative
Red Harvest	18	1989	Norway	1989	Thrash,Industrial
Reflexion	18	1996	Finland	\N	Suomi
Resurrection	18	1990	USA	1990	Death
Semargl	18	1997	Ukraine	\N	Melodic black,Blackened death,Industrial,Electronic
Skitliv	18	2005	Norway	2005	Black,Doom
Son Of Aurelius	18	2009	USA	\N	Technical death,Progressive
Sworn	18	2005	Norway	2005	Melodic black
The Atlas Moth	18	2007	USA	\N	Stoner,Sludge
The Forsaken	18	1997	Sweden	1997	Melodic death
Ultra Vomit	18	1999	France	\N	Grindcore,Hard rock,Heavy,Gothenburg
Verjnuarmu	18	2001	Finland	2001	Melodic death
Vertigo Steps	18	2007	Portugal	\N	Progressive
Vomit The Soul	18	1999	Italy	1999	Brutal death
Wayfarer	18	2012	USA	\N	Atmospheric black
Wovenwar	18	2013	USA	2013	Alternative
Accu§er	17	1986	Germany	\N	Thrash
Almanac	17	2015	Germany	2015	Symphonic power
Anthem	17	1981	Japan	\N	Heavy
Apocynthion	17	2010	Spain	2010	Black,Post-metal
Brocas Helm	17	1982	USA	\N	Heavy
Burden Of Grief	17	1994	Germany	1994	Melodic death
Burning Point	17	1999	Finland	\N	Melodic power
Bury Tomorrow	17	2006	United Kingdom	2006	Melodic metalcore
Cadaver	17	1988	Norway	\N	Death
Cave In	17	1991	USA	1991	Alternative rock,Hardcore
Channel Zero	17	1990	Belgium	\N	Thrash
Chaos Ech?s	17	2011	France	2011	Death,Doom
Corpsessed	17	2007	Finland	\N	Death
Corpus Christii	17	1998	Portugal	1998	Black
Darkest Horizon	17	2010	Germany	\N	Melodic death
Dawn Of Ashes	17	2001	USA	2001	Aggrotech,Melodic black,Industrial
Deinonychus	17	1992	The Netherlands	\N	Black,Doom
Demiurg	17	2006	Sweden	2006	Death
Disbelief	17	1991	Germany	\N	Death,Sludge
Disfiguring The Goddess	17	2006	USA	2006	Brutal death,Grindcore
Dominici	17	2004	USA	\N	Progressive
Doomed	17	2011	Germany	2011	Death doom
Eldritch	17	1991	Italy	\N	Power,Thrash
Elexorien	17	2004	The Netherlands	2004	Symphonic power,Black
Enchant	17	1989	USA	\N	Progressive,Progressive rock
Enthring	17	2006	Finland	2006	Melodic death,Symphonic
Faanefjell	17	2009	Norway	\N	Symphonic black,Folk
Facebreaker	17	1999	Sweden	1999	Death,Thrash
Fragments Of Unbecoming	17	2000	Germany	\N	Melodic death
General Surgery	17	1988	Sweden	1988	Grindcore
Haemorrhage	17	1990	Spain	\N	Goregrind
Hearse	17	2001	Sweden	2001	Melodic death
Horn Of The Rhino	17	2005	Spain	2016	Doom,Sludge
Icewind	17	2001	Canada	2001	Power
Impetigo	17	1987	USA	1993	Grindcore,Death
Impiety	17	1990	Singapore	1990	Death,Blackened thrash
Inanimate Existence	17	2010	USA	\N	Brutal death,Technical death
Indesinence	17	2001	United Kingdom	2001	Death doom
Jambinai	17	2009	Korea, South	\N	Folk,Post-metal
Kaledon	17	1998	Italy	1998	Power
Kill Devil Hill	17	2011	USA	\N	Heavy
Legenda Aurea	17	2005	Switzerland	2005	Symphonic power,Symphonic progressive
Leng Tch'e	17	2001	Belgium	\N	Grindcore
Lion's Share	17	1987	Sweden	1987	Power,Thrash
Loch Vostok	17	2001	Sweden	\N	Extreme progressive,Melodic death
Lost In Thought	17	2007	United Kingdom	2007	Progressive
Malefice	17	2003	United Kingdom	\N	Metalcore
Manigance	17	1995	France	1995	Heavy
Metal Allegiance	17	2014	USA	\N	Heavy,Thrash
Monumental Torment	17	2009	Russia	2009	Technical death
Moonlyght	17	1995	Canada	\N	Progressive
Mumakil	17	2004	Switzerland	2004	Grindcore
Mysticum	17	1992	Norway	\N	Industrial black
Necronomicon	17	1983	Germany	1983	Thrash
Nothingface	17	1994	USA	2009	Nu,Alternative
Primitive Man	17	2012	USA	2012	Blackened sludge,Noise
Rose Tattoo	17	1976	Australia	\N	Heavy,Hard rock
Ruins	17	2002	Australia	2002	Black
Saattue	17	2001	Finland	\N	Melodic doom,Melodic death
Satan's Host	17	1977	USA	1977	Us power,Blackened death,Blackened heavy
Seance	17	1990	Sweden	\N	Death
Souldrainer	17	1998	Sweden	1998	Melodic death
SSS	17	2005	United Kingdom	\N	Crossover thrash
The Obsessed	17	1976	USA	1976	Doom
Thy Disease	17	1999	Poland	\N	Industrial death
Tribuzy	17	2005	Brazil	2005	Power
Tystnaden	17	1998	Italy	\N	Gothic,Gothenburg
VON	17	1987	USA	1987	Black
Vorna	17	2008	Finland	\N	Pagan folk,Melodic black
Winterstorm	17	2009	Germany	2009	Power,Folk
Witch Mountain	17	1997	USA	\N	Doom
Zierler	17	2012	Denmark	2012	Progressive
A Storm Of Light	16	2007	USA	\N	Post-metal
Aeon Zen	16	2008	United Kingdom	2008	Progressive
Alogia	16	2000	Serbia	\N	Power,Progressive
Amon	16	1987	USA	1987	Death
Anonymus	16	1989	Canada	\N	Thrash
Appalachian Winter	16	2008	USA	2008	Symphonic black
Armagedda	16	2000	Sweden	2004	Black
Asrai	16	1988	The Netherlands	1988	Gothic
Atrox	16	1990	Norway	\N	Progressive gothic
Bend The Sky	16	2010	Australia	2010	Progressive,Djent,Instrumental
Bong	16	2005	United Kingdom	\N	Drone doom,Psychedelic doom
Bongzilla	16	1995	USA	1995	Sludge,Stoner
Bossk	16	2005	United Kingdom	\N	Atmospheric sludge
Capharnaum	16	1993	USA	1993	Technical death
Cianide	16	1988	USA	\N	Death doom
Conquest	16	1996	Ukraine	1996	Power
David Maxim Micic	16	2010	Serbia	\N	Progressive rock,Progressive
Death SS	16	1977	Italy	1977	Heavy,Industrial,Doom
Devil You Know	16	2012	USA	\N	Metalcore
Disavowed	16	1994	The Netherlands	1994	Death,Brutal death
Dissimulation	16	1993	Lithuania	\N	Black,Thrash
Dreamtone & Iris Mavraki's Neverland	16	2004	Turkey	2004	Progressive,Power
Dust Bolt	16	2006	Germany	\N	Thrash
Eibon	16	2005	France	2005	Black,Doom,Sludge
Eldamar	16	2015	Norway	\N	Atmospheric black,Ambient black
Enochian Theory	16	2004	United Kingdom	2004	Progressive
Eternal Deformity	16	1993	Poland	\N	Progressive,Doom
Evenoire	16	2006	Italy	2006	Symphonic,Folk
Eventide	16	1998	Sweden	\N	Gothenburg,Progressive
Evig Natt	16	2003	Norway	2003	Death doom,Gothic
Golden Resurrection	16	2008	Sweden	\N	Neoclassical power
Grift	16	2011	Sweden	2011	Black
Hallows Eve	16	1983	USA	\N	Thrash,Speed
Hayagriva	16	1993	Malaysia	1993	Melodic black
Heed	16	2004	Sweden	2008	Power
Hellveto	16	1995	Poland	1995	Atmospheric black
Hevein	16	1992	Finland	\N	Melodic thrash
Holy Martyr	16	1994	Italy	1994	Heavy
Iron Reagan	16	2012	USA	\N	Hardcore,Punk
Jupiter	16	2013	Japan	2013	Symphonic power
Khonsu	16	2012	Norway	\N	Black,Industrial,Progressive
Koldbrann	16	2001	Norway	2001	Black
Kryptos	16	1998	India	\N	Heavy,Thrash
Lanfear	16	1993	Germany	1993	Progressive,Power
Leatherwolf	16	1981	USA	\N	Heavy,Us power
Lord Symphony	16	2005	Indonesia	2005	Power
Mastifal	16	1995	Argentina	\N	Thrash,Death
Merrow	16	2009	USA	2009	Progressive,Instrumental
Metalforce	16	2008	Germany	2011	Heavy,Power
Nachtblut	16	2005	Germany	2005	Melodic black
Noble Beast	16	2007	USA	\N	Power
Obsequiae	16	1998	USA	1998	Black,Death,Melodic black,Folk
Obtained Enslavement	16	1989	Norway	2000	Symphonic black,Death,Black
Omit	16	2009	Norway	2009	Doom,Symphonic
P.H.O.B.O.S.	16	2000	France	\N	Industrial doom
Phlebotomized	16	1989	The Netherlands	1989	Progressive death
Pitbulls In The Nursery	16	1996	France	\N	Technical death,Progressive
Pyrithion	16	2012	USA	2012	Death
Ravenscry	16	2008	Italy	\N	Alternative,Gothic
Revolting	16	2008	Sweden	2008	Death
Saille	16	2008	Belgium	\N	Symphonic black
Sebastien	16	1999	Czech Republic	1999	Melodic power
Svart	16	2007	Sweden	\N	Depressive black,Funeral doom
The Answer	16	2000	United Kingdom	2000	Hard rock
The Elysian Fields	16	1993	Greece	\N	Black,Melodic death
The Stone	16	2001	Serbia	2001	Black
Trigger The Bloodshed	16	2006	United Kingdom	\N	Death
Tyrant Of Death	16	2010	Canada	2010	Extreme industrial
Unmoored	16	1993	Sweden	\N	Progressive death,Death
Urna	16	2004	Italy	2004	Black,Funeral doom
Vangough	16	2008	USA	\N	Progressive
Vattnet Viskar	16	2010	USA	2010	Atmospheric black,Doom
Vendetta	16	2006	United Kingdom	\N	Heavy
Wildernessking	16	2011	South Africa	2011	Progressive black
Withered	16	2003	USA	\N	Blackened death
Wormfood	16	2001	France	2001	Gothic,Avantgarde,Industrial thrash
Zao	16	1993	USA	\N	Metalcore
Agressor	15	1986	France	1986	Death,Thrash
Arcane	15	2006	Australia	2015	Progressive
Au-Dessus	15	2014	Lithuania	2014	Black,Post-metal
Behold The Arctopus	15	2001	USA	\N	Progressive
Black Anvil	15	2007	USA	2007	Black,Thrash
Black Cobra	15	2002	USA	\N	Sludge
Blaze	15	1999	United Kingdom	1999	Heavy
Blinded By Faith	15	1996	Canada	\N	Melodic black,Death,Thrash
Blodsrit	15	1998	Sweden	1998	Black
Butcher Babies	15	2010	USA	\N	Metalcore,Nu
Castevet	15	2006	USA	2006	Progressive black,Post-metal,Hardcore
Ceremonial Castings	15	1996	USA	\N	Black
Cloven Hoof	15	1979	United Kingdom	1979	New wave of british heavy,Heavy
Consummatum Est	15	2003	Italy	\N	Black,Funeral doom
Daysend	15	2003	Australia	2003	Thrash
De Magia Veterum	15	2003	The Netherlands	2014	Avantgarde black
Devilish Impressions	15	2000	Poland	2000	Avantgarde,Black
Devilment	15	2011	United Kingdom	\N	Gothic,Symphonic
Enochian Crescent	15	1995	Finland	1995	Black
Eyes Of Noctum	15	2005	USA	2012	Symphonic black
HDK	15	2006	The Netherlands	2006	Thrash,Symphonic
Head Control System	15	2003	Portugal	\N	Alternative
Heavy Load	15	1976	Sweden	1976	Heavy
Highlord	15	1996	Italy	\N	Power
Holocausto Canibal	15	1997	Portugal	1997	Brutal death,Goregrind
Howls Of Ebb	15	2012	USA	\N	Black,Death
Insidious Decrepancy	15	2000	USA	2000	Brutal death,Technical death
Intestine Baalism	15	1991	Japan	\N	Thrash,Death
Judicator	15	2012	USA	2012	Power
Kells	15	2001	France	2015	Symphonic gothic,Alternative
Ketzer	15	2003	Germany	2003	Black,Thrash
King Parrot	15	2010	Australia	\N	Thrash,Grindcore
Klabautamann	15	1998	Germany	1998	Atmospheric black,Folk
Kowai	15	2006	The Netherlands	\N	Gothic,Gothic rock
Lair Of The Minotaur	15	2003	USA	2003	Sludge
Liberteer	15	2011	USA	\N	Grindcore
Milking The Goatmachine	15	2008	Germany	2008	Death,Grindcore
Mortifera	15	2001	France	\N	Black
Nasty Savage	15	1983	USA	1983	Thrash,Us power
Obscenity	15	1989	Germany	\N	Death
Operation: Mindcrime	15	2014	USA	2014	Progressive
Orkrist	15	2000	Slovak Republic	2003	Melodic black,Doom
Riger	15	1996	Germany	1996	Pagan black
Saturnian	15	2007	United Kingdom	\N	Extreme symphonic,Symphonic black
Scarpoint	15	1999	Sweden	1999	Melodic death
Seth.ECT	15	2008	Turkey	\N	Industrial
Six Magics	15	1996	Chile	1996	Power
So Hideous	15	2013	USA	\N	Black,Post-metal
Solar Fragment	15	2004	Germany	2004	Power,Heavy
Space Odyssey	15	2003	Sweden	\N	Progressive,Neoclassical
Tenet	15	1996	Canada	1996	Death,Thrash
Bastard Sapling	3	2007	USA	\N	Black
The Body	15	1999	USA	\N	Sludge,Industrial,Avantgarde
Trials	15	2008	USA	2008	Thrash
Vredehammer	15	2009	Norway	\N	Black,Death
Vulcano	15	1981	Brazil	1981	Death,Thrash
Wastefall	15	2003	Greece	\N	Progressive
Wedard	15	2002	Germany	2002	Depressive black
Weedpecker	15	2012	Poland	\N	Psychedelic stoner,Grunge
Winterborn	15	2004	Finland	2004	Power
Wolven Ancestry	15	2005	Canada	\N	Melodic black
Xystus	15	1998	The Netherlands	1998	Progressive power
4th Dimension	14	2005	Italy	\N	Symphonic power
A Sound Of Thunder	14	2008	USA	2008	Heavy,Power,Progressive
Ablaze My Sorrow	14	1993	Sweden	\N	Melodic death
Ace Frehley	14	1984	USA	1984	Hard rock,Glam
Acyl	14	2006	France	\N	Progressive,Oriental folk
Agent Fresco	14	2008	Iceland	2008	Progressive,Alternative
Anthelion	14	2001	Taiwan	\N	Symphonic black
Arise	14	1996	Sweden	1996	Death,Thrash
Aurora Borealis	14	1995	USA	\N	Blackened death
Black Obelisk	14	1986	Russia	1986	Heavy,Thrash
Bloodsoaked	14	2006	USA	2015	Brutal death
Cargo	14	1985	Romania	1985	Hard rock,Heavy
Cemetery Of Scream	14	1992	Poland	\N	Gothic doom
Cock And Ball Torture	14	1997	Germany	1997	Goregrind,Deathgrind
Crysalys	14	2004	Italy	\N	Melodic death,Symphonic,Gothic
Dark Buddha Rising	14	2007	Finland	2007	Drone doom,Dark,Ambient
Darkology	14	2004	USA	\N	Us power,Progressive
Darkwoods My Betrothed	14	1993	Finland	1993	Black
Delight	14	1997	Poland	\N	Gothic
Diabolical	14	1996	Sweden	1996	Blackened death
Division By Zero	14	2003	Poland	\N	Progressive
Dopethrone	14	2009	Canada	2009	Stoner
Dread Sovereign	14	2013	Ireland	\N	Doom
Dungeon	14	1989	Australia	1989	Power
Earthside	14	2014	USA	\N	Progressive
Engraved Disillusion	14	2008	United Kingdom	2008	Melodic death
Epidemia	14	1993	Russia	\N	Power
Eternal Oath	14	1991	Sweden	1991	Death,Gothic
Ex Libris	14	2004	The Netherlands	\N	Symphonic,Gothic
Falling Leaves	14	2009	Jordan	2009	Death doom
Funeral Tears	14	2007	Russia	\N	Funeral doom
God Macabre	14	1989	Sweden	1989	Death
Grand Supreme Blood Court	14	2009	The Netherlands	\N	Death,Doom
He Came From The Sun	14	1993	Belgium	1993	Technical death,Progressive death,Blackened death,Death doom,Death,Symphonic death
Hellsaw	14	2002	Austria	2015	Black
Hieronymus Bosch	14	1993	Russia	1993	Progressive death
Hourglass	14	1999	USA	\N	Progressive
Hyubris	14	1998	Portugal	1998	Folk,Heavy,Hard rock
Konkhra	14	1989	Denmark	\N	Death
Krohm	14	1995	USA	1995	Black,Atmospheric black,Depressive black
Lord Vicar	14	2007	Finland	\N	Doom
Lucifer	14	2014	Germany	2014	Doom,Stoner
Mandrake	14	1997	Germany	\N	Gothic
Monarque	14	2003	Canada	2003	Black
My Silent Wake	14	2005	United Kingdom	\N	Death doom,Gothic
Nechochwen	14	2005	USA	2005	Neofolk ,Black
Necrowretch	14	2008	France	\N	Death
Noctiferia	14	1992	Slovenia	1992	Black,Industrial,Death
Nordjevel	14	2015	Norway	\N	Black
Nu.Clear.Dawn	14	1997	Syria	1997	Progressive
Oakenshield	14	2004	United Kingdom	\N	Viking folk
Oddland	14	2002	Finland	2002	Progressive rock,Progressive
Once Human	14	2015	USA	\N	Melodic death
Ophthalamia	14	1989	Sweden	1989	Black
Ossian	14	1986	Hungary	\N	Heavy
Outre	14	2012	Poland	2012	Black
Panzerballett	14	2004	Germany	\N	Progressive,Jazz
Pestifer	14	2004	Belgium	2004	Technical death
Postmortem	14	2004	Iran	\N	Death,Doom
Psilocybe Larvae	14	1996	Russia	1996	Progressive black,Death doom
Qutin	14	2002	Iran	\N	Progressive death,Technical thrash
Rain Delay	14	2003	Serbia	2003	Avantgarde
Ramesses	14	2003	United Kingdom	\N	Doom,Stoner
Svarttjern	14	2003	Norway	2003	Black
Synarchy	14	2004	Faroe Islands	\N	Melodic death,Thrash
The Eternal	14	2003	Australia	2003	Gothic doom,Gothic,Gothic rock
The Wounded	14	1998	The Netherlands	\N	Gothic,Atmospheric rock
Undersmile	14	2009	United Kingdom	2009	Sludge,Doom
Unshine	14	2001	Finland	\N	Symphonic
Voodoo Circle	14	2008	Germany	2008	Heavy,Power,Hard rock
Voodoocult	14	1994	Germany	1996	Thrash
Waking The Cadaver	14	2004	USA	2004	Brutal deathcore,Death
Wayd	14	1994	Slovak Republic	\N	Progressive death
Wo Fat	14	2003	USA	2003	Psychedelic doom,Stoner rock
(EchO)	13	2007	Italy	\N	Psychedelic doom
Absentation	13	2001	Syria	2001	Death
Ahoora	13	2001	Iran	\N	Progressive
All Pigs Must Die	13	2010	USA	2010	Grindcore,Hardcore
Amederia	13	2006	Russia	\N	Doom,Gothic
Anagnorisis	13	2003	USA	2003	Death,Black
Anthriel	13	2004	Finland	\N	Progressive,Neoclassical power
Antigama	13	2000	Poland	2000	Experimental grindcore
Avec Tristesse	13	2000	Brazil	\N	Extreme progressive
Beastwars	13	2007	New Zealand	2007	Sludge,Stoner
Candiria	13	1992	USA	\N	Jazz,Avantgarde math,Grindcore,Fusion
Celtic Legacy	13	1997	Ireland	1997	Heavy
Chalice	13	1997	Australia	2007	Gothic doom
Claymore	13	1999	Bulgaria	1999	Melodic death,Melodic black
Cornerstone	13	1999	Denmark	\N	Hard rock,Heavy
Crow Black Sky	13	2009	South Africa	2009	Melodic death,Black
Décembre Noir	13	2008	Germany	\N	Death doom
Dark Castle	13	2005	USA	2005	Doom,Sludge
Deranged	13	1991	Sweden	\N	Death
Dirty Shirt	13	1995	Romania	1995	Alternative,Crossover folk,Progressive
Distorted Harmony	13	2009	Israel	\N	Progressive
Djevel	13	2009	Norway	2009	Black
Dragony	13	2007	Austria	\N	Power
Earth And Pillars	13	2014	Italy	2014	Atmospheric black
Elysian	13	2006	Australia	\N	Progressive death
Enfold Darkness	13	2006	USA	2006	Black,Death
Facínora	13	2006	Brazil	\N	Thrash
Farmakon	13	2001	Finland	2001	Extreme progressive
Fleurety	13	1991	Norway	\N	Black,Avantgarde
Frontside	13	1993	Poland	1993	Metalcore
Fyrnask	13	2008	Germany	\N	Black
Grailknights	13	2002	Germany	2002	Gothenburg,Power
Hortus Animae	13	1997	Italy	\N	Symphonic black
Human Rejection	13	2005	Greece, USA	2005	Brutal death
In Malice's Wake	13	2001	Australia	\N	Thrash
In Slumber	13	2002	Austria	2002	Melodic death
Interment	13	1988	Sweden	\N	Death
Intruder	13	1984	USA	1984	Technical thrash
Jordan Rudess	13	1988	USA	\N	Progressive,New age
Kaamos	13	1998	Sweden	1998	Death
Kadenzza	13	1993	Japan	\N	Avantgarde black
Karelia	13	1999	France	1999	Symphonic power,Gothic,Industrial
Kult Ov Azazel	13	2000	USA	\N	Black
Liv Moon	13	2009	Japan	2009	Symphonic
Lord Vampyr	13	2004	Italy	\N	Black,Gothic
Lunatic Gods	13	1993	Slovak Republic	1993	Atmospheric black,Death doom
Lycus	13	2008	USA	\N	Funeral doom
Mantar	13	2012	Germany	2012	Sludge
Modern Day Babylon	13	2010	Czech Republic	\N	Progressive,Djent
Murder Construct	13	2001	USA	2001	Deathgrind
Obsession	13	1982	USA	\N	Us power
Panzer (GER)	13	2014	Germany	2014	Heavy
Pathosray	13	2000	Italy	\N	Progressive
Plebeian Grandstand	13	2005	France	2005	Black,Hardcore
Probot	13	2001	USA	2004	Heavy,Stoner
Psygnosis	13	2009	France	2009	Extreme progressive
Purtenance	13	1989	Finland	\N	Death
Quorthon	13	1993	Sweden	1993	Alternative,Alternative rock
Redwood Hill	13	2010	Denmark	\N	Post-metal,Black
Reverence	13	1998	France	1998	Black,Industrial
Saga	13	1977	Canada	\N	Progressive rock
Selvans	13	2014	Italy	2014	Atmospheric black,Folk
Septycal Gorge	13	2004	Italy	\N	Brutal death,Technical death
Sir Lord Baltimore	13	1968	USA	1968	Heavy,Hard rock
Skáphe	13	2014	USA	\N	Black
Sleestak	13	2003	USA	2003	Stoner,Psychedelic rock
Sotajumala	13	1998	Finland	2016	Death
Soul Secret	13	2004	Italy	2004	Progressive
Sound Storm	13	2002	Italy	\N	Symphonic power
Soziedad Alkoholika	13	1988	Spain	1988	Crossover thrash
Spitfire	13	1984	Greece	\N	Power
Switchtense	13	2002	Portugal	2002	Groove thrash
Synestesia	13	2001	Finland	2012	Gothenburg
Talanas	13	2008	United Kingdom	2008	Progressive death
The Legion	13	1999	Sweden	2010	Black
The SLoT	13	2002	Russia	2002	Alternative,Nu
The Slow Death	13	2007	Australia	\N	Death doom
The Spektrum	13	2005	Portugal	2005	Death,Gothic
Thine Eyes Bleed	13	2002	Canada	\N	Death,Thrash
This Ending	13	2005	Sweden	2005	Melodic death
Thy Darkened Shade	13	1999	Greece	\N	Black
Tim "Ripper" Owens	13	2008	USA	2008	Heavy
Tomorrow's Eve	13	1998	Germany	\N	Progressive
Trollech	13	1999	Czech Republic	1999	Pagan black
Trooper	13	1995	Romania	\N	Heavy
Vanhelgd	13	2007	Sweden	2007	Death
Vanir	13	2009	Denmark	\N	Viking folk,Melodic death
Vastum	13	2009	USA	2009	Death
Vendetta (GER)	13	1984	Germany	\N	Thrash
Vhöl	13	2012	USA	2012	Heavy,Crust punk
Visceral Disgorge	13	2007	USA	\N	Brutal death
Voices Of Destiny	13	2004	Germany	2004	Symphonic,Heavy
Wargasm	13	1982	USA	1995	Thrash,Heavy
World Under Blood	13	2006	USA	2006	Melodic death
Aarni	12	1998	Finland	\N	Avantgarde
Addaura	12	2008	USA	2008	Experimental black
Anarchadia	12	2012	Syria	\N	Thrash
Apathy Noir	12	2003	Sweden	2003	Death doom,Progressive
Aras	12	2001	Iran	\N	Atmospheric black
Atriarch	12	2009	USA	2009	Blackened doom
Backyard Babies	12	1987	Sweden	\N	Hard rock,Glam
Black River	12	2008	Poland	2008	Heavy,Stoner
Black Wreath	12	2002	Denmark	\N	Funeral doom,Death doom
Bloody Panda	12	2003	USA	2003	Drone doom,Sludge
Botch	12	1993	USA	2002	Math,Metalcore
Burnt By The Sun	12	1999	USA	1999	Metalcore
Caïna	12	2004	United Kingdom	\N	Black,Post-metal
Castle	12	2009	USA	2009	Doom,Heavy
Cripple Bastards	12	1988	Italy	\N	Grindcore
Damned Spirits' Dance	12	2002	Hungary	2002	Black,Avantgarde,Melodic black
Devolved	12	1996	Australia	\N	Death,Industrial,Technical death
Domain	12	1988	Germany	1988	Power
Dream Death	12	1985	USA	\N	Doom,Death,Thrash
Eïs	12	2010	Germany	2010	Black
Eidolon	12	1993	Canada	\N	Power,Speed
Elegeion	12	1995	Australia	1995	Doom
Emyn Muil	12	2012	Italy	\N	Atmospheric black
Entropia (POL)	12	2007	Poland	2007	Black,Post-metal
Explode	12	1999	Iran	\N	Progressive
Foscor	12	1997	Spain	1997	Black
Gospel Of The Horns	12	1993	Australia	\N	Black
Grimner	12	2008	Sweden	2008	Folk
Häive	12	2002	Finland	\N	Black,Folk
Hammercult	12	2010	Israel, Germany	2010	Death,Thrash
Hermh	12	1993	Poland	\N	Black,Symphonic black,Gothic
Holy Blood	12	1999	Ukraine	1999	Hardcore,Melodic death,Black,Folk,Brutal death
Holy Knights	12	1998	Italy	\N	Power,Symphonic
Impious	12	1994	Sweden	1994	Death,Thrash
In-Quest	12	1994	Belgium	2014	Technical death
Izah	12	2006	The Netherlands	2006	Sludge
Kistvaen	12	2008	Romania	\N	Black
Kraanium	12	2001	Norway	2001	Brutal death
Letzte Instanz	12	1996	Germany	\N	Folk,Industrial,Gothic
Lords Of Black	12	2014	Spain	2014	Heavy
Luna Ad Noctum	12	1998	Poland	\N	Symphonic black
Macabre Omen	12	1994	Greece	1994	Pagan black
Majestic	12	1997	Sweden	\N	Power
Mencea	12	2004	Greece	2004	Progressive death
Minority Sound	12	2007	Czech Republic	\N	Electronic industrial
Miserere Luminis	12	2008	Canada	2008	Black
Nebelhorn	12	2004	Germany	\N	Viking black
Neonfly	12	2008	United Kingdom	2008	Power
No Return	12	1989	France	\N	Death,Thrash
Oathbreaker	12	2008	Belgium	2008	Black,Post-metal,Hardcore
Obsidian	12	1997	The Netherlands	2012	Progressive death
Otargos	12	2001	France	2001	Black
Pegazus	12	1993	Australia	\N	Heavy
Philip H. Anselmo & The Illegals	12	2011	USA	2011	Sludge
Porta Nigra	12	2010	Germany	\N	Avantgarde black,Doom
Portrait	12	2006	Sweden	2006	Heavy
Psychostick	12	2000	USA	\N	Groove thrash,Comedy
Razorwyre	12	2008	New Zealand	2008	Thrash
Salamandra	12	1998	Czech Republic	\N	Power,Speed
Sanctification	12	2001	Sweden	2001	Death
Sarpanitum	12	2003	United Kingdom	\N	Brutal death
Scorpion Child	12	2006	USA	2006	Hard rock
Seven Witches	12	1998	USA	\N	Heavy
Sivyj Yar	12	2006	Russia	2006	Pagan black
Soulgrind	12	1992	Finland	\N	Black,Gothic
Spires	12	2008	United Kingdom	2008	Extreme progressive
Spiritus Mortis	12	1987	Finland	\N	Doom
Survivor	12	1976	USA	1976	Heavy
Survivors Zero	12	2006	Finland	\N	Melodic death
Symbyosis	12	1998	France	1998	Progressive death
Tarantula	12	1981	Portugal	\N	Power,Heavy
Temple Of Baal	12	1998	France	1998	Black
The Fading	12	2006	Israel	\N	Melodic death
The Safety Fire	12	2006	United Kingdom	2006	Progressive
Theudho	12	2003	Belgium	\N	Pagan black
Thrown To The Sun	12	2010	Turkey	2010	Progressive death
Torture Division	12	2007	Sweden	2014	Death
Unearthly Trance	12	2000	USA	2000	Doom,Sludge
V8	12	1979	Argentina	1987	Heavy
White Walls	12	2009	Romania	2009	Progressive
Wilds Forlorn	12	2008	The Netherlands	\N	Atmospheric black,Depressive black
Winter In Eden	12	2007	United Kingdom	2007	Symphonic gothic
Woe	12	2007	USA	\N	Black
5ive	11	2000	USA	2000	Sludge,Post-metal
Abgott	11	1997	United Kingdom	\N	Black
Abiotic	11	2010	USA	2010	Progressive deathcore,Technical death
Abske Fides	11	2003	Brazil	\N	Funeral doom,Death doom
Across The Sun	11	2004	USA	2004	Metalcore
Aeba	11	1992	Germany	2013	Black
Aeon Of Horus	11	2006	Australia	2006	Progressive death,Technical death
Agonizer	11	1998	Finland	\N	Heavy
Akrea	11	2005	Germany	2005	Melodic death
Alterbeast	11	2013	USA	\N	Technical death
Ancestral Legacy	11	1995	Norway	1995	Symphonic black,Gothic
Animations	11	2007	Poland	\N	Progressive,Progressive death,Metalcore
Antropomorphia	11	1989	The Netherlands	1989	Death
Argus Megere	11	2005	Romania	\N	Black
Arwen	11	1996	Spain	1996	Power,Progressive
Astra (USA)	11	2006	USA	\N	Progressive rock,Psychedelic rock
Audrey Horne	11	2002	Norway	2002	Hard rock,Alternative rock
Black Tongue	11	2013	United Kingdom	\N	Deathcore
Black Witchery	11	1991	USA	1991	Black,Death
Blood Feast	11	1986	USA	\N	Death,Thrash
Blood Of Kingu	11	2005	Ukraine	2005	Black
Bonfire	11	1985	Germany	\N	Hard rock,Heavy
Canopy	11	2002	Sweden	2002	Melodic death
Creation's End	11	2003	USA	\N	Progressive
Cronian	11	2005	Norway	2005	Progressive
Crystal Ball	11	1995	Switzerland	\N	Power
Dark Quarterer	11	1974	Italy	1974	Heavy,Progressive,Hard rock
Dead To A Dying World	11	2010	USA	\N	Blackened doom,Sludge,Crust,Punk
Desecravity	11	2007	Japan	2007	Technical death,Brutal death
Duskmourn	11	2012	USA	\N	Folk,Melodic death
Dylath-Leen	11	1999	France	1999	Melodic death
Elfonía	11	2001	Mexico	2006	Progressive,Progressive rock
Enforsaken	11	1998	USA	1998	Gothenburg
Eschatos	11	2012	Latvia	\N	Progressive black
Ethereal Shroud	11	2013	United Kingdom	2013	Black,Funeral doom
Evertale	11	2007	Germany	\N	Power,Heavy
Farsot	11	1999	Germany	1999	Black
Faustcoven	11	2002	Norway	\N	Black,Doom
Fear Of Eternity	11	2000	Italy	2000	Atmospheric black
Fleshgrind	11	1993	USA	2005	Death
Frantic Amber	11	2008	Sweden	2008	Melodic death
Fukpig	11	2001	United Kingdom	\N	Black,Crust,Punk
Fungoid Stream	11	2003	Argentina	2003	Funeral doom
Gaia Epicus	11	1992	Norway	\N	Power
Golem	11	2000	Italy	2000	Melodic death
Gyze	11	2009	Japan	\N	Extreme power
Headhunter	11	1989	Germany	1989	Power,Thrash
Hexx	11	1983	USA	\N	Us power,Speed,Thrash
Himinbjorg	11	1996	France	1996	Pagan black
Horn	11	2003	Germany	\N	Black
House Of Lords	11	1988	USA	1988	Hard rock
In Lingua Mortua	11	1999	Norway	\N	Melodic black
Iniquity	11	1989	Denmark	1989	Technical death
Iron Angel	11	1980	Germany	\N	Power,Speed,Thrash,Heavy
Ironsword	11	1995	Portugal	1995	Heavy
Irreversible	11	2005	USA	2015	Atmospheric sludge
IXXI	11	2006	Sweden	2006	Black
Liturgy (US-NY)	11	2005	USA	\N	Experimental black
Lycanthia	11	1996	Australia	1996	Death doom,Gothic doom
Malpractice	11	1994	Finland	\N	Thrash,Progressive
Memoira	11	2007	Finland	2007	Gothic
Messenger	11	1990	Germany	\N	Heavy
Mindflow	11	2003	Brazil	2003	Progressive
Morifade	11	1992	Sweden	\N	Power
Mortem	11	1986	Peru	1986	Death
Mournful Gust	11	1999	Ukraine	\N	Death doom,Gothic
Nidingr	11	1992	Norway	1992	Black
Nominon	11	1993	Sweden	\N	Blackened death,Death
Nylithia	11	2008	Canada	2008	Thrash
Omb	11	2009	Israel	\N	Progressive,Avantgarde
Omega Massif	11	2005	Germany	2005	Sludge
Pain Confessor	11	2002	Finland	\N	Melodic death
Phobia	11	1990	USA	1990	Grindcore
Pitchshifter	11	1989	United Kingdom	\N	Industrial,Alternative
Power Symphony	11	1994	Italy	1994	Power
Puteraeon	11	2008	Sweden	\N	Death
Radiance (FIN)	11	2007	Finland	2007	Progressive,Math
Radogost	11	2006	Poland	\N	Folk
Rwake	11	1996	USA	1996	Doom,Sludge
Sacred Steel	11	1997	Germany	\N	Heavy,Power
Samhain	11	1983	USA	1983	Death rock,Hard rock,Horror,Punk
Sanatorium	11	1987	Macedonia	\N	Speed,Thrash
Serenity In Murder	11	2009	Japan	2009	Symphonic black,Symphonic death
Shadow	11	1993	Japan	\N	Melodic death
Shadowsphere	11	2000	Portugal	2000	Gothenburg
Shattered Skies	11	2011	Ireland	\N	Progressive,Djent
Shear	11	2008	Finland	2008	Power
Soilent Green	11	1988	USA	\N	Sludge,Grindcore
Steel Prophet	11	1983	USA	1983	Us power
Sumac	11	2014	USA	\N	Post-metal,Sludge
Sworn Enemy	11	1997	USA	1997	Metalcore,Hardcore
Sylvaine	11	2013	Norway	\N	Atmospheric black,Shoegaze
Tears Of Martyr	11	1996	Spain	1996	Gothic
Tempel	11	2003	USA	\N	Extreme progressive,Instrumental
The Great Kat	11	1986	USA	1986	Neoclassical heavy,Speed,Thrash
Thunder	11	1989	United Kingdom	\N	Hard rock
Twilight Guardians	11	1996	Finland	1996	Power
Twilight Of The Gods	11	2010		\N	Heavy
Vanguard	11	1999	Finland	1999	Gothic
Viking	11	1985	USA	\N	Thrash
Virgin Snatch	11	2001	Poland	2001	Thrash,Groove thrash
Weeping Birth	11	1999	Switzerland	\N	Brutal death,Black
With The Dead	11	2014	United Kingdom	2014	Doom,Stoner
Wolvhammer	11	2008	USA	\N	Blackened sludge
Zhrine	11	2015	Iceland	2015	Death
Zyklon-B	11	1995	Norway	1999	Black
Àrsaidh	10	2012	United Kingdom	2012	Atmospheric black,Folk
6:33	10	2010	France	\N	Alternative,Avantgarde
A Dream Of Poe	10	2005	Portugal, United Kingdom	2005	Doom,Gothic
A Million Dead Birds Laughing	10	2008	Australia	\N	Technical death,Grindcore
Abattoir	10	1982	USA	1982	Speed
Abstract Spirit	10	2006	Russia	\N	Funeral doom
Adimiron	10	1999	Italy	1999	Melodic death,Melodic black,Progressive death,Thrash
After Oblivion	10	2007	Bosnia and Herzegovina	\N	Technical thrash
Against The Plagues	10	2005	USA	2005	Symphonic black,Melodic death
Alaskan	10	2008	Canada	\N	Sludge
Alpine Fault	10	2005	Australia	2005	Melodic progressive
Alunah	10	2006	United Kingdom	\N	Doom,Stoner
Andras	10	1994	Germany	1994	Black,Pagan black
Anomalie	10	2011	Austria	\N	Black,Post-metal
Atrocious Abnormality	10	2006	USA	2006	Brutal death
Autumn's Dawn	10	2013	Australia	\N	Depressive black
Betzefer	10	1997	Israel	1997	Death,Sludge
Blaakyum	10	1995	Lebanon	\N	Doom,Thrash,Heavy,Progressive
Brimstone Coven	10	2011	USA	2011	Doom,Stoner rock
Casketgarden	10	1998	Hungary	2012	Thrash
Catalepsia	10	2005	Latvia	2005	Gothic doom
Cautiva	10	2007	Spain	\N	Thrash,Progressive
Celestial Crown	10	1999	Estonia	1999	Black,Gothic doom
Cnoc An Tursa	10	2006	United Kingdom	\N	Folk,Black
Cult Of Herodias	10	2012	USA	2012	Doom
D'espairsRay	10	1999	Japan	2011	Industrial,J rock
Dark At Dawn	10	1993	Germany	1993	Power
Dawn Of Azazel	10	1997	New Zealand	\N	Death
Dawn Of Disease	10	2003	Germany	2003	Death
Dawnless	10	2003	Switzerland	\N	Heavy,Power
Death Fetishist	10	2015	USA	2015	Psychedelic black
Dee Snider	10	1997	USA	\N	Heavy
Defiled	10	1992	Japan	1992	Brutal death
Defleshed	10	1991	Sweden	2005	Death,Thrash
Demisery	10	2011	USA	2011	Death
Diathra	10	1995	Belarus	\N	Doom,Gothic
Diocletian	10	2004	New Zealand	2004	Black,Death
Disentomb	10	2009	Australia	\N	Brutal death
Disforia	10	2007	USA	2007	Power,Progressive
Disharmonic Orchestra	10	1987	Austria	\N	Death,Grindcore,Avantgarde,Progressive
Dissenter	10	1989	Poland	1989	Brutal death
Divine Empire	10	1997	USA	\N	Death,Thrash
Dreamaker	10	2003	Spain	2003	Power,Thrash
Dreaming Dead	10	2006	USA	\N	Death,Thrash
Dyrathor	10	2006	Germany	2006	Pagan folk
Dyscordia	10	2010	Belgium	\N	Progressive
Dysrhythmia	10	1998	USA	1998	Technical progressive
Ebonylake	10	1997	United Kingdom	\N	Avantgarde,Black
Embryonic Devourment	10	2002	USA	2002	Brutal death,Grindcore
Unchained	2	1998	Sweden	2006	Heavy
Emeth	10	1997	Belgium	\N	Death,Brutal death,Technical death
Eternal Gray	10	2001	Israel	2001	Technical death,Melodic death
Fall Of Serenity	10	1998	Germany	\N	Gothenburg,Death
Faster Pussycat	10	1986	USA	1986	Hard rock,Glam
Fjorsvartnir	10	2007	Denmark	\N	Melodic black
Gadget	10	1999	Sweden	1999	Grindcore
Gates Of Winter	10	2003	Canada	\N	Symphonic progressive
Geezer	10	1985	USA	1985	Heavy,Industrial heavy
Ghost Machinery	10	2002	Finland	\N	Power
Girugämesh	10	2003	Japan	2003	J rock,Alternative,Power
Godkiller	10	1994	Monaco	\N	Death,Black,Industrial black,Electronic,Metal
Grave Flowers	10	1993	Sweden	1993	Doom
Guillotine	10	1995	Sweden	\N	Thrash
Halloween	10	1981	USA	1981	Heavy
Heidra	10	2006	Denmark	\N	Viking folk
Hollow Haze	10	2003	Italy	2003	Progressive heavy
Irreversible Mechanism	10	2012	Belarus	\N	Technical death,Symphonic death
Ivory Tower	10	1996	Germany	1996	Progressive,Power
Kabát	10	1983	Czech Republic	\N	Thrash,Melodic heavy,Hard rock
Lana Lane	10	1995	USA	1995	Progressive
Lay Down Rotten	10	1999	Germany	2015	Death
Light Bearer	10	2010	United Kingdom	2010	Post-metal,Sludge
Livsnekad	10	2007	Sweden	2012	Black,Doom
Lord Dying	10	2010	USA	2010	Sludge
Luciferian Light Orchestra	10	2014	Sweden	\N	Psychedelic rock
Ludicra	10	1998	USA	1998	Black
Lunaris	10	1998	Norway	\N	Progressive black
McAuley Schenker Group	10	1986	Germany	1986	Hard rock,Glam
Miasmal	10	2007	Sweden	\N	Death
Misery Loves Co.	10	1993	Sweden	1993	Industrial,Alternative
Monolord	10	2013	Sweden	\N	Stoner,Doom
Mortillery	10	2008	Canada	2008	Thrash
Morton	10	2009	Ukraine	\N	Heavy,Power
Mythological Cold Towers	10	1994	Brazil	1994	Doom
Neuromist	10	2004	Moldova	\N	Progressive death
Night Of Suicide	10	2005	The Netherlands	2005	Funeral doom
Nine Treasures	10	2011	China	\N	Folk
Noisem	10	2013	USA	2013	Death,Thrash
Nordheim	10	2006	Canada	\N	Blackened folk,Melodic death
Northlane	10	2009	Australia	2009	Progressive metalcore
Opprobrium	10	1999	USA	\N	Death,Thrash
Orakle	10	1994	France	1994	Atmospheric black,Avantgarde
Ortega	10	2007	The Netherlands	\N	Doom,Sludge
Outcast	10	1998	France	1998	Progressive thrash,Progressive death
Potentiam	10	1997	Iceland	\N	Avantgarde black,Blackened death,Suomi
Prey For Nothing	10	2005	Israel	2005	Melodic death
Razor Of Occam	10	1998	Australia	\N	Black,Thrash
Satura	10	2008	Iran	2008	Metalcore,Groove thrash
Scream Silence	10	1998	Germany	\N	Gothic
Secrets Of The Sky	10	2010	USA	2010	Black,Doom
Sight Of Emptiness	10	2005	Costa Rica	\N	Gothenburg
Syn Ze ?ase Tri	10	2007	Romania	2007	Symphonic black
Tales Of Dark...	10	2001	Serbia	\N	Death doom,Gothic
The Interbeing	10	2006	Denmark	2006	Industrial
The Poodles	10	2005	Sweden	\N	Glam,Melodic heavy,Hard rock
The Resistance	10	2011	Sweden	2011	Death
Thränenkind	10	2007	Germany	\N	Black,Post-punk
Twilight	10	2004	USA	2004	Black
Valient Thorr	10	2000	USA	\N	Heavy
Waldgeflüster	10	2005	Germany	2005	Black
Waning	10	2007	Sweden	2016	Progressive black
Wind Rose	10	2009	Italy	2009	Progressive,Power
Within Y	10	2002	Sweden	\N	Melodic death
Abandoned	9	1999	Germany	1999	Thrash
Abidetherein	9	2010	Syria	\N	Black,Folk
Abscess	9	1994	USA	1994	Death
Acid Reign	9	1985	United Kingdom	\N	Thrash
Afgrund	9	2006	Sweden	2006	Grindcore,Crust punk
Alpha Tiger	9	2007	Germany	\N	Thrash,Power
Anup Sastry	9	2012	USA	2012	Progressive,Djent,Instrumental
Arbor	9	2011	USA	\N	Doom,Folk,Progressive
Arrow Haze	9	2011	Belgium	2011	Hard rock
Arsafes	9	2009	Russia	\N	Extreme progressive,Industrial
As You Drown	9	2001	Sweden	2001	Death,Deathcore
Bare Infinity	9	2003	Greece	\N	Symphonic power
Beneath	9	2007	Iceland	2007	Technical death
Cadavrul	9	2005	Romania	\N	Death
Cangaço	9	2010	Brazil	2010	Progressive death
Cans	9	2003	Sweden	\N	Heavy
Cardiant	9	2000	Finland	2000	Power
Carnophage	9	2006	Turkey	\N	Technical death,Brutal death
Catharsis	9	1996	Russia	1996	Doom,Neoclassical power
Celestial Season	9	1991	The Netherlands	\N	Death,Doom,Stoner
Chain Reaction	9	2002	Poland	2002	Groove thrash
Chris Caffery	9	2003	USA	\N	Progressive power
Confessor	9	1986	USA	1986	Doom
Crown	9	2011	France	\N	Doom,Sludge
Diminished	9	2005	USA	2005	Brutal death,Grindcore
Dirge Within	9	2007	USA	2013	Thrash,Metalcore
Discordance Axis	9	1992	USA	1992	Grindcore
Divlje Jagode	9	1976	Bosnia and Herzegovina, Croatia	\N	Heavy,Hard rock
Domovoyd	9	2010	Finland	2010	Psychedelic stoner
Dotma	9	2005	Finland	\N	Symphonic power
Drautran	9	1996	Germany	1996	Black
Ebony Ark	9	2002	Spain	\N	Power,Progressive
Echoterra	9	2007	USA	2007	Symphonic
Ecnephias	9	1996	Italy	\N	Blackened death,Doom,Gothic death
Eden Circus	9	2010	Germany	2010	Alternative,Progressive,Post-metal
Emir Hot	9	2007	Bosnia and Herzegovina	\N	Progressive
Enthrallment	9	1998	Bulgaria	1998	Brutal death
Eudaimony	9	2007	Germany	\N	Post-metal,Black
Evil Invaders	9	2007	Belgium	2007	Speed,Thrash
Stigmhate	1	1998	Italy	1998	Black
Exsecratus	9	2004	Finland	2013	Melodic death,Gothic
Fogalord	9	2007	Italy	2007	Power,Symphonic
Graves At Sea	9	2002	USA	\N	Doom,Sludge
Heir Apparent	9	1983	USA	1983	Progressive
Hevisaurus	9	2009	Finland	\N	Heavy,Power
Hjarnidaudi	9	2005	Norway	2005	Drone doom
Hope For The Dying	9	2006	USA	\N	Progressive death
Horde	9	1994	Australia	1994	Black
Human Mincer	9	1996	Spain	\N	Brutal death
Icon & The Black Roses	9	1999	Portugal	1999	Gothic
Illuminandi	9	1998	Poland	\N	Gothic folk
Inner Sanctum	9	2006	India	2006	Death,Thrash
Innosense	9	2005	Greece	\N	Melodic progressive
Iris	9	1977	Romania	1977	Hard rock
Japanische Kampfhörspiele	9	1998	Germany	\N	Grindcore
Jucifer	9	1993	USA	1993	Alternative rock,Sludge,Alternative,Noise
Khthoniik Cerviiks	9	2013	Germany	\N	Black,Death
Latitudes	9	2006	United Kingdom	2006	Post-metal,Sludge
Los Random	9	2009	Argentina	\N	Progressive,Avantgarde
Loss (USA)	9	2003	USA	2003	Funeral doom
Mastercastle	9	2008	Italy	\N	Heavy
Memory Garden	9	1992	Sweden	1992	Heavy,Doom
Moby Dick	9	1980	Hungary	\N	Thrash
Moonlight Agony	9	1999	Sweden	1999	Power
Mordred	9	1984	USA	\N	Thrash,Funk rock
Mortals	9	2009	USA	2009	Sludge,Hardcore,Blackened sludge,Punk
Naðra	9	2008	Iceland	\N	Black
Narrow House	9	2008	Ukraine	2008	Funeral doom,Doom
Nemertines	9	2009	Russia	\N	Progressive math,Djent
Nhor	9	2009	United Kingdom	2009	Atmospheric black,Doom,Ambient,Folk
Nucleus Torn	9	1997	Switzerland	\N	Alternative,Neofolk
Oak Pantheon	9	2011	USA	2011	Melodic black,Post-metal
Oracles	9	2014	Belgium	\N	Melodic death,Symphonic
Ordinance	9	2009	USA	2009	Progressive death,Technical death
Paganizer	9	1998	Sweden	\N	Death
Pandemia	9	1995	Czech Republic	1995	Death
Pantheon I	9	2002	Norway	\N	Black
Pantommind	9	1993	Bulgaria	1993	Progressive
Rebel Meets Rebel	9	1999	USA	2004	Heavy,Country
Ribspreader	9	2002	Sweden	2002	Death
Sacred Oath	9	1985	USA	\N	Us power,Heavy
Samsara Blues Experiment	9	2007	Germany	2007	Stoner
Satyrian	9	2004	The Netherlands	\N	Gothic
Savn	9	2013	Norway	2013	Symphonic gothic
Sole Remedy	9	1998	Finland	\N	Atmospheric progressive
Sorcerer	9	1988	Sweden	1988	Epic doom
Sortilège	9	1981	France	1986	Heavy
Soulitude	9	2006	Spain	2006	Power
Stille Volk	9	1994	France	\N	Medieval folk
Subversion	9	2008	United Kingdom	2008	Melodic death,Symphonic,Djent
Success Will Write Apocalypse Across The Sky	9	2006	USA	\N	Deathgrind
Taak	9	2005	Estonia	2005	Doom
Terhen	9	2004	Finland	\N	Atmospheric doom
The Bereaved	9	1998	Sweden	1998	Gothenburg
The Crest	9	1996	Norway	2010	Gothic,Gothic rock
The Graviators	9	2009	Sweden	2009	Stoner,Doom
Thee Orakle	9	2004	Portugal	2013	Progressive death,Gothic
Timeghoul	9	1987	USA	1987	Progressive death
Uada	9	2014	USA	\N	Black
Vengeful	9	2003	Canada	2003	Technical death
Vermin Womb	9	2014	USA	\N	Death,Grindcore
Victory	9	1984	Germany	1984	Heavy
Visigoth	9	2010	USA	\N	Heavy,Power
Winterhymn	9	2010	USA	2010	Folk
Aberrant Vascular	8	2003	Finland	\N	Avantgarde,Symphonic
Acacia	8	2012	Sweden	2012	Black,Doom
Advent Of Bedlam	8	2009	Costa Rica	\N	Melodic death,Death
Age Of Taurus	8	2009	United Kingdom	2009	Doom
Agrimonia	8	2005	Sweden	\N	Post-metal,Sludge,Crust punk
Akroma	8	2003	France	2003	Progressive black,Symphonic black
Aldious	8	2008	Japan	\N	Power
Almyrkvi	8	2014	Iceland	2014	Black
Another Messiah	8	2003	The Netherlands	2009	Post-metal,Doom
Apostasy	8	2000	Sweden	2000	Black
Arida Vortex	8	1998	Russia	\N	Power
Asylum Pyre	8	2003	France	2003	Progressive,Power
Bane Of Winterstorm	8	2009	Australia	\N	Symphonic power
Below The Sun	8	2012	Russia	2012	Funeral doom
Bestia	8	2000	Estonia	\N	Blackened death,Pagan black
Black Fate	8	1990	Greece	1990	Power,Progressive
Born From Pain	8	1997	The Netherlands	\N	Hardcore,Metalcore
Britny Fox	8	1986	USA	1986	Hard rock,Glam
Cenotaph	8	1989	Mexico	2002	Death
Ceremonial Perfection	8	2007	Estonia	2007	Melodic death
Clandestine Blaze	8	1998	Finland	\N	Black
Consciousness Removal Project	8	2004	Finland	2004	Post-metal
Coram Lethe	8	1999	Italy	\N	Melodic death
Crimson Swan	8	2010	Germany	2010	Gothic doom,Death doom
Crossfire	8	1998	Turkey	\N	Power,Thrash
Crypt Sermon	8	2013	USA	2013	Doom
Dagor Dagorath	8	2003	Israel	\N	Symphonic black,Death
Dark Sarah	8	2012	Finland	2012	Gothic,Symphonic
Darkend	8	2006	Italy	\N	Symphonic black
Deathbound	8	1995	Finland	1995	Death,Grindcore
Deivos	8	1997	Poland	\N	Death
Dephosphorus	8	2008	Greece	2008	Blackened death,Grindcore
Descend Into Despair	8	2010	Romania	\N	Funeral doom
Destrose	8	2005	Japan	2005	Heavy
Destructor	8	1984	USA	\N	Us power,Thrash
Devathorn	8	2002	Greece	2002	Black
Diskord	8	1999	Norway	\N	Progressive death,Technical death
Dragon Guardian	8	2006	Japan	2006	Symphonic power
Drone	8	2004	Germany	\N	Nu thrash
Dusk	8	1993	USA	1993	Death doom
E-an-na	8	2014	Romania	\N	Folk
Enid	8	1997	Germany	1997	Symphonic black
Ensoph	8	1997	Italy	\N	Avantgarde,Gothic
Epizod	8	1988	Bulgaria	1988	Heavy
Evenfall	8	1997	Italy	\N	Gothic
Fairytale Abuse	8	1995	Denmark	1995	Melodic black
Fear Of God	8	1989	USA	1996	Thrash
Fit For An Autopsy	8	2008	USA	2008	Deathcore
Fleshgore	8	2000	Ukraine	\N	Brutal death
Full Of Hell	8	2009	USA	2009	Grindcore,Hardcore,Punk
Gallows End	8	2007	Sweden	\N	Heavy
Gaza	8	2004	USA	2004	Grindcore
Gothmog	8	2005	Spain	2012	Melodic black,Symphonic black
Greymachine	8	2009	United Kingdom	2009	Experimental industrial,Avantgarde
Hacktivist	8	2011	United Kingdom	\N	Nu,Djent,Rap
Hansen & Friends	8	2016	Germany	2016	Heavy,Power
Heliosaga	8	2010	USA	\N	Symphonic power
Hellbringer	8	2010	Australia	2010	Thrash,Speed
Hellish Crossfire	8	2002	Germany	\N	Blackened thrash
Helms Alee	8	2007	USA	2007	Sludge,Noise rock,Post-hardcore
Horisont	8	2006	Sweden	\N	Hard rock
I Am I	8	2012	United Kingdom	2012	Heavy,Power
Imagika	8	1993	USA	2011	Thrash,Us power
Imperial Crystalline Entombment	8	2003	USA	2003	Black
Infected Rain	8	2008	Moldova	\N	Nu
Inverloch	8	2011	Australia	2011	Death doom
Invocator	8	1986	Denmark	\N	Speed,Technical thrash
Jack Frost	8	1989	Austria	1989	Doom,Gothic doom
Kamijo	8	2013	Japan	\N	Symphonic power,J rock
Karybdis	8	2009	United Kingdom	2009	Melodic death,Thrash
Kill The Client	8	2002	USA	\N	Grindcore
Kingfisher Sky	8	2001	The Netherlands	2001	Gothic,Progressive rock
Lyria	8	2012	Brazil	\N	Symphonic,Alternative
Lyzanxia	8	1996	France	1996	Thrash
Manimal	8	2001	Sweden	\N	Power
Mares Of Thrace	8	2009	Canada	2009	Sludge,Doom
Marriages	8	2011	USA	\N	Alternative
Martyrdöd	8	2001	Sweden	2001	Crust punk,D-beat
Masacre (COL)	8	1988	Colombia	\N	Death
May Result	8	1995	Serbia	1995	Black
Melted Space	8	2007	France	\N	Symphonic,Ambient,Neoclassical
Mirzadeh	8	2000	Finland	2000	Melodic black
Moss	8	2000	United Kingdom	\N	Drone doom,Doom,Sludge
My Lament	8	2002	Belgium	2002	Gothic doom,Death doom
Nachtgeschrei	8	2006	Germany	\N	Folk
Natan	8	2002	Belgium	2002	Pagan black
Neglected Fields	8	1995	Latvia	\N	Technical death
Nehëmah	8	1992	France	1992	Black
Oath To Vanquish	8	2001	Lebanon	\N	Black,Death
Obsidian Gate	8	1994	Germany	1994	Symphonic black
Phazm	8	2003	France	\N	Death ',N',Roll
Place Of Skulls	8	2000	USA	2000	Doom
Plague Widow	8	2011	USA	\N	Deathgrind
Platitude	8	1995	Sweden	1995	Neoclassical power
Primitive Graven Image	8	2006	United Kingdom	\N	Black
Putridity	8	2005	Italy	2005	Brutal death
Ravage	8	1995	USA	\N	Heavy
Rebaelliun	8	1998	Brazil	1998	Death
Recueil Morbide	8	2000	France	\N	Brutal death
Red Descending	8	2003	Australia	2003	Melodic death
Resurrected	8	1993	Germany	\N	Brutal death
Ross The Boss	8	2006	USA	2006	Heavy,Us power
S.D.I.	8	1986	Germany	\N	Speed
Sannhet	8	2010	USA	2010	Experimental black
Sarissa	8	1985	Greece	\N	Heavy,Power,Progressive
Sinmara	8	2008	Iceland	2008	Black
Sister	8	2006	Sweden	\N	Glam
Slugathor	8	1999	Finland	1999	Death
Slumpark Correctional	8	2003	Syria	\N	Death,Thrash
Sorcier Des Glaces	8	1997	Canada	1997	Black
Southern Cross	8	2001	Canada	\N	Progressive,Progressive power
Space Eater	8	2004	Serbia	2004	Thrash
Spidkilz	8	2010	Italy	\N	Speed,Heavy,Thrash
Spirit Caravan	8	1996	USA	1996	Doom,Stoner
Stabat Mater	8	2001	Finland	\N	Funeral doom
Tantara	8	2009	Norway	2009	Thrash
Target	8	1986	Belgium	1990	Progressive thrash
Tau Cross	8	2014	United Kingdom	2014	Heavy,Crust,Punk
Thaw	8	2010	Poland	\N	Experimental black,Ambient noise
The Final Harvest	8	2007	Finland	2007	Thrash,Melodic death
The Kindred	8	2013	Canada	\N	Progressive
The Neologist	8	2009	USA	2009	Melodic death
The Oath	8	2012	Germany	2014	Doom,Hard rock
The Secret	8	2003	Italy	2003	Black,Grindcore,Metalcore
The Wounded Kings	8	2005	United Kingdom	2016	Doom
The Zenith Passage	8	2012	USA	2012	Technical death
Thrashless	8	2010	Estonia	\N	Thrash
Twisted Tower Dire	8	1995	USA	1995	Us power
Unseen Terror	8	1986	United Kingdom	1990	Death,Thrash,Grindcore
Urkraft	8	1995	Denmark	1995	Melodic death,Thrash
VI	8	2007	France	\N	Black
Vola	8	2005	Denmark	2005	Djent ,Progressive,Progressive rock
Volahn	8	2003	USA	\N	Black
Volturyon	8	2005	Sweden	2005	Death
Vorum	8	2006	Finland	\N	Death
Way To End	8	2006	France	2006	Avantgarde black
White Empress	8	2013	USA	\N	Extreme symphonic
Winterage	8	2008	Italy	2008	Power,Symphonic
Wolfbrigade	8	1995	Sweden	\N	Crust punk
X-Panda	8	2009	Estonia	2009	Progressive,Jazz fusion
Young And In The Way	8	2009	USA	\N	Black,Crust,Punk
Zandelle	8	1996	USA	1996	Heavy,Power
Zuul Fx	8	2003	France	\N	Death,Thrash
?	7	2012	Iceland	2012	Depressive black,Doom
0 X í S T	7	2008	Finland	2016	Death doom
7th Reign	7	2005	Canada	2005	Progressive power
A Sense Of Gravity	7	2011	USA	\N	Progressive math
Abused Majesty	7	1998	Poland	\N	Symphonic black,Death
Adastreia	7	2004	United Kingdom	2004	Gothic,Symphonic
ADX	7	1982	France	\N	Speed
Aegaeon	7	2008	USA	2008	Deathcore
Aethyr	7	2014	Spain	\N	Melodic death,Folk
After All	7	1987	Belgium	1987	Thrash
Ajdath	7	1995	Jordan	\N	Death
Alister	7	1999	Serbia	1999	Thrash,Heavy
Angeldark	7	2007	Spain	\N	Gothic,Symphonic
Anthropia	7	2003	France	2003	Progressive
Archivist	7	2015		\N	Atmospheric black,Post-metal
Ariadna Project	7	1999	Argentina	1999	Power
Asgaard	7	1994	Poland	\N	Experimental black
Ashbringer	7	2013	USA	2013	Atmospheric black
Astral Sleep	7	2004	Finland	\N	Death,Atmospheric doom
Atomikylä	7	2011	Finland	2011	Psychedelic doom,Drone
Atra Vetosus	7	2011	Australia	\N	Melodic black
Bakos Attila	7	2012	Hungary	2012	Progressive
Bast	7	2008	United Kingdom	\N	Black,Doom,Sludge
Beatrik	7	1998	Italy	1998	Black,Doom
Below	7	2012	Sweden	\N	Epic doom
Beltaine	7	1996	Czech Republic	1996	Pagan folk
Black Moth	7	2010	United Kingdom	\N	Stoner rock,Doom,Stoner
Black Space Riders	7	2008	Germany	2008	Progressive,Stoner
Bone Gnawer	7	2009	Sweden	2015	Death
Bosse-De-Nage	7	2006	USA	2006	Black
Brown Jenkins	7	2006	USA	2009	Black,Doom
Burning Circle	7	2006	Serbia	2006	Progressive
Celtachor	7	2007	Ireland	\N	Black,Celtic folk
Civilization One	7	2006	Germany	2006	Power
Colosso	7	2011	Portugal	\N	Death
Comeback Kid	7	2000	Canada	2000	Hardcore,Metalcore
Contradiction	7	1989	Germany	\N	Thrash
Corporation 187	7	1995	Sweden	1995	Melodic death,Thrash
Corpsefucking Art	7	1993	Italy	\N	Brutal death
Crest Of Darkness	7	1995	Norway	1995	Black
Crystalmoors	7	1995	Spain	\N	Celtic black,Pagan black
Cynthesis	7	2010	USA	2010	Progressive
Cytotoxin	7	2010	Germany	\N	Brutal death
Darkflight	7	2000	Bulgaria	2000	Black,Doom
Dawn Of Silence	7	2000	Sweden	\N	Melodic heavy
Daylight Misery	7	2008	Greece	2008	Gothic,Death doom
Deadsquad	7	2006	Indonesia	\N	Brutal death,Technical death
Deep Mountains	7	2009	China	2009	Atmospheric black,Folk
Devil	7	2009	Norway	\N	Doom,Heavy
Divinity Destroyed	7	1999	USA	1999	Progressive
Dodecahedron	7	2006	The Netherlands	\N	Black
Dodsferd	7	2001	Greece	2001	Black
Drakkar	7	1995	Italy	\N	Power
Drakum	7	2009	Spain	2009	Folk
Draugr	7	2002	Italy	2013	Melodic death,Pagan black
Dreadful Shadows	7	1993	Germany	1993	Gothic
Edge Of Serenity	7	2007	The Netherlands	\N	Melodic death
Elixir	7	1983	United Kingdom	1983	New,Wave,Of british heavy,Heavy
Elizium	7	1991	The Netherlands	\N	Doom,Gothic
Enemy Of Reality	7	2013	Greece	2013	Symphonic progressive
Eternal Idol	7	2016	Italy	\N	Power,Symphonic,Heavy,Progressive
Fistula	7	1998	USA	1998	Sludge,Drone doom
Flagitious Idiosyncrasy In The Dilapidation	7	2001	Japan	\N	Grindcore
Forgive Me	7	2009	Jordan	2009	Depressive black
Fragile Vastness	7	2000	Greece	\N	Progressive,Progressive rock
Gnostic	7	2005	USA	2005	Technical death,Technical thrash
Graveyard Dirt	7	1994	Ireland	\N	Death,Doom
Gridlink	7	2004	USA	2004	Technical grindcore
Harlott	7	2006	Australia	\N	Thrash
Heaven Grey	7	1993	Latvia	1993	Gothic doom
Hel	7	1994	Germany	2012	Pagan folk
Ignivomous	7	2006	Australia	2006	Death
Illuminata	7	2006	Austria	\N	Melodic power,Gothic
Immensity	7	2009	Greece	2009	Atmospheric doom
Infernal Poetry	7	1996	Italy	2014	Experimental death,Progressive death
Insanity	7	1985	USA	1985	Death
Interitus	7	1993	Czech Republic	\N	Symphonic
Isvind	7	1993	Norway	1993	Black
J.B.O.	7	1989	Germany	\N	Industrial,Comedy rock
Jacobs Dream	7	2000	USA	2000	Us power,Progressive
Jig-Ai	7	2005	Czech Republic	\N	Death,Grindcore
Kadavar	7	2007	Italy	2007	Death
KerecsenSólyom	7	2004	Hungary	\N	Symphonic folk
Lapis Lazuli	7	2005	Sweden	2005	Symphonic
Legend	7	1978	USA	1979	Heavy,Progressive rock
Litrosis	7	2010	Greece	2010	Symphonic black,Extreme power
Logar's Diary	7	1998	Germany	\N	Power
Luctus	7	2001	Lithuania	2001	Black,Thrash
Lumus	7	2009	USA	\N	Symphonic power
Lust Of Decay	7	1996	USA	1996	Thrash,Brutal death
Lvcifyre	7	2007	United Kingdom	\N	Black,Death
Magnitude 9	7	1998	USA	1998	Progressive,Power
Malice	7	1980	USA	\N	Us heavy,Power
Mastic Scum	7	1992	Austria	1992	Grindcore
Messiah's Kiss	7	2001	Germany	\N	Heavy
Midnight Priest	7	2008	Portugal	2008	Heavy
Moon	7	2007	Australia	\N	Black
Morost	7	2010	Slovenia	2010	Progressive death
Mortal Decay	7	1991	USA	\N	Brutal death
Nibiru	7	2012	Italy	2012	Psychedelic sludge,Drone
Nydvind	7	2000	France	\N	Pagan black
Odyssea	7	2004	Italy	2004	Heavy,Power
Operatika Element	7	2002	USA	\N	Symphonic power
Palms	7	2011	USA	2011	Post-rock,Post-metal
Posthumous Blasphemer	7	2001	Belarus	\N	Technical death
Poverty's No Crime	7	1991	Germany	1991	Progressive
Project: Failing Flesh	7	2001	USA	\N	Industrial thrash,Avantgarde
Putrevore	7	2004	Spain	2004	Death
Quadrivium	7	2005	Norway	\N	Avantgarde,Black
RandomWalk	7	2005	Greece	2005	Gothic,Metalcore
Rorcal	7	2006	Switzerland	\N	Doom,Sludge,Hardcore,Black
Rumpelstiltskin Grinder	7	2002	USA	2002	Technical thrash
Sanctium	7	2007	Australia	\N	Melodic death,Progressive
Seven Thorns	7	1998	Denmark	1998	Power
Shroud Of Bereavement	7	1996	USA	\N	Death doom,Neoclassical
Silent Kingdom	7	1999	Bosnia and Herzegovina	1999	Melodic death,Extreme folk
Silent Planet	7	2010	USA	\N	Metalcore
Slartibartfass	7	2005	Germany	2005	Viking folk
So Much For Nothing	7	2007	Norway	\N	Avantgarde,Depressive black
Sorcery (Swe)	7	1986	Sweden	1986	Death
Soulburn	7	1996	The Netherlands	\N	Death
Spiders	7	2010	Sweden	2010	Hard rock,Heavy
Stick To Your Guns	7	2003	USA	\N	Metalcore,Hardcore
Strydegor	7	2005	Germany	2005	Viking black
Su Ta Gar	7	1987	Spain	\N	Heavy
Subhuman	7	2001	Italy	2001	Death,Thrash
Subliminal Fear	7	2001	Italy	\N	Melodic death
Sycronomica	7	1996	Germany	1996	Melodic black
The Dogma	7	1999	Italy	\N	Symphonic power
The Drowning	7	2004	United Kingdom	2004	Doom,Death
The Great Deceiver	7	2000	Sweden	\N	Alternative
The Moth Gatherer	7	2009	Sweden	2009	Post-metal,Sludge
The Soulless	7	2010	United Kingdom	\N	Melodic metalcore
The Storyteller	7	1995	Sweden	1995	Heavy,Power
The Wandering Midget	7	2005	Finland	\N	Doom
Thirdmoon	7	1994	Austria	1994	Death
Thor	7	1973	Canada	\N	Hard rock,Heavy,Power
Thundra	7	1998	Norway	1998	Viking black
Thy Worshiper	7	1993	Poland	\N	Pagan folk,Black
Tublatanka	7	1982	Slovak Republic	1982	Melodic heavy,Hard rock
Tysondog	7	1983	United Kingdom	\N	New wave of british heavy,Heavy
Unfathomable Ruination	7	2010	United Kingdom	2010	Brutal death
Urt	7	2004	Estonia	\N	Pagan black
Usnea	7	2011	USA	2011	Blackened doom
Valkiria	7	1996	Italy	\N	Gothic,Black
Vaura	7	2012	USA	2012	Progressive
Vemod	7	2000	Norway	\N	Black
Venomous Concept	7	2004	USA	2004	Grindcore,Hardcore,Punk
Verwüstung	7	2010	USA	\N	Ambient black,Shoegaze,Drone doom,Post-,Rock
Vicious Art	7	2002	Sweden	2002	Death,Thrash
Wallachia	7	1992	Norway	\N	Symphonic black
War From A Harlots Mouth	7	2005	Germany	2005	Math,Metalcore
Warrior	7	1983	USA	\N	Heavy,Power
Wiegedood	7	2014	Belgium	2014	Black
Winter's Verge	7	2004	Cyprus	\N	Power
Wolfpakk	7	2010	Germany	2010	Heavy
Wraith Of The Ropes	7	2001	USA	\N	Funeral doom
2 Times Terror	6	2006	Finland	2006	Industrial
5 Star Grave	6	2005	Italy	\N	Melodic death
Abysmal Grief	6	1995	Italy	1995	Gothic doom
Adversarial	6	2007	Canada	\N	Blackened death
Age Of Artemis	6	2006	Brazil	2006	Melodic power
Airborn	6	1995	Italy	\N	Power
Airged L'amh	6	1987	Greece	1987	Heavy,Power,Folk
Aletheian	6	2003	USA	\N	Melodic death
Alkemyst	6	1998	France	1998	Progressive power
Allfader	6	2001	Norway	\N	Black,Death
Altar (ROM)	6	1991	Romania	1991	Thrash
Amestigon	6	1993	Austria	\N	Black
Amulance	6	1984	USA	1984	Power,Speed
Angel Blake	6	2004	Sweden	\N	Heavy
Antropofagus	6	1998	Italy	1998	Brutal death
Aoria	6	2007	Sweden	\N	Progressive,Post-rock
Arkham Witch	6	2008	United Kingdom	2008	Doom
Artefact	6	2000	France	\N	Melodic black
Asenblut	6	2006	Germany	2006	Pagan black
Aska	6	1990	USA	\N	Heavy,Us power
Aspherium	6	2007	Norway	2007	Melodic death
Balrog	6	1999	France	\N	Black
Bastard Priest	6	2002	Sweden	2002	Death
Behind The Scenery	6	1996	Germany	\N	Gothenburg,Progressive
Benighted In Sodom	6	2004	USA	2004	Atmospheric black
Bergraven	6	2002	Sweden	\N	Black
Bible Of The Devil	6	1999	USA	1999	Stoner
Big End Bolt	6	2007	Russia	\N	Brutal death
Birth Of Depravity	6	2005	Greece	2005	Brutal death
Blöod Düster	6	1991	Australia	\N	Grindcore
Black Autumn	6	1995	Germany	1995	Ambient black,Doom
Black Bomb A	6	1995	France	\N	Metalcore
Black Monolith	6	2010	USA	2010	Black,Post-metal,Crust,Punk
Black Steel	6	2000	Australia	\N	Heavy,Power
Blackstar Halo	6	1998	Finland	1998	Melodic heavy
Bumblefoot	6	1998	USA	\N	Progressive hard rock
Burn The Priest	6	1994	USA	1994	Death
Buzzov?en	6	1989	USA	\N	Sludge
Cain's Dinasty	6	2006	Spain	2006	Power
Car Bomb	6	2000	USA	\N	Math,Metalcore
Carpathian Full Moon	6	1990	Norway	1990	Black,Doom
Cauldron Born	6	1994	USA	2003	Us power
Centurian	6	1997	The Netherlands	1997	Death
Cerebral Fix	6	1986	United Kingdom	\N	Thrash
Chapel Of Disease	6	2008	Germany	2008	Death
Clinging To The Trees Of A Forest Fire	6	2006	USA	2013	Grindcore
Cold Snap	6	2003	Croatia	2003	Nu
Coldworker	6	2006	Sweden	2013	Death
Crimson Death	6	1994	Peru	1994	Gothenburg
Crises	6	1995	Germany	\N	Progressive
Crocell	6	2007	Denmark	2007	Melodic death
Cruxifiction	6	2005	France	\N	Melodic black,Death,Thrash
Dämmerfarben	6	2005	Germany	2005	Atmospheric black
Dark Illusion	6	1982	Sweden	\N	Hard rock,Power
Deathember	6	2008	Sweden	2008	Groove thrash
Decayed	6	1990	Portugal	\N	Black
Decaying	6	2010	Finland	2010	Death
December's Cold Winter	6	2000	Costa Rica	2009	Melodic death
Degial	6	2004	Sweden	2004	Death
Detrimentum	6	1996	United Kingdom	\N	Death
Dimlight	6	2006	Greece	2006	Gothic
Disgorge (MEX)	6	1994	Mexico	\N	Brutal death,Grindcore
Doctor Cyclops	6	2007	Italy	2007	Doom,Psychedelic rock
Dragobrath	6	2004	Ukraine	\N	Black
Dragonhammer	6	1999	Italy	1999	Power
Dysnomia	6	2007	Spain	\N	Melodic death
Earthship	6	2010	Germany	2010	Sludge
Eclipse Hunter	6	2004	Russia	\N	Progressive power
Elenium	6	1995	Finland	1995	Melodic death
Embassy Of Silence	6	2007	Finland	\N	Progressive,Symphonic
Empyrean	6	2003	Australia	2003	Symphonic death
Fórn	6	2012	USA	\N	Doom,Sludge
Fastkill	6	1996	Japan	1996	Thrash
Fimbulvet	6	2003	Germany	\N	Pagan folk
Firespawn	6	2015	Sweden	2015	Death
From The Vastland	6	2010	Iran, Norway	\N	Black
Fuath	6	2015	United Kingdom	2015	Atmospheric black
Fuck I'm Dead	6	2000	Australia	\N	Grindcore
Furia	6	1997	France	1997	Death,Heavy
Gevolt	6	2001	Israel	\N	Industrial folk
Gigan	6	2006	USA	2006	Progressive death,Technical death
Gjallarhorn	6	2003	Italy	\N	Viking folk
GOD · The Barbarian Horde	6	1993	Romania	1993	Atmospheric gothic,Pagan folk
Gonin-ish	6	1996	Japan	\N	Extreme progressive
Gorath	6	1995	Belgium	1995	Black
Grey Widow	6	2013	United Kingdom	\N	Doom,Blackened sludge
Heart Attack	6	2007	France	2007	Groove thrash
Hegemon	6	1996	France	\N	Black
Hell Militia	6	2001	France	2001	Black
Hetroertzen	6	2001	Chile	\N	Black
Holocausto	6	1985	Brazil	1985	Black,Thrash,Technical thrash
Homo Iratus	6	1998	Greece	\N	Death
Hope Drone	6	2011	Australia	2011	Atmospheric black,Post-metal
Horse Latitudes	6	2009	Finland	\N	Doom,Sludge
Icarus Witch	6	2004	USA	2004	Heavy
Icycore	6	1998	Italy	\N	Progressive
Immersed	6	2008	Canada	2008	Death
In Each Hand A Cutlass	6	2011	Singapore	\N	Post-metal,Progressive
Insidious Disease	6	2004	Norway	2004	Death
Interitus Dei	6	1994	Romania	\N	Gothic
Isacaarum	6	1994	Czech Republic	1994	Death,Grindcore
Jack Starr's Burning Starr	6	1984	USA	\N	Heavy,Us power
Jaguar	6	1979	United Kingdom	1979	Heavy,New wave of british heavy
JesusMartyr	6	1994	Argentina	\N	Death,Thrash
Joel Grind	6	2012	USA	2012	Black,Speed
Kall	6	2012	Sweden	\N	Depressive black
Killing Touch	6	2008	Italy	2008	Melodic power
King Goat	6	2012	United Kingdom	\N	Psychedelic doom
Kjeld	6	2004	The Netherlands	2004	Black
Lîvi	6	1976	Latvia	2010	Hard rock,Heavy
Lancer	6	2009	Sweden	2009	Speed,Power
Lilitu	6	1999	USA	\N	Death,Gothic
Lost Inside	6	2009	USA	2009	Depressive black,Atmospheric black
Magenta Harvest	6	2005	Finland	\N	Melodic death
Medicated	6	2005	Finland	2005	Melodic death
Men Eater	6	2004	Portugal	\N	Stoner,Sludge
Mesmerize	6	1988	Italy	1988	Heavy
Mistress	6	1999	United Kingdom	2008	Death,Grindcore,Sludge
Morne	6	2005	USA	2005	Post-metal,Sludge
Morphinist	6	2013	Germany	\N	Atmospheric black,Post-metal
Mors Subita	6	1999	Finland	1999	Melodic death,Thrash
Mourning Caress	6	1998	Germany	2015	Depressive heavy
Mourning Dawn	6	2002	France	2002	Depressive black
Myrkvar	6	2003	The Netherlands	\N	Black,Folk
Nàttsòl	6	2006	Norway	2006	Black,Folk
Netra	6	2003	France	\N	Black,Trip-,Hop,Ambient
NightCreepers	6	2003	France	2003	Folk,Pagan black
Njiqahdda	6	2005	USA	\N	Atmospheric black,Psychedelic rock
Non Opus Dei	6	1997	Poland	1997	Black
Oblivion	6	2008	USA	\N	Technical death
Occultation	6	2010	USA	2010	Doom
Old Corpse Road	6	2008	United Kingdom	\N	Black,Folk
Onward	6	1999	USA	1999	Us power
Order Of Orias	6	2004	Australia	\N	Black
Ossastorium	6	2001	Lithuania	2001	Technical death
Oz	6	1977	Finland, Sweden	\N	Heavy
Project Silence	6	2008	Finland	2008	Industrial
Sad	6	2005	Greece	\N	Black
Sammath Naur	6	1999	Poland	1999	Avantgarde black,Death
Satanic Slaughter	6	1985	Sweden	\N	Black,Death,Thrash
Saviours	6	2004	USA	2004	Stoner
Scamp	6	2003	Denmark	\N	Thrash
Scelerata	6	2002	Brazil	2002	Power
Seven Sisters Of Sleep	6	2009	USA	\N	Sludge,Hardcore
Shadowgarden	6	1996	Sweden	1996	Gothic,Gothic rock
Silent Opera	6	2007	France	\N	Symphonic gothic
Sithu Aye	6	2011	United Kingdom	2011	Progressiveinstrumental
Skeletal Spectre	6	2008	Sweden	2014	Death,Doom
Skyward	6	2000	Finland	2000	Symphonic power
Smothered	6	2010	Sweden	\N	Death
Sonne Adam	6	2007	Israel	2007	Death
Sorrows Path	6	1993	Greece	\N	Power,Doom
Soul Stealer	6	2003	Lithuania	2003	Heavy,Power
StarGazer	6	1995	Australia	\N	Avantgarde black,Death
Stench	6	2007	Sweden	2007	Death
Steve Grimmett's Grim Reaper	6	2006	United Kingdom	\N	Heavy
Supreme Pain	6	2006	The Netherlands	2006	Death
Svarti Loghin	6	2005	Sweden	\N	Black,Neofolk
Take Over And Destroy	6	2008	USA	2008	Blackened sludge
The Antichrist Imperium	6	2010	United Kingdom	\N	Black,Death
The Disciples Of Zoldon	6	2005	New Zealand	2005	Death,Doom
The Equinox Ov The Gods	6	1990	Sweden	\N	Doom,Gothic
The Funeral Orchestra	6	2002	Sweden	2002	Funeral doom
The Lamp Of Thoth	6	2006	United Kingdom	\N	Doom
The Levitation Hex	6	2010	Australia	2010	Extreme progressive
The Rain I Bleed	6	2008	Greece	\N	Progressive symphonic
Throane	6	2016	France	2016	Industrial black
Thy?	6	2002	USA	2012	Progressive,Metalcore
Trist (CZE)	6	2003	Czech Republic	2003	Depressive black
Triumph	6	1975	Canada	\N	Hard rock,Progressive rock
Troldhaugen	6	2008	Australia	2008	Experimental folk
Twins Crew	6	2007	Sweden	\N	Heavy,Power
Twinspirits	6	2002	Italy	2002	Progressive
Uncanny	6	1989	Sweden	\N	Death
Utstøtt	6	2013	USA	2013	Atmospheric black
Vanhelga	6	2001	Sweden	\N	Black
Vanitas	6	1996	Austria	1996	Gothic
Vesperia	6	2005	Canada	\N	Black,Symphonic folk,Celtic death
Vexillum	6	2004	Italy	2004	Melodic power,Folk
Vulvodynia	6	2014	South Africa	\N	Brutal death,Deathcore
We Are The Catalyst	6	2012	Sweden	2012	Alternative
Where Angels Fall	6	2003	Norway	\N	Gothic
WHOURKR	6	2005	France	2005	Experimental death,Cybergrind
Winterdome	6	1996	Germany	\N	Folk
Wishdoom	6	2007	Greece	2007	Heavy,Doom
Witchsorrow	6	2005	United Kingdom	\N	Doom
Yorblind	6	2002	France	2002	Gothenburg
Yyl	6	2014	France	\N	Industrial,Post-metal,Progressive
11 As In Adversaries	5	2010	France	2010	Extreme avantgarde
A Loathing Requiem	5	2007	USA	\N	Technical death
A Night In Texas	5	2010	Australia	2010	Technical deathcore
Abhorrence	5	1989	Finland	\N	Death
Abstrakt Algebra	5	1995	Sweden	1995	Doom,Heavy
Adamantine	5	2006	Portugal	\N	Melodic thrash
Altar Of Betelgeuze	5	2010	Finland	2010	Death doom,Stoner
Ancient Ceremony	5	1989	Germany	2005	Melodic black
Anguish	5	2007	Sweden	2007	Doom
Apati	5	2008	Sweden	2011	Depressive black
Apotheosis	5	1993	Malta	1993	Symphonic black,Thrash
Arachnes	5	1995	Italy	\N	Power
Asgaroth	5	1995	Spain	1995	Melodic black,Doom
Astral Domine	5	2011	Italy	\N	Symphonic power
At War	5	1983	USA	1983	Speed,Thrash
Auroch	5	2006	Canada	\N	Thrash,Blackened death
Author & Punisher	5	2004	USA	2004	Industrial doom,Drone
Autokrator	5	2014	France	\N	Industrial death,Drone
Autolatry	5	2009	USA	2009	Melodic black,Progressive black
Avsky	5	2002	Sweden	\N	Black
Balance Of Power	5	1995	United Kingdom	1995	Progressive
Beautality	5	2009	United Kingdom	\N	Atmospheric black,Progressive black
Black Oath	5	2006	Italy	2006	Doom
Blacklodge	5	1998	France	\N	Industrial black
Blasphemophagher	5	2002	Italy	2002	Black,Death
Blood Farmers	5	1989	USA	\N	Doom
Bloodway	5	2013	Romania	2013	Progressive black
Bombs Of Hades	5	2002	Sweden	\N	Death
Chain Collector	5	2003	Norway	2003	Melodic death
Chainsaw	5	1997	Poland	\N	Heavy,Power
Changer	5	1999	Iceland	1999	Thrash,Death
Chrch	5	2015	USA	\N	Doom,Sludge
Cold Cell	5	2012	Switzerland	2012	Black
Continuo Renacer	5	1994	Spain	\N	Technical death,Progressive,Instrumental
Corelia	5	2010	USA	2010	Progressive
Corpus Mortale	5	1993	Denmark	\N	Brutal death
Cretin	5	1992	USA	1992	Death,Grindcore
Crown Of Autumn	5	1996	Italy	\N	Gothic
Cult Of Daath	5	1999	USA	1999	Black
Cut Up	5	2014	Sweden	\N	Death
Détente	5	1984	USA	1984	Speed,Thrash
D.C. Cooper	5	1998	USA	\N	Progressive
Dark Sermon	5	2009	USA	2009	Death,Deathcore
Dark Tribe	5	1997	Germany	2015	Black
Darkmoon	5	1997	Switzerland	1997	Extreme gothic,Melodic death,Black,Thrash
Dauntless	5	1991	Finland	\N	Thrash,Death
Dead Summer Society	5	2010	Italy	2010	Gothic doom
Decrepitaph	5	2005	USA	\N	Death
Deep-Pression	5	2006	Poland	2006	Black,Doom
Deluge	5	2013	France	\N	Black,Post-metal,Hardcore
Denouncement Pyre	5	2003	Australia	2003	Black,Death
Derelict Earth	5	2009	France	\N	Extreme progressive
Devious	5	1998	The Netherlands	1998	Death
Die Like Gentlemen	5	2012	USA	\N	Progressive sludge
Distress	5	1996	France	1996	Death doom,Gothic doom,Progressive doom
Divercia	5	1998	Finland	\N	Suomi
Drawn And Quartered	5	1993	USA	1993	Death
Drottnar	5	1996	Norway	\N	Death,Black,Technical black
Dystera	5	2006	Switzerland	2006	Symphonic power
Dystopia	5	2003	Hungary	\N	Progressive heavy
Dystopia Nå!	5	2010	Norway	2010	Depressive black
Eccentric Pendulum	5	2008	India	\N	Progressive
Eciton	5	2000	Denmark	2000	Death
Ego Depths	5	2007	Ukraine, Canada	\N	Funeral doom
Elite	5	2001	Norway	2001	Black
Elvenpath	5	2001	Germany	\N	Power
Elyose	5	2009	France	2009	Industrial,Gothic
Empty Tremor	5	1993	Italy	\N	Progressive
Enabler	5	2010	USA	2010	Hardcore,Metalcore,Punk
Encoffination	5	2008	USA	\N	Death doom
End Of Aeon	5	2011	Finland	2011	Death doom,Melodic death
Episode 13	5	2001	Turkey	\N	Black
Epoch Of Unlight	5	1990	USA	1990	Black,Death
Esoterica	5	2011	USA	2016	Black
Estertor	5	1996	Bolivia	1996	Melodic death,Doom
Eternal Elysium	5	1991	Japan	\N	Psychedelic doom,Stoner
Eternity's End	5	2014	Germany	2014	Progressive,Power
Euphoric Defilement	5	2009	USA	\N	Brutal death
Exiled From Light	5	2007	New Zealand	2007	Depressive black
Fifth To Infinity	5	1997	Sweden	\N	Black,Death
For Selena And Sin	5	2004	Finland	2004	Gothic,Suomi
Force Of Evil	5	2002	Denmark	\N	Heavy
Genius: A Rock Opera	5	2002	Italy	2002	Symphonic power
Goat The Head	5	2002	Norway	\N	Death
Godiva	5	2001	Switzerland	2001	Heavy
Grá	5	2010	Sweden	\N	Black
Grey Skies Fallen	5	1997	USA	1997	Melodic death,Progressive
Hades	5	1992	Norway	1998	Black
Hadriel	5	2007	Sweden	2007	Progressive doom
Haiduk	5	2009	Canada	\N	Melodic death,Thrash,Brutal death
Hail!Hornet	5	2006	USA	2006	Sludge
Hate Meditation	5	2003	USA	\N	Black
Hatred	5	1998	Germany	1998	Thrash
Heavy Lord	5	2002	The Netherlands	\N	Doom,Sludge
Herder	5	2010	The Netherlands	2010	Sludge,Stoner
Hideous Divinity	5	2007	Italy	\N	Brutal death,Technical death
Iconocaust	5	2005	USA	2005	Death,Thrash
Ilium	5	1998	Australia	\N	Power
Illuminati	5	2008	Romania	2008	Progressive thrash,Technical death
InAeona	5	2009	USA	\N	Progressive
Inhume	5	1994	The Netherlands	1994	Brutal death,Grindcore
Just Before Dawn	5	2012	Sweden	\N	Death
Kalidia	5	2010	Italy	2010	Symphonic power
Kataplexia	5	2002	Finland	\N	Brutal death
Kick Axe	5	1976	Canada	1976	Glam,Heavy
Krv	5	2003	Bosnia and Herzegovina	2010	Black
Lantern	5	2007	Finland	2007	Death
Lecherous Nocturne	5	1997	USA	\N	Brutal death,Technical death
Lethal	5	1982	USA	1982	Us power
Lords Of The Trident	5	2008	USA	\N	Heavy
Louna	5	2008	Russia	2008	Nu,Alternative rock
Maim	5	2006	Sweden	\N	Death
Manic Movement	5	1993	Belgium	1993	Death,Symphonic
Manii	5	2011	Norway	\N	Depressive black
Marshall Law	5	1988	United Kingdom	1988	Heavy,Power
Mendel	5	2011	The Netherlands	\N	Progressive,Instrumental
Mephorash	5	2010	Sweden	2010	Black
Metallic Taste Of Blood	5	2011		\N	Progressive,Instrumental
Moonreich	5	2008	France	2008	Black
More	5	1979	United Kingdom	2000	New wave of british heavy,Heavy
Mutilation Rites	5	2009	USA	2009	Black
My Enchantment	5	2000	Portugal	\N	Black
Myraeth	5	2009	Australia	2009	Death doom,Gothic
Névoa	5	2014	Portugal	\N	Atmospheric black
Nitro	5	1987	USA	1987	Heavy,Glam
Noein	5	2007	France	\N	Industrial death
Nontinuum	5	2010	Australia	2010	Atmospheric black,Depressive black
Noothgrush	5	1994	USA	\N	Doom,Sludge
Noturna	5	2002	Brazil	2002	Gothic,Progressive
Noveria	5	2014	Italy	\N	Power
Nox	5	2003	The Netherlands	2003	Death
Obsidian Tongue	5	2009	USA	\N	Atmospheric black
Odraza	5	2009	Poland	2009	Black
One Machine	5	2008	USA	\N	Progressive thrash
Opus Doria	5	2009	France	2009	Symphonic power
Overlorde	5	1985	USA	\N	Us power
Parasitic Extirpation	5	2007	USA	2007	Brutal death,Technical death
Pariah	5	1988	United Kingdom	1998	Power,Thrash
Pestilential Shadows	5	2003	Australia	2003	Black
Phoenix Rising	5	2007	Spain	\N	Symphonic power
Pictures Of Pain	5	2004	Norway	2004	Extreme progressive
Profundi	5	2006	Sweden	\N	Black
Pulse Of Nebulae	5	2013	Latvia	2013	Progressive death
Radigost	5	1994	Russia	\N	Doom,Black
Raging Speedhorn	5	1998	United Kingdom	1998	Nu
Raise Hell	5	1996	Sweden	\N	Black,Thrash
Reciprocal	5	2007	USA	2007	Technical death,Brutal death
Resistance	5	1987	USA	\N	Thrash,Progressive,Heavy,Us power
Reverence (USA)	5	2010	USA	2010	Progressive power
Rising	5	2008	Denmark	\N	Sludge
Rising Dream	5	2004	Croatia	2004	Heavy,Extreme power,Power
Ruthless	5	1982	USA	\N	Heavy,Us power
Sammath	5	1994	The Netherlands	1994	Black
Scythian	5	2004	United Kingdom	\N	Blackened death,Thrash
Senmuth	5	2004	Russia	2004	Ambient ,Doom,Electronica,Experimental ,Industrial
Serpentine Path	5	2011	USA	\N	Death,Doom
Six Degrees Of Separation	5	1996	Czech Republic	1996	Doom
Skogmark	5	2012	Russia	\N	Atmospheric black
Skumring	5	2004	Norway	2004	Doom
Slivers Of Silence	5	2008	Finland	\N	Melodic death
Solbrud	5	2009	Denmark	2009	Atmospheric black
Somnus Aeternus	5	2007	Czech Republic	\N	Death doom,Gothic
Soulmass	5	2013	USA	2013	Death
Spelljammer	5	2007	Sweden	\N	Stoner,Doom
Spoil Engine	5	2004	Belgium	2004	Melodic death,Metalcore
Stillborn	5	2000	Malta	\N	Symphonic
Svartahrid	5	1994	Norway	1994	Black
Sweet Savage	5	1979	United Kingdom	\N	New wave of british heavy,Heavy
Sweet Sorrow	5	1996	Slovenia	1996	Heavy,Melodic death
Syrach	5	1993	Norway	\N	Doom
Taatsi	5	2013	Finland	2013	Atmospheric black
Tacit Fury	5	2001	Russia	\N	Symphonic death,Doom,Death
Talamyus	5	2002	Canada	2002	Melodic death,Thrash
Terzij De Horde	5	2010	The Netherlands	\N	Black,Post-metal
The Almighty	5	1988	United Kingdom	1988	Hard rock
The Crevices Below	5	2011	Australia	2013	Black
The Defaced	5	1995	Sweden	1995	Melodic death,Thrash
The Grotesquery	5	2009	Sweden	\N	Death
The Lion's Daughter	5	2007	USA	2007	Blackened sludge,Hardcore
The Lord Weird Slough Feg	5	1990	USA	2005	Heavy
The Lucifer Principle	5	2004	The Netherlands	2004	Death
The Mist And The Morning Dew	5	2000	Finland	2005	Gothic doom,Folk
The Order Of Apollyon	5	2008	United Kingdom	2008	Black,Death
The Union Underground	5	1996	USA	2002	Nu,Industrial
The Wolves Of Avalon	5	2011	United Kingdom	2011	Pagan black,Celtic folk
Tort	5	2009	Spain	\N	Sludge
Totenmond	5	1984	Germany	1984	Punk rock,Death doom
Tulus	5	1993	Norway	\N	Black
Turbid North	5	2001	USA	2001	Death,Groove thrash,Sludge,Stoner
Unseelie	5	2010	France	\N	Gothic
Vampire	5	2011	Sweden	2011	Death,Blackened thrash
Vanadium	5	1980	Italy	1996	Heavy
Vasaeleth	5	2008	USA	2008	Death
Velnezers	5	2013	Latvia	\N	Black
Velnias	5	2006	USA	2006	Blackened doom,Folk
Vhernen	5	2006	Faroe Islands	\N	Black,Doom
Vrani Volosa	5	2003	Bulgaria	2003	Pagan black
Wall Of Sleep	5	2001	Hungary	\N	Doom,Stoner
Wedding In Hades	5	2006	France	2006	Death,Gothic doom
Wederganger	5	2013	The Netherlands	\N	Black
Well Of Souls	5	1997	USA	1997	Doom
Who Dies In Siberian Slush	5	2003	Russia	\N	Death,Funeral doom
Whorecore	5	2003	Israel	2003	Deathgrind
Wide Eyes	5	2009	USA	\N	Progressive,Djent,Instrumental
Widowmaker	5	1992	USA	1992	Heavy
Wino	5	2008	USA	\N	Doom,Stoner
Witchking	5	2003	Poland	2003	Heavy
Wolves Den	5	2014	Germany	\N	Black
Woman Is The Earth	5	2007	USA	2007	Atmospheric black
Yayla	5	2007	Turkey	\N	Ambient black
Year Of Desolation	5	2001	USA	2001	Thrash
Your Shapeless Beauty	5	1994	France	\N	Melodic death,Doom
Zatokrev	5	2002	Switzerland	2002	Doom,Sludge
69 Chambers	4	2001	Switzerland	\N	Heavy,Alternative
A Diadem Of Dead Stars	4	2014	Greece	2014	Atmospheric blackinstrumental
Abnormal Thought Patterns	4	2008	USA	\N	Technical progressive,Instrumental,Shred
Absurdist	4	2011	USA	2011	Blackened grindcore
Ad Nauseam	4	2011	Italy	\N	Technical death
Aeon Winds	4	2007	Slovak Republic	2007	Atmospheric black,Ambient
Aethernaeum	4	2012	Germany	\N	Black,Folk
AfterBlood	4	2011	Greece	2011	Death,Thrash
Ahumado Granujo	4	1999	Czech Republic	2005	Grindcore
Aisling	4	1998	Italy	1998	Melodic black,Pagan black
Alas	4	1995	USA	\N	Progressive,Symphonic
Algaion	4	1993	Sweden	1993	Atmospheric black
Ambush	4	2013	Sweden	\N	Heavy
Amendfoil	4	2007	Finland	2007	Alternative,Progressive
Anthemon	4	1997	France	2007	Atmospheric doom,Symphonic doom,Atmospheric progressive
Antichrisis	4	1995	Germany	1995	Gothic,Folk
Apophis	4	1989	Germany	2009	Thrash,Death
Apostate	4	1993	Ukraine	1993	Death doom
Armenia	4	2012	Canada	\N	Symphonic,Gothic
Assaulter	4	2005	Australia	2005	Black,Thrash
Audiovision	4	2003	Sweden	\N	Heavy,Power
Auriga	4	2009	Lebanon	2009	Ambient black
Avenger	4	1982	United Kingdom	\N	New wave of british heavy,Heavy
Averse Sefira	4	1996	USA	1996	Black
Begrime Exemious	4	2005	Canada	\N	Blackened death
Bestia Arcana	4	2008	USA	2008	Black
Black Like Vengeance	4	2005	Australia	\N	Melodic death
Black Shape Of Nexus	4	2005	Germany	2005	Drone doom,Sludge
Black Sheep Wall	4	2006	USA	\N	Post-metal,Sludge,Hardcore
Bloodtruth	4	2009	Italy	2009	Brutal death,Technical death
Bones	4	2009	USA	\N	Death
Cønstantine	4	2006	Finland	2006	Progressive
Caelestia	4	2012	Greece	\N	Melodic death
Cales	4	1992	Czech Republic	1992	Pagan folk
Cardamon	4	2004	The Netherlands	\N	Alternative,Gothic
Chaos Inception	4	2008	USA	2008	Death
Chaoswave	4	2003	Italy	2011	Melodic heavy,Progressive
Code Orange	4	2008	USA	2008	Hardcore,Metalcore,Punk
Collision	4	2000	The Netherlands	\N	Grindcore
Condor	4	2009	Norway	2009	Black,Thrash
Conorach	4	2005	The Netherlands	\N	Power,Viking folk
Construcdead	4	1999	Sweden	1999	Melodic death
Control Human Delete	4	2001	The Netherlands	\N	Industrial black
Crimson Wind	4	2008	Italy	2008	Power
Cryptborn	4	2010	Finland	\N	Death
CSSABA	4	2009	Poland	2009	Industrial black
Cult Of Occult	4	2011	France	\N	Doom,Blackened sludge
Dantalion	4	2004	Spain	2004	Black
Dark Embrace	4	2000	Spain	2009	Gothic doom
Dark Forest (UK)	4	2002	United Kingdom	2002	Heavy,Power
Dark Millennium	4	1989	Germany	\N	Death doom
Dead Eyed Sleeper	4	1994	Germany	1994	Death
Dead Raven Choir	4	1996	Poland	\N	Black,Acoustic folk,Neofolk
Deadborn	4	2002	Germany	2002	Technical death
Deadly Carnage	4	2005	Italy	\N	Black,Atmospheric doom
Death Dealer	4	2012	USA	2012	Us power
Death Engine	4	2012	France	\N	Hardcore,Noise
Defaced	4	2012	Switzerland	2012	Death
Defecto	4	2011	Denmark	\N	Progressive
Demise	4	1995	Poland	1995	Melodic death
Despondency	4	1999	Germany	2010	Brutal death
Deus Mortem	4	2008	Poland	2008	Black
Devil In The Kitchen	4	2003	USA	\N	Folk,Speed
Dhishti	4	2009	Sri Lanka	2009	Depressive black,Atmospheric black
Diadema Tristis	4	2004	Argentina	\N	Folk
Dies Ater	4	1994	Germany	1994	Black
Dirty Woman	4	2006	Mexico	\N	Heavy
Dis Pater	4	1993	Russia	1993	Doom
Disaffected	4	1991	Portugal	\N	Death,Thrash,Progressive death
Distillator	4	2013	The Netherlands	2013	Thrash
Domains	4	2005	Spain	\N	Death
Double Dealer	4	1999	Japan	1999	Heavy
Dragonauta	4	1999	Argentina	\N	Doom,Stoner
Dragonsfire	4	2005	Germany	2005	Heavy
Driver	4	1989	USA	\N	Melodic heavy
earthtone9	4	1998	United Kingdom	1998	Alternative
Eastern Front	4	2006	United Kingdom	\N	Black
Easy Rider	4	1990	Spain	1990	Power
Echoes Of Yul	4	2008	Poland	\N	Atmospheric doom,Drone
Ecliptica	4	2005	Austria	2005	Power
Edge Of Attack	4	2008	Canada	\N	Heavy,Power
Eight Bells	4	2010	USA	2010	Experimental progressive
Elferya	4	2008	Switzerland	\N	Symphonic
Embraze	4	1994	Finland	1994	Gothic
End Of The Dream	4	2013	The Netherlands	\N	Symphonic
Endless Main	4	2007	Slovak Republic	2007	Power
Enemy Of The Sun	4	2006	Germany	\N	Progressive thrash
EnkElination	4	2011	United Kingdom	2011	Symphonic
Enthral	4	1995	Norway	\N	Melodic black
Execration	4	2004	Norway	2004	Death
Fall Of The Idols	4	2000	Finland	\N	Doom
Feastem	4	2005	Finland	2005	Grindcore
Fides Inversa	4	2006	Italy	\N	Black
Final Darkness	4	2011	Canada	2011	Melodic death,Thrash
Fister	4	2009	USA	\N	Doom,Sludge,Stoner
Full Force Inc	4	2008	Sweden	2008	Heavy,Power
Funerary	4	2013	USA	\N	Funeral doom
Ghost Iris	4	2012	Denmark	2012	Progressive metalcore,Djent
Glaciation	4	2011	France	\N	Black
Glass Cloud	4	2011	USA	2011	Metalcore
Gravecode Nebula	4	2006	USA	\N	Experimental black,Funeral doom
Gun Barrel	4	1998	Germany	1998	Heavy,Power
Handful Of Hate	4	1993	Italy	\N	Black
Hierophant	4	2010	Italy	2010	Black,Sludge,Hardcore
Hjel	4	2013	Germany	\N	Black
Hord	4	2002	France	2002	Progressive
Huldre	4	2006	Denmark	\N	Folk
Ignominious Incarceration	4	2006	United Kingdom	2006	Technical death,Melodic deathcore
Imber Luminis	4	2006	Belgium	\N	Atmospheric doom
Immortal Bird	4	2013	USA	2013	Death
Imperial Triumphant	4	2005	USA	\N	Black
In Battle	4	1996	Sweden	1996	Black,Death
In The Company Of Serpents	4	2011	USA	\N	Doom,Sludge,Stoner
In Tormentata Quiete	4	1998	Italy	1998	Progressive
Incursed	4	2007	Spain	\N	Pagan folk,Viking folk
Infected Disarray	4	2000	United Kingdom	2000	Brutal death
Ingrimm	4	2004	Germany	\N	Medieval folk
Integral Rigor	4	2009	Iran	2009	Death,Thrash
Jarell	4	2006	France	\N	Gothenburg,Metalcore
Jorn Lande & Trond Holter	4	2014	Norway	2014	Heavy,Symphonic power
Julie Christmas	4	2009	USA	\N	Alternative
Karkadan	4	1997	Germany	1997	Atmospheric black
Katavasia	4	2014	Greece	\N	Melodic black
KEN Mode	4	1999	Canada	1999	Noise rock,Hardcore
Kenn Nardi	4	2014	USA	\N	Progressive thrash
Killers	4	1984	France	1984	Speed
King Conquer	4	2001	USA	\N	Deathcore
Koldborn	4	1997	Denmark	1997	Melodic death,Thrash
Kozeljnik	4	2006	Serbia	\N	Black
Kruger	4	2001	Switzerland	2001	Sludge
Laethora	4	2005	Sweden	\N	Death
Les Chants De Nihil	4	2007	France	2007	Black
Lesbian	4	2004	USA	\N	Progressive doom,Stoner
Light Bringer	4	2005	Japan	2005	Power
Lord Agheros	4	1999	Italy	\N	Extreme gothic
Lorna Shore	4	2010	USA	2010	Metalcore,Deathcore
Love Sex Machine	4	2009	France	\N	Sludge
Luminaria	4	2002	Poland	2002	Gothic doom
Lux Divina	4	1998	Spain	\N	Pagan black
Machinery	4	2001	Sweden	2001	Thrash,Power
Made Out Of Babies	4	2005	USA	2012	Post-metal,Sludge,Noise rock
Maladie	4	2009	Germany	2009	Avantgarde,Progressive black
Mammoth Storm	4	2012	Sweden	\N	Stoner,Doom
Maruta	4	2005	USA	2005	Grindcore
Mass Hysteria	4	1993	France	\N	Alternative,Industrial
Memfis	4	2003	Sweden	2003	Extreme progressive
Miazma	4	2008	Australia	\N	Death
Mindfeeder	4	2003	Portugal	2003	Heavy,Power
Misteyes	4	2012	Italy	\N	Melodic death,Gothic,Symphonic
Mondstille	4	2004	Austria	2004	Avantgarde black
Morhana	4	2006	Poland	\N	Folk
Mortuus	4	2003	Sweden	2003	Black
Mourning Mist	4	2013	Italy	\N	Blackened doom,Avantgarde doom
Naïve	4	2007	France	2007	Alternative,Trip-,Hop
Nachtvorst	4	2007	The Netherlands	\N	Black
Nadiwrath	4	2007	Greece	2007	Black
Nailed To Obscurity	4	2005	Germany	\N	Death doom
Narcotic Wasteland	4	2011	USA	2011	Death
Necronoclast	4	2003	United Kingdom	\N	Black
Neoheresy	4	2014	Poland	2014	Pagan black,Symphonic black
Neosis	4	2010	Switzerland	\N	Progressive math
Nocturnal Fear	4	2000	USA	2000	Death,Thrash
Nordor	4	1989	Greece	\N	Death
Nova Era	4	2008	Mexico	2008	Power
Old Forest	4	1998	United Kingdom	\N	Black
Old Season	4	2003	Ireland	2003	Heavy
Osmi Putnik	4	1985	Croatia	\N	Heavy
Panndora	4	2000	Brazil	2000	Heavy
Parricide	4	1990	Poland	\N	Death,Brutal death,Grindcore
Persian Risk	4	1979	United Kingdom	1979	New wave of british heavy,Heavy
Phaze I	4	2005	France	\N	Progressive black,Thrash
Phosphorus	4	2007	Canada	2007	Black,Thrash
Pilgrim	4	2010	USA	\N	Doom
Pissing Razors	4	1994	USA	1994	Groove thrash
Posthuman	4	2007	The Netherlands	2010	Melodic death
Preternatural	4	1999	Latvia	1999	Melodic death
Pyogenesis	4	1989	Germany	\N	Death,Gothic doom,Alternative rock,Punk rock
Q5	4	1983	USA	1983	Hard rock,Heavy
Quartz	4	1974	United Kingdom	\N	New wave of british heavy,Heavy
Rage Nucléaire	4	2006	Canada	2006	Industrial black,Melodic black
Rage Of Romance	4	2010	Greece	\N	Power,Progressive
Raglaia	4	2015	Japan	2015	Heavy,Speed
Railway	4	1977	Germany	\N	Heavy
Ramming Speed	4	2005	USA	2005	Death,Thrash,Crossover thrash
Ripper	4	2007	Chile	\N	Thrash,Death
Scarleth	4	2005	Ukraine	2005	Symphonic power,Gothic
Scars Of Chaos	4	1997	France	\N	Symphonic black
Schizoid Lloyd	4	2007	The Netherlands	2007	Progressive,Avantgarde
Sepsism	4	1990	USA	\N	Death
Serenity Broken	4	2010	Greece	2010	Alternative,Hard rock
Serpentine Dominion	4	2011	USA	\N	Death
Shadowkeep	4	1999	United Kingdom	1999	Progressive,Power
Shah	4	1985	Russia	1996	Thrash
Shatter Messiah	4	2005	USA	2005	Us power,Thrash
Shepherd	4	2011	India	\N	Sludge,Hard rock
Shepherds Of Cassini	4	2012	New Zealand	2012	Post-metal,Progressive rock
Shok Paris	4	1982	USA	\N	Heavy,Speed
Sin7sinS	4	2007	The Netherlands	2007	Gothic,Gothic rock
Slash's Snakepit	4	1995	USA	2001	Hard rock,Blues rock
Speed\\Kill/Hate	4	2002	USA	2002	Thrash
Spheron	4	2007	Germany	\N	Death
Sportlov	4	2000	Sweden	2000	Black
Squash Bowels	4	1994	Poland	\N	Goregrind
Star Queen	4	2001	Bulgaria	2001	Symphonic power,Symphonic gothic
Stormhammer	4	1993	Germany	\N	Power
Stride	4	1996	USA	1996	Progressive,Progressive rock
Strikelight	4	1999	Greece	\N	Heavy
Sworn (ARM)	4	2005	Armenia	2005	Symphonic black
Symphonic Destiny	4	2014	Serbia	\N	Symphonic
Tacoma Narrows Bridge Disaster	4	2008	United Kingdom	2008	Post-,Rock ,Post-metal
Teethgrinder	4	2013	The Netherlands	\N	Grindcore
The 3rd Attempt	4	2014	Norway	2014	Black
The Infernal Sea	4	2010	United Kingdom	\N	Black
The Kill	4	2000	Australia	2000	Grindcore
The Moaning	4	1994	Sweden	1997	Melodic death
The Old Wind	4	2013	Sweden	2013	Post-metal
The Ritual Aura	4	2015	Australia	\N	Progressive death,Technical death
The Scourger	4	2003	Finland	2003	Thrash
The Ugly	4	2004	Sweden	\N	Black
Third Ion	4	2010	Canada	2010	Progressive
This Gift Is A Curse	4	2008	Sweden	\N	Black,Sludge,Hardcore
Thormesis	4	2006	Germany	2006	Pagan black
Thy Wicked	4	2000	Germany	\N	Pagan black,Folk
Total Devastation	4	1998	Finland	1998	Industrial death
Undergang	4	2008	Denmark	\N	Death
Ur Draugr	4	2014	Australia	2014	Blackened death
Vagrant God	4	2007	Norway	\N	Gothic
Vainaja	4	2011	Finland	2011	Death doom
Valkyrie	4	2002	USA	\N	Doom,Heavy
Violet Cold	4	2013	Azerbaijan	2013	Shoegaze
Visceral Throne	4	2009	USA	\N	Brutal death
Volture	4	2008	USA	2008	Heavy
Vortech	4	2000	Finland	\N	Industrial,Death
Vulturium Memoriae	4	2006	Italy	2006	Avantgarde doom,Drone
Weekend Nachos	4	2004	USA	2016	Grindcore,Hardcore,Punk
Westfield Massacre	4	2014	USA	2014	Metalcore,Melodic death
Whispering Woods	4	2008	Romania	\N	Gothic doom
Wild Throne	4	2013	USA	2013	Progressive
Winterlong	4	1998	Sweden	\N	Power,Progressive
Wolfsbane	4	1984	United Kingdom	1984	Glam,Heavy,Hard rock
Wormreich	4	2009	USA	\N	Black
Worms Of Sabnock	4	2003	United Kingdom	2003	Melodic black
Wound	4	2011	Germany	\N	Death
Xibalba (USA)	4	2007	USA	2007	Death,Hardcore
Xul	4	2008	Canada	\N	Blackened death
Xysma	4	1988	Finland	1988	Grindcore,Death ',N',Roll ,Hard rock,Rock
Yonder Realm	4	2009	USA	\N	Folk
Église	3	2011	Denmark	2011	Post-metal,Hardcore
(V.E.G.A.)	3	1998	Italy	\N	Industrial black
2 Ton Predator	3	1993	Sweden	1993	Thrash
24-7 Spyz	3	1986	USA	\N	Alternative,Funk rock,Crossover thrash
A Pregnant Light	3	2009	USA	2009	Black,Post-metal,Hardcore
A.I.(d)	3	2010	France	\N	Djent
A.M.S.G.	3	2007	Canada	2007	Black
Abaddon Incarnate	3	1994	Ireland	\N	Grindcore,Death
Abaton	3	2009	Italy	2009	Doom,Black
Ad Inferna	3	2000	France	2015	Symphonic black,Gothic,Electro industrial
Aenygmist	3	2007	Canada	2007	Melodic black
Ah Ciliz	3	2008	USA	\N	Atmospheric black,Depressive black
Aleph	3	1998	Italy	1998	Death,Thrash,Progressive
AnachroniA	3	2000	France	\N	Gothic,Melodic progressive
Anal Stench	3	2001	Poland	2001	Death
Angmar	3	2002	France	\N	Black
Anima Damnata	3	1996	Poland	1996	Black,Death
Antipope	3	2004	Finland	\N	Black,Progressive black,Extreme progressive
Aphonic Threnody	3	2012	United Kingdom	2012	Funeral doom
Apostle Of Solitude	3	2004	USA	\N	Doom
Archon	3	2008	USA	2008	Psychedelic doom,Sludge,Stoner
As We Fight	3	2001	Denmark	2011	Metalcore
Asmodeus (AUT)	3	1996	Austria	1996	Black
Assailant	3	2004	Sweden	\N	Progressive power
At The Lake	3	2005	Poland	2005	Symphonic folk
Atrament	3	2014	USA	\N	Black,Crust,Punk
Atrorum	3	1998	Germany	1998	Avantgarde black
Auspex	3	2001	France	\N	Power,Progressive power
Avenger (Ger)	3	1984	Germany	1984	Speed,Heavy
Baring Teeth	3	2007	USA	\N	Progressive death,Technical death
Barishi	3	2010	USA	2010	Progressive
Before Eden	3	1998	Brazil	1998	Progressive power
Before The Harvest	3	2011	Australia	\N	Symphonic deathcore
Beyond The Dust	3	2010	France	2010	Progressive,Djent
Black Hole Generator	3	2006	Norway	\N	Industrial black
Black Star Riders	3	2012	USA	2012	Hard rock
Blessed Death	3	1984	USA	1992	Thrash,Speed
Blind Fury	3	1983	United Kingdom	1983	New,Wave,Of british heavy
Blockheads	3	1992	France	\N	Grindcore
Bloodmoon	3	2010	USA	2010	Progressive sludge,Doom
Brothers Of The Sonic Cloth	3	2007	USA	\N	Doom,Sludge,Stoner
Brutart	3	2000	Slovenia	2000	Doom
Buried At Sea	3	2001	USA	\N	Drone doom,Sludge
By Night	3	1999	Sweden	1999	Thrash
Calvarium	3	2001	Finland	\N	Black
Cancerous Womb	3	2008	United Kingdom	2008	Death,Grindcore
Celestial Decay	3	2008	Sweden	\N	Symphonic power
Centimani	3	2006	USA	2006	Melodic death,Melodic black
Chasse-Galerie	3	2007	Canada	\N	Black
Chemical Breath	3	1990	Belgium	1990	Technical death,Thrash
Church Bizarre	3	2001	Denmark	\N	Death,Black
Church Of Void	3	2010	Finland	2010	Doom
Circle Of Dust	3	1988	USA	\N	Industrial
Clairvoyants	3	2001	Italy	2001	Heavy
Cognizance	3	2012	United Kingdom	\N	Melodic death,Technical death,Deathcore
Collapse 7	3	1992	Austria	1992	Melodic death
Contrarian	3	2014	USA	\N	Progressive death
Corrupt Moral Altar	3	2012	United Kingdom	2012	Grindcore
Cowards	3	2011	France	\N	Black,Sludge,Hardcore
Crescent Shield	3	2000	USA	2000	Power
Crimsonfire	3	1997	Australia	\N	Power
Crowhurst	3	2011	USA	2011	Experimental black,Noise
Crowned	3	2010	Australia	\N	Black
Cruadalach	3	2008	Czech Republic	2008	Folk
Curse	3	1995	Iceland	\N	Black
Cyanide Serenity	3	2008	United Kingdom	2008	Melodic metalcore
Cyclone	3	1980	Belgium	1993	Thrash
Danse Macabre	3	1995	The Netherlands	1995	Gothic
Dark Domination	3	1996	Latvia	\N	Black
Dawn Of Winter	3	1990	Germany	1990	Doom
Dawn On Sedna	3	2013	Italy	\N	Post-metal
De Arma	3	2009	Sweden	2009	Black,Post-metal
Dead Instrument	3	2007	Denmark	\N	Grindcore
Death Strike	3	1984	USA	1984	Death
Deathraiser	3	2006	Brazil	\N	Thrash
Decomposed	3	1990	United Kingdom	1990	Death,Doom
Derkéta	3	1988	USA	\N	Death doom
Desolation Angels	3	1981	United Kingdom	1981	New wave of british heavy,Heavy
Destroying Divinity	3	2001	Czech Republic	\N	Death
DinUmbr?	3	1998	Romania	1998	Death doom,Gothic doom
Dissolution	3	2003	Canada	\N	Melodic death,Technical thrash
Dol Theeta	3	2008	Greece	2008	Electronic symphonic
Down Among The Dead Men	3	2013	Sweden	\N	Death
Duff McKagan's Loaded	3	1999	USA	1999	Hard rock
Dungortheb	3	1996	France	\N	Technical death
Dynazty	3	2007	Sweden	2007	Heavy,Hard rock,Melodic power
Dyslesia	3	1986	France	\N	Melodic power
Ecferus	3	2014	USA	2014	Black
Echo Of Dalriada	3	1998	Hungary	2006	Folk
Eden Weint Im Grab	3	2004	Germany	2004	Gothic
Edenfall	3	2009	United Kingdom	\N	Gothic doom
Effloresce	3	2008	Germany	2008	Progressive
Ellipsis	3	1995	France	\N	Symphonic progressive
Emergency Gate	3	1996	Germany	1996	Power
Eternal Majesty	3	1995	France	\N	Black
Ethereal Blue	3	2002	Greece	2002	Atmospheric death
Evidence One	3	2001	Germany	\N	Melodic hard rock
Ewigkeit	3	1994	United Kingdom	1994	Black
Executer	3	1985	Brazil	\N	Thrash
Exhale	3	2004	Sweden	2004	Grindcore
Exmortem	3	1992	Denmark	2010	Death
Face Of Oblivion	3	2009	USA	2009	Technical death
Falaise	3	2015	Italy	\N	Atmospheric black,Post-metal
Fall Of Empyrean	3	2000	USA	2000	Death doom
Fate	3	1984	Denmark	\N	Hard rock
Feridea	3	2012	Finland	2012	Symphonic,Gothic
Feto In Fetus	3	2004	Poland	\N	Deathgrind
Finnugor	3	2001	Hungary	2001	Symphonic black,Industrial black
Fogland	3	1997	Romania	\N	Folk,Melodic black
Forgive-Me-Not	3	1996	Russia	1996	Gothic doom
Fright Night	3	2005	Russia	\N	Gothic rock,Gothic
Geïst	3	2005	Germany	2005	Black
Generation Kill	3	2009	USA	\N	Crossover thrash
Geoff Tate's Queensrÿche	3	2012	USA	2012	Progressive
Gillan	3	1978	United Kingdom	1982	Hard rock
Goathemy	3	1995	Finland	1995	Melodic black
God.Fear.None	3	2004	Greece	\N	Melodic death,Metalcore
Graveshadow	3	2012	USA	2012	Symphonic,Gothic
Graveyard (ESP)	3	2007	Spain	\N	Death
Griftegård	3	2005	Sweden	2005	Doom
Grima	3	2014	Russia	\N	Atmospheric black
Grimfist	3	2001	Norway	2001	Black,Death
Gurd	3	1994	Switzerland	\N	Thrash
Hacavitz	3	2003	Mexico	2003	Blackened death,Black
Haeres	3	2009	Canada	\N	Black
Hardingrock	3	2005	Norway	2005	Folk,Rock
Havoc Unit	3	2005	Finland	2013	Industrial,Experimental black
Hell:On	3	2005	Ukraine	2005	Thrash
Hellfueled	3	1998	Sweden	\N	Heavy
Hexis	3	2010	Denmark	2010	Black,Hardcore
High Priest Of Saturn	3	2011	Norway	\N	Doom,Stoner,Psychedelic rock
High Spirits	3	2009	USA	2009	Hard rock,Heavy
Horizon Ablaze	3	2008	Norway	\N	Death
Houwitser	3	1997	The Netherlands	1997	Death
Hybris	3	2010	United Kingdom	\N	Progressive thrash
Hyems	3	2000	Germany	2000	Melodic black
Ian Gillan	3	1982	United Kingdom	\N	Hard rock,Pop rock,Blues rock
Implant Pentru Refuz	3	1995	Romania	1995	Hardcore,Metalcore
In Twilight's Embrace	3	2005	Poland	\N	Metalcore,Melodic death,Death
Infera Bruo	3	2009	USA	2009	Progressive black
Inspell	3	2003	Bulgaria	\N	Symphonic black
Iron Hearse	3	2002	United Kingdom	2002	Doom
Jaded Star	3	2013	Greece	\N	Melodic power
Kenziner	3	1997	Finland	1997	Power
Kinetik	3	2007	USA	\N	Industrial,Groove thrash
Kowloon Walled City	3	2007	USA	2007	Sludge
L'Esprit Du Clan	3	1992	France	\N	Metalcore
Last Sacrament	3	2005	USA	2005	Death
Laster	3	2012	The Netherlands	\N	Atmospheric black
Latitude Egress	3	2007	Germany	2007	Black,Funeral doom,Atmospheric doom
Lechery	3	2004	Sweden	\N	Heavy
Lefay	3	1997	Sweden	1997	Power,Thrash
Let Me Dream	3	1989	Finland	\N	Gothic doom
Level 10	3	2014		2014	Heavy,Power
Lightning	3	2002	Japan	\N	Heavy,Power
Lorn	3	1999	Italy	1999	Black
Loss	3	2000	Sweden	\N	Death
Lothlöryen	3	2002	Brazil	2002	Melodic power,Folk
Love Lies Bleeding	3	1996	France	2008	Atmospheric black,Doom
Magister Templi	3	2008	Norway	2008	Hard rock,Heavy,Doom
Majster Kat	3	2001	Slovak Republic	\N	Thrash
Makrothumia	3	1994	Romania	1994	Death doom,Progressive
Mandator	3	1987	The Netherlands	1993	Speed,Thrash
Manitou	3	1997	Finland	1997	Progressive heavy
Maveth	3	2007	Finland	\N	Blackened death
Mayze	3	2012	Germany	2012	Progressive,Gothic
Medico Peste	3	2010	Poland	\N	Black
Mefisto	3	1984	Sweden	1984	Black,Death,Thrash
Menace	3	2013	United Kingdom	\N	Progressive,Hard rock
Mhorgl	3	2004	Australia	2004	Black
Middian	3	2005	USA	2008	Doom,Sludge
Mind Odyssey	3	1993	Germany	1993	Progressive
Misery Inc.	3	2001	Finland	2008	Gothic,Death
Morbosidad	3	1993	USA	1993	Black,Death
Moth	3	2011	USA	\N	Melodic death,Progressive
Mother Witch & Dead Water Ghosts	3	2013	Ukraine	2013	Doom,Psychedelic rock
Mystic Force	3	1986	USA	2005	Us power,Progressive
Nachtlieder	3	2008	Sweden	2008	Black
Necrite	3	2004	USA	\N	Ambient black,Drone
Nevaloth	3	2008	Slovak Republic	2008	Atmospheric black
Nevolution	3	2004	Iceland	\N	Melodic death
Night Magic	3	2006	USA	2006	Doom
No-Big-Silence	3	1989	Estonia	\N	Death,Industrial
Noisear	3	1999	USA	1999	Grindcore
Nonsun	3	2011	Ukraine	\N	Drone doom,Sludge
Norska	3	2009	USA	2009	Doom,Sludge
Ocean Chief	3	2001	Sweden	\N	Doom,Sludge,Stoner
Oh, Sleeper	3	2006	USA	2006	Metalcore
Ol Drake	3	2013	United Kingdom	\N	Heavy,Hard rock
Omen (HUN)	3	1990	Hungary	1990	Thrash,Speed
Omnerod	3	2009	Belgium	\N	Extreme progressive
Ordog	3	2005	Finland	2005	Doom
Oruga	3	2010	France	\N	Doom,Sludge,Stoner
Ostrogoth	3	1976	Belgium	1976	Heavy
Over Your Threshold	3	2006	Germany	\N	Progressive death
P.L.F.	3	1999	USA	1999	Grindcore
Persephone's Dream	3	1993	USA	\N	Progressive rock,Progressive
Perzonal War	3	1996	Germany	1996	Power,Thrash
Phantom Winter	3	2014	Germany	\N	Sludge
Planks	3	2007	Germany	2007	Blackened sludge
Plateau Sigma	3	2010	Italy	\N	Doom
Poison Sun	3	2010	Germany	2010	Heavy
Possession	3	2012	Belgium	\N	Black,Death
Posthum	3	2004	Norway	2004	Progressive black
Primal Rock Rebellion	3	2011	United Kingdom	\N	Heavy,Alternative
Profusion	3	2001	Italy	2001	Progressive,Fusion
Prohod	3	2012	Romania	\N	Atmospheric black,Melodic black
Project Pain	3	2011	The Netherlands	2011	Thrash
Queiron	3	1995	Brazil	\N	Brutal death
Quest Of Aidance	3	2004	Sweden	2004	Melodic death,Grindcore
Ravager	3	1997	Mexico	2003	Brutal death
Reasons Behind	3	2010	Italy	2010	Symphonic power
Rendezvous Point	3	2010	Norway	\N	Progressive
Resurrection Kings	3	2015	USA	2015	Hard rock
Revolted Masses	3	2008	Greece	\N	Progressive death,Thrash
Rippikoulu	3	1990	Finland	1990	Death
RoadkillSoda	3	2011	Romania	\N	Sludge,Stoner
Rosae Crucis	3	1990	Italy	1990	Heavy
Sadness	3	1989	Switzerland	1998	Death doom,Gothic doom
Samothrace	3	2006	USA	2006	Doom,Stoner
Sanctimony	3	1994	Latvia	\N	Death,Death ',N',Roll
Saturnalia Temple	3	2006	Sweden	2006	Doom,Stoner
Sear	3	2001	Finland	\N	Black,Death
Season's End	3	1998	United Kingdom	1998	Gothic
Sektemtum	3	2009	France	\N	Black
Self-Inflicted Violence	3	2007	United Kingdom	2007	Black,Post-rock
Sengir	3	1995	Belgium	2007	Gothic,Death doom
Sepia Dreamer	3	2003	Sweden	2003	Progressive
Septic Mind	3	2006	Russia	\N	Funeral doom
Sethian	3	1998	Finland	1998	Hard rock,Suomi
Sexcrement	3	2005	USA	\N	Death
Shadow Host	3	1993	Russia	1993	Power,Thrash
Shadowdances	3	1995	Lithuania, United Kingdom	\N	Doom,Melodic death
Sheavy	3	1993	Canada	1993	Doom,Stoner
Shining Fury	3	2001	Italy	\N	Power
Shturm	3	2003	Russia	2003	Black,Death
Sideburn	3	1997	Sweden	\N	Stoner
Silent Voices	3	1995	Finland	1995	Progressive
Sinister Realm	3	2008	USA	\N	Heavy,Doom
Skeletal Remains	3	2011	USA	2011	Death
Smallman	3	2001	Bulgaria	\N	Folk,Post-metal
Smargroth	3	2006	Slovenia	2006	Black
Sorathian Dawn	3	2009	Australia	\N	Black,Death
Sororicide	3	1990	Iceland	1990	Death
Sorrow Plagues	3	2014	United Kingdom	\N	Atmospheric black,Post-rock
Soul Takers	3	1998	Italy	1998	Progressive
Soulfractured	3	1999	USA	2006	Progressive
Spazmosity	3	1994	Sweden	1994	Black,Death
Squealer	3	1986	Germany	\N	Heavy,Power,Thrash
Status Abnormis	3	2010	Finland	2010	Death,Thrash,Industrial
Stigma	3	2000	Italy	\N	Melodic deathcore
Stillborn (POL)	3	1997	Poland	1997	Black,Death
Stone Gods	3	2006	United Kingdom	\N	Hard rock,Heavy
Sulphur	3	1999	Norway	1999	Black,Death
Sumerlands	3	2014	USA	\N	Heavy,Power
Svartelder	3	2015	Norway	2015	Black
Syrens Call	3	1997	France	\N	Progressive,Symphonic,Power
The Crown Of Yamhad	3	2015	Syria	2015	Atmospheric folk,Symphonic
The Deathtrip	3	2007	Norway	\N	Black
The Enochian	3	2007	Greece	2007	Melodic black
The Lumberjack Feedback	3	2008	France	\N	Doom,Sludge
The Order Of Israfel	3	2012	Sweden	2012	Doom
The Ox	3	2012	Spain	\N	Progressive
The Seven Gates	3	2005	France	2005	Death
The Skull	3	2012	USA	\N	Doom
The Undivine	3	2005	Finland	2005	Death,Thrash
The Weakening	3	2007	Sweden	\N	Melodic death,Djent
Thornafire	3	1998	Chile	1998	Death
Thought Machine	3	2009	Italy	\N	Industrial
Throneum	3	1996	Poland	1996	Death,Black
Thunderbolt	3	2000	Norway	\N	Heavy
Thy Final Pain	3	2007	Germany	2007	Death
Thy Flesh Consumed	3	2001	Canada	2010	Death
Thy Primordial	3	1994	Sweden	1994	Black
Today I Caught The Plague	3	2007	Canada	2013	Progressive metalcore,Progressive
Tonic Breed	3	2006	Norway	2006	Groove thrash
Torrens Conscientium	3	2009	Ukraine	\N	Funeral doom
Total Fucking Destruction	3	1999	USA	1999	Grindcore
Total Negation	3	2007	Germany	\N	Black
Totalt Jävla Mörker	3	1996	Sweden	1996	Blackened hardcore,Crust,Punk
Transient	3	2008	USA	\N	Grindcore
Triton Enigma	3	2005	Sweden	2005	Melodic death,Thrash
Tsar Bomba	3	2011	France	\N	Stoner
Tungsten	3	2011	USA	2011	Progressive rock,Progressive
Unsilence	3	1993	United Kingdom	\N	Doom
Uroboros	3	2012	Argentina	2012	Death,Sludge
Urskumug	3	2001	Latvia	\N	Black
Vaee Solis	3	2014	Portugal	2014	Blackened doom
Valborg	3	2002	Germany	\N	Progressive doom,Death
Valhall	3	1987	Norway	1987	Black,Doom
Valhalla	3	1997	Spain	2010	Heavy,Power
Vandroya	3	2001	Brazil	2001	Progressive power
Vanisher	3	2010	USA	\N	Metalcore
Venomous Maximus	3	2010	USA	2010	Doom,Heavy
Vermiform	3	2010	USA	\N	Death
Verminous	3	2002	Sweden	2002	Death
Vinterblot	3	2008	Italy	\N	Melodic death
Virus IV	3	2006	Belgium	2006	Progressive power,Progressive heavy
Viuda Negra	3	1996	Ecuador	2010	Progressive
Voice Of The Soul	3	2007	UAE	2007	Death
Vorkreist	3	1999	France	\N	Black,Death
Vulcain	3	1981	France	1981	Heavy
Waken Eyes	3	2013	Canada	\N	Progressive rock,Progressive
Walk Through Fire	3	2008	Sweden	2008	Sludge,Doom
War	3	1995	Sweden	2001	Black
Warhorse	3	1996	USA	1996	Doom,Stoner
We All Die (Laughing)	3	2013	France	\N	Avantgarde,Progressive
Whales And Aurora	3	2008	Italy	2008	Atmospheric sludge
Wijlen Wij	3	2002	Belgium	2014	Funeral doom
WildeStarr	3	2003	USA	2003	Heavy
Wintersoul	3	2006	United Kingdom	\N	Black
Witheria	3	1999	Finland	1999	Thrash
Wooden Stake	3	2010	USA	\N	Death doom
Wormwood	3	2014	Sweden	2014	Atmospheric black
Wotan	3	1988	Italy	\N	Heavy
WRVTH	3	2007	USA	2007	Technical death,Deathcore,Post-metal,Hardcore
X Wild	3	1992	Germany	1996	Heavy
XXX Maniak	3	2003	USA	2003	Grindcore
Yaotl Mictlan	3	1998	Mexico, USA	\N	Black,Folk
Zealotry	3	2005	USA	2005	Death
ZX Spectrum	3	2001	Latvia	\N	Death ',N',Roll
???????	2	2011	Japan	2011	Black
ÆGES	2	2010	USA	\N	Alternative
Ænimus (SWE)	2	2009	Sweden	2009	Heavy,Power
Ö-Nirik	2	2006	France	\N	Melodic death,Brutal death
2 Wolves	2	2010	Finland	2010	Industrial,Symphonic
A Canorous Quintet	2	1993	Sweden	1999	Melodic death
Aabsynthum	2	2004	Romania	2004	Black,Funeral doom
Abramis Brama	2	1997	Sweden	\N	Stoner
Abscession	2	2009	Sweden	2009	Death
Abstracter	2	2010	USA	\N	Black,Doom,Sludge,Crust,Punk
Abyssaria	2	1998	Germany	1998	Black,Gothic
Aclla	2	2007	Brazil	\N	Heavy
Adaliah	2	2008	USA	2008	Deathcore,Melodic hardcore
Admiral Sir Cloudesley Shovell	2	2008	United Kingdom	\N	Psychedelic hard rock
Aftershok	2	1996	USA	1996	Heavy
Agro	2	1994	South Africa	\N	Power,Thrash
Ahamkara	2	2013	United Kingdom	2013	Atmospheric black
Aion	2	2013	Switzerland	\N	Black
Altars	2	2005	Australia	2005	Death
Amnis Nihili	2	2008	Greece	\N	Black
Anal Blasphemy	2	2002	Finland	2002	Black
Ancestors Revenge	2	2008	Canada	\N	Death
ANJ	2	2003	Russia	2003	Alternative,Hard rock
Antropophobia	2	2009	Russia	\N	Atmospheric black,Doom
Apothecary	2	2012	USA	2012	Death doom
AraPacis	2	2003	Canada	\N	Progressive,Doom,Hard rock
Arctic Winter	2	1989	Germany	1989	Power,Heavy
Arkhe	2	1995	Mexico	\N	Technical death
Arms	2	2012	USA	2012	Math,Grindcore
Asguard	2	1996	Belarus	\N	Melodic death
Ass To Mouth	2	2004	Poland	2004	Brutal death,Grindcore
Athelstan	2	2010	United Kingdom	\N	Folk
Atrium Noctis	2	2002	Germany	2002	Melodic black
Aus Der Transzendenz	2	2009	Austria	\N	Black
Axevyper	2	2009	Italy	2009	Heavy
Axewitch	2	1979	Sweden	\N	Heavy
Azoic	2	2011	Iceland	2011	Black
Azure Agony	2	2006	Italy	\N	Progressive
Barús	2	2015	France	2015	Progressive death
Barghest	2	2006	USA	\N	Black
Beaten To Death	2	2010	Norway	2010	Grindcore
Beholder (ITA)	2	1998	Italy	2005	Melodic heavy
Belfegor	2	1998	Poland	1998	Black
Bellfast	2	1993	Japan	\N	Celtic folk
Beorn	2	2008	Russia	2008	Power,Symphonic
Bill Ward	2	1989	United Kingdom	\N	Hard rock
Birds Of Prey	2	2006	USA	2006	Sludge,Death
Birth Through Gore	2	2007	Greece	\N	Brutal death
Black Knight Symfonia	2	2008	Monaco	2008	Gothic,Symphonic,Power
Blackfinger	2	2012	USA	\N	Doom
Blackwater	2	2011	USA	2011	Heavy,Doom
Blackwood	2	2015	Italy	\N	Drone doom,Industrial
Blood Revolt	2	2010	Canada	2010	Black,Death
Blood Stained Dusk	2	1998	USA	\N	Black
Boomerang	2	1996	Germany	1996	Heavy,Power
Camel Of Doom	2	2001	United Kingdom	\N	Doom,Stoner
Cap De Craniu	2	2007	Romania	2007	Death,Grindcore
Cardinals Folly	2	2007	Finland	\N	Doom
Carn Dûm	2	2012	Germany	2012	Black
Carnal Lust	2	1998	France	\N	Brutal death
Carpatica	2	2009	Romania	2009	Pagan black,Folk
Catarsis Incarne	2	2002	Costa Rica	\N	Death
Cavus	2	2008	Finland	2008	Black
Chaos Magic	2	2015	Chile	\N	Symphonic,Gothic
Chaosfear	2	1999	Brazil	1999	Thrash
Chariot	2	1981	United Kingdom	\N	New wave of british heavy,Heavy
Chariots Of The Gods	2	2007	Canada	2007	Melodic death,Metalcore
Christgrinder	2	2009	United Kingdom	\N	Black,Death
Cloud Rat	2	2010	USA	2010	Grindcore
Coliseum	2	2003	USA	\N	Hardcore,Post-,Hardcore,Punk
Colombian Necktie	2	2010	USA	2010	Sludge,Alternative
Common Grave	2	1999	Italy	\N	Brutal death,Black
Communion Of Thieves	2	2010	USA	2010	Black,Grindcore
Coprolith	2	2001	Finland	\N	Death,Black
Coven 13	2	1985	USA	1985	Doom
Crehated	2	2005	Italy	\N	Death,Thrash
Cretura	2	2010	Norway	2010	Extreme symphonic
Crimson Sun	2	2001	Finland	\N	Symphonic
Crom Dubh	2	2003	United Kingdom	2003	Black
Crossbreed	2	1996	USA	\N	Industrial
Cryptal Darkness	2	1993	Australia	1993	Gothic doom,Death doom
Cryptic Warning	2	2000	USA	2006	Technical death,Thrash
Dahakara	2	2013	Turkey	2013	Ambient,Experimental black
Dakesis	2	2008	United Kingdom	\N	Progressive power
Dark Arena	2	2004	USA	2004	Power,Progressive,Thrash
Dead In The Dirt	2	2008	USA	2014	Grindcore
Dead Infection	2	1990	Poland	1990	Deathgrind
Dead River Runs Dry	2	2012	Australia	\N	Black
Deadlands	2	2010	USA	2010	Us power
Deadly Mosh	2	2008	Serbia	\N	Thrash
Deafening Silence	2	1997	France	1997	Heavy
Death Of Self	2	2008	USA	2012	Grindcore
Death Penalty	2	2013		2013	Doom,Heavy
Death Toll 80k	2	2005	Finland	\N	Grindcore
Deathrite	2	2010	Germany	2010	Grindcore
Defender	2	1984	The Netherlands	\N	Power,Thrash
Desolate Pathway	2	2013	United Kingdom	2013	Epic doom
Despair (SYR)	2	2009	Syria	\N	Black
Desperado	2	1988	USA	1988	Heavy
Despond	2	1995	France	2004	Doom
Deuil	2	2012	Belgium	2012	Black,Doom,Sludge
Deus X Machina	2	2012	Argentina	\N	Progressive,Power
Di'Anno	2	1983	United Kingdom	1983	Hard rock,Heavy
Dialectic Soul	2	2000	Belarus	\N	Symphonic black,Progressive
Dictator	2	2005	Cyprus	2005	Black,Funeral doom,Dark,Ambient
Dissension	2	2007	Canada	\N	Melodic death,Melodic black
Distaste	2	2000	Austria	2000	Grindcore
Doctor Livingstone	2	1998	France	\N	Hardcore,Black,Punk
Doga	2	1989	Czech Republic	1989	Thrash,Heavy
Doyle	2	2012	USA	\N	Groove metal ,Hardcore
Dr.X	2	2013	Spain	2013	Heavy
Dramatvm	2	2003	Mexico	\N	Melodic death,Gothic
Dreamlost	2	1996	France	1996	Progressive
Dysrider	2	2014	Switzerland	\N	Symphonic
Dysylumn	2	2010	France	2010	Progressive black,Death
E-Force	2	2001	Canada, France	\N	Thrash
Ebonillumini	2	2008	United Kingdom	2008	Avantgarde black
Edgedown	2	2008	Germany	\N	Heavy
Eeriness	2	1996	Switzerland	1996	Heavy,Gothic
Ehnahre	2	2006	USA	\N	Black,Death,Doom
Eibon la Furies	2	2005	United Kingdom	2005	Gothic,Avantgarde black
Elvira Madigan	2	1995	Sweden	2008	Symphonic black
Empires Of Eden	2	2008	Australia	2008	Melodic power
Encorion	2	2007	The Netherlands	\N	Viking folk
Entheos (CAN)	2	2011	Canada	2011	Black
Epistasis	2	2008	USA	\N	Experimental black
Eternal Reign	2	1997	Germany	1997	Power
Eternal Sorrow	2	1994	Brazil	\N	Gothic doom
Ethernity	2	2000	Belgium	2000	Progressive power
Exhausted Prayer	2	1997	USA	\N	Progressive black,Progressive death
Exiled	2	1997	USA	1997	Power,Speed,Thrash
Felony	2	1992	Switzerland	\N	Melodic heavy
Filii Nigrantium Infernalium	2	1989	Portugal	1989	Black,Thrash
Final Crusade	2	2011	Switzerland	\N	Heavy
Forces United	2	2013	Russia	2013	Power
Fornicus	2	2013	USA	\N	Black
Foul Body Autopsy	2	2010	United Kingdom	2010	Death
Freitod	2	2005	Germany	\N	Black
Frightmare	2	2002	USA	2002	Death,Thrash,Grindcore
Frozen Winds	2	2007	Cyprus	\N	Black
Funeral Whore	2	2006	The Netherlands	2006	Death
Gateway To Selfdestruction	2	2013	Germany	\N	Black
Gehennah	2	1992	Sweden	1992	Thrash
Genocide Shrines	2	2011	Sri Lanka	\N	Black,Death
Ghee-Yeh	2	2008	Chile	2008	Heavy
Ghost Voyage	2	2008	Finland	\N	Death doom
Goblin Hovel	2	2010	USA	2010	Folk
God Mother	2	2012	Sweden	\N	Grindcore
Gone Postal	2	2007	Iceland	2007	Death
Goodbye To Gravity	2	2011	Romania	2015	Melodic metalcore
Gothic Knights	2	1990	USA	1990	Power
Grave Upheaval	2	2008	Australia	\N	Death
Gravehill	2	2001	USA	2001	Thrash,Death
Griffar	2	1997	France	\N	Melodic black
Gverr	2	2007	Albania	2007	Progressive death,Death,Thrash
Gypsyhawk	2	2008	USA	2015	Heavy
Hæthen	2	2009	USA	2009	Black
Haar	2	2008	United Kingdom	\N	Atmospheric black,Progressive black
Hadean	2	2012	USA	2012	Progressive,Hardcore,Jazz fusion
Haikai No Ku	2	2012	United Kingdom	\N	Doom,Stoner
Heavydeath	2	2013	Sweden	2013	Death doom
Hegemone	2	2010	Poland	\N	Black,Post-metal,Sludge
Hell Within	2	1998	USA	1998	Metalcore
Hemelbestormer	2	2012	Belgium	\N	Post-metal
Herald	2	2000	Estonia	2000	Heavy
Hourswill	2	2009	Portugal	\N	Progressive
House Of Low Culture	2	2000	USA	2000	Drone doom,Ambient,Experimental
Howling Syn	2	1998	Canada	\N	Gothic
Human Cull	2	2007	United Kingdom	2007	Grindcore
Hydra Vein	2	1987	United Kingdom	1990	Thrash
I Chaos	2	2009	The Netherlands	2009	Brutal death
Iluminato	2	2010	Brazil	\N	Gothic
Implore	2	2013	Germany	2013	Grindcore
Inciter	2	2000	Croatia	\N	Thrash
Infinitum Obscure	2	2000	Mexico	2000	Death
Insane	2	1997	France	\N	Power,Thrash
Iskra	2	2002	Canada	2002	Black,Crust,Punk
Johansson & Speckmann	2	2013	Sweden	\N	Death
Karmaflow	2	2013	The Netherlands	2013	Symphonic
Karyn Crisis' Gospel Of The Witches	2	2009	USA	\N	Doom,Gothic
Khaotika	2	2014	USA	2014	Melodic black,Gothic
Killers (UK)	2	1991	United Kingdom	2003	Heavy
King Fear	2	2011	Germany	2011	Black
King's-Evil	2	1989	Japan	\N	Thrash
Kingdragon	2	2006	Greece	2006	Melodic heavy,Hard rock
Kognitiv Tod	2	2014	USA	\N	Black
Kolp	2	2007	Hungary	2007	Black,Doom
Korum	2	1999	France	\N	Death
Kragens	2	2000	France	2000	Heavy,Power,Thrash
Krokmitën	2	1991	Canada	\N	Experimental death
Krokodil	2	2011	United Kingdom	2011	Progressive sludge
Kultika	2	2008	Romania	\N	Black,Post-metal
Landskap	2	2012	United Kingdom	2012	Doom,Psychedelic rock
Last In Line	2	2012	USA	\N	Heavy,Hard rock
Legend (JE)	2	1980	Jersey	1980	New,Wave,Of british heavy,Heavy
Liquorworks	2	2006	Finland	\N	Experimental progressive
Lody Kong	2	2011	USA	2011	Crossover thrash,Hardcore,Punk
Lonely Kamel	2	2005	Norway	\N	Stoner rock
Looking For An Answer	2	1999	Spain	1999	Grindcore
Lunar Path	2	2006	Finland	\N	Gothic
Lunarium	2	2005	USA	2005	Folk
Malrun	2	2005	Denmark	\N	Melodic hard rock
Man Made Origin	2	2008	United Kingdom	2008	Progressive
Maniac Butcher	2	1992	Czech Republic	\N	Black
Marche Funèbre	2	2007	Belgium	2007	Death,Doom
Marseille	2	1976	United Kingdom	\N	New wave of british heavy,Heavy
Mastermind	2	1986	USA	1986	Progressive rock,Symphonic rock,Fusion ,Progressive,Instrumental
Masterstroke	2	2002	Finland	\N	Heavy
Means End	2	2011	Sweden	2011	Progressive
Mena Brinno	2	2006	USA	\N	Gothic,Symphonic
Mephistopheles	2	2004	Australia	2004	Technical death
Merkabah	2	2002	Canada	\N	Heavy
Methadone Skies	2	2009	Romania	2009	Atmospheric sludge,Stoner,Psychedelic rock
Moon (POL)	2	1996	Poland	\N	Black,Death
Mordbrand	2	2006	Sweden	2006	Death
Morgain	2	1995	Slovak Republic	2015	Atmospheric doom,Folk
Morian	2	2002	Finland	2002	Gothic,Heavy
Myopia	2	2003	USA	2011	Progressive
Myrah	2	2005	Sweden	2005	Gothic
Mysto Dysto	2	1983	The Netherlands	1987	Speed,Thrash
N R C S S S T	2	2011	Lithuania, Germany	2011	Atmospheric black,Post-metal,Shoegaze
N.I.L.	2	2004	USA	\N	Black,Doom
Naamah	2	1996	Poland	1996	Gothic,Progressive
Nailed	2	2000	United Kingdom	\N	Brutal death
Nasty Idols	2	1987	Sweden	1987	Heavy,Glam,Glam rock
Natron	2	1992	Italy	\N	Death
Nebukadnezza	2	2002	United Kingdom	2002	Death,Thrash,Hardcore
Necromancing The Stone	2	2014	USA	\N	Melodic death
Nerve End	2	2009	Finland	2009	Alternative,Progressive
Next To None	2	2013	USA	\N	Progressive
Night Viper	2	2014	Sweden	2014	Heavy
Nightly Gale	2	1996	Poland	\N	Black,Doom
Noctum	2	2009	Sweden	2009	Doom,Heavy,Hard rock
Non Serviam	2	1995	Sweden	\N	Death
North (USA)	2	2005	USA	2005	Post-metal,Sludge
Northern Plague	2	2009	Poland	\N	Black,Death
NunFuckRitual	2	2006	Norway	2006	Black
Nycticorax	2	2003	Latvia	\N	Black
Oblivionized	2	2008	United Kingdom	2008	Technical death,Grindcore
Obsidian Sea	2	2009	Bulgaria	\N	Doom
Ocultan	2	1994	Brazil	1994	Black
Odyssey	2	1989	Spain	\N	Progressive
Ogre	2	1999	USA	1999	Doom,Hard rock
Oleg Izotov	2	2003	Russia	\N	Alternative,Instrumental heavy
One Step Beyond	2	1997	Australia	1997	Experimental death
Onirism	2	2014	France	\N	Symphonic black
Op?a Opasnost	2	1992	Croatia	1992	Hard rock
Orchid's Curse	2	2005	Canada	\N	Metalcore
Ordinul Negru	2	2004	Romania	2004	Black
Oxiplegatz	2	1993	Sweden	1998	Avantgarde
Pain Principle	2	1993	USA	1993	Thrash,Death
Paragon Of Beauty	2	1994	Germany	2001	Gothic
Paramnesia	2	2005	France	2005	Black
Phantom	2	2005	Denmark	\N	Black
Protean	2	2013	Latvia	2013	Black
Psudoku	2	2010	Norway	\N	Avantgarde,Grindcore
Pure Inc	2	2001	Switzerland	2001	Hard rock,Alternative
Pyrrhon	2	2008	USA	\N	Technical death
Quinta Essentia	2	2004	USA	2004	Black,Death
Reality Grey	2	2004	Italy	\N	Melodic death
Realmbuilder	2	2008	USA	2008	Epic doom,Heavy
Resurrecturis	2	1990	Italy	\N	Death
Retriem	2	2003	Russia	2003	Power
Rev 16:8	2	2008	Sweden	2012	Black
Revelation's Hammer	2	2007	Norway	2007	Black
Romuvos	2	2014	Lithuania	\N	Folk
Rudhira	2	2010	Norway	2010	Progressive
Sabachthani	2	2002	Sweden	\N	Gothic,Doom
Sadistic Gore	2	2004	Brazil	2004	Death
Sandalinas	2	2001	Spain	\N	Melodic progressive
Santo Rostro	2	2013	Spain	2013	Doom,Stoner
Saracen	2	1976	United Kingdom	\N	New wave of british heavy,Heavy,Progressive
Sarcofagus	2	1977	Finland	1977	Progressive heavy
Sargatanas Reign	2	1997	Sweden	2008	Death
Scald (RUS)	2	1993	Russia	1993	Epic doom
Scar Of The Sun	2	2004	United Kingdom, Greece	\N	Gothic doom
Scarblade	2	2015	Greece, Sweden	2015	Heavy
Sea Witch	2	2014	Canada	\N	Blackened doom,Sludge
Seamount	2	2007	Germany	2007	Doom
Sectu	2	2005	Sweden	\N	Death
Sedna	2	2009	Italy	2009	Black,Sludge
Seita	2	2007	The Netherlands	\N	Death,Thrash
Septic Death	2	1981	USA	1981	Hardcore
Serpent Omega	2	2011	Sweden	\N	Doom,Sludge
Serpent Venom	2	2008	United Kingdom	2008	Doom
Severed	2	2014	Iceland	\N	Brutal death,Technical death
Shadow Of The Colossus	2	2009	USA	2009	Deathcore
Shallow Rivers	2	2007	Russia	\N	Death doom,Atmospheric doom
Shaman (FIN)	2	1997	Finland	1997	Folk
Shannon	2	1998	France	\N	Hard rock,Heavy
Shatterpoint	2	2001	Canada	2001	Power,Thrash
Shredding The Envelope	2	2008	USA	\N	Heavy,Thrash
Silent Memorial	2	1992	Switzerland	1992	Heavy,Progressive
Siren	2	2012	USA	\N	Black,Doom,Heavy
Sirocco	2	2003	Ireland	2003	Heavy,Folk,Thrash
Skraeckoedlan	2	2009	Sweden	\N	Psychedelic stoner
Slabdragger	2	2008	United Kingdom	2008	Doom,Sludge
Slidhr	2	2005	Ireland	\N	Black
Slivers Cross	2	2008	Latvia	2008	Metalcore,Alternative
Slow	2	2007	Belgium	\N	Atmospheric doom,Funeral doom
Solifvgae	2	2014	Brazil	2014	Atmospheric black,Post-metal
Sonic Reign	2	1997	Germany	\N	Black
Sorrowful	2	2009	Sweden	2009	Death doom
Sorrowful Angels	2	1999	Greece	\N	Gothic
Soul Dissolution	2	2012	Belgium	2012	Black
Soulless	2	1997	USA	\N	Melodic death,Thrash
Sourvein	2	1993	USA	1993	Doom,Sludge
Spaceking	2	2009	Russia	\N	Progressive,Progressive rock,Stoner rock,Stonerinstrumental
Spartan Warrior	2	1980	United Kingdom	1980	New wave of british heavy,Heavy
Splattered Mermaids	2	2005	Sweden	2015	Brutal death,Grindcore
Srogo??	2	2013	Poland	2013	Black
Standing Ovation	2	2006	Finland	\N	Progressive
Station Dysthymia	2	2007	Russia	2007	Funeral doom
T?zmadár	2	1999	Hungary	\N	Power
Tanagra	2	2010	USA	2010	Us power,Heavy
Tempestuous Fall	2	2011	Australia	2013	Funeral doom,Death doom
Temple Of Evil	2	2008	Cyprus	2008	Black
Terror Empire	2	2009	Portugal	\N	Groove thrash
Tesa	2	2005	Latvia	2005	Post-metal,Sludge,Hardcore
The Arson Project	2	2005	Sweden	\N	Grindcore
The Batallion	2	2006	Norway	2006	Thrash
The Belonging	2	1998	United Kingdom	\N	Blackened death
The Doomsday Kingdom	2	2016	Sweden	2016	Doom
The Earls Of Mars	2	2012	United Kingdom	\N	Avantgarde
The Everdawn	2	1993	Sweden	1993	Melodic death
The Experiment No.Q	2	2012	Italy	\N	Progressive
The Night Flight Orchestra	2	2007	Sweden	2007	Hard rock
The Oracle	2	2006	Canada	2011	Extreme progressive
The Order Of Chaos	2	2003	Canada	2003	Heavy,Power,Thrash
The Silent Wedding	2	2006	Greece	\N	Heavy
The Wakedead Gathering	2	2007	USA	2007	Death
Theories	2	2010	USA	\N	Deathgrind
Those Who Bring The Torture	2	2007	Sweden	2007	Death,Grindcore
Throes Of Sanity	2	\N	USA	\N	Us power
Titaan	2	2015	Italy	2015	Black
Tribune	2	2004	Canada	\N	Melodic thrash,Progressive
Trimonium	2	1998	Germany	1998	Pagan black
Triumfall	2	2006	Serbia	\N	Black
Trophallaxy	2	2007	Swaziland	2007	Power,Symphonic
Unholy Matrimony	2	2000	Switzerland	2000	Black
Unwritten Pages	2	2005	The Netherlands	\N	Progressive
Urban Tales	2	2005	Portugal	2005	Gothic rock,Alternative
Usurpress	2	2010	Sweden	\N	Death
Vôdûn	2	2012	United Kingdom	2012	Stoner,Psychedelic rock
Vaalnor	2	2009	Switzerland	\N	Folk
Valkenrag	2	2006	Poland	2006	Melodic death
Vardis	2	1973	United Kingdom	\N	New wave of british heavy,Heavy
Venin Noir	2	2001	Brazil	2001	Gothic
Vermilion	2	2008	Romania	2015	Experimental black
VII Gates	2	1999	Sweden	1999	Heavy,Progressive power
Villainy	2	2010	The Netherlands	\N	Blackened thrash,Crust,Punk
Vise Versa	2	2012	France	2012	Alternative
Vista Chino	2	2010	USA	2014	Stoner rock
Vitriol	2	2007	Italy	2007	Progressive
Void Of Sleep	2	2010	Italy	\N	Sludge
Vomitile	2	2007	Cyprus	2007	Death,Thrash
Vox Tempus	2	2003	USA	\N	Progressive
Wells Valley	2	2011	Portugal	2011	Progressive sludge,Post-metal
When Woods Make Graves	2	2011	United Kingdom	\N	Atmospheric black
Whitehorse	2	2004	Australia	2004	Drone doom,Sludge
Wilt	2	2010	Canada	\N	Atmospheric black
Winds Of Torment	2	2001	France	2001	Melodic death
Witchbound	2	2013	Germany	\N	Melodic power,Heavy
Within The Fall	2	2010	Sweden	2010	Death doom
WIZ	2	1996	Sweden	\N	Power
Woburn House	2	2005	Germany	2005	Post-metal
Wolvserpent	2	2005	USA	\N	Drone doom
Woods Of Belial	2	1995	Finland	1995	Black,Funeral doom,Industrial doom,Doom
Worth Dying For	2	2002	Canada	\N	Progressive death,Melodic death
Yawarhiem	2	2005	Peru	2005	Symphonic power,Folk
Yogth Sothoth	2	2003	Colombia	\N	Brutal death
Zavorash	2	1996	Sweden	1996	Black
11Paranoias	1	2011	United Kingdom	\N	Doom,Sludge
48 Crash	1	1975	Germany	1975	Progressive rock,Heavy
7 H. Target	1	2005	Russia	\N	Brutal death
A Gruesome Find	1	1998	USA	1998	Blackened death
A New Dawn	1	1997	The Netherlands	\N	Gothic,Symphonic
Abhorrent	1	2007	USA	2007	Brutal death,Technical death
Absconditus	1	2010	France	\N	Black
Acrosome	1	2009	Turkey	2009	Depressive black,Dark ambient
Adagio (BRA)	1	1995	Brazil	\N	Death doom
Aeon Throne	1	2010	Norway	2010	Black,Death
Against Nature	1	2004	USA	\N	Doom,Hard rock,Progressive rock
Against Tolerance	1	2009	Brazil	2009	Metalcore,Experimental thrash
Age Of Woe	1	2010	Sweden	\N	Death,Crust,Punk
Airdash	1	1986	Finland	1986	Thrash
Akem Manah	1	2007	Belgium	\N	Death,Doom
Akem Manah (USA)	1	2009	USA	2009	Death doom
Akhenaten	1	2012	USA	\N	Black,Death
Aktor	1	2013	Finland	2013	Psychedelic hard rock,Heavy
Alien Syndrome 777	1	2007	Italy	\N	Avantgarde black
Alkimya	1	2004	France	2004	Progressive
Alkoholizer	1	2006	Italy, Spain	\N	Thrash
Amor E Morte	1	2004	Bulgaria	2004	Gothic,Symphonic black
Ancient Altar	1	2013	USA	\N	Sludge,Doom
Andacht	1	2008	USA	2008	Atmospheric black
Angmaer	1	2013	United Kingdom	\N	Black
Angrepp	1	2005	Sweden	2005	Black,Thrash
Anima Tempo	1	2009	Mexico	\N	Progressive death
Antagonist Zero	1	2010	Finland	2010	Death doom
Antlion	1	2012	Canada	\N	Progressive death
Apa Simbetii	1	2009	Romania	2009	Progressive death,Black
Apathie	1	2009	Germany	\N	Black
Aposthate	1	2004	Italy	2004	Brutal death
Arbitrator (CAN)	1	2010	Canada	\N	Industrial death
Architects Of Chaoz	1	2014	Germany	2014	Heavy
Armahda	1	2011	Brazil	\N	Heavy,Power
Arryan Path	1	1997	USA, Cyprus	1997	Heavy,Power
Arsh Anubis	1	2011	USA	\N	Black
Artisian	1	2004	United Kingdom	2004	Black,Death
As Autumn Calls	1	2005	Canada	\N	Death,Doom
Ashen Horde	1	2013	USA	2013	Progressive black
Ashtar	1	2012	Switzerland	\N	Sludge,Drone
Aspectra	1	2014	Norway	2014	Black,Death
Astral Tears	1	2009	France	\N	Progressive,Alternative
Asymmetry	1	2011	Serbia	2011	Progressive
Aurinko	1	2011	Canada	2013	Doom,Folk
Autumn: Death	1	2011	Sweden	2011	Melodic black,Melodic death
Axial Lead	1	2011	Romania	\N	Progressive
Azavatar	1	2013	Germany	2013	Black
Baptists	1	2010	Canada	\N	Hardcore,Punk
Basement Torture Killings	1	2007	United Kingdom	2007	Death
Bask	1	2013	USA	\N	Post-metal,Stoner rock,Psychedelic rock
Battlezone	1	1985	United Kingdom	1985	Groove thrash,Heavy
Beaten Back To Pure	1	1998	USA	\N	Doom,Sludge
Before God	1	1997	USA	1997	Black,Folk
Bersimbah Darah	1	2007	Indonesia	\N	Deathgrind
Beyond The Flesh	1	2000	USA	2000	Melodic death
Bhleg	1	2013	Sweden	\N	Atmospheric black
Black Succubi	1	2005	Denmark	2005	Heavy
Blackened	1	1997	Germany	2007	Heavy,Power
Blackwelder	1	2012	USA	2012	Power
Blade Of Spirit	1	1996	Greece	\N	Power
Blastanus	1	2007	Finland	2007	Brutal death,Grindcore
Blliigghhtted	1	2014	Turkey	\N	Experimental black
Bloodgut	1	2004	Sweden	2004	Death
Blustery Caveat	1	2002	Greece	\N	Brutal death
Born From Ruins	1	2009	USA	2009	Alternative,Hard rock
Brainchoke	1	2000	United Kingdom	\N	Grindcore,Death
Bubonic Wrath	1	2005	USA	2005	Black,Death,Thrash
Burnsred	1	2007	USA	\N	Progressive sludge,Doom,Post-metal
Burweed	1	2009	Finland	2009	Atmospheric sludge,Post-metal
Cadmium	1	2010	France	\N	Symphonic
Cannibal Accident	1	2007	Finland	2007	Grindcore
Cara Neir	1	2008	USA	\N	Experimental black
Carry The Storm	1	2008	USA	2008	Thrash,Death
Castrator	1	2013	USA	\N	Death
Casual Silence	1	1993	The Netherlands	1993	Progressive
Cat O' Nine Tails	1	2012	Finland	\N	Folk,Symphonic power
Ceremonia	1	2011	France	2011	Atmospheric doom
Cetacean	1	2015	USA	\N	Doom,Sludge
Chrome Waves	1	2010	USA	2010	Atmospheric black,Post-metal
Citizen	1	2004	USA	2011	Grindcore
Code Of Nelson's Folly	1	2012	Croatia	2012	Folk
Cold Night For Alligators	1	2008	Denmark	\N	Progressive math,Djent
Collateral Damage	1	2004	Italy	2004	Heavy
Collide	1	2003	Latvia	\N	Thrash
Coltsblood	1	2010	United Kingdom	2010	Doom,Sludge
Conjuro Nuclear	1	2012	Spain	\N	Black,Darkwave
Contemplator	1	2011	Canada	2011	Progressive,Instrumental
Corr Mhóna	1	2009	Ireland	\N	Doom,Heavy,Celtic black
Corrupted Melody	1	1995	Slovak Republic	1995	Death,Atmospheric doom
Crépuscule	1	2007	Canada	\N	Atmospheric black
Cryogenic	1	1993	Germany	1993	Symphonic black
Crypt Of Kerberos	1	1990	Sweden	\N	Death doom,Progressive death
Cursed 13	1	1998	Sweden	1998	Black
Daedalus	1	2000	Italy	\N	Progressive
Dalkhu	1	2003	Slovenia	2003	Black,Death
Dark Covenant	1	2009	Canada	\N	Doom
Dark Wings Syndrome	1	2008	Portugal	2008	Gothic,Progressive
Darkall Slaves	1	2005	France	\N	Brutal death
Darkened Souls	1	2006	Finland	2006	Doom,Melodic death
DarkRise	1	1998	Switzerland	\N	Brutal death
Dawn Of Oblivion	1	1991	Sweden	1991	Gothic
Dead Head	1	1989	The Netherlands	\N	Thrash
Deadalus	1	2010	Belgium	2010	Progressive death
Deadspace	1	2014	Australia	\N	Depressive black
Dearly Beheaded	1	1993	United Kingdom	1993	Thrash,Power
Death Mechanism	1	2003	Italy	\N	Thrash
Death Wolf	1	2011	Sweden	2011	Heavy,Punk
Decease	1	2011	Romania	\N	Death,Thrash
Deceiver	1	2002	Sweden	2002	Heavy,Thrash
Demonstealer	1	1998	India	\N	Black,Death,Thrash
Dendritic Arbor	1	2012	USA	2012	Black,Grindcore
Deos	1	2013	United Kingdom	\N	Funeral doom
Diamonds Are Forever	1	2011	Romania	2011	Metalcore
Die Toten Kehren Wieder Mit Dem Wind	1	1995	Germany	\N	Black
Dodenkrocht	1	2004	The Netherlands	2004	Black,Doom
Domgård	1	1997	Sweden	\N	Black
Doomocracy	1	\N	Greece	\N	Doom
Douce Morphine	1	2000	France	2009	Atmospheric doom
Dracena	1	1994	Sweden	1994	Death,Thrash
Drag The Dead	1	2009	USA	\N	Death,Grindcore
Dryade	1	1997	France	1997	Progressive,Melodic progressive
Dyecrest	1	1993	Finland	\N	Heavy,Power
Dyscord	1	2003	Australia	2003	Metalcore
Ecliptyka	1	1998	Brazil	\N	Heavy
Ectovoid	1	2010	USA	2010	Death
Eden Sands	1	2013	USA	\N	Doom,Stoner
El Comer Ocho	1	2008	Belgium	2008	Deathcore
Elderoth	1	2007	Canada	\N	Progressive power
Elgibbor	1	1999	Poland	1999	Black
Elusion	1	2015	Belgium	\N	Gothic,Symphonic
Embers	1	2004	USA	2004	Black,Doom,Crust,Punk
Empire Auriga	1	2008	USA	\N	Industrial black,Ambient
Equinox	1	2013	France	2013	Symphonic,Progressive
Ergot	1	2009	Italy	\N	Atmospheric black
Erik Norlander	1	1993	USA	1993	Progressive
Errorgeist	1	2013	USA	\N	Industrial,Death
Estoner	1	2009	Estonia	2009	Stoner
Eternal Mourning	1	1995	Portugal	\N	Gothic doom
Evenmore	1	2011	Switzerland	2011	Power,Progressive,Folk
Evil Survives	1	2008	Canada	\N	Heavy
Evohé	1	2000	France	2000	Pagan black
Ex Dementia	1	2005	USA	\N	Death,Thrash
Face Off	1	2006	Serbia	2006	Alternative,Post-metal
Fallen Yggdrasil	1	1996	Germany	\N	Death
Fange	1	2013	France	2013	Blackened doom
Farseer	1	2008	United Kingdom	\N	Power,Heavy
Fatal Smile	1	1995	Sweden	1995	Hard rock
Fever Sea	1	2011	United Kingdom	\N	Atmospheric black,Post-metal
Fire Trails	1	2002	Italy	2002	Heavy,Hard rock
Fireproven	1	2008	Finland	\N	Extreme progressive
Flowing Tears & Withered Flowers	1	1995	Germany	1995	Gothic doom
Fondlecorpse	1	1996	The Netherlands	\N	Death
Frowning	1	2011	Germany	2011	Funeral doom
Funeral Moth	1	2005	Japan	\N	Funeral doom
Funerarium	1	2000	Luxembourg	2000	Black
Fury UK	1	2002	United Kingdom	\N	Heavy
Geryon	1	2012	USA	2012	Technical death
Ghoulgotha	1	2012	USA	\N	Death doom
Gjenferdsel	1	2002	Norway	2002	Black
Gloom	1	2002	Spain	\N	Death
Gloson	1	2014	Sweden	2014	Post-metal,Sludge
Goddess Of Desire	1	1995	The Netherlands	2009	Heavy
GodHateCode	1	2007	Austria	2007	Death,Grindcore
Gorrch	1	2010	Italy	\N	Black
Grey	1	2004	USA	2004	Doom
Grimegod	1	1991	Romania	\N	Death,Doom,Gothic
Grimpen Mire	1	2007	United Kingdom	2007	Doom,Sludge
Grisâtre	1	2006	France	\N	Atmospheric black,Depressive black
Groinchurn	1	1994	South Africa	1994	Grindcore
Gutfed	1	2011	Turkey	\N	Brutal death,Grindcore
Hadal Maw	1	2010	Australia	2010	Technical death
Hanternoz	1	2006	France	\N	Celtic folk,Black
Head Phones President	1	2000	Japan	2000	Alternative
Helion	1	1995	Finland	\N	Progressive
Hell's Thrash Horsemen	1	2007	Russia	2007	Thrash
Heonia	1	2006	France	\N	Symphonic,Progressive
Highgate	1	2005	USA	2005	Doom
Hlidolf	1	2002	Norway	2004	Drone,Dark ambient
Hordes Of The Lunar Eclipse	1	1995	USA	1995	Black
Horizon Of The Mute	1	2015	Finland	\N	Funeral doom,Drone doom
Horncrowned	1	2001	Colombia	2001	Black
Humanfly	1	2000	United Kingdom	\N	Atmospheric,Sludge,Metal
Huron	1	2007	United Kingdom	2007	Melodic thrash,Progressive
Husqvarna	1	1989	Latvia	\N	Death,Thrash
Ibex Angel Order	1	2013	The Netherlands	2013	Black
Ides Of Winter	1	2011	Canada	\N	Black
Ilsa	1	2008	USA	2008	Death doom,Crust,Punk
Immorior	1	2013	Germany	\N	Atmospheric black,Post-metal
Imperceptum	1	2014	Germany	2014	Atmospheric black,Funeral doom
In Cauda Venenum	1	2010	France	\N	Black
In Vain (ESP)	1	2001	Spain	2001	Heavy,Power
Incapacitate	1	2002	USA	\N	Thrash,Grindcore
Infection	1	2006	Peru	2006	Death
Infernal Angels	1	2002	Italy	\N	Melodic black
Infinite Waste	1	2014	USA	2014	Grindcore
Infinity²	1	2015	Russia	\N	Progressive,Alternative rock
Inhepsie	1	2001	France	2001	Atmospheric gothic
Inimical	1	2005	Denmark	\N	Death,Metalcore
Into The Nethermost	1	1998	Spain	1998	Death,Black,Thrash
Intrinsic	1	1984	USA	\N	Power,Progressive,Thrash
Iron Void	1	1998	United Kingdom	1998	Doom
Itnuveth	1	2013	Spain	\N	Pagan black
Jackdevil	1	2010	Brazil	2010	Thrash,Heavy
Jesus Ain't In Poland	1	2004	Italy	\N	Grindcore,Deathgrind
Jezabel	1	1993	Argentina	1993	Power
K.F.R	1	2013	France	\N	Black,Ambient
K.L.L.K.	1	2010	France	2010	Atmospheric black
Kalmankantaja	1	2011	Finland	\N	Depressive black
Kanashimi	1	2007	Japan	2007	Depressive black,Funeral doom
Kardashev	1	2012	USA	\N	Atmospheric death,Deathcore
Kempes	1	2013	Romania	2013	Heavy,Hard rock
Khanus	1	2015	Finland	\N	Death
Khaotic	1	2012	Brazil	2012	Black
Kill Ritual	1	2010	USA	\N	Thrash
Killing Addiction	1	1988	USA	1988	Death
Kilmara	1	2003	Spain	\N	Heavy,Progressive power
Kinetic	1	2002	Greece	2002	Progressive death
Knelt Rote	1	2008	USA	\N	Grindcore,Noise,Power,Electronics ,Black
Kommandant	1	2005	USA	2005	Blackened death,Thrash
Krle?	1	1990	Czech Republic	\N	Heavy
Kroh	1	2011	United Kingdom	2011	Doom,Stoner
L'Hiver En Deuil	1	2010	Belgium	\N	Black
Leeds Point	1	2012	USA	2012	Heavy,Stoner
Legacy ID	1	2012	Latvia	\N	Progressive
Lenore S. Fingers	1	2010	Italy	2010	Gothic
Licht- Und Schattensaiten	1	2001	Germany	\N	Avantgarde black
Linea 77	1	1993	Italy	1993	Nu
Lion Twin	1	2011	Germany	\N	Heavy,Hard rock
Lionheart	1	2004	USA	2004	Hardcore
Liquid Graveyard	1	2006	Spain	\N	Progressive death
Lo-Ruhamah	1	2004	USA	2004	Death
Lucifixion	1	1990	USA	\N	Death,Melodic death
Lumbar	1	2013	USA	2013	Doom,Sludge
Luna Field	1	1998	Germany	\N	Black,Death
Luthor	1	2003	Australia	2003	Heavy
Macabra	1	2011	Belgium	\N	Death
Mangog	1	2014	USA	2014	Doom
Manimalism	1	1992	Norway	\N	Black,Avantgarde
Massakren	1	2008	USA	2008	Extreme power,Melodic death
Masters Of Metal	1	2011	USA	\N	Speed,Thrash
Materia	1	2007	Poland	2007	Deathcore
Maudlin	1	2004	Belgium	\N	Post-metal,Sludge
MCM	1	2004	USA	2004	Progressive
Mefitic	1	2004	Italy	\N	Black,Death
Megaton Leviathan	1	2007	USA	2007	Drone doom
Melencolia Estatica	1	2004	Italy	\N	Black
Mercury Rain	1	1999	United Kingdom	1999	Power,Gothic
Merda Mundi	1	2006	Belgium	\N	Black
Mesmur	1	2013	USA	2013	Funeral doom
Metalstorm	1	2011	Australia	2015	Thrash
Methedras	1	1996	Italy	1996	Thrash
Michael Schenker's Temple Of Rock	1	2011	Germany	\N	Heavy,Hard rock
Midwinter	1	2000	France	2000	Gothic
Mincing Fury And Guttural Clamour Of Queer Decay	1	1996	Czech Republic	\N	Brutal death,Goregrind
Mion's Hill	1	2012	Norway	2012	Black
Mirror Of Deception	1	1990	Germany	\N	Doom
Misere Nobis	1	2011	Italy	2011	Depressive black
Monolith (GER)	1	2010	Germany	\N	Psychedelic doom
Monolithian	1	2010	United Kingdom	2010	Blackened sludge
Mor Dagor	1	1996	Germany	\N	Black
Morgenstern	1	1998	Germany	1998	Folk
Morgue Orgy	1	2008	United Kingdom	\N	Melodic death
Mornië Utúlië	1	2013	Poland	2013	Black
Motor Sister	1	2014	USA	\N	Hard rock
Movimento D'Avanguardia Ermetico	1	2005	Italy	2005	Atmospheric black
Mudbath	1	2011	France	\N	Sludge,Blackened hardcore
Myrk	1	1997	Iceland	1997	Black
Mystica	1	1999	Belgium	\N	Melodic death,Black
Mythopoeia	1	1993	Czech Republic	1993	Melodic doom,Death
Naga	1	2013	Italy	\N	Sludge,Doom
Napalm Strike	1	2012	USA	2012	Thrash
Narwhal Tusk	1	2006	Russia	\N	Symphonic power
Nashgul	1	2001	Spain	2001	Grindcore
Necropsy	1	2008	USA	2013	Death,Thrash
Need	1	2003	Greece	2003	Progressive
Nefandus	1	1993	Sweden	\N	Black
Negative Core Project	1	2010	Romania	2010	Metalcore
Nekrokraft	1	2012	Sweden	\N	Black,Death,Thrash
Nifrost	1	2005	Norway	2005	Viking folk,Folk black
Nightslug	1	2011	Germany	\N	Sludge
Ningen Isu	1	1987	Japan	1987	Doom,Heavy,Hard rock,Progressive rock
Noûs	1	2010	Australia	\N	Doom,Sludge
Nolentia	1	2007	France	2007	Grindcore
Norilsk	1	2012	Canada	\N	Death doom,Funeral doom
Northless	1	2007	USA	2007	Doom,Sludge
Nyctophilia	1	2014	Poland	\N	Depressive black
Oceans Of Night	1	2007	USA	2007	Progressive
Ofdrykkja	1	2012	Sweden	\N	Depressive black
Offal	1	2003	Brazil	2003	Death
Okazaki Fragments	1	2014	Canada	2015	Technical death,Grindcore
Oliver/Dawson Saxon	1	1999	United Kingdom	1999	Heavy
Område	1	2014	France	\N	Experimental rock,Electro avantgarde
One Tail, One Head	1	2008	Norway	2008	Black
Opened Paradise	1	2003	Greece	\N	Gothic,Gothic rock
Orbweaver	1	2010	USA	2010	Psychedelic death
Ordo Inferus	1	2012	Sweden	\N	Death
Organ Dealer	1	2013	USA	2013	Grindcore
Oubliette	1	2011	USA	\N	Melodic black
Overgarven	1	2001	Greece	2001	Melodic death
Overtures	1	2003	Italy	\N	Heavy
P.O.O.R.	1	2006	USA	2006	Grindcore
Paganize	1	2001	Norway	\N	Heavy
Paganus	1	2000	Finland	2000	Doom
Palace Of Worms	1	2007	USA	\N	Black
Pale Chalice	1	2008	USA	2008	Black
Paroxsihzem	1	2007	Canada	\N	Black,Death
Paul Chain	1	1979	Italy	1979	Doom,Psychedelic rock
Pavor	1	1987	Germany	\N	Technical death
Perfecitizen	1	2011	Czech Republic	2011	Deathgrind
Perpetual Fire	1	1999	Italy	\N	Heavy,Power
Philadelphia	1	1976	USA	1976	Heavy
Phobonoid	1	2013	Italy	\N	Black,Doom,Industrial
Pimeä Metsä	1	2006	Spain	2006	Viking folk
Pink Mass	1	2014	USA	\N	Crust,Punk ,Black,Grindcore
Plague Of Stars	1	2012	USA	2012	Gothic doom
Plaguewielder	1	2012	Luxembourg	\N	Atmospheric doom
Pombagira	1	2007	United Kingdom	2007	Psychedelic doom,Stoner
Præternatura	1	2014	USA	\N	Black
Profanator	1	1999	Mexico	1999	Thrash
Project: Roenwolfe	1	2011	USA	\N	Power,Thrash
Psycho Symphony	1	1992	Romania	1992	Progressive thrash
Pulsar Colony	1	2008	USA	\N	Experimental black,Ambient black,Avantgarde black
Purple Hill Witch	1	2010	Norway	2010	Doom
Putrid Offal	1	1991	France	\N	Death,Grindcore
Pyriphlegethon	1	2014	The Netherlands	2014	Black
Quiet Child	1	2004	Australia	\N	Alternative
Rabenwolf	1	2007	Germany	2007	Pagan folk,Black
Reactor	1	1997	Finland	\N	Doom,Stoner,Rock
Regnvm Animale	1	2013	Sweden	2013	Black,Crust,Punk
Rex Mundi	1	2002	Greece	\N	Progressive,Thrash
Rezident EX	1	2012	Romania	2012	Hard rock,Heavy
Rhevan	1	2007	Brazil	\N	Gothic
Rhino	1	2004	Spain	2004	Doom,Sludge
Rintrah	1	2009	USA	\N	Psychedelic doom,Stoner
Risen To Reclaim	1	2007	Croatia	2007	Heavy
Ritual Chamber	1	2013	USA	\N	Death
Rosa Ígnea	1	2003	Brazil	2003	Gothic
Rosicrucian	1	2010	United Kingdom	2011	Black
Rustless	1	\N	Italy	\N	Heavy
Ruthless Steel	1	2012	Greece, Sweden	2015	Heavy
Sacramento	1	2009	Chile	2009	Gothic
Sacred Dawn	1	2005	USA	\N	Melodic progressive
Sacrist	1	1992	Czech Republic	1992	Black
Sage's Recital	1	2013	Denmark	\N	Neoclassical symphonic
Samhain (US-NH)	1	2014	USA	2014	Atmospheric black,Doom
Saxorior	1	1994	Germany	\N	Melodic black
Scala Mercalli	1	1992	Italy	1992	Heavy,Power
Scavenger	1	2001	Ireland	2006	Thrash,Heavy
Scumpulse	1	2013	United Kingdom	2013	Black,Crust,Punk
Sea Bastard	1	2011	United Kingdom	\N	Doom
Sedulity	1	2009	USA	2009	Progressive death,Progressive thrash
Selbst	1	2011	Venezuela	\N	Black
Selbstentleibung	1	2006	Austria	2006	Depressive black
Self Spiller	1	2006	USA	\N	Avantgarde,Experimental black
Serpentcult	1	2006	Belgium	2006	Doom
Shadow Of The Torturer	1	2006	USA	\N	Doom,Sludge
Shadowdance	1	1999	USA	1999	Power
Sheol	1	2012	United Kingdom	\N	Death
Shroud Of Despondency	1	1999	USA	1999	Black
Shtack	1	2008	The Netherlands	\N	Melodic death,Folk
Silence	1	1995	Germany	1995	Gothic
Silence In The Grey	1	2013	USA	\N	Doom
Sin Origin	1	1999	USA	1999	Black
SinHeresY	1	2009	Italy	\N	Symphonic,Melodic heavy
Sinners Burn	1	2007	Sweden	2007	Death
Skadika	1	2005	Germany	\N	Power,Folk
Skeleton Of God	1	1993	USA	1993	Death,Grindcore,Psychedelic death
Skineater	1	2008	Sweden	\N	Death
Skullhog	1	2006	The Netherlands	2006	Goregrind
Snailking	1	2010	Sweden	\N	Doom,Sludge,Stoner
Soijl	1	2014	Sweden	2014	Death doom
Solisia	1	2006	Italy	\N	Progressive power,Symphonic
Son Of A Bitch	1	1994	United Kingdom	1994	Heavy
Sorg Uten Tårer	1	2006	Finland	\N	Melodic black,Folk
Soulsearch	1	1991	Austria	1991	Doom
Soulslide	1	2002	Germany	\N	Symphonic gothic
Soundcrawler	1	2011	France	2011	Alternative
Sources Of I	1	2014	Bulgaria	\N	Black
Southern Empire	1	2014	Australia	2014	Progressive rock
Sphere Of Souls	1	2004	The Netherlands	\N	Progressive
Spidergawd	1	2013	Norway	2013	Hard rock,Psychedelic rock
Spirit Adrift	1	2015	USA	\N	Doom
Splitter	1	2003	Sweden	2003	Grindcore
Spylacopa	1	2000	USA	\N	Avantgarde,Progressive
Starbreeze	1	2008	Russia	2008	Symphonic
Stickoxydal	1	2003	Belarus	\N	Grindcore,Gore grindcore
StoneLake	1	2002	Sweden	\N	Melodic heavy,Hard rock
Stranger Aeons	1	2002	Lithuania	2002	Progressive,Progressive rock
Subliminal Crusher	1	2002	Italy	\N	Melodic death,Thrash
Suffer Yourself	1	2011	Poland, Sweden	2011	Funeral doom
Suicide Emotions	1	2012	Italy	\N	Depressive black
Sukekiyo	1	2013	Japan	2013	Progressive,J-rock
Surtr	1	2009	France	\N	Doom
Sus Scrofa	1	1991	France	1991	Pagan black
Swamp Witch	1	2009	USA	\N	Doom,Sludge
Sweet & Lynch	1	2014	USA	2014	Hard rock
Taka Minamino	1	2005	Japan	\N	Neoclassical power
Tears Of Mankind	1	2002	Russia	2002	Gothic,Doom
Temple	1	2011	The Netherlands	\N	Death
Temple Nightside	1	2010	Australia	2010	Black,Death
Teodasia	1	2006	Italy	\N	Symphonic gothic
The Atrocity Exhibit	1	2005	United Kingdom	2005	Grindcore
The Conjuration	1	2010	USA	\N	Avantgarde,Death
The Coven	1	2004	Finland	2004	Doom
The Crescent	1	2012	Finland	\N	Black
The Drip	1	2007	USA	2007	Grindcore
The Embodiment	1	1994	The Netherlands	2009	Thrash
The End	1	2015	USA	2015	Death
The Howling Wind	1	2006	USA	\N	Black,Noise
The Iniquity Descent	1	2009	Finland	2009	Black
The Konstellation	1	2009	Hungary	\N	Black,Death
The Living Fields	1	2002	USA	2002	Epic doom
The Local Band	1	2013	Finland	\N	Heavy
The Nihilistic Front	1	2005	Australia	2005	Death,Doom
The Order Of The Solar Temple	1	2012	Canada	\N	Doom,Heavy,Hard rock,Psychedelic rock
The Poisoned Glass	1	2015	USA	2015	Drone doom
The Ransack	1	2001	Portugal	\N	Death
The Senseless	1	1997	United Kingdom	1997	Deathgrind
The Steve Grimmett Band	1	2006	United Kingdom	\N	Heavy
The Temple	1	2005	Greece	2005	Doom
The Voynich Code	1	2013	Portugal	\N	Progressive deathcore,Technical deathcore
Thera Roya	1	2011	USA	2011	Sludge,Post-metal
Third Storm	1	1986	Sweden	\N	Black
Throes	1	2011	United Kingdom	2011	Blackened death
Timo Komulainen	1	2011	Finland	\N	Progressive
Tine	1	2011	USA	2011	Symphonic black,Death
Tod Huetet Uebel	1	2012	Portugal	\N	Black
Tombstone	1	2001	Finland	2001	Heavy
Tome Of The Unreplenished	1	2012	Cyprus	\N	Atmospheric black
Tony C	1	2013	USA	2013	Progressive,Instrumental
Torn Apart	1	2005	Sweden	2009	Death
Totem	1	2002	Poland	2002	Death,Thrash
Totem Skin	1	2012	Sweden	\N	Blackened hardcore
Trauma (USA)	1	1981	USA	1981	Power,Speed
Trauma Moralis	1	2006	Latvia	\N	Grindcore
Trial	1	2007	Sweden	2007	Heavy
Trifixion	1	2009	United Kingdom	2014	Brutal death,Technical death
Triumvir Foul	1	2014	USA	2014	Death
Tulsadoom	1	2007	Austria	\N	Blackened heavy,Thrash
Tummler And Solomon	1	2010	USA	2010	Stoner
Tyrant Eyes	1	1993	Germany	\N	Power
Umbah	1	1990	United Kingdom	1990	Avantgarde,Death,Industrial
Under That Spell	1	2008	Germany	2014	Black
Union	1	2005	Poland	2005	Black
Unrest	1	2006	USA	\N	Grindcore
Unru	1	2012	Germany	2012	Black,Crust,Punk
Urðarmáni	1	2015	Sweden	\N	Depressive black
Ureas	1	2003	Denmark	2003	Power,Progressive
Valpurgis Night	1	2008	United Kingdom	\N	Heavy
Varga	1	1989	Canada	1989	Progressive thrash,Industrial thrash,Thrash,Groove thrash
Vassafor	1	1994	New Zealand	\N	Black
Vehement	1	2002	Italy	2002	Thrash
Verdun	1	2010	France	\N	Sludge,Hardcore
Vermin	1	2002	The Netherlands	2002	Death
Vin de Mia Trix	1	2007	Ukraine	\N	Death doom
Vitacit	1	1972	Czech Republic	1972	Heavy
Voices From Beyond	1	2006	Italy	\N	Thrash
Voidless Form	1	2015	Romania	2015	Noise,Drone doom
Volition	1	2005	United Kingdom	\N	Doom
Voodooshock	1	1998	Germany	1998	Doom
Vuyvr	1	2011	Switzerland	\N	Black
Wagars	1	2012	Latvia	2012	Crust,Punk ,Black
Wake	1	2009	Canada	\N	Grindcore
Warlord U.K.	1	1993	United Kingdom	1993	Death,Thrash
Weapon UK	1	\N	United Kingdom	\N	New wave of british heavy,Heavy
Wheelfall	1	2009	France	2009	Stoner
Where She Wept	1	1996	USA	2014	Black,Death,Gothic doom
Winters	1	2005	United Kingdom	2005	Sludge,Doom
Wistful	1	2010	Portugal	\N	Atmospheric black,Shoegaze
Witchcurse	1	2005	Greece	2005	Heavy
Witchrist	1	2006	New Zealand	\N	Black,Death
Withershin	1	2006	Sweden	2006	Black
Wolfpack	1	1995	Sweden	2001	Crust punk,D-beat
Wolves Carry My Name	1	2011	Germany	2011	Stoner,Sludge
Wood Of Suicides	1	2006	Australia	\N	Black,Doom
Wovoka	1	2013	USA	2013	Doom,Post-metal,Sludge
Wretch	1	2015	USA	\N	Doom
Wrong	1	2012	Spain	2012	Black
WVRM	1	2013	USA	\N	Grindcore
Wyruz	1	2002	Norway	2002	Death,Thrash
Xerión	1	2001	Spain	\N	Celtic black
Xsavior	1	2003	Sweden	2003	Progressive
Yautja	1	2011	USA	\N	Sludge,Hardcore
Ye Goat-Herd Gods	1	2010	Canada	2010	Blackened heavy
Yellow Eyes	1	2010	USA	\N	Black
Yhdarl	1	2006	Belgium	2006	Black,Drone doom
Your Chance To Die	1	2007	USA	\N	Melodic death,Metalcore
Your Tomorrow Alone	1	2009	Italy	2009	Progressive doom,Gothic
rec	1	2004	Czech Republic	\N	Pagan folk
Ömheten	0	2012	Sweden	2012	Depressive black
(In)Trance	0	2009	Russia	\N	Gothic
6th Dimension	0	2008	Cyprus	2008	Alternative,Progressive
9.7 Richter	0	2006	Romania	\N	Heavy
A Lower Deep	0	2000	USA	2000	Progressive,Thrash,Power
Absence Of The Sacred	0	2005	Singapore	\N	Progressive death,Thrash
Ace Of Hearts	0	2008	United Kingdom	2008	Gothic,Hard rock
Aeturnus Dominion	0	2003	Australia	\N	Death
Algy Ward's Tank	0	2007	United Kingdom	2007	Heavy
Altars Of Grief	0	2013	Canada	\N	Funeral doom,Death doom,Atmospheric doom
Anatomia	0	2002	Japan	2002	Death,Doom
Anger As Art	0	2004	USA	\N	Thrash
Angist	0	2009	Iceland	2009	Death
Anmod	0	2005	Brazil	\N	Brutal death
Apokalyptic Raids	0	1997	Brazil	1997	Black
Apothesary	0	2009	USA	\N	Thrash,Melodic death
Apparatus	0	2012	Denmark	2012	Blackened death
Arctic Spirits	0	2003	Greenland	\N	Heavy,Hard rock
Argus (Ro)	0	1996	Romania	1996	Black
Arrest	0	1992	Germany	\N	Hard rock,Heavy
As I Lay Dying (AUT)	0	1991	Austria	1991	Death,Melodic doom
Asofy	0	2000	Italy	\N	Black,Doom
Atara	0	2006	France	2006	Black,Grindcore
Avicularia	0	2003	Croatia	\N	Avantgarde death
Awake	0	2006	United Kingdom	2006	Heavy,Progressive
Axatak	0	1983	Australia	1988	Hard rock,Heavy
Axis Of Despair	0	2014	Sweden	2014	Grindcore
\.


--
-- Data for Name: raw_air_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.raw_air_data (id, request_time, location, air_data) FROM stdin;
1	2025-04-20 11:46:53.803107-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1745174813, "main": {"aqi": 2}, "components": {"co": 150.11, "no": 0.06, "o3": 93.53, "nh3": 0.15, "no2": 0.56, "so2": 0.24, "pm10": 2.06, "pm2_5": 0.73}}]
2	2025-04-20 11:49:36.328103-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1742540400, "main": {"aqi": 2}, "components": {"co": 267.03, "no": 0, "o3": 87.98, "nh3": 0.18, "no2": 1.76, "so2": 0.23, "pm10": 0.58, "pm2_5": 0.5}}, {"dt": 1742544000, "main": {"aqi": 2}, "components": {"co": 263.69, "no": 0, "o3": 87.98, "nh3": 0.18, "no2": 1.59, "so2": 0.23, "pm10": 0.57, "pm2_5": 0.5}}, {"dt": 1742547600, "main": {"aqi": 2}, "components": {"co": 263.69, "no": 0, "o3": 88.69, "nh3": 0.18, "no2": 1.46, "so2": 0.25, "pm10": 0.56, "pm2_5": 0.5}}, {"dt": 1742551200, "main": {"aqi": 2}, "components": {"co": 267.03, "no": 0, "o3": 88.69, "nh3": 0.19, "no2": 1.35, "so2": 0.25, "pm10": 0.56, "pm2_5": 0.5}}, {"dt": 1742554800, "main": {"aqi": 2}, "components": {"co": 267.03, "no": 0, "o3": 88.69, "nh3": 0.2, "no2": 1.27, "so2": 0.26, "pm10": 0.56, "pm2_5": 0.5}}, {"dt": 1742558400, "main": {"aqi": 2}, "components": {"co": 267.03, "no": 0, "o3": 87.26, "nh3": 0.21, "no2": 1.22, "so2": 0.26, "pm10": 0.57, "pm2_5": 0.5}}, {"dt": 1742562000, "main": {"aqi": 2}, "components": {"co": 267.03, "no": 0, "o3": 85.83, "nh3": 0.21, "no2": 1.22, "so2": 0.27, "pm10": 0.56, "pm2_5": 0.5}}, {"dt": 1742565600, "main": {"aqi": 2}, "components": {"co": 263.69, "no": 0, "o3": 83.68, "nh3": 0.2, "no2": 1.33, "so2": 0.28, "pm10": 0.56, "pm2_5": 0.5}}, {"dt": 1742569200, "main": {"aqi": 2}, "components": {"co": 263.69, "no": 0, "o3": 81.54, "nh3": 0.22, "no2": 1.8, "so2": 0.3, "pm10": 0.58, "pm2_5": 0.5}}, {"dt": 1742572800, "main": {"aqi": 2}, "components": {"co": 267.03, "no": 0.02, "o3": 79.39, "nh3": 0.24, "no2": 2.57, "so2": 0.32, "pm10": 0.59, "pm2_5": 0.5}}, {"dt": 1742576400, "main": {"aqi": 2}, "components": {"co": 267.03, "no": 0.06, "o3": 77.96, "nh3": 0.23, "no2": 2.96, "so2": 0.33, "pm10": 0.6, "pm2_5": 0.5}}, {"dt": 1742580000, "main": {"aqi": 2}, "components": {"co": 267.03, "no": 0.13, "o3": 76.53, "nh3": 0.22, "no2": 2.96, "so2": 0.34, "pm10": 0.59, "pm2_5": 0.5}}, {"dt": 1742583600, "main": {"aqi": 2}, "components": {"co": 263.69, "no": 0.17, "o3": 76.53, "nh3": 0.2, "no2": 2.63, "so2": 0.32, "pm10": 0.59, "pm2_5": 0.5}}, {"dt": 1742587200, "main": {"aqi": 2}, "components": {"co": 263.69, "no": 0.17, "o3": 75.82, "nh3": 0.18, "no2": 2.21, "so2": 0.29, "pm10": 0.58, "pm2_5": 0.5}}, {"dt": 1742590800, "main": {"aqi": 2}, "components": {"co": 260.35, "no": 0.15, "o3": 75.1, "nh3": 0.17, "no2": 1.86, "so2": 0.25, "pm10": 0.57, "pm2_5": 0.5}}, {"dt": 1742594400, "main": {"aqi": 2}, "components": {"co": 257.02, "no": 0.1, "o3": 75.82, "nh3": 0.15, "no2": 1.63, "so2": 0.2, "pm10": 0.56, "pm2_5": 0.5}}, {"dt": 1742598000, "main": {"aqi": 2}, "components": {"co": 257.02, "no": 0.07, "o3": 78.68, "nh3": 0.15, "no2": 1.63, "so2": 0.19, "pm10": 0.6, "pm2_5": 0.53}}, {"dt": 1742601600, "main": {"aqi": 2}, "components": {"co": 253.68, "no": 0.04, "o3": 83.68, "nh3": 0.16, "no2": 1.74, "so2": 0.2, "pm10": 0.69, "pm2_5": 0.61}}, {"dt": 1742605200, "main": {"aqi": 2}, "components": {"co": 257.02, "no": 0.02, "o3": 89.41, "nh3": 0.22, "no2": 2.36, "so2": 0.23, "pm10": 0.77, "pm2_5": 0.66}}, {"dt": 1742608800, "main": {"aqi": 2}, "components": {"co": 267.03, "no": 0.01, "o3": 86.55, "nh3": 0.32, "no2": 3.77, "so2": 0.28, "pm10": 0.94, "pm2_5": 0.77}}, {"dt": 1742612400, "main": {"aqi": 2}, "components": {"co": 277.04, "no": 0, "o3": 78.68, "nh3": 0.39, "no2": 5.57, "so2": 0.35, "pm10": 1.29, "pm2_5": 1.04}}, {"dt": 1742616000, "main": {"aqi": 2}, "components": {"co": 293.73, "no": 0, "o3": 66.52, "nh3": 0.46, "no2": 8.14, "so2": 0.38, "pm10": 1.84, "pm2_5": 1.5}}, {"dt": 1742619600, "main": {"aqi": 1}, "components": {"co": 303.75, "no": 0, "o3": 56.51, "nh3": 0.5, "no2": 9.77, "so2": 0.38, "pm10": 2.37, "pm2_5": 1.93}}, {"dt": 1742623200, "main": {"aqi": 1}, "components": {"co": 310.42, "no": 0, "o3": 50.78, "nh3": 0.55, "no2": 10.02, "so2": 0.38, "pm10": 2.76, "pm2_5": 2.23}}, {"dt": 1742626800, "main": {"aqi": 1}, "components": {"co": 303.75, "no": 0, "o3": 56.51, "nh3": 0.55, "no2": 8.14, "so2": 0.34, "pm10": 2.55, "pm2_5": 2.02}}]
3	2025-04-20 11:49:37.909621-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1742626800, "main": {"aqi": 1}, "components": {"co": 303.75, "no": 0, "o3": 56.51, "nh3": 0.55, "no2": 8.14, "so2": 0.34, "pm10": 2.55, "pm2_5": 2.02}}, {"dt": 1742630400, "main": {"aqi": 2}, "components": {"co": 283.72, "no": 0, "o3": 67.95, "nh3": 0.51, "no2": 5.31, "so2": 0.29, "pm10": 1.85, "pm2_5": 1.4}}, {"dt": 1742634000, "main": {"aqi": 2}, "components": {"co": 267.03, "no": 0, "o3": 75.82, "nh3": 0.47, "no2": 3.51, "so2": 0.26, "pm10": 1.36, "pm2_5": 0.96}}, {"dt": 1742637600, "main": {"aqi": 2}, "components": {"co": 257.02, "no": 0, "o3": 78.68, "nh3": 0.49, "no2": 2.72, "so2": 0.23, "pm10": 1.23, "pm2_5": 0.79}}, {"dt": 1742641200, "main": {"aqi": 2}, "components": {"co": 257.02, "no": 0, "o3": 80.11, "nh3": 0.48, "no2": 2.59, "so2": 0.24, "pm10": 1.26, "pm2_5": 0.78}}, {"dt": 1742644800, "main": {"aqi": 2}, "components": {"co": 253.68, "no": 0, "o3": 79.39, "nh3": 0.47, "no2": 2.7, "so2": 0.27, "pm10": 1.32, "pm2_5": 0.81}}, {"dt": 1742648400, "main": {"aqi": 2}, "components": {"co": 253.68, "no": 0, "o3": 76.53, "nh3": 0.47, "no2": 2.96, "so2": 0.31, "pm10": 1.39, "pm2_5": 0.87}}, {"dt": 1742652000, "main": {"aqi": 2}, "components": {"co": 253.68, "no": 0, "o3": 70.1, "nh3": 0.51, "no2": 3.51, "so2": 0.32, "pm10": 1.52, "pm2_5": 0.96}}, {"dt": 1742655600, "main": {"aqi": 2}, "components": {"co": 260.35, "no": 0.01, "o3": 61.51, "nh3": 0.6, "no2": 5.18, "so2": 0.33, "pm10": 1.91, "pm2_5": 1.25}}, {"dt": 1742659200, "main": {"aqi": 1}, "components": {"co": 277.04, "no": 0.21, "o3": 53.64, "nh3": 0.68, "no2": 7.8, "so2": 0.37, "pm10": 2.52, "pm2_5": 1.68}}, {"dt": 1742662800, "main": {"aqi": 1}, "components": {"co": 287.06, "no": 0.86, "o3": 50.78, "nh3": 0.7, "no2": 8.65, "so2": 0.47, "pm10": 3.02, "pm2_5": 1.95}}, {"dt": 1742666400, "main": {"aqi": 1}, "components": {"co": 287.06, "no": 1.27, "o3": 57.94, "nh3": 0.74, "no2": 7.28, "so2": 0.69, "pm10": 3.05, "pm2_5": 1.88}}, {"dt": 1742670000, "main": {"aqi": 3}, "components": {"co": 260.35, "no": 0.21, "o3": 104.43, "nh3": 0.32, "no2": 2.44, "so2": 0.51, "pm10": 1.4, "pm2_5": 0.69}}, {"dt": 1742673600, "main": {"aqi": 3}, "components": {"co": 257.02, "no": 0.15, "o3": 110.15, "nh3": 0.32, "no2": 1.74, "so2": 0.45, "pm10": 1.07, "pm2_5": 0.52}}, {"dt": 1742677200, "main": {"aqi": 3}, "components": {"co": 257.02, "no": 0.15, "o3": 111.58, "nh3": 0.36, "no2": 1.67, "so2": 0.49, "pm10": 1.05, "pm2_5": 0.54}}, {"dt": 1742680800, "main": {"aqi": 3}, "components": {"co": 257.02, "no": 0.1, "o3": 111.58, "nh3": 0.41, "no2": 1.71, "so2": 0.51, "pm10": 1.1, "pm2_5": 0.58}}, {"dt": 1742684400, "main": {"aqi": 3}, "components": {"co": 257.02, "no": 0.08, "o3": 113.01, "nh3": 0.44, "no2": 1.76, "so2": 0.51, "pm10": 1.14, "pm2_5": 0.6}}, {"dt": 1742688000, "main": {"aqi": 3}, "components": {"co": 257.02, "no": 0.05, "o3": 113.01, "nh3": 0.46, "no2": 1.86, "so2": 0.48, "pm10": 1.09, "pm2_5": 0.58}}, {"dt": 1742691600, "main": {"aqi": 3}, "components": {"co": 273.7, "no": 0.05, "o3": 101.57, "nh3": 0.85, "no2": 4.67, "so2": 0.54, "pm10": 1.48, "pm2_5": 0.87}}, {"dt": 1742695200, "main": {"aqi": 2}, "components": {"co": 300.41, "no": 0.03, "o3": 84.4, "nh3": 1.35, "no2": 9.17, "so2": 0.57, "pm10": 2.27, "pm2_5": 1.47}}, {"dt": 1742698800, "main": {"aqi": 2}, "components": {"co": 317.1, "no": 0, "o3": 70.81, "nh3": 1.49, "no2": 12, "so2": 0.49, "pm10": 3.01, "pm2_5": 2.04}}, {"dt": 1742702400, "main": {"aqi": 2}, "components": {"co": 320.43, "no": 0, "o3": 62.23, "nh3": 1.38, "no2": 12.85, "so2": 0.41, "pm10": 3.48, "pm2_5": 2.38}}, {"dt": 1742706000, "main": {"aqi": 1}, "components": {"co": 313.76, "no": 0, "o3": 55.79, "nh3": 1.01, "no2": 12.17, "so2": 0.39, "pm10": 3.6, "pm2_5": 2.46}}, {"dt": 1742709600, "main": {"aqi": 1}, "components": {"co": 300.41, "no": 0, "o3": 50.78, "nh3": 0.71, "no2": 10.62, "so2": 0.47, "pm10": 3.39, "pm2_5": 2.28}}, {"dt": 1742713200, "main": {"aqi": 1}, "components": {"co": 277.04, "no": 0, "o3": 52.21, "nh3": 0.57, "no2": 6.6, "so2": 0.7, "pm10": 2.42, "pm2_5": 1.51}}]
4	2025-04-20 11:49:39.111966-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1742713200, "main": {"aqi": 1}, "components": {"co": 277.04, "no": 0, "o3": 52.21, "nh3": 0.57, "no2": 6.6, "so2": 0.7, "pm10": 2.42, "pm2_5": 1.51}}, {"dt": 1742716800, "main": {"aqi": 1}, "components": {"co": 267.03, "no": 0, "o3": 45.78, "nh3": 0.48, "no2": 5.23, "so2": 0.61, "pm10": 2.07, "pm2_5": 1.31}}, {"dt": 1742720400, "main": {"aqi": 1}, "components": {"co": 263.69, "no": 0, "o3": 44.35, "nh3": 0.42, "no2": 4.5, "so2": 0.54, "pm10": 1.93, "pm2_5": 1.3}}, {"dt": 1742724000, "main": {"aqi": 1}, "components": {"co": 257.02, "no": 0, "o3": 54.36, "nh3": 0.3, "no2": 3, "so2": 0.38, "pm10": 1.58, "pm2_5": 1.15}}, {"dt": 1742727600, "main": {"aqi": 2}, "components": {"co": 250.34, "no": 0, "o3": 61.51, "nh3": 0.25, "no2": 2.06, "so2": 0.29, "pm10": 1.25, "pm2_5": 0.97}}, {"dt": 1742731200, "main": {"aqi": 2}, "components": {"co": 250.34, "no": 0, "o3": 65.09, "nh3": 0.23, "no2": 1.59, "so2": 0.27, "pm10": 1.08, "pm2_5": 0.86}}, {"dt": 1742734800, "main": {"aqi": 2}, "components": {"co": 247, "no": 0, "o3": 68.66, "nh3": 0.22, "no2": 1.41, "so2": 0.28, "pm10": 0.97, "pm2_5": 0.77}}, {"dt": 1742738400, "main": {"aqi": 2}, "components": {"co": 250.34, "no": 0, "o3": 68.66, "nh3": 0.24, "no2": 1.44, "so2": 0.31, "pm10": 1.06, "pm2_5": 0.82}}, {"dt": 1742742000, "main": {"aqi": 2}, "components": {"co": 253.68, "no": 0, "o3": 67.23, "nh3": 0.28, "no2": 1.8, "so2": 0.33, "pm10": 1.25, "pm2_5": 0.94}}, {"dt": 1742745600, "main": {"aqi": 2}, "components": {"co": 257.02, "no": 0.01, "o3": 63.66, "nh3": 0.32, "no2": 2.4, "so2": 0.34, "pm10": 1.34, "pm2_5": 1.01}}, {"dt": 1742749200, "main": {"aqi": 1}, "components": {"co": 257.02, "no": 0.04, "o3": 59.37, "nh3": 0.31, "no2": 2.87, "so2": 0.35, "pm10": 1.25, "pm2_5": 0.98}}, {"dt": 1742752800, "main": {"aqi": 1}, "components": {"co": 253.68, "no": 0.11, "o3": 59.37, "nh3": 0.29, "no2": 2.87, "so2": 0.33, "pm10": 1.06, "pm2_5": 0.85}}, {"dt": 1742756400, "main": {"aqi": 2}, "components": {"co": 250.34, "no": 0.16, "o3": 62.23, "nh3": 0.29, "no2": 2.53, "so2": 0.33, "pm10": 0.88, "pm2_5": 0.69}}, {"dt": 1742760000, "main": {"aqi": 2}, "components": {"co": 247, "no": 0.14, "o3": 67.23, "nh3": 0.33, "no2": 2.18, "so2": 0.34, "pm10": 0.79, "pm2_5": 0.56}}, {"dt": 1742763600, "main": {"aqi": 2}, "components": {"co": 247, "no": 0.13, "o3": 70.81, "nh3": 0.38, "no2": 1.86, "so2": 0.32, "pm10": 0.75, "pm2_5": 0.5}}, {"dt": 1742767200, "main": {"aqi": 2}, "components": {"co": 243.66, "no": 0.09, "o3": 75.1, "nh3": 0.41, "no2": 1.5, "so2": 0.26, "pm10": 0.72, "pm2_5": 0.5}}, {"dt": 1742770800, "main": {"aqi": 2}, "components": {"co": 243.66, "no": 0.06, "o3": 78.68, "nh3": 0.44, "no2": 1.39, "so2": 0.23, "pm10": 0.68, "pm2_5": 0.5}}, {"dt": 1742774400, "main": {"aqi": 2}, "components": {"co": 243.66, "no": 0.04, "o3": 83.68, "nh3": 0.44, "no2": 1.44, "so2": 0.22, "pm10": 0.67, "pm2_5": 0.5}}, {"dt": 1742778000, "main": {"aqi": 2}, "components": {"co": 243.66, "no": 0.03, "o3": 85.12, "nh3": 0.51, "no2": 1.84, "so2": 0.25, "pm10": 0.69, "pm2_5": 0.5}}, {"dt": 1742781600, "main": {"aqi": 2}, "components": {"co": 247, "no": 0.01, "o3": 83.68, "nh3": 0.63, "no2": 2.44, "so2": 0.29, "pm10": 0.73, "pm2_5": 0.5}}, {"dt": 1742785200, "main": {"aqi": 2}, "components": {"co": 250.34, "no": 0, "o3": 82.25, "nh3": 0.72, "no2": 2.83, "so2": 0.31, "pm10": 0.83, "pm2_5": 0.55}}, {"dt": 1742788800, "main": {"aqi": 2}, "components": {"co": 253.68, "no": 0, "o3": 79.39, "nh3": 0.78, "no2": 3.13, "so2": 0.35, "pm10": 0.94, "pm2_5": 0.61}}, {"dt": 1742792400, "main": {"aqi": 2}, "components": {"co": 253.68, "no": 0, "o3": 76.53, "nh3": 0.78, "no2": 3.04, "so2": 0.38, "pm10": 0.99, "pm2_5": 0.62}}, {"dt": 1742796000, "main": {"aqi": 2}, "components": {"co": 250.34, "no": 0, "o3": 73.67, "nh3": 0.7, "no2": 2.72, "so2": 0.38, "pm10": 0.99, "pm2_5": 0.61}}, {"dt": 1742799600, "main": {"aqi": 2}, "components": {"co": 247, "no": 0, "o3": 70.1, "nh3": 0.59, "no2": 2.38, "so2": 0.37, "pm10": 0.95, "pm2_5": 0.58}}]
5	2025-04-20 11:49:40.673994-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1742799600, "main": {"aqi": 2}, "components": {"co": 247, "no": 0, "o3": 70.1, "nh3": 0.59, "no2": 2.38, "so2": 0.37, "pm10": 0.95, "pm2_5": 0.58}}, {"dt": 1742803200, "main": {"aqi": 2}, "components": {"co": 243.66, "no": 0, "o3": 67.23, "nh3": 0.49, "no2": 2.16, "so2": 0.38, "pm10": 0.92, "pm2_5": 0.56}}, {"dt": 1742806800, "main": {"aqi": 2}, "components": {"co": 243.66, "no": 0, "o3": 64.37, "nh3": 0.42, "no2": 2.14, "so2": 0.43, "pm10": 0.95, "pm2_5": 0.58}}, {"dt": 1742810400, "main": {"aqi": 2}, "components": {"co": 240.33, "no": 0, "o3": 61.51, "nh3": 0.36, "no2": 2.1, "so2": 0.46, "pm10": 0.99, "pm2_5": 0.62}}, {"dt": 1742814000, "main": {"aqi": 1}, "components": {"co": 240.33, "no": 0, "o3": 59.37, "nh3": 0.33, "no2": 2.1, "so2": 0.5, "pm10": 1.05, "pm2_5": 0.66}}, {"dt": 1742817600, "main": {"aqi": 1}, "components": {"co": 236.99, "no": 0, "o3": 57.94, "nh3": 0.32, "no2": 2.25, "so2": 0.58, "pm10": 1.12, "pm2_5": 0.71}}, {"dt": 1742821200, "main": {"aqi": 1}, "components": {"co": 236.99, "no": 0, "o3": 52.93, "nh3": 0.34, "no2": 2.78, "so2": 0.7, "pm10": 1.25, "pm2_5": 0.79}}, {"dt": 1742824800, "main": {"aqi": 1}, "components": {"co": 240.33, "no": 0, "o3": 47.92, "nh3": 0.39, "no2": 3.64, "so2": 0.85, "pm10": 1.5, "pm2_5": 0.96}}, {"dt": 1742828400, "main": {"aqi": 1}, "components": {"co": 250.34, "no": 0.01, "o3": 43.99, "nh3": 0.46, "no2": 5.1, "so2": 0.98, "pm10": 1.95, "pm2_5": 1.26}}, {"dt": 1742832000, "main": {"aqi": 1}, "components": {"co": 267.03, "no": 0.17, "o3": 40.41, "nh3": 0.53, "no2": 6.68, "so2": 1.09, "pm10": 2.37, "pm2_5": 1.55}}, {"dt": 1742835600, "main": {"aqi": 1}, "components": {"co": 273.7, "no": 0.57, "o3": 38.62, "nh3": 0.55, "no2": 6.51, "so2": 1.12, "pm10": 2.38, "pm2_5": 1.55}}, {"dt": 1742839200, "main": {"aqi": 1}, "components": {"co": 270.37, "no": 0.84, "o3": 39.34, "nh3": 0.56, "no2": 4.97, "so2": 1.03, "pm10": 2.06, "pm2_5": 1.31}}, {"dt": 1742842800, "main": {"aqi": 1}, "components": {"co": 236.99, "no": 0.59, "o3": 52.21, "nh3": 0.43, "no2": 2.42, "so2": 0.6, "pm10": 1.18, "pm2_5": 0.73}}, {"dt": 1742846400, "main": {"aqi": 1}, "components": {"co": 230.31, "no": 0.42, "o3": 55.79, "nh3": 0.43, "no2": 1.71, "so2": 0.51, "pm10": 0.95, "pm2_5": 0.6}}, {"dt": 1742850000, "main": {"aqi": 1}, "components": {"co": 226.97, "no": 0.35, "o3": 59.37, "nh3": 0.43, "no2": 1.41, "so2": 0.51, "pm10": 0.87, "pm2_5": 0.57}}, {"dt": 1742853600, "main": {"aqi": 2}, "components": {"co": 223.64, "no": 0.34, "o3": 60.8, "nh3": 0.51, "no2": 1.56, "so2": 0.58, "pm10": 0.97, "pm2_5": 0.63}}, {"dt": 1742857200, "main": {"aqi": 2}, "components": {"co": 226.97, "no": 0.35, "o3": 60.8, "nh3": 0.59, "no2": 2.23, "so2": 0.72, "pm10": 1.14, "pm2_5": 0.76}}, {"dt": 1742860800, "main": {"aqi": 2}, "components": {"co": 226.97, "no": 0.3, "o3": 60.08, "nh3": 0.7, "no2": 2.87, "so2": 0.7, "pm10": 1.27, "pm2_5": 0.81}}, {"dt": 1742864400, "main": {"aqi": 1}, "components": {"co": 250.34, "no": 0.45, "o3": 47.21, "nh3": 1.36, "no2": 6.85, "so2": 0.54, "pm10": 2.02, "pm2_5": 1.11}}, {"dt": 1742868000, "main": {"aqi": 1}, "components": {"co": 283.72, "no": 0.34, "o3": 30.04, "nh3": 1.88, "no2": 12.85, "so2": 0.49, "pm10": 3.23, "pm2_5": 1.62}}, {"dt": 1742871600, "main": {"aqi": 1}, "components": {"co": 310.42, "no": 0.19, "o3": 18.42, "nh3": 2.15, "no2": 17.31, "so2": 0.52, "pm10": 4.66, "pm2_5": 2.25}}, {"dt": 1742875200, "main": {"aqi": 1}, "components": {"co": 327.11, "no": 0.5, "o3": 10.28, "nh3": 2.63, "no2": 19.88, "so2": 0.57, "pm10": 6.39, "pm2_5": 2.9}}, {"dt": 1742878800, "main": {"aqi": 1}, "components": {"co": 347.14, "no": 1.36, "o3": 3.8, "nh3": 2.69, "no2": 22.28, "so2": 0.6, "pm10": 8.32, "pm2_5": 3.64}}, {"dt": 1742882400, "main": {"aqi": 1}, "components": {"co": 380.52, "no": 3.32, "o3": 0.59, "nh3": 2.66, "no2": 25.02, "so2": 0.62, "pm10": 10.59, "pm2_5": 4.88}}, {"dt": 1742886000, "main": {"aqi": 1}, "components": {"co": 423.91, "no": 5.92, "o3": 0.09, "nh3": 2.34, "no2": 25.7, "so2": 0.53, "pm10": 12.68, "pm2_5": 6.36}}]
6	2025-04-20 11:49:41.90698-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1742886000, "main": {"aqi": 1}, "components": {"co": 423.91, "no": 5.92, "o3": 0.09, "nh3": 2.34, "no2": 25.7, "so2": 0.53, "pm10": 12.68, "pm2_5": 6.36}}, {"dt": 1742889600, "main": {"aqi": 1}, "components": {"co": 460.62, "no": 8.49, "o3": 0.03, "nh3": 1.98, "no2": 23.99, "so2": 0.43, "pm10": 13.87, "pm2_5": 7.56}}, {"dt": 1742893200, "main": {"aqi": 1}, "components": {"co": 494, "no": 12.07, "o3": 0.01, "nh3": 1.77, "no2": 21.93, "so2": 0.38, "pm10": 14.94, "pm2_5": 9.16}}, {"dt": 1742896800, "main": {"aqi": 2}, "components": {"co": 520.71, "no": 16.32, "o3": 0, "nh3": 1.66, "no2": 20.39, "so2": 0.37, "pm10": 15.85, "pm2_5": 10.74}}, {"dt": 1742900400, "main": {"aqi": 2}, "components": {"co": 527.38, "no": 19, "o3": 0, "nh3": 1.44, "no2": 19.19, "so2": 0.37, "pm10": 15.93, "pm2_5": 11.85}}, {"dt": 1742904000, "main": {"aqi": 2}, "components": {"co": 527.38, "no": 19.67, "o3": 0, "nh3": 1.28, "no2": 19.02, "so2": 0.38, "pm10": 15.6, "pm2_5": 12.34}}, {"dt": 1742907600, "main": {"aqi": 2}, "components": {"co": 514.03, "no": 18.1, "o3": 0, "nh3": 1.22, "no2": 19.36, "so2": 0.42, "pm10": 14.78, "pm2_5": 12.28}}, {"dt": 1742911200, "main": {"aqi": 2}, "components": {"co": 500.68, "no": 17.21, "o3": 0, "nh3": 1.2, "no2": 19.36, "so2": 0.51, "pm10": 14.2, "pm2_5": 12.18}}, {"dt": 1742914800, "main": {"aqi": 2}, "components": {"co": 500.68, "no": 18.33, "o3": 0.1, "nh3": 1.31, "no2": 19.36, "so2": 0.67, "pm10": 14.58, "pm2_5": 12.67}}, {"dt": 1742918400, "main": {"aqi": 2}, "components": {"co": 507.35, "no": 19.89, "o3": 1.17, "nh3": 1.41, "no2": 18.34, "so2": 0.78, "pm10": 14.69, "pm2_5": 12.52}}, {"dt": 1742922000, "main": {"aqi": 2}, "components": {"co": 500.68, "no": 21.68, "o3": 3.17, "nh3": 1.27, "no2": 15.42, "so2": 0.9, "pm10": 13.91, "pm2_5": 11.77}}, {"dt": 1742925600, "main": {"aqi": 2}, "components": {"co": 473.98, "no": 19.67, "o3": 6.35, "nh3": 1.06, "no2": 14.39, "so2": 1.39, "pm10": 12.84, "pm2_5": 10.73}}, {"dt": 1742929200, "main": {"aqi": 1}, "components": {"co": 343.8, "no": 6.65, "o3": 36.48, "nh3": 0.69, "no2": 13.37, "so2": 3.49, "pm10": 9.82, "pm2_5": 8.17}}, {"dt": 1742932800, "main": {"aqi": 1}, "components": {"co": 310.42, "no": 3.91, "o3": 52.93, "nh3": 0.76, "no2": 10.2, "so2": 3.28, "pm10": 9.99, "pm2_5": 8.32}}, {"dt": 1742936400, "main": {"aqi": 2}, "components": {"co": 300.41, "no": 2.63, "o3": 67.95, "nh3": 0.94, "no2": 8.23, "so2": 3.01, "pm10": 12.09, "pm2_5": 10.27}}, {"dt": 1742940000, "main": {"aqi": 2}, "components": {"co": 290.39, "no": 1.61, "o3": 86.55, "nh3": 1.06, "no2": 5.91, "so2": 2.56, "pm10": 14.11, "pm2_5": 12.38}}, {"dt": 1742943600, "main": {"aqi": 2}, "components": {"co": 287.06, "no": 1.01, "o3": 98.71, "nh3": 1.16, "no2": 5.06, "so2": 2.24, "pm10": 15.57, "pm2_5": 13.91}}, {"dt": 1742947200, "main": {"aqi": 3}, "components": {"co": 287.06, "no": 0.78, "o3": 101.57, "nh3": 1.31, "no2": 5.65, "so2": 2.12, "pm10": 16.32, "pm2_5": 14.57}}, {"dt": 1742950800, "main": {"aqi": 2}, "components": {"co": 297.07, "no": 0.67, "o3": 94.41, "nh3": 1.63, "no2": 8.23, "so2": 1.88, "pm10": 16.49, "pm2_5": 14.55}}, {"dt": 1742954400, "main": {"aqi": 2}, "components": {"co": 317.1, "no": 0.31, "o3": 77.25, "nh3": 1.92, "no2": 12.85, "so2": 1.49, "pm10": 16.96, "pm2_5": 14.68}}, {"dt": 1742958000, "main": {"aqi": 2}, "components": {"co": 330.45, "no": 0.01, "o3": 59.37, "nh3": 1.85, "no2": 15.94, "so2": 1.09, "pm10": 16.8, "pm2_5": 14.09}}, {"dt": 1742961600, "main": {"aqi": 2}, "components": {"co": 343.8, "no": 0, "o3": 41.84, "nh3": 1.63, "no2": 18.85, "so2": 0.77, "pm10": 16.56, "pm2_5": 13.29}}, {"dt": 1742965200, "main": {"aqi": 2}, "components": {"co": 367.16, "no": 0.04, "o3": 25.39, "nh3": 1.49, "no2": 22.62, "so2": 0.59, "pm10": 16.59, "pm2_5": 12.69}}, {"dt": 1742968800, "main": {"aqi": 2}, "components": {"co": 387.19, "no": 0.22, "o3": 13.05, "nh3": 1.39, "no2": 25.7, "so2": 0.49, "pm10": 15.95, "pm2_5": 11.66}}, {"dt": 1742972400, "main": {"aqi": 2}, "components": {"co": 400.54, "no": 0.69, "o3": 5.9, "nh3": 1.27, "no2": 26.73, "so2": 0.43, "pm10": 15.5, "pm2_5": 11.09}}]
7	2025-04-20 11:49:43.110493-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1742972400, "main": {"aqi": 2}, "components": {"co": 400.54, "no": 0.69, "o3": 5.9, "nh3": 1.27, "no2": 26.73, "so2": 0.43, "pm10": 15.5, "pm2_5": 11.09}}, {"dt": 1742976000, "main": {"aqi": 2}, "components": {"co": 400.54, "no": 1.17, "o3": 2.26, "nh3": 1.12, "no2": 25.7, "so2": 0.37, "pm10": 15.29, "pm2_5": 10.85}}, {"dt": 1742979600, "main": {"aqi": 2}, "components": {"co": 397.21, "no": 1.75, "o3": 0.78, "nh3": 1.12, "no2": 23.31, "so2": 0.34, "pm10": 15.46, "pm2_5": 10.86}}, {"dt": 1742983200, "main": {"aqi": 2}, "components": {"co": 393.87, "no": 2.54, "o3": 0.2, "nh3": 1.01, "no2": 20.91, "so2": 0.33, "pm10": 15.56, "pm2_5": 10.96}}, {"dt": 1742986800, "main": {"aqi": 2}, "components": {"co": 397.21, "no": 3.35, "o3": 0.09, "nh3": 0.85, "no2": 19.54, "so2": 0.32, "pm10": 16.38, "pm2_5": 11.56}}, {"dt": 1742990400, "main": {"aqi": 2}, "components": {"co": 377.18, "no": 2.57, "o3": 0.74, "nh3": 0.97, "no2": 17.48, "so2": 0.31, "pm10": 16.1, "pm2_5": 10.53}}, {"dt": 1742994000, "main": {"aqi": 1}, "components": {"co": 307.08, "no": 0.22, "o3": 9.03, "nh3": 1.16, "no2": 12, "so2": 0.29, "pm10": 13.24, "pm2_5": 6.63}}, {"dt": 1742997600, "main": {"aqi": 1}, "components": {"co": 270.37, "no": 0.08, "o3": 13.59, "nh3": 0.86, "no2": 8.14, "so2": 0.28, "pm10": 11.27, "pm2_5": 5.14}}, {"dt": 1743001200, "main": {"aqi": 1}, "components": {"co": 270.37, "no": 0.3, "o3": 11.27, "nh3": 0.85, "no2": 8.91, "so2": 0.33, "pm10": 10.88, "pm2_5": 5.14}}, {"dt": 1743004800, "main": {"aqi": 1}, "components": {"co": 287.06, "no": 1.72, "o3": 6.35, "nh3": 1.01, "no2": 10.2, "so2": 0.37, "pm10": 11.56, "pm2_5": 5.61}}, {"dt": 1743008400, "main": {"aqi": 1}, "components": {"co": 303.75, "no": 4.81, "o3": 4.74, "nh3": 1.04, "no2": 9.17, "so2": 0.44, "pm10": 13.11, "pm2_5": 6.12}}, {"dt": 1743012000, "main": {"aqi": 1}, "components": {"co": 323.77, "no": 7.71, "o3": 5.45, "nh3": 1.03, "no2": 8.31, "so2": 0.62, "pm10": 14.75, "pm2_5": 6.74}}, {"dt": 1743015600, "main": {"aqi": 1}, "components": {"co": 287.06, "no": 2.88, "o3": 34.69, "nh3": 1.36, "no2": 8.57, "so2": 1.46, "pm10": 13.34, "pm2_5": 5.31}}, {"dt": 1743019200, "main": {"aqi": 1}, "components": {"co": 287.06, "no": 2.65, "o3": 47.21, "nh3": 1.49, "no2": 7.97, "so2": 1.82, "pm10": 13.32, "pm2_5": 5.79}}, {"dt": 1743022800, "main": {"aqi": 1}, "components": {"co": 297.07, "no": 2.93, "o3": 54.36, "nh3": 1.71, "no2": 7.88, "so2": 2.03, "pm10": 14.59, "pm2_5": 7.65}}, {"dt": 1743026400, "main": {"aqi": 2}, "components": {"co": 290.39, "no": 1.68, "o3": 69.38, "nh3": 2.15, "no2": 6.51, "so2": 1.55, "pm10": 14.64, "pm2_5": 8.6}}, {"dt": 1743030000, "main": {"aqi": 2}, "components": {"co": 290.39, "no": 0.73, "o3": 75.1, "nh3": 2.37, "no2": 5.48, "so2": 1.19, "pm10": 15.33, "pm2_5": 11.35}}, {"dt": 1743033600, "main": {"aqi": 2}, "components": {"co": 273.7, "no": 0.14, "o3": 79.39, "nh3": 1.12, "no2": 3.04, "so2": 0.64, "pm10": 10.15, "pm2_5": 9.03}}, {"dt": 1743037200, "main": {"aqi": 2}, "components": {"co": 240.33, "no": 0.02, "o3": 75.1, "nh3": 0.45, "no2": 2.01, "so2": 0.36, "pm10": 3.3, "pm2_5": 2.92}}, {"dt": 1743040800, "main": {"aqi": 2}, "components": {"co": 230.31, "no": 0.01, "o3": 62.94, "nh3": 0.35, "no2": 2.14, "so2": 0.3, "pm10": 0.97, "pm2_5": 0.8}}, {"dt": 1743044400, "main": {"aqi": 2}, "components": {"co": 230.31, "no": 0, "o3": 62.94, "nh3": 0.3, "no2": 2.27, "so2": 0.26, "pm10": 0.63, "pm2_5": 0.5}}, {"dt": 1743048000, "main": {"aqi": 2}, "components": {"co": 233.65, "no": 0, "o3": 62.94, "nh3": 0.28, "no2": 2.42, "so2": 0.26, "pm10": 0.64, "pm2_5": 0.5}}, {"dt": 1743051600, "main": {"aqi": 2}, "components": {"co": 233.65, "no": 0, "o3": 65.09, "nh3": 0.25, "no2": 2.21, "so2": 0.24, "pm10": 0.67, "pm2_5": 0.55}}, {"dt": 1743055200, "main": {"aqi": 2}, "components": {"co": 233.65, "no": 0, "o3": 68.66, "nh3": 0.22, "no2": 1.99, "so2": 0.22, "pm10": 0.73, "pm2_5": 0.61}}, {"dt": 1743058800, "main": {"aqi": 2}, "components": {"co": 233.65, "no": 0, "o3": 72.96, "nh3": 0.21, "no2": 1.78, "so2": 0.23, "pm10": 0.81, "pm2_5": 0.71}}]
8	2025-04-20 11:49:44.319725-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1743058800, "main": {"aqi": 2}, "components": {"co": 233.65, "no": 0, "o3": 72.96, "nh3": 0.21, "no2": 1.78, "so2": 0.23, "pm10": 0.81, "pm2_5": 0.71}}, {"dt": 1743062400, "main": {"aqi": 2}, "components": {"co": 233.65, "no": 0, "o3": 77.25, "nh3": 0.2, "no2": 1.52, "so2": 0.25, "pm10": 0.9, "pm2_5": 0.81}}, {"dt": 1743066000, "main": {"aqi": 2}, "components": {"co": 236.99, "no": 0, "o3": 80.11, "nh3": 0.19, "no2": 1.32, "so2": 0.27, "pm10": 0.95, "pm2_5": 0.86}}, {"dt": 1743069600, "main": {"aqi": 2}, "components": {"co": 236.99, "no": 0, "o3": 77.96, "nh3": 0.27, "no2": 1.61, "so2": 0.35, "pm10": 1, "pm2_5": 0.87}}, {"dt": 1743073200, "main": {"aqi": 2}, "components": {"co": 236.99, "no": 0, "o3": 71.53, "nh3": 0.37, "no2": 2.16, "so2": 0.42, "pm10": 1.06, "pm2_5": 0.87}}, {"dt": 1743076800, "main": {"aqi": 2}, "components": {"co": 236.99, "no": 0, "o3": 64.37, "nh3": 0.44, "no2": 2.66, "so2": 0.45, "pm10": 1.05, "pm2_5": 0.81}}, {"dt": 1743080400, "main": {"aqi": 1}, "components": {"co": 233.65, "no": 0, "o3": 58.65, "nh3": 0.47, "no2": 2.96, "so2": 0.42, "pm10": 1.01, "pm2_5": 0.76}}, {"dt": 1743084000, "main": {"aqi": 1}, "components": {"co": 233.65, "no": 0, "o3": 58.65, "nh3": 0.46, "no2": 2.83, "so2": 0.39, "pm10": 1.01, "pm2_5": 0.76}}, {"dt": 1743087600, "main": {"aqi": 2}, "components": {"co": 236.99, "no": 0.02, "o3": 61.51, "nh3": 0.5, "no2": 3.13, "so2": 0.4, "pm10": 1.07, "pm2_5": 0.81}}, {"dt": 1743091200, "main": {"aqi": 2}, "components": {"co": 236.99, "no": 0.18, "o3": 66.52, "nh3": 0.5, "no2": 2.66, "so2": 0.38, "pm10": 0.83, "pm2_5": 0.61}}, {"dt": 1743094800, "main": {"aqi": 2}, "components": {"co": 236.99, "no": 0.26, "o3": 68.66, "nh3": 0.58, "no2": 2.48, "so2": 0.39, "pm10": 0.72, "pm2_5": 0.5}}, {"dt": 1743098400, "main": {"aqi": 2}, "components": {"co": 236.99, "no": 0.2, "o3": 70.81, "nh3": 0.64, "no2": 2.44, "so2": 0.45, "pm10": 0.72, "pm2_5": 0.5}}, {"dt": 1743102000, "main": {"aqi": 2}, "components": {"co": 236.99, "no": 0.12, "o3": 84.4, "nh3": 0.45, "no2": 1.95, "so2": 0.38, "pm10": 0.62, "pm2_5": 0.5}}, {"dt": 1743105600, "main": {"aqi": 2}, "components": {"co": 236.99, "no": 0.12, "o3": 95.84, "nh3": 0.29, "no2": 1.48, "so2": 0.29, "pm10": 0.56, "pm2_5": 0.5}}, {"dt": 1743109200, "main": {"aqi": 3}, "components": {"co": 240.33, "no": 0.11, "o3": 100.14, "nh3": 0.22, "no2": 1.15, "so2": 0.23, "pm10": 0.55, "pm2_5": 0.5}}, {"dt": 1743112800, "main": {"aqi": 3}, "components": {"co": 243.66, "no": 0.09, "o3": 101.57, "nh3": 0.18, "no2": 1.1, "so2": 0.21, "pm10": 0.54, "pm2_5": 0.5}}, {"dt": 1743116400, "main": {"aqi": 3}, "components": {"co": 243.66, "no": 0.07, "o3": 100.14, "nh3": 0.18, "no2": 1.29, "so2": 0.22, "pm10": 0.54, "pm2_5": 0.5}}, {"dt": 1743120000, "main": {"aqi": 2}, "components": {"co": 243.66, "no": 0.05, "o3": 95.84, "nh3": 0.17, "no2": 1.54, "so2": 0.24, "pm10": 0.55, "pm2_5": 0.5}}, {"dt": 1743123600, "main": {"aqi": 2}, "components": {"co": 243.66, "no": 0.03, "o3": 91.55, "nh3": 0.18, "no2": 1.84, "so2": 0.25, "pm10": 0.55, "pm2_5": 0.5}}, {"dt": 1743127200, "main": {"aqi": 2}, "components": {"co": 247, "no": 0.01, "o3": 87.26, "nh3": 0.21, "no2": 2.06, "so2": 0.26, "pm10": 0.56, "pm2_5": 0.5}}, {"dt": 1743130800, "main": {"aqi": 2}, "components": {"co": 243.66, "no": 0, "o3": 82.25, "nh3": 0.23, "no2": 2.08, "so2": 0.26, "pm10": 0.58, "pm2_5": 0.5}}, {"dt": 1743134400, "main": {"aqi": 2}, "components": {"co": 243.66, "no": 0, "o3": 78.68, "nh3": 0.23, "no2": 2.16, "so2": 0.27, "pm10": 0.58, "pm2_5": 0.5}}, {"dt": 1743138000, "main": {"aqi": 2}, "components": {"co": 243.66, "no": 0, "o3": 75.82, "nh3": 0.21, "no2": 2.21, "so2": 0.28, "pm10": 0.57, "pm2_5": 0.5}}, {"dt": 1743141600, "main": {"aqi": 2}, "components": {"co": 240.33, "no": 0, "o3": 72.96, "nh3": 0.18, "no2": 2.12, "so2": 0.26, "pm10": 0.57, "pm2_5": 0.5}}, {"dt": 1743145200, "main": {"aqi": 2}, "components": {"co": 236.99, "no": 0, "o3": 70.1, "nh3": 0.17, "no2": 1.82, "so2": 0.24, "pm10": 0.57, "pm2_5": 0.5}}]
9	2025-04-20 11:49:45.515515-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1743145200, "main": {"aqi": 2}, "components": {"co": 236.99, "no": 0, "o3": 70.1, "nh3": 0.17, "no2": 1.82, "so2": 0.24, "pm10": 0.57, "pm2_5": 0.5}}, {"dt": 1743148800, "main": {"aqi": 2}, "components": {"co": 236.99, "no": 0, "o3": 74.39, "nh3": 0.13, "no2": 1.29, "so2": 0.23, "pm10": 0.62, "pm2_5": 0.57}}, {"dt": 1743152400, "main": {"aqi": 2}, "components": {"co": 240.33, "no": 0, "o3": 82.25, "nh3": 0.12, "no2": 0.92, "so2": 0.2, "pm10": 0.81, "pm2_5": 0.76}}, {"dt": 1743156000, "main": {"aqi": 2}, "components": {"co": 243.66, "no": 0, "o3": 87.26, "nh3": 0.11, "no2": 0.74, "so2": 0.19, "pm10": 0.9, "pm2_5": 0.86}}, {"dt": 1743159600, "main": {"aqi": 2}, "components": {"co": 240.33, "no": 0, "o3": 87.98, "nh3": 0.12, "no2": 0.71, "so2": 0.18, "pm10": 0.86, "pm2_5": 0.81}}, {"dt": 1743163200, "main": {"aqi": 2}, "components": {"co": 240.33, "no": 0, "o3": 87.26, "nh3": 0.12, "no2": 0.73, "so2": 0.19, "pm10": 0.67, "pm2_5": 0.62}}, {"dt": 1743166800, "main": {"aqi": 2}, "components": {"co": 240.33, "no": 0, "o3": 86.55, "nh3": 0.12, "no2": 0.77, "so2": 0.2, "pm10": 0.54, "pm2_5": 0.5}}, {"dt": 1743170400, "main": {"aqi": 2}, "components": {"co": 243.66, "no": 0, "o3": 87.26, "nh3": 0.13, "no2": 0.86, "so2": 0.21, "pm10": 0.55, "pm2_5": 0.5}}, {"dt": 1743174000, "main": {"aqi": 2}, "components": {"co": 243.66, "no": 0, "o3": 88.69, "nh3": 0.14, "no2": 1.2, "so2": 0.22, "pm10": 0.56, "pm2_5": 0.5}}, {"dt": 1743177600, "main": {"aqi": 2}, "components": {"co": 250.34, "no": 0.02, "o3": 89.41, "nh3": 0.17, "no2": 1.67, "so2": 0.25, "pm10": 0.58, "pm2_5": 0.5}}, {"dt": 1743181200, "main": {"aqi": 2}, "components": {"co": 250.34, "no": 0.1, "o3": 90.84, "nh3": 0.18, "no2": 1.78, "so2": 0.27, "pm10": 0.67, "pm2_5": 0.56}}, {"dt": 1743184800, "main": {"aqi": 2}, "components": {"co": 253.68, "no": 0.17, "o3": 92.98, "nh3": 0.19, "no2": 1.54, "so2": 0.28, "pm10": 0.72, "pm2_5": 0.58}}, {"dt": 1743188400, "main": {"aqi": 2}, "components": {"co": 250.34, "no": 0.19, "o3": 95.84, "nh3": 0.19, "no2": 1.24, "so2": 0.27, "pm10": 0.7, "pm2_5": 0.52}}, {"dt": 1743192000, "main": {"aqi": 2}, "components": {"co": 247, "no": 0.15, "o3": 98.71, "nh3": 0.19, "no2": 1.02, "so2": 0.25, "pm10": 0.73, "pm2_5": 0.5}}, {"dt": 1743195600, "main": {"aqi": 3}, "components": {"co": 243.66, "no": 0.11, "o3": 101.57, "nh3": 0.2, "no2": 0.9, "so2": 0.23, "pm10": 0.83, "pm2_5": 0.5}}, {"dt": 1743199200, "main": {"aqi": 3}, "components": {"co": 243.66, "no": 0.1, "o3": 104.43, "nh3": 0.19, "no2": 0.82, "so2": 0.21, "pm10": 0.89, "pm2_5": 0.5}}, {"dt": 1743202800, "main": {"aqi": 3}, "components": {"co": 243.66, "no": 0.11, "o3": 103, "nh3": 0.2, "no2": 0.8, "so2": 0.21, "pm10": 0.91, "pm2_5": 0.5}}, {"dt": 1743206400, "main": {"aqi": 3}, "components": {"co": 243.66, "no": 0.12, "o3": 100.14, "nh3": 0.2, "no2": 0.82, "so2": 0.2, "pm10": 0.9, "pm2_5": 0.5}}, {"dt": 1743210000, "main": {"aqi": 2}, "components": {"co": 247, "no": 0.15, "o3": 92.98, "nh3": 0.32, "no2": 1.44, "so2": 0.27, "pm10": 0.9, "pm2_5": 0.5}}, {"dt": 1743213600, "main": {"aqi": 2}, "components": {"co": 250.34, "no": 0.1, "o3": 85.12, "nh3": 0.5, "no2": 2.59, "so2": 0.36, "pm10": 0.95, "pm2_5": 0.52}}, {"dt": 1743217200, "main": {"aqi": 2}, "components": {"co": 257.02, "no": 0.01, "o3": 77.96, "nh3": 0.55, "no2": 3.6, "so2": 0.42, "pm10": 1.1, "pm2_5": 0.64}}, {"dt": 1743220800, "main": {"aqi": 2}, "components": {"co": 263.69, "no": 0, "o3": 73.67, "nh3": 0.51, "no2": 4.41, "so2": 0.53, "pm10": 1.23, "pm2_5": 0.76}}, {"dt": 1743224400, "main": {"aqi": 2}, "components": {"co": 263.69, "no": 0, "o3": 71.53, "nh3": 0.46, "no2": 4.37, "so2": 0.6, "pm10": 1.19, "pm2_5": 0.74}}, {"dt": 1743228000, "main": {"aqi": 2}, "components": {"co": 260.35, "no": 0, "o3": 72.96, "nh3": 0.42, "no2": 3.86, "so2": 0.6, "pm10": 1.08, "pm2_5": 0.65}}, {"dt": 1743231600, "main": {"aqi": 2}, "components": {"co": 257.02, "no": 0, "o3": 76.53, "nh3": 0.34, "no2": 3.04, "so2": 0.51, "pm10": 0.81, "pm2_5": 0.5}}]
10	2025-04-20 11:49:46.725778-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1743231600, "main": {"aqi": 2}, "components": {"co": 257.02, "no": 0, "o3": 76.53, "nh3": 0.34, "no2": 3.04, "so2": 0.51, "pm10": 0.81, "pm2_5": 0.5}}, {"dt": 1743235200, "main": {"aqi": 2}, "components": {"co": 253.68, "no": 0, "o3": 77.96, "nh3": 0.29, "no2": 2.42, "so2": 0.45, "pm10": 0.7, "pm2_5": 0.5}}, {"dt": 1743238800, "main": {"aqi": 2}, "components": {"co": 250.34, "no": 0, "o3": 79.39, "nh3": 0.26, "no2": 1.91, "so2": 0.38, "pm10": 0.66, "pm2_5": 0.5}}, {"dt": 1743242400, "main": {"aqi": 2}, "components": {"co": 250.34, "no": 0, "o3": 80.82, "nh3": 0.22, "no2": 1.41, "so2": 0.29, "pm10": 0.62, "pm2_5": 0.5}}, {"dt": 1743246000, "main": {"aqi": 2}, "components": {"co": 247, "no": 0, "o3": 81.54, "nh3": 0.2, "no2": 1.17, "so2": 0.24, "pm10": 0.6, "pm2_5": 0.5}}, {"dt": 1743249600, "main": {"aqi": 2}, "components": {"co": 247, "no": 0, "o3": 81.54, "nh3": 0.2, "no2": 1.1, "so2": 0.23, "pm10": 0.6, "pm2_5": 0.5}}, {"dt": 1743253200, "main": {"aqi": 2}, "components": {"co": 247, "no": 0, "o3": 78.68, "nh3": 0.28, "no2": 1.52, "so2": 0.34, "pm10": 0.65, "pm2_5": 0.5}}, {"dt": 1743256800, "main": {"aqi": 2}, "components": {"co": 250.34, "no": 0, "o3": 72.96, "nh3": 0.39, "no2": 2.25, "so2": 0.53, "pm10": 0.74, "pm2_5": 0.5}}, {"dt": 1743260400, "main": {"aqi": 2}, "components": {"co": 257.02, "no": 0.03, "o3": 67.95, "nh3": 0.45, "no2": 3.04, "so2": 0.62, "pm10": 0.82, "pm2_5": 0.5}}, {"dt": 1743264000, "main": {"aqi": 2}, "components": {"co": 260.35, "no": 0.35, "o3": 65.09, "nh3": 0.5, "no2": 3.73, "so2": 0.67, "pm10": 0.94, "pm2_5": 0.56}}, {"dt": 1743267600, "main": {"aqi": 2}, "components": {"co": 263.69, "no": 0.7, "o3": 63.66, "nh3": 0.57, "no2": 3.68, "so2": 0.7, "pm10": 0.99, "pm2_5": 0.61}}, {"dt": 1743271200, "main": {"aqi": 2}, "components": {"co": 260.35, "no": 0.72, "o3": 65.8, "nh3": 0.58, "no2": 3.08, "so2": 0.64, "pm10": 0.95, "pm2_5": 0.6}}, {"dt": 1743274800, "main": {"aqi": 2}, "components": {"co": 247, "no": 0.24, "o3": 82.97, "nh3": 0.3, "no2": 1.3, "so2": 0.29, "pm10": 0.7, "pm2_5": 0.5}}, {"dt": 1743278400, "main": {"aqi": 2}, "components": {"co": 243.66, "no": 0.17, "o3": 87.98, "nh3": 0.25, "no2": 0.92, "so2": 0.25, "pm10": 0.66, "pm2_5": 0.5}}, {"dt": 1743282000, "main": {"aqi": 2}, "components": {"co": 243.66, "no": 0.16, "o3": 89.41, "nh3": 0.26, "no2": 0.89, "so2": 0.25, "pm10": 0.65, "pm2_5": 0.5}}, {"dt": 1743285600, "main": {"aqi": 2}, "components": {"co": 240.33, "no": 0.15, "o3": 89.41, "nh3": 0.3, "no2": 0.93, "so2": 0.26, "pm10": 0.65, "pm2_5": 0.5}}, {"dt": 1743289200, "main": {"aqi": 2}, "components": {"co": 240.33, "no": 0.13, "o3": 88.69, "nh3": 0.34, "no2": 1.04, "so2": 0.28, "pm10": 0.65, "pm2_5": 0.5}}, {"dt": 1743292800, "main": {"aqi": 2}, "components": {"co": 240.33, "no": 0.1, "o3": 88.69, "nh3": 0.36, "no2": 1.21, "so2": 0.29, "pm10": 0.65, "pm2_5": 0.5}}]
11	2025-04-20 11:49:52.753554-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1743728400, "main": {"aqi": 2}, "components": {"co": 247, "no": 0.15, "o3": 92.98, "nh3": 0.32, "no2": 1.44, "so2": 0.27, "pm10": 0.9, "pm2_5": 0.5}}, {"dt": 1743732000, "main": {"aqi": 2}, "components": {"co": 250.34, "no": 0.1, "o3": 85.12, "nh3": 0.5, "no2": 2.59, "so2": 0.36, "pm10": 0.95, "pm2_5": 0.52}}, {"dt": 1743735600, "main": {"aqi": 2}, "components": {"co": 257.02, "no": 0.01, "o3": 77.96, "nh3": 0.55, "no2": 3.6, "so2": 0.42, "pm10": 1.1, "pm2_5": 0.64}}, {"dt": 1743739200, "main": {"aqi": 2}, "components": {"co": 263.69, "no": 0, "o3": 73.67, "nh3": 0.51, "no2": 4.41, "so2": 0.53, "pm10": 1.23, "pm2_5": 0.76}}, {"dt": 1743742800, "main": {"aqi": 2}, "components": {"co": 263.69, "no": 0, "o3": 71.53, "nh3": 0.46, "no2": 4.37, "so2": 0.6, "pm10": 1.19, "pm2_5": 0.74}}, {"dt": 1743746400, "main": {"aqi": 2}, "components": {"co": 260.35, "no": 0, "o3": 72.96, "nh3": 0.42, "no2": 3.86, "so2": 0.6, "pm10": 1.08, "pm2_5": 0.65}}, {"dt": 1743750000, "main": {"aqi": 2}, "components": {"co": 257.02, "no": 0, "o3": 76.53, "nh3": 0.34, "no2": 3.04, "so2": 0.51, "pm10": 0.81, "pm2_5": 0.5}}]
12	2025-04-20 11:49:53.957107-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1743750000, "main": {"aqi": 2}, "components": {"co": 257.02, "no": 0, "o3": 76.53, "nh3": 0.34, "no2": 3.04, "so2": 0.51, "pm10": 0.81, "pm2_5": 0.5}}, {"dt": 1743753600, "main": {"aqi": 2}, "components": {"co": 253.68, "no": 0, "o3": 77.96, "nh3": 0.29, "no2": 2.42, "so2": 0.45, "pm10": 0.7, "pm2_5": 0.5}}, {"dt": 1743757200, "main": {"aqi": 2}, "components": {"co": 250.34, "no": 0, "o3": 79.39, "nh3": 0.26, "no2": 1.91, "so2": 0.38, "pm10": 0.66, "pm2_5": 0.5}}, {"dt": 1743760800, "main": {"aqi": 2}, "components": {"co": 250.34, "no": 0, "o3": 80.82, "nh3": 0.22, "no2": 1.41, "so2": 0.29, "pm10": 0.62, "pm2_5": 0.5}}, {"dt": 1743764400, "main": {"aqi": 2}, "components": {"co": 247, "no": 0, "o3": 81.54, "nh3": 0.2, "no2": 1.17, "so2": 0.24, "pm10": 0.6, "pm2_5": 0.5}}, {"dt": 1743768000, "main": {"aqi": 2}, "components": {"co": 247, "no": 0, "o3": 81.54, "nh3": 0.2, "no2": 1.1, "so2": 0.23, "pm10": 0.6, "pm2_5": 0.5}}, {"dt": 1743771600, "main": {"aqi": 2}, "components": {"co": 247, "no": 0, "o3": 78.68, "nh3": 0.28, "no2": 1.52, "so2": 0.34, "pm10": 0.65, "pm2_5": 0.5}}, {"dt": 1743775200, "main": {"aqi": 2}, "components": {"co": 250.34, "no": 0, "o3": 72.96, "nh3": 0.39, "no2": 2.25, "so2": 0.53, "pm10": 0.74, "pm2_5": 0.5}}, {"dt": 1743778800, "main": {"aqi": 2}, "components": {"co": 257.02, "no": 0.03, "o3": 67.95, "nh3": 0.45, "no2": 3.04, "so2": 0.62, "pm10": 0.82, "pm2_5": 0.5}}, {"dt": 1743782400, "main": {"aqi": 2}, "components": {"co": 260.35, "no": 0.35, "o3": 65.09, "nh3": 0.5, "no2": 3.73, "so2": 0.67, "pm10": 0.94, "pm2_5": 0.56}}, {"dt": 1743786000, "main": {"aqi": 2}, "components": {"co": 263.69, "no": 0.7, "o3": 63.66, "nh3": 0.57, "no2": 3.68, "so2": 0.7, "pm10": 0.99, "pm2_5": 0.61}}, {"dt": 1743789600, "main": {"aqi": 2}, "components": {"co": 260.35, "no": 0.72, "o3": 65.8, "nh3": 0.58, "no2": 3.08, "so2": 0.64, "pm10": 0.95, "pm2_5": 0.6}}, {"dt": 1743793200, "main": {"aqi": 2}, "components": {"co": 247, "no": 0.24, "o3": 82.97, "nh3": 0.3, "no2": 1.3, "so2": 0.29, "pm10": 0.7, "pm2_5": 0.5}}, {"dt": 1743796800, "main": {"aqi": 2}, "components": {"co": 243.66, "no": 0.17, "o3": 87.98, "nh3": 0.25, "no2": 0.92, "so2": 0.25, "pm10": 0.66, "pm2_5": 0.5}}, {"dt": 1743800400, "main": {"aqi": 2}, "components": {"co": 243.66, "no": 0.16, "o3": 89.41, "nh3": 0.26, "no2": 0.89, "so2": 0.25, "pm10": 0.65, "pm2_5": 0.5}}, {"dt": 1743804000, "main": {"aqi": 2}, "components": {"co": 240.33, "no": 0.15, "o3": 89.41, "nh3": 0.3, "no2": 0.93, "so2": 0.26, "pm10": 0.65, "pm2_5": 0.5}}, {"dt": 1743807600, "main": {"aqi": 2}, "components": {"co": 240.33, "no": 0.13, "o3": 88.69, "nh3": 0.34, "no2": 1.04, "so2": 0.28, "pm10": 0.65, "pm2_5": 0.5}}, {"dt": 1743811200, "main": {"aqi": 2}, "components": {"co": 240.33, "no": 0.1, "o3": 88.69, "nh3": 0.36, "no2": 1.21, "so2": 0.29, "pm10": 0.65, "pm2_5": 0.5}}]
13	2025-04-20 11:49:55.314532-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1743901200, "main": {"aqi": 2}, "components": {"co": 140.88, "no": 0.03, "o3": 94.59, "nh3": 0.33, "no2": 0.68, "so2": 0.13, "pm10": 3.99, "pm2_5": 2.55}}, {"dt": 1743904800, "main": {"aqi": 2}, "components": {"co": 146.51, "no": 0.02, "o3": 81.03, "nh3": 0.44, "no2": 1.15, "so2": 0.16, "pm10": 4.31, "pm2_5": 3.14}}, {"dt": 1743908400, "main": {"aqi": 2}, "components": {"co": 150.56, "no": 0, "o3": 74.04, "nh3": 0.51, "no2": 1.4, "so2": 0.16, "pm10": 4.56, "pm2_5": 3.63}}, {"dt": 1743912000, "main": {"aqi": 2}, "components": {"co": 148.98, "no": 0, "o3": 65.01, "nh3": 0.62, "no2": 1.52, "so2": 0.13, "pm10": 4.55, "pm2_5": 3.79}}, {"dt": 1743915600, "main": {"aqi": 1}, "components": {"co": 148.23, "no": 0, "o3": 55.94, "nh3": 0.75, "no2": 1.65, "so2": 0.1, "pm10": 4.52, "pm2_5": 3.82}}, {"dt": 1743919200, "main": {"aqi": 1}, "components": {"co": 146.94, "no": 0, "o3": 49.28, "nh3": 0.87, "no2": 1.76, "so2": 0.09, "pm10": 4.46, "pm2_5": 3.77}}, {"dt": 1743922800, "main": {"aqi": 1}, "components": {"co": 143.3, "no": 0, "o3": 43.01, "nh3": 1.01, "no2": 1.79, "so2": 0.07, "pm10": 4.36, "pm2_5": 3.64}}]
14	2025-04-20 11:49:56.513062-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1743922800, "main": {"aqi": 1}, "components": {"co": 143.3, "no": 0, "o3": 43.01, "nh3": 1.01, "no2": 1.79, "so2": 0.07, "pm10": 4.36, "pm2_5": 3.64}}, {"dt": 1743926400, "main": {"aqi": 1}, "components": {"co": 138.42, "no": 0, "o3": 36.23, "nh3": 1.15, "no2": 1.69, "so2": 0.06, "pm10": 4.3, "pm2_5": 3.57}}, {"dt": 1743930000, "main": {"aqi": 1}, "components": {"co": 133.81, "no": 0, "o3": 29.14, "nh3": 1.25, "no2": 1.57, "so2": 0.05, "pm10": 4.27, "pm2_5": 3.51}}, {"dt": 1743933600, "main": {"aqi": 1}, "components": {"co": 129.32, "no": 0, "o3": 23.13, "nh3": 1.21, "no2": 1.47, "so2": 0.05, "pm10": 4.16, "pm2_5": 3.44}}, {"dt": 1743937200, "main": {"aqi": 1}, "components": {"co": 125.21, "no": 0, "o3": 18.95, "nh3": 0.87, "no2": 1.32, "so2": 0.04, "pm10": 4.02, "pm2_5": 3.35}}, {"dt": 1743940800, "main": {"aqi": 1}, "components": {"co": 122.46, "no": 0, "o3": 18.1, "nh3": 0.5, "no2": 1.17, "so2": 0.04, "pm10": 3.9, "pm2_5": 3.26}}, {"dt": 1743944400, "main": {"aqi": 1}, "components": {"co": 121.15, "no": 0, "o3": 21.54, "nh3": 0.33, "no2": 1.04, "so2": 0.04, "pm10": 3.74, "pm2_5": 3.12}}, {"dt": 1743948000, "main": {"aqi": 1}, "components": {"co": 124.85, "no": 0.01, "o3": 25.69, "nh3": 0.27, "no2": 1.18, "so2": 0.04, "pm10": 3.6, "pm2_5": 3.02}}, {"dt": 1743951600, "main": {"aqi": 1}, "components": {"co": 132.95, "no": 0.02, "o3": 26.96, "nh3": 0.25, "no2": 1.68, "so2": 0.03, "pm10": 3.53, "pm2_5": 2.97}}, {"dt": 1743955200, "main": {"aqi": 1}, "components": {"co": 139.57, "no": 0.08, "o3": 25.38, "nh3": 0.23, "no2": 2.06, "so2": 0.03, "pm10": 3.5, "pm2_5": 2.97}}, {"dt": 1743958800, "main": {"aqi": 1}, "components": {"co": 141.17, "no": 0.21, "o3": 21.28, "nh3": 0.21, "no2": 1.92, "so2": 0.03, "pm10": 3.43, "pm2_5": 2.94}}, {"dt": 1743962400, "main": {"aqi": 1}, "components": {"co": 141.4, "no": 0.24, "o3": 23.57, "nh3": 0.19, "no2": 1.56, "so2": 0.03, "pm10": 3.24, "pm2_5": 2.84}}, {"dt": 1743966000, "main": {"aqi": 2}, "components": {"co": 140.63, "no": 0.05, "o3": 62.37, "nh3": 0.14, "no2": 0.85, "so2": 0.03, "pm10": 2.32, "pm2_5": 2.05}}, {"dt": 1743969600, "main": {"aqi": 2}, "components": {"co": 137.8, "no": 0.05, "o3": 63.26, "nh3": 0.12, "no2": 0.66, "so2": 0.02, "pm10": 1.8, "pm2_5": 1.61}}, {"dt": 1743973200, "main": {"aqi": 2}, "components": {"co": 136.32, "no": 0.05, "o3": 60.17, "nh3": 0.12, "no2": 0.62, "so2": 0.02, "pm10": 1.58, "pm2_5": 1.4}}, {"dt": 1743976800, "main": {"aqi": 1}, "components": {"co": 135.68, "no": 0.06, "o3": 53.26, "nh3": 0.13, "no2": 0.67, "so2": 0.02, "pm10": 1.48, "pm2_5": 1.32}}, {"dt": 1743980400, "main": {"aqi": 1}, "components": {"co": 135.6, "no": 0.07, "o3": 43.33, "nh3": 0.16, "no2": 0.83, "so2": 0.02, "pm10": 1.45, "pm2_5": 1.3}}, {"dt": 1743984000, "main": {"aqi": 1}, "components": {"co": 136.88, "no": 0.07, "o3": 35.5, "nh3": 0.19, "no2": 1.11, "so2": 0.03, "pm10": 1.44, "pm2_5": 1.31}}, {"dt": 1743987600, "main": {"aqi": 1}, "components": {"co": 136.79, "no": 0.06, "o3": 31.17, "nh3": 0.19, "no2": 1.33, "so2": 0.04, "pm10": 1.37, "pm2_5": 1.27}}, {"dt": 1743991200, "main": {"aqi": 1}, "components": {"co": 133.7, "no": 0.02, "o3": 31.27, "nh3": 0.15, "no2": 1.34, "so2": 0.04, "pm10": 1.22, "pm2_5": 1.16}}, {"dt": 1743994800, "main": {"aqi": 1}, "components": {"co": 129.53, "no": 0, "o3": 36.35, "nh3": 0.12, "no2": 1.19, "so2": 0.04, "pm10": 1.06, "pm2_5": 1.03}}, {"dt": 1743998400, "main": {"aqi": 1}, "components": {"co": 127.36, "no": 0, "o3": 44.59, "nh3": 0.09, "no2": 1.01, "so2": 0.04, "pm10": 0.94, "pm2_5": 0.92}}, {"dt": 1744002000, "main": {"aqi": 1}, "components": {"co": 126.91, "no": 0, "o3": 45.32, "nh3": 0.09, "no2": 0.95, "so2": 0.04, "pm10": 0.92, "pm2_5": 0.9}}, {"dt": 1744005600, "main": {"aqi": 1}, "components": {"co": 126.73, "no": 0, "o3": 45.47, "nh3": 0.09, "no2": 0.93, "so2": 0.04, "pm10": 0.92, "pm2_5": 0.9}}, {"dt": 1744009200, "main": {"aqi": 1}, "components": {"co": 126.25, "no": 0, "o3": 45.03, "nh3": 0.09, "no2": 0.91, "so2": 0.04, "pm10": 0.93, "pm2_5": 0.91}}]
15	2025-04-20 11:49:57.73921-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1744009200, "main": {"aqi": 1}, "components": {"co": 126.25, "no": 0, "o3": 45.03, "nh3": 0.09, "no2": 0.91, "so2": 0.04, "pm10": 0.93, "pm2_5": 0.91}}, {"dt": 1744012800, "main": {"aqi": 1}, "components": {"co": 125.19, "no": 0, "o3": 44.23, "nh3": 0.1, "no2": 0.87, "so2": 0.05, "pm10": 0.88, "pm2_5": 0.85}}, {"dt": 1744016400, "main": {"aqi": 1}, "components": {"co": 124.13, "no": 0, "o3": 43.3, "nh3": 0.1, "no2": 0.81, "so2": 0.05, "pm10": 0.79, "pm2_5": 0.76}}, {"dt": 1744020000, "main": {"aqi": 1}, "components": {"co": 123.07, "no": 0, "o3": 43.31, "nh3": 0.1, "no2": 0.75, "so2": 0.05, "pm10": 0.71, "pm2_5": 0.67}}, {"dt": 1744023600, "main": {"aqi": 1}, "components": {"co": 122.27, "no": 0, "o3": 45.18, "nh3": 0.09, "no2": 0.67, "so2": 0.05, "pm10": 0.61, "pm2_5": 0.57}}, {"dt": 1744027200, "main": {"aqi": 1}, "components": {"co": 122.56, "no": 0, "o3": 49.38, "nh3": 0.08, "no2": 0.57, "so2": 0.05, "pm10": 0.5, "pm2_5": 0.5}}, {"dt": 1744030800, "main": {"aqi": 1}, "components": {"co": 124.49, "no": 0, "o3": 55.57, "nh3": 0.08, "no2": 0.49, "so2": 0.04, "pm10": 0.5, "pm2_5": 0.5}}, {"dt": 1744034400, "main": {"aqi": 2}, "components": {"co": 127.53, "no": 0, "o3": 60.83, "nh3": 0.08, "no2": 0.51, "so2": 0.04, "pm10": 0.5, "pm2_5": 0.5}}, {"dt": 1744038000, "main": {"aqi": 2}, "components": {"co": 131.11, "no": 0, "o3": 64.82, "nh3": 0.08, "no2": 0.66, "so2": 0.05, "pm10": 0.5, "pm2_5": 0.5}}, {"dt": 1744041600, "main": {"aqi": 2}, "components": {"co": 133.78, "no": 0, "o3": 69.45, "nh3": 0.08, "no2": 0.77, "so2": 0.07, "pm10": 0.5, "pm2_5": 0.5}}, {"dt": 1744045200, "main": {"aqi": 2}, "components": {"co": 135.52, "no": 0.01, "o3": 76.12, "nh3": 0.07, "no2": 0.7, "so2": 0.1, "pm10": 0.8, "pm2_5": 0.67}}, {"dt": 1744048800, "main": {"aqi": 2}, "components": {"co": 136.71, "no": 0.01, "o3": 81.84, "nh3": 0.05, "no2": 0.52, "so2": 0.12, "pm10": 1.13, "pm2_5": 0.91}}, {"dt": 1744052400, "main": {"aqi": 2}, "components": {"co": 137.6, "no": 0.01, "o3": 86.54, "nh3": 0.04, "no2": 0.37, "so2": 0.11, "pm10": 1.05, "pm2_5": 0.82}}, {"dt": 1744056000, "main": {"aqi": 2}, "components": {"co": 138.73, "no": 0.02, "o3": 87.44, "nh3": 0.04, "no2": 0.34, "so2": 0.1, "pm10": 0.84, "pm2_5": 0.67}}, {"dt": 1744059600, "main": {"aqi": 2}, "components": {"co": 140.15, "no": 0.02, "o3": 87.17, "nh3": 0.04, "no2": 0.33, "so2": 0.09, "pm10": 0.68, "pm2_5": 0.51}}, {"dt": 1744063200, "main": {"aqi": 2}, "components": {"co": 140.81, "no": 0.02, "o3": 87.01, "nh3": 0.04, "no2": 0.31, "so2": 0.1, "pm10": 0.68, "pm2_5": 0.5}}, {"dt": 1744066800, "main": {"aqi": 2}, "components": {"co": 140.7, "no": 0.03, "o3": 88.58, "nh3": 0.05, "no2": 0.3, "so2": 0.12, "pm10": 0.88, "pm2_5": 0.52}}, {"dt": 1744070400, "main": {"aqi": 2}, "components": {"co": 140.05, "no": 0.03, "o3": 90.85, "nh3": 0.05, "no2": 0.31, "so2": 0.13, "pm10": 1, "pm2_5": 0.55}}, {"dt": 1744074000, "main": {"aqi": 2}, "components": {"co": 140.67, "no": 0.03, "o3": 92.53, "nh3": 0.07, "no2": 0.36, "so2": 0.13, "pm10": 1.05, "pm2_5": 0.54}}, {"dt": 1744077600, "main": {"aqi": 2}, "components": {"co": 140.9, "no": 0.01, "o3": 92.22, "nh3": 0.09, "no2": 0.46, "so2": 0.14, "pm10": 1.01, "pm2_5": 0.5}}, {"dt": 1744081200, "main": {"aqi": 2}, "components": {"co": 141.69, "no": 0, "o3": 92.14, "nh3": 0.1, "no2": 0.5, "so2": 0.14, "pm10": 0.95, "pm2_5": 0.5}}, {"dt": 1744084800, "main": {"aqi": 2}, "components": {"co": 140.79, "no": 0, "o3": 91.8, "nh3": 0.12, "no2": 0.46, "so2": 0.13, "pm10": 0.9, "pm2_5": 0.5}}, {"dt": 1744088400, "main": {"aqi": 2}, "components": {"co": 140.95, "no": 0, "o3": 92.14, "nh3": 0.13, "no2": 0.42, "so2": 0.12, "pm10": 0.81, "pm2_5": 0.5}}, {"dt": 1744092000, "main": {"aqi": 2}, "components": {"co": 141.66, "no": 0, "o3": 92.24, "nh3": 0.14, "no2": 0.4, "so2": 0.1, "pm10": 0.68, "pm2_5": 0.5}}, {"dt": 1744095600, "main": {"aqi": 2}, "components": {"co": 141.76, "no": 0, "o3": 91.13, "nh3": 0.15, "no2": 0.38, "so2": 0.09, "pm10": 0.58, "pm2_5": 0.5}}]
16	2025-04-20 11:49:58.944325-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1744095600, "main": {"aqi": 2}, "components": {"co": 141.76, "no": 0, "o3": 91.13, "nh3": 0.15, "no2": 0.38, "so2": 0.09, "pm10": 0.58, "pm2_5": 0.5}}, {"dt": 1744099200, "main": {"aqi": 2}, "components": {"co": 141.25, "no": 0, "o3": 89.74, "nh3": 0.15, "no2": 0.35, "so2": 0.09, "pm10": 0.57, "pm2_5": 0.5}}, {"dt": 1744102800, "main": {"aqi": 2}, "components": {"co": 140.74, "no": 0, "o3": 88.59, "nh3": 0.15, "no2": 0.32, "so2": 0.09, "pm10": 0.63, "pm2_5": 0.5}}, {"dt": 1744106400, "main": {"aqi": 2}, "components": {"co": 140.53, "no": 0, "o3": 86.98, "nh3": 0.15, "no2": 0.3, "so2": 0.09, "pm10": 0.73, "pm2_5": 0.5}}, {"dt": 1744110000, "main": {"aqi": 2}, "components": {"co": 140.06, "no": 0, "o3": 84.67, "nh3": 0.17, "no2": 0.3, "so2": 0.09, "pm10": 0.83, "pm2_5": 0.5}}, {"dt": 1744113600, "main": {"aqi": 2}, "components": {"co": 139.59, "no": 0, "o3": 83.07, "nh3": 0.17, "no2": 0.3, "so2": 0.09, "pm10": 0.9, "pm2_5": 0.5}}, {"dt": 1744117200, "main": {"aqi": 2}, "components": {"co": 138.64, "no": 0, "o3": 82.53, "nh3": 0.18, "no2": 0.31, "so2": 0.09, "pm10": 0.89, "pm2_5": 0.5}}, {"dt": 1744120800, "main": {"aqi": 2}, "components": {"co": 138.6, "no": 0, "o3": 83.05, "nh3": 0.18, "no2": 0.38, "so2": 0.08, "pm10": 0.79, "pm2_5": 0.5}}, {"dt": 1744124400, "main": {"aqi": 2}, "components": {"co": 139.66, "no": 0, "o3": 83.8, "nh3": 0.2, "no2": 0.54, "so2": 0.09, "pm10": 0.74, "pm2_5": 0.5}}, {"dt": 1744128000, "main": {"aqi": 2}, "components": {"co": 141.04, "no": 0.01, "o3": 85.05, "nh3": 0.18, "no2": 0.68, "so2": 0.13, "pm10": 0.8, "pm2_5": 0.5}}, {"dt": 1744131600, "main": {"aqi": 2}, "components": {"co": 141.38, "no": 0.01, "o3": 84.45, "nh3": 0.16, "no2": 0.72, "so2": 0.15, "pm10": 0.97, "pm2_5": 0.51}}, {"dt": 1744135200, "main": {"aqi": 2}, "components": {"co": 141.18, "no": 0.02, "o3": 84.33, "nh3": 0.14, "no2": 0.68, "so2": 0.16, "pm10": 1.19, "pm2_5": 0.64}}, {"dt": 1744138800, "main": {"aqi": 2}, "components": {"co": 141.53, "no": 0.02, "o3": 85.38, "nh3": 0.11, "no2": 0.58, "so2": 0.18, "pm10": 1.32, "pm2_5": 0.72}}, {"dt": 1744142400, "main": {"aqi": 2}, "components": {"co": 140.8, "no": 0.02, "o3": 86.44, "nh3": 0.09, "no2": 0.5, "so2": 0.2, "pm10": 1.29, "pm2_5": 0.75}}, {"dt": 1744146000, "main": {"aqi": 2}, "components": {"co": 140.08, "no": 0.03, "o3": 86.56, "nh3": 0.07, "no2": 0.47, "so2": 0.21, "pm10": 1.33, "pm2_5": 0.83}}, {"dt": 1744149600, "main": {"aqi": 2}, "components": {"co": 140.61, "no": 0.02, "o3": 87.49, "nh3": 0.06, "no2": 0.48, "so2": 0.21, "pm10": 1.46, "pm2_5": 0.96}}, {"dt": 1744153200, "main": {"aqi": 2}, "components": {"co": 140.23, "no": 0.02, "o3": 88.28, "nh3": 0.06, "no2": 0.51, "so2": 0.19, "pm10": 1.39, "pm2_5": 0.97}}, {"dt": 1744156800, "main": {"aqi": 2}, "components": {"co": 139.84, "no": 0.01, "o3": 88.85, "nh3": 0.05, "no2": 0.57, "so2": 0.17, "pm10": 1.2, "pm2_5": 0.91}}, {"dt": 1744160400, "main": {"aqi": 2}, "components": {"co": 138.95, "no": 0.01, "o3": 87.34, "nh3": 0.05, "no2": 0.62, "so2": 0.16, "pm10": 1.08, "pm2_5": 0.88}}, {"dt": 1744164000, "main": {"aqi": 2}, "components": {"co": 139.45, "no": 0, "o3": 84.21, "nh3": 0.06, "no2": 0.68, "so2": 0.15, "pm10": 1.16, "pm2_5": 0.96}}, {"dt": 1744167600, "main": {"aqi": 2}, "components": {"co": 139.41, "no": 0, "o3": 81.07, "nh3": 0.07, "no2": 0.67, "so2": 0.15, "pm10": 1.25, "pm2_5": 1.01}}, {"dt": 1744171200, "main": {"aqi": 2}, "components": {"co": 138.46, "no": 0, "o3": 77.4, "nh3": 0.08, "no2": 0.63, "so2": 0.14, "pm10": 1.24, "pm2_5": 1}}, {"dt": 1744174800, "main": {"aqi": 2}, "components": {"co": 137.71, "no": 0, "o3": 73.92, "nh3": 0.09, "no2": 0.61, "so2": 0.13, "pm10": 1.23, "pm2_5": 0.99}}, {"dt": 1744178400, "main": {"aqi": 2}, "components": {"co": 137.22, "no": 0, "o3": 70.9, "nh3": 0.1, "no2": 0.63, "so2": 0.12, "pm10": 1.28, "pm2_5": 1.03}}, {"dt": 1744182000, "main": {"aqi": 2}, "components": {"co": 136.45, "no": 0, "o3": 66.93, "nh3": 0.12, "no2": 0.63, "so2": 0.12, "pm10": 1.38, "pm2_5": 1.1}}]
17	2025-04-20 11:50:00.148503-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1744182000, "main": {"aqi": 2}, "components": {"co": 136.45, "no": 0, "o3": 66.93, "nh3": 0.12, "no2": 0.63, "so2": 0.12, "pm10": 1.38, "pm2_5": 1.1}}, {"dt": 1744185600, "main": {"aqi": 2}, "components": {"co": 135.12, "no": 0, "o3": 62.96, "nh3": 0.13, "no2": 0.59, "so2": 0.11, "pm10": 1.49, "pm2_5": 1.17}}, {"dt": 1744189200, "main": {"aqi": 1}, "components": {"co": 133.51, "no": 0, "o3": 59.33, "nh3": 0.15, "no2": 0.52, "so2": 0.11, "pm10": 1.57, "pm2_5": 1.22}}, {"dt": 1744192800, "main": {"aqi": 1}, "components": {"co": 128.6, "no": 0, "o3": 45.71, "nh3": 0.22, "no2": 0.48, "so2": 0.08, "pm10": 1.58, "pm2_5": 1.24}}, {"dt": 1744196400, "main": {"aqi": 1}, "components": {"co": 120.68, "no": 0, "o3": 28.56, "nh3": 0.26, "no2": 0.44, "so2": 0.05, "pm10": 1.55, "pm2_5": 1.23}}, {"dt": 1744200000, "main": {"aqi": 1}, "components": {"co": 113.58, "no": 0, "o3": 18.11, "nh3": 0.28, "no2": 0.44, "so2": 0.04, "pm10": 1.51, "pm2_5": 1.21}}, {"dt": 1744203600, "main": {"aqi": 1}, "components": {"co": 109.46, "no": 0.01, "o3": 12.7, "nh3": 0.29, "no2": 0.52, "so2": 0.04, "pm10": 1.5, "pm2_5": 1.19}}, {"dt": 1744207200, "main": {"aqi": 1}, "components": {"co": 111.89, "no": 0.05, "o3": 10.96, "nh3": 0.27, "no2": 0.89, "so2": 0.03, "pm10": 1.54, "pm2_5": 1.21}}, {"dt": 1744210800, "main": {"aqi": 1}, "components": {"co": 121.72, "no": 0.1, "o3": 14.66, "nh3": 0.24, "no2": 1.47, "so2": 0.04, "pm10": 1.65, "pm2_5": 1.26}}, {"dt": 1744214400, "main": {"aqi": 2}, "components": {"co": 135.97, "no": 0.03, "o3": 63.32, "nh3": 0.11, "no2": 0.79, "so2": 0.1, "pm10": 2.32, "pm2_5": 1.41}}, {"dt": 1744218000, "main": {"aqi": 2}, "components": {"co": 136.57, "no": 0.05, "o3": 67.99, "nh3": 0.1, "no2": 0.69, "so2": 0.09, "pm10": 2.14, "pm2_5": 1.28}}, {"dt": 1744221600, "main": {"aqi": 2}, "components": {"co": 135.81, "no": 0.06, "o3": 70.31, "nh3": 0.11, "no2": 0.6, "so2": 0.08, "pm10": 1.88, "pm2_5": 1.14}}, {"dt": 1744225200, "main": {"aqi": 2}, "components": {"co": 136.19, "no": 0.05, "o3": 74.96, "nh3": 0.11, "no2": 0.48, "so2": 0.07, "pm10": 1.66, "pm2_5": 1.01}}, {"dt": 1744228800, "main": {"aqi": 2}, "components": {"co": 135.3, "no": 0.04, "o3": 78.47, "nh3": 0.12, "no2": 0.37, "so2": 0.05, "pm10": 1.33, "pm2_5": 0.81}}, {"dt": 1744232400, "main": {"aqi": 2}, "components": {"co": 133.87, "no": 0.04, "o3": 80.81, "nh3": 0.12, "no2": 0.31, "so2": 0.04, "pm10": 1.09, "pm2_5": 0.66}}, {"dt": 1744236000, "main": {"aqi": 2}, "components": {"co": 133.88, "no": 0.03, "o3": 83.41, "nh3": 0.12, "no2": 0.28, "so2": 0.04, "pm10": 0.96, "pm2_5": 0.57}}, {"dt": 1744239600, "main": {"aqi": 2}, "components": {"co": 133.17, "no": 0.03, "o3": 84, "nh3": 0.14, "no2": 0.29, "so2": 0.04, "pm10": 0.9, "pm2_5": 0.52}}, {"dt": 1744243200, "main": {"aqi": 2}, "components": {"co": 133.27, "no": 0.03, "o3": 83.89, "nh3": 0.15, "no2": 0.35, "so2": 0.04, "pm10": 0.88, "pm2_5": 0.5}}, {"dt": 1744246800, "main": {"aqi": 2}, "components": {"co": 137.07, "no": 0.04, "o3": 79.71, "nh3": 0.24, "no2": 0.67, "so2": 0.04, "pm10": 0.95, "pm2_5": 0.55}}, {"dt": 1744250400, "main": {"aqi": 2}, "components": {"co": 142.73, "no": 0.02, "o3": 72.76, "nh3": 0.33, "no2": 1.18, "so2": 0.06, "pm10": 1.18, "pm2_5": 0.72}}, {"dt": 1744254000, "main": {"aqi": 2}, "components": {"co": 147.36, "no": 0, "o3": 68.28, "nh3": 0.26, "no2": 1.5, "so2": 0.08, "pm10": 1.58, "pm2_5": 0.98}}, {"dt": 1744257600, "main": {"aqi": 1}, "components": {"co": 146.31, "no": 0, "o3": 53, "nh3": 0.19, "no2": 1.73, "so2": 0.07, "pm10": 1.95, "pm2_5": 1.22}}, {"dt": 1744261200, "main": {"aqi": 1}, "components": {"co": 144.99, "no": 0, "o3": 35.64, "nh3": 0.22, "no2": 1.85, "so2": 0.04, "pm10": 2.17, "pm2_5": 1.38}}, {"dt": 1744264800, "main": {"aqi": 1}, "components": {"co": 142.57, "no": 0.01, "o3": 24.97, "nh3": 0.31, "no2": 1.84, "so2": 0.03, "pm10": 2.27, "pm2_5": 1.47}}, {"dt": 1744268400, "main": {"aqi": 1}, "components": {"co": 137.64, "no": 0.01, "o3": 19.13, "nh3": 0.38, "no2": 1.69, "so2": 0.03, "pm10": 2.19, "pm2_5": 1.5}}]
18	2025-04-20 11:50:01.347201-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1744268400, "main": {"aqi": 1}, "components": {"co": 137.64, "no": 0.01, "o3": 19.13, "nh3": 0.38, "no2": 1.69, "so2": 0.03, "pm10": 2.19, "pm2_5": 1.5}}, {"dt": 1744272000, "main": {"aqi": 1}, "components": {"co": 132.39, "no": 0.01, "o3": 15.57, "nh3": 0.33, "no2": 1.39, "so2": 0.03, "pm10": 2.04, "pm2_5": 1.49}}, {"dt": 1744275600, "main": {"aqi": 1}, "components": {"co": 126.57, "no": 0.01, "o3": 13.3, "nh3": 0.28, "no2": 1.1, "so2": 0.03, "pm10": 1.88, "pm2_5": 1.44}}, {"dt": 1744279200, "main": {"aqi": 1}, "components": {"co": 120.64, "no": 0.01, "o3": 12.04, "nh3": 0.26, "no2": 0.91, "so2": 0.02, "pm10": 1.53, "pm2_5": 1.28}}, {"dt": 1744282800, "main": {"aqi": 1}, "components": {"co": 116.55, "no": 0.01, "o3": 12.84, "nh3": 0.25, "no2": 0.8, "so2": 0.03, "pm10": 1.41, "pm2_5": 1.17}}, {"dt": 1744286400, "main": {"aqi": 1}, "components": {"co": 114.1, "no": 0, "o3": 15.87, "nh3": 0.27, "no2": 0.75, "so2": 0.03, "pm10": 1.42, "pm2_5": 1.15}}, {"dt": 1744290000, "main": {"aqi": 1}, "components": {"co": 116.02, "no": 0, "o3": 22.2, "nh3": 0.25, "no2": 0.79, "so2": 0.04, "pm10": 1.7, "pm2_5": 1.27}}, {"dt": 1744293600, "main": {"aqi": 1}, "components": {"co": 123.12, "no": 0.01, "o3": 25.85, "nh3": 0.23, "no2": 1.15, "so2": 0.05, "pm10": 1.91, "pm2_5": 1.39}}, {"dt": 1744297200, "main": {"aqi": 1}, "components": {"co": 132.96, "no": 0.03, "o3": 28.43, "nh3": 0.22, "no2": 1.71, "so2": 0.05, "pm10": 2.05, "pm2_5": 1.47}}, {"dt": 1744300800, "main": {"aqi": 1}, "components": {"co": 138.6, "no": 0.16, "o3": 32.35, "nh3": 0.2, "no2": 1.85, "so2": 0.05, "pm10": 2.17, "pm2_5": 1.49}}, {"dt": 1744304400, "main": {"aqi": 1}, "components": {"co": 139.19, "no": 0.35, "o3": 31.92, "nh3": 0.24, "no2": 1.7, "so2": 0.05, "pm10": 2.2, "pm2_5": 1.43}}, {"dt": 1744308000, "main": {"aqi": 1}, "components": {"co": 137.58, "no": 0.4, "o3": 37.96, "nh3": 0.38, "no2": 1.31, "so2": 0.05, "pm10": 2.08, "pm2_5": 1.29}}, {"dt": 1744311600, "main": {"aqi": 2}, "components": {"co": 137.74, "no": 0.04, "o3": 74.88, "nh3": 0.18, "no2": 0.55, "so2": 0.04, "pm10": 1.13, "pm2_5": 0.67}}, {"dt": 1744315200, "main": {"aqi": 2}, "components": {"co": 137.8, "no": 0.03, "o3": 76.52, "nh3": 0.15, "no2": 0.43, "so2": 0.03, "pm10": 0.76, "pm2_5": 0.52}}, {"dt": 1744318800, "main": {"aqi": 2}, "components": {"co": 136.78, "no": 0.03, "o3": 74.94, "nh3": 0.12, "no2": 0.36, "so2": 0.03, "pm10": 0.61, "pm2_5": 0.5}}, {"dt": 1744322400, "main": {"aqi": 2}, "components": {"co": 135.52, "no": 0.02, "o3": 73.29, "nh3": 0.08, "no2": 0.36, "so2": 0.04, "pm10": 0.58, "pm2_5": 0.51}}, {"dt": 1744326000, "main": {"aqi": 2}, "components": {"co": 135.63, "no": 0.01, "o3": 72.25, "nh3": 0.06, "no2": 0.45, "so2": 0.05, "pm10": 0.73, "pm2_5": 0.68}}, {"dt": 1744329600, "main": {"aqi": 2}, "components": {"co": 136, "no": 0.01, "o3": 70.97, "nh3": 0.04, "no2": 0.62, "so2": 0.09, "pm10": 1.18, "pm2_5": 1.09}}, {"dt": 1744333200, "main": {"aqi": 2}, "components": {"co": 134.38, "no": 0.01, "o3": 67.52, "nh3": 0.03, "no2": 0.81, "so2": 0.13, "pm10": 1.89, "pm2_5": 1.71}}, {"dt": 1744336800, "main": {"aqi": 2}, "components": {"co": 134.55, "no": 0, "o3": 64.46, "nh3": 0.04, "no2": 0.99, "so2": 0.18, "pm10": 2.82, "pm2_5": 2.4}}, {"dt": 1744340400, "main": {"aqi": 2}, "components": {"co": 134.46, "no": 0, "o3": 62.8, "nh3": 0.04, "no2": 1.05, "so2": 0.21, "pm10": 3.55, "pm2_5": 2.89}}, {"dt": 1744344000, "main": {"aqi": 2}, "components": {"co": 132.53, "no": 0, "o3": 61.28, "nh3": 0.05, "no2": 0.97, "so2": 0.2, "pm10": 3.67, "pm2_5": 2.85}}, {"dt": 1744347600, "main": {"aqi": 2}, "components": {"co": 132.08, "no": 0, "o3": 60.85, "nh3": 0.07, "no2": 0.88, "so2": 0.18, "pm10": 3.61, "pm2_5": 2.59}}, {"dt": 1744351200, "main": {"aqi": 2}, "components": {"co": 132.46, "no": 0, "o3": 61.37, "nh3": 0.09, "no2": 0.81, "so2": 0.17, "pm10": 3.65, "pm2_5": 2.46}}, {"dt": 1744354800, "main": {"aqi": 1}, "components": {"co": 130.6, "no": 0, "o3": 52.9, "nh3": 0.23, "no2": 0.87, "so2": 0.13, "pm10": 3.53, "pm2_5": 2.37}}]
19	2025-04-20 11:50:02.578156-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1744354800, "main": {"aqi": 1}, "components": {"co": 130.6, "no": 0, "o3": 52.9, "nh3": 0.23, "no2": 0.87, "so2": 0.13, "pm10": 3.53, "pm2_5": 2.37}}, {"dt": 1744358400, "main": {"aqi": 1}, "components": {"co": 126.49, "no": 0, "o3": 44.29, "nh3": 0.53, "no2": 0.92, "so2": 0.12, "pm10": 3.41, "pm2_5": 2.32}}, {"dt": 1744362000, "main": {"aqi": 1}, "components": {"co": 122.94, "no": 0, "o3": 43.36, "nh3": 0.92, "no2": 0.94, "so2": 0.13, "pm10": 3.31, "pm2_5": 2.25}}, {"dt": 1744365600, "main": {"aqi": 1}, "components": {"co": 121.88, "no": 0, "o3": 45.14, "nh3": 1.22, "no2": 0.95, "so2": 0.15, "pm10": 3.21, "pm2_5": 2.17}}, {"dt": 1744369200, "main": {"aqi": 1}, "components": {"co": 118.91, "no": 0, "o3": 40.67, "nh3": 0.97, "no2": 0.8, "so2": 0.13, "pm10": 3.08, "pm2_5": 2.08}}, {"dt": 1744372800, "main": {"aqi": 1}, "components": {"co": 120.07, "no": 0, "o3": 39.75, "nh3": 0.52, "no2": 0.69, "so2": 0.11, "pm10": 2.85, "pm2_5": 1.92}}, {"dt": 1744376400, "main": {"aqi": 1}, "components": {"co": 126.5, "no": 0, "o3": 49.01, "nh3": 0.23, "no2": 0.64, "so2": 0.13, "pm10": 2.53, "pm2_5": 1.6}}, {"dt": 1744380000, "main": {"aqi": 1}, "components": {"co": 130.2, "no": 0, "o3": 50.94, "nh3": 0.21, "no2": 0.83, "so2": 0.15, "pm10": 2.35, "pm2_5": 1.38}}, {"dt": 1744383600, "main": {"aqi": 1}, "components": {"co": 135.3, "no": 0.01, "o3": 52.17, "nh3": 0.21, "no2": 1.21, "so2": 0.17, "pm10": 2.32, "pm2_5": 1.27}}, {"dt": 1744387200, "main": {"aqi": 1}, "components": {"co": 138.27, "no": 0.04, "o3": 54.99, "nh3": 0.18, "no2": 1.38, "so2": 0.2, "pm10": 2.15, "pm2_5": 1.15}}, {"dt": 1744390800, "main": {"aqi": 1}, "components": {"co": 138.85, "no": 0.08, "o3": 58.44, "nh3": 0.14, "no2": 1.3, "so2": 0.2, "pm10": 1.83, "pm2_5": 1.01}}, {"dt": 1744394400, "main": {"aqi": 2}, "components": {"co": 138.88, "no": 0.1, "o3": 62.36, "nh3": 0.11, "no2": 1.14, "so2": 0.19, "pm10": 1.58, "pm2_5": 0.91}}, {"dt": 1744398000, "main": {"aqi": 2}, "components": {"co": 138.2, "no": 0.1, "o3": 68.29, "nh3": 0.09, "no2": 0.86, "so2": 0.16, "pm10": 1.34, "pm2_5": 0.8}}, {"dt": 1744401600, "main": {"aqi": 2}, "components": {"co": 136.81, "no": 0.08, "o3": 71.77, "nh3": 0.11, "no2": 0.7, "so2": 0.13, "pm10": 1.15, "pm2_5": 0.7}}, {"dt": 1744405200, "main": {"aqi": 2}, "components": {"co": 135.7, "no": 0.06, "o3": 74.5, "nh3": 0.12, "no2": 0.63, "so2": 0.13, "pm10": 1.04, "pm2_5": 0.63}}, {"dt": 1744408800, "main": {"aqi": 2}, "components": {"co": 136.46, "no": 0.06, "o3": 79.92, "nh3": 0.12, "no2": 0.49, "so2": 0.12, "pm10": 0.99, "pm2_5": 0.55}}, {"dt": 1744412400, "main": {"aqi": 2}, "components": {"co": 135.56, "no": 0.04, "o3": 84.06, "nh3": 0.12, "no2": 0.42, "so2": 0.12, "pm10": 0.98, "pm2_5": 0.5}}, {"dt": 1744416000, "main": {"aqi": 2}, "components": {"co": 135.47, "no": 0.03, "o3": 86.56, "nh3": 0.12, "no2": 0.43, "so2": 0.13, "pm10": 1.07, "pm2_5": 0.5}}, {"dt": 1744419600, "main": {"aqi": 2}, "components": {"co": 136.91, "no": 0.03, "o3": 88.19, "nh3": 0.14, "no2": 0.51, "so2": 0.17, "pm10": 1.5, "pm2_5": 0.58}}, {"dt": 1744423200, "main": {"aqi": 2}, "components": {"co": 139.61, "no": 0.02, "o3": 89.4, "nh3": 0.17, "no2": 0.59, "so2": 0.21, "pm10": 2.18, "pm2_5": 0.72}}, {"dt": 1744426800, "main": {"aqi": 2}, "components": {"co": 142.06, "no": 0, "o3": 92.03, "nh3": 0.17, "no2": 0.59, "so2": 0.25, "pm10": 2.78, "pm2_5": 0.82}}, {"dt": 1744430400, "main": {"aqi": 2}, "components": {"co": 142.11, "no": 0, "o3": 92.9, "nh3": 0.15, "no2": 0.52, "so2": 0.26, "pm10": 3.2, "pm2_5": 0.88}}, {"dt": 1744434000, "main": {"aqi": 2}, "components": {"co": 143.62, "no": 0, "o3": 94.58, "nh3": 0.14, "no2": 0.49, "so2": 0.26, "pm10": 3.43, "pm2_5": 0.91}}, {"dt": 1744437600, "main": {"aqi": 2}, "components": {"co": 145.13, "no": 0, "o3": 96.04, "nh3": 0.14, "no2": 0.49, "so2": 0.26, "pm10": 3.43, "pm2_5": 0.9}}, {"dt": 1744441200, "main": {"aqi": 2}, "components": {"co": 144.82, "no": 0, "o3": 95.73, "nh3": 0.14, "no2": 0.47, "so2": 0.24, "pm10": 3.2, "pm2_5": 0.83}}]
20	2025-04-20 11:50:03.77683-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1744441200, "main": {"aqi": 2}, "components": {"co": 144.82, "no": 0, "o3": 95.73, "nh3": 0.14, "no2": 0.47, "so2": 0.24, "pm10": 3.2, "pm2_5": 0.83}}, {"dt": 1744444800, "main": {"aqi": 2}, "components": {"co": 144.37, "no": 0, "o3": 95.79, "nh3": 0.13, "no2": 0.41, "so2": 0.23, "pm10": 2.87, "pm2_5": 0.74}}, {"dt": 1744448400, "main": {"aqi": 2}, "components": {"co": 143.35, "no": 0, "o3": 95.38, "nh3": 0.13, "no2": 0.35, "so2": 0.21, "pm10": 2.5, "pm2_5": 0.65}}, {"dt": 1744452000, "main": {"aqi": 2}, "components": {"co": 142.87, "no": 0, "o3": 94.47, "nh3": 0.13, "no2": 0.31, "so2": 0.2, "pm10": 2.1, "pm2_5": 0.54}}, {"dt": 1744455600, "main": {"aqi": 2}, "components": {"co": 142.63, "no": 0, "o3": 93.79, "nh3": 0.13, "no2": 0.28, "so2": 0.19, "pm10": 1.76, "pm2_5": 0.5}}, {"dt": 1744459200, "main": {"aqi": 2}, "components": {"co": 142.96, "no": 0, "o3": 93.1, "nh3": 0.14, "no2": 0.28, "so2": 0.18, "pm10": 1.49, "pm2_5": 0.5}}, {"dt": 1744462800, "main": {"aqi": 2}, "components": {"co": 143.57, "no": 0, "o3": 93.61, "nh3": 0.12, "no2": 0.27, "so2": 0.17, "pm10": 1.23, "pm2_5": 0.5}}, {"dt": 1744466400, "main": {"aqi": 2}, "components": {"co": 143.62, "no": 0, "o3": 94.36, "nh3": 0.11, "no2": 0.29, "so2": 0.16, "pm10": 1.05, "pm2_5": 0.5}}, {"dt": 1744470000, "main": {"aqi": 2}, "components": {"co": 144.8, "no": 0.01, "o3": 94.16, "nh3": 0.11, "no2": 0.39, "so2": 0.15, "pm10": 0.93, "pm2_5": 0.5}}, {"dt": 1744473600, "main": {"aqi": 2}, "components": {"co": 144.57, "no": 0.04, "o3": 93.53, "nh3": 0.12, "no2": 0.4, "so2": 0.15, "pm10": 0.84, "pm2_5": 0.5}}, {"dt": 1744477200, "main": {"aqi": 2}, "components": {"co": 142.93, "no": 0.05, "o3": 92.72, "nh3": 0.13, "no2": 0.39, "so2": 0.14, "pm10": 0.69, "pm2_5": 0.5}}, {"dt": 1744480800, "main": {"aqi": 2}, "components": {"co": 141.31, "no": 0.04, "o3": 91.67, "nh3": 0.13, "no2": 0.38, "so2": 0.14, "pm10": 0.54, "pm2_5": 0.5}}, {"dt": 1744484400, "main": {"aqi": 2}, "components": {"co": 141.41, "no": 0.04, "o3": 91.62, "nh3": 0.13, "no2": 0.35, "so2": 0.13, "pm10": 0.5, "pm2_5": 0.5}}, {"dt": 1744488000, "main": {"aqi": 2}, "components": {"co": 140.47, "no": 0.04, "o3": 90.42, "nh3": 0.13, "no2": 0.32, "so2": 0.12, "pm10": 0.5, "pm2_5": 0.5}}, {"dt": 1744491600, "main": {"aqi": 2}, "components": {"co": 139.53, "no": 0.04, "o3": 88.99, "nh3": 0.14, "no2": 0.3, "so2": 0.11, "pm10": 0.5, "pm2_5": 0.5}}, {"dt": 1744495200, "main": {"aqi": 2}, "components": {"co": 140.06, "no": 0.04, "o3": 88.57, "nh3": 0.14, "no2": 0.29, "so2": 0.11, "pm10": 0.5, "pm2_5": 0.5}}, {"dt": 1744498800, "main": {"aqi": 2}, "components": {"co": 139.86, "no": 0.04, "o3": 87.27, "nh3": 0.15, "no2": 0.32, "so2": 0.11, "pm10": 0.5, "pm2_5": 0.5}}, {"dt": 1744502400, "main": {"aqi": 2}, "components": {"co": 139.66, "no": 0.04, "o3": 85.98, "nh3": 0.17, "no2": 0.38, "so2": 0.11, "pm10": 0.5, "pm2_5": 0.5}}, {"dt": 1744506000, "main": {"aqi": 2}, "components": {"co": 141.67, "no": 0.04, "o3": 80.87, "nh3": 0.26, "no2": 0.64, "so2": 0.12, "pm10": 0.5, "pm2_5": 0.5}}, {"dt": 1744509600, "main": {"aqi": 2}, "components": {"co": 143.14, "no": 0.03, "o3": 72.39, "nh3": 0.41, "no2": 1.06, "so2": 0.13, "pm10": 0.5, "pm2_5": 0.5}}, {"dt": 1744513200, "main": {"aqi": 2}, "components": {"co": 144.07, "no": 0, "o3": 66.22, "nh3": 0.52, "no2": 1.36, "so2": 0.14, "pm10": 0.5, "pm2_5": 0.5}}, {"dt": 1744516800, "main": {"aqi": 2}, "components": {"co": 143.47, "no": 0, "o3": 61.02, "nh3": 0.55, "no2": 1.5, "so2": 0.15, "pm10": 0.58, "pm2_5": 0.5}}, {"dt": 1744520400, "main": {"aqi": 1}, "components": {"co": 144.64, "no": 0, "o3": 59.02, "nh3": 0.46, "no2": 1.58, "so2": 0.17, "pm10": 0.66, "pm2_5": 0.5}}, {"dt": 1744524000, "main": {"aqi": 2}, "components": {"co": 145.82, "no": 0, "o3": 60.23, "nh3": 0.33, "no2": 1.59, "so2": 0.19, "pm10": 0.75, "pm2_5": 0.5}}, {"dt": 1744527600, "main": {"aqi": 2}, "components": {"co": 144.5, "no": 0, "o3": 63.6, "nh3": 0.25, "no2": 1.46, "so2": 0.22, "pm10": 0.8, "pm2_5": 0.5}}]
21	2025-04-20 11:50:04.980897-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1744527600, "main": {"aqi": 2}, "components": {"co": 144.5, "no": 0, "o3": 63.6, "nh3": 0.25, "no2": 1.46, "so2": 0.22, "pm10": 0.8, "pm2_5": 0.5}}, {"dt": 1744531200, "main": {"aqi": 2}, "components": {"co": 145.14, "no": 0, "o3": 66.75, "nh3": 0.27, "no2": 1.42, "so2": 0.25, "pm10": 0.89, "pm2_5": 0.5}}, {"dt": 1744534800, "main": {"aqi": 2}, "components": {"co": 146.34, "no": 0, "o3": 69.42, "nh3": 0.31, "no2": 1.44, "so2": 0.29, "pm10": 1, "pm2_5": 0.5}}, {"dt": 1744538400, "main": {"aqi": 2}, "components": {"co": 147.04, "no": 0, "o3": 71.89, "nh3": 0.3, "no2": 1.42, "so2": 0.31, "pm10": 1.07, "pm2_5": 0.5}}, {"dt": 1744542000, "main": {"aqi": 2}, "components": {"co": 148.37, "no": 0, "o3": 73.18, "nh3": 0.25, "no2": 1.4, "so2": 0.32, "pm10": 1.1, "pm2_5": 0.5}}, {"dt": 1744545600, "main": {"aqi": 2}, "components": {"co": 150.26, "no": 0, "o3": 74.01, "nh3": 0.21, "no2": 1.48, "so2": 0.36, "pm10": 1.15, "pm2_5": 0.5}}, {"dt": 1744549200, "main": {"aqi": 2}, "components": {"co": 151.45, "no": 0, "o3": 73.8, "nh3": 0.19, "no2": 1.61, "so2": 0.41, "pm10": 1.21, "pm2_5": 0.51}}, {"dt": 1744552800, "main": {"aqi": 2}, "components": {"co": 152.52, "no": 0, "o3": 72.81, "nh3": 0.19, "no2": 1.8, "so2": 0.47, "pm10": 1.26, "pm2_5": 0.53}}, {"dt": 1744556400, "main": {"aqi": 2}, "components": {"co": 153.58, "no": 0.11, "o3": 71.58, "nh3": 0.19, "no2": 2.3, "so2": 0.51, "pm10": 1.31, "pm2_5": 0.55}}, {"dt": 1744560000, "main": {"aqi": 2}, "components": {"co": 154.66, "no": 0.43, "o3": 68.92, "nh3": 0.24, "no2": 2.28, "so2": 0.57, "pm10": 1.38, "pm2_5": 0.59}}, {"dt": 1744563600, "main": {"aqi": 2}, "components": {"co": 154.08, "no": 0.63, "o3": 67.22, "nh3": 0.32, "no2": 2, "so2": 0.63, "pm10": 1.47, "pm2_5": 0.66}}, {"dt": 1744567200, "main": {"aqi": 2}, "components": {"co": 151.29, "no": 0.55, "o3": 69.56, "nh3": 0.36, "no2": 1.57, "so2": 0.67, "pm10": 1.66, "pm2_5": 0.86}}, {"dt": 1744570800, "main": {"aqi": 2}, "components": {"co": 149.69, "no": 0.34, "o3": 79.61, "nh3": 0.34, "no2": 1.09, "so2": 0.66, "pm10": 2.07, "pm2_5": 1.3}}, {"dt": 1744574400, "main": {"aqi": 2}, "components": {"co": 147.09, "no": 0.22, "o3": 83.28, "nh3": 0.35, "no2": 0.77, "so2": 0.58, "pm10": 2.62, "pm2_5": 1.88}}, {"dt": 1744578000, "main": {"aqi": 2}, "components": {"co": 145.05, "no": 0.15, "o3": 86.2, "nh3": 0.35, "no2": 0.58, "so2": 0.52, "pm10": 3.08, "pm2_5": 2.39}}, {"dt": 1744581600, "main": {"aqi": 2}, "components": {"co": 142.79, "no": 0.11, "o3": 93.17, "nh3": 0.32, "no2": 0.44, "so2": 0.46, "pm10": 3.14, "pm2_5": 2.44}}, {"dt": 1744585200, "main": {"aqi": 2}, "components": {"co": 140.85, "no": 0.09, "o3": 95.02, "nh3": 0.33, "no2": 0.42, "so2": 0.43, "pm10": 3.33, "pm2_5": 2.62}}, {"dt": 1744588800, "main": {"aqi": 2}, "components": {"co": 141.6, "no": 0.09, "o3": 94.8, "nh3": 0.36, "no2": 0.47, "so2": 0.42, "pm10": 3.65, "pm2_5": 2.93}}, {"dt": 1744592400, "main": {"aqi": 2}, "components": {"co": 144.91, "no": 0.09, "o3": 95.11, "nh3": 0.42, "no2": 0.62, "so2": 0.45, "pm10": 4.17, "pm2_5": 3.43}}, {"dt": 1744596000, "main": {"aqi": 2}, "components": {"co": 149.76, "no": 0.07, "o3": 94.78, "nh3": 0.52, "no2": 0.88, "so2": 0.51, "pm10": 4.76, "pm2_5": 4}}, {"dt": 1744599600, "main": {"aqi": 2}, "components": {"co": 153.56, "no": 0.01, "o3": 96.06, "nh3": 0.61, "no2": 1.19, "so2": 0.55, "pm10": 4.97, "pm2_5": 4.21}}, {"dt": 1744603200, "main": {"aqi": 2}, "components": {"co": 155.66, "no": 0, "o3": 95.67, "nh3": 0.72, "no2": 1.44, "so2": 0.58, "pm10": 4.75, "pm2_5": 4}}, {"dt": 1744606800, "main": {"aqi": 2}, "components": {"co": 159.28, "no": 0, "o3": 94.5, "nh3": 0.83, "no2": 1.76, "so2": 0.62, "pm10": 4.31, "pm2_5": 3.55}}, {"dt": 1744610400, "main": {"aqi": 2}, "components": {"co": 161.83, "no": 0, "o3": 92.4, "nh3": 0.9, "no2": 2.06, "so2": 0.64, "pm10": 3.74, "pm2_5": 2.96}}, {"dt": 1744614000, "main": {"aqi": 2}, "components": {"co": 162.78, "no": 0, "o3": 87.26, "nh3": 0.95, "no2": 2.26, "so2": 0.62, "pm10": 3.35, "pm2_5": 2.55}}]
22	2025-04-20 11:50:06.287443-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1744614000, "main": {"aqi": 2}, "components": {"co": 162.78, "no": 0, "o3": 87.26, "nh3": 0.95, "no2": 2.26, "so2": 0.62, "pm10": 3.35, "pm2_5": 2.55}}, {"dt": 1744617600, "main": {"aqi": 2}, "components": {"co": 164.3, "no": 0, "o3": 80.71, "nh3": 0.99, "no2": 2.42, "so2": 0.58, "pm10": 3.21, "pm2_5": 2.39}}, {"dt": 1744621200, "main": {"aqi": 2}, "components": {"co": 164.73, "no": 0, "o3": 73.65, "nh3": 1.01, "no2": 2.53, "so2": 0.54, "pm10": 3.16, "pm2_5": 2.3}}, {"dt": 1744624800, "main": {"aqi": 2}, "components": {"co": 163.46, "no": 0, "o3": 67.7, "nh3": 0.99, "no2": 2.53, "so2": 0.5, "pm10": 3.07, "pm2_5": 2.2}}, {"dt": 1744628400, "main": {"aqi": 2}, "components": {"co": 162.69, "no": 0, "o3": 63.6, "nh3": 0.93, "no2": 2.56, "so2": 0.47, "pm10": 3.05, "pm2_5": 2.15}}, {"dt": 1744632000, "main": {"aqi": 2}, "components": {"co": 161.91, "no": 0, "o3": 60.66, "nh3": 0.86, "no2": 2.59, "so2": 0.45, "pm10": 3.02, "pm2_5": 2.1}}, {"dt": 1744635600, "main": {"aqi": 1}, "components": {"co": 160.38, "no": 0, "o3": 58.34, "nh3": 0.83, "no2": 2.62, "so2": 0.44, "pm10": 2.96, "pm2_5": 2.02}}, {"dt": 1744639200, "main": {"aqi": 1}, "components": {"co": 160.84, "no": 0, "o3": 57.48, "nh3": 0.88, "no2": 2.77, "so2": 0.45, "pm10": 2.91, "pm2_5": 1.92}}, {"dt": 1744642800, "main": {"aqi": 1}, "components": {"co": 164.6, "no": 0.19, "o3": 58.04, "nh3": 0.93, "no2": 3.1, "so2": 0.47, "pm10": 2.88, "pm2_5": 1.85}}, {"dt": 1744646400, "main": {"aqi": 1}, "components": {"co": 167.1, "no": 0.61, "o3": 58.58, "nh3": 1.05, "no2": 2.75, "so2": 0.49, "pm10": 2.86, "pm2_5": 1.79}}, {"dt": 1744650000, "main": {"aqi": 1}, "components": {"co": 165.58, "no": 0.75, "o3": 59.45, "nh3": 1.15, "no2": 2.24, "so2": 0.53, "pm10": 2.87, "pm2_5": 1.76}}, {"dt": 1744653600, "main": {"aqi": 2}, "components": {"co": 161.92, "no": 0.59, "o3": 63.4, "nh3": 1.15, "no2": 1.65, "so2": 0.56, "pm10": 3.03, "pm2_5": 1.9}}, {"dt": 1744657200, "main": {"aqi": 2}, "components": {"co": 156.3, "no": 0.31, "o3": 85.96, "nh3": 1.16, "no2": 1.16, "so2": 0.51, "pm10": 3.52, "pm2_5": 2.29}}, {"dt": 1744660800, "main": {"aqi": 2}, "components": {"co": 152.48, "no": 0.22, "o3": 88.27, "nh3": 1.12, "no2": 0.88, "so2": 0.43, "pm10": 3.93, "pm2_5": 2.74}}, {"dt": 1744664400, "main": {"aqi": 2}, "components": {"co": 148.18, "no": 0.17, "o3": 89.18, "nh3": 1.08, "no2": 0.7, "so2": 0.4, "pm10": 4.24, "pm2_5": 3.07}}, {"dt": 1744668000, "main": {"aqi": 3}, "components": {"co": 136.47, "no": 0.09, "o3": 104.87, "nh3": 1.09, "no2": 0.46, "so2": 0.27, "pm10": 3.64, "pm2_5": 2.42}}, {"dt": 1744671600, "main": {"aqi": 3}, "components": {"co": 134.59, "no": 0.08, "o3": 105.07, "nh3": 1.07, "no2": 0.47, "so2": 0.26, "pm10": 3.77, "pm2_5": 2.55}}, {"dt": 1744675200, "main": {"aqi": 3}, "components": {"co": 136.36, "no": 0.1, "o3": 102.6, "nh3": 1.05, "no2": 0.59, "so2": 0.3, "pm10": 4.21, "pm2_5": 2.98}}, {"dt": 1744678800, "main": {"aqi": 2}, "components": {"co": 143.93, "no": 0.14, "o3": 93.64, "nh3": 1.04, "no2": 1.03, "so2": 0.35, "pm10": 5.04, "pm2_5": 3.75}}, {"dt": 1744682400, "main": {"aqi": 2}, "components": {"co": 152.7, "no": 0.14, "o3": 80.06, "nh3": 1.04, "no2": 1.68, "so2": 0.35, "pm10": 6, "pm2_5": 4.63}}, {"dt": 1744686000, "main": {"aqi": 2}, "components": {"co": 157.88, "no": 0.03, "o3": 69.7, "nh3": 0.98, "no2": 2.26, "so2": 0.32, "pm10": 6.74, "pm2_5": 5.29}}, {"dt": 1744689600, "main": {"aqi": 1}, "components": {"co": 157.04, "no": 0, "o3": 57.75, "nh3": 0.7, "no2": 2.52, "so2": 0.25, "pm10": 7.08, "pm2_5": 5.64}}, {"dt": 1744693200, "main": {"aqi": 1}, "components": {"co": 157.57, "no": 0, "o3": 47.34, "nh3": 0.65, "no2": 2.72, "so2": 0.2, "pm10": 7.43, "pm2_5": 5.97}}, {"dt": 1744696800, "main": {"aqi": 1}, "components": {"co": 157.56, "no": 0, "o3": 40.75, "nh3": 0.68, "no2": 2.82, "so2": 0.18, "pm10": 7.76, "pm2_5": 6.24}}, {"dt": 1744700400, "main": {"aqi": 1}, "components": {"co": 154.79, "no": 0, "o3": 37.19, "nh3": 0.74, "no2": 2.74, "so2": 0.17, "pm10": 7.89, "pm2_5": 6.35}}]
23	2025-04-20 11:50:07.604701-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1744700400, "main": {"aqi": 1}, "components": {"co": 154.79, "no": 0, "o3": 37.19, "nh3": 0.74, "no2": 2.74, "so2": 0.17, "pm10": 7.89, "pm2_5": 6.35}}, {"dt": 1744704000, "main": {"aqi": 1}, "components": {"co": 153.01, "no": 0, "o3": 39.35, "nh3": 0.85, "no2": 2.48, "so2": 0.22, "pm10": 8.02, "pm2_5": 6.46}}, {"dt": 1744707600, "main": {"aqi": 1}, "components": {"co": 153.37, "no": 0, "o3": 46.7, "nh3": 0.99, "no2": 2.21, "so2": 0.32, "pm10": 8, "pm2_5": 6.43}}, {"dt": 1744711200, "main": {"aqi": 1}, "components": {"co": 154.24, "no": 0, "o3": 56.63, "nh3": 1.1, "no2": 1.97, "so2": 0.47, "pm10": 7.62, "pm2_5": 6.08}}, {"dt": 1744714800, "main": {"aqi": 1}, "components": {"co": 156.17, "no": 0, "o3": 58.48, "nh3": 1.09, "no2": 1.94, "so2": 0.52, "pm10": 7.43, "pm2_5": 5.88}}, {"dt": 1744718400, "main": {"aqi": 1}, "components": {"co": 158.11, "no": 0, "o3": 56.86, "nh3": 1.06, "no2": 2.04, "so2": 0.55, "pm10": 7.47, "pm2_5": 5.89}}, {"dt": 1744722000, "main": {"aqi": 1}, "components": {"co": 158.86, "no": 0, "o3": 53.79, "nh3": 1.05, "no2": 2.26, "so2": 0.59, "pm10": 7.58, "pm2_5": 5.97}}, {"dt": 1744725600, "main": {"aqi": 1}, "components": {"co": 163.83, "no": 0, "o3": 53.24, "nh3": 1.1, "no2": 2.76, "so2": 0.69, "pm10": 7.72, "pm2_5": 6.06}}, {"dt": 1744729200, "main": {"aqi": 1}, "components": {"co": 171.52, "no": 0.19, "o3": 57.46, "nh3": 1.15, "no2": 3.31, "so2": 0.89, "pm10": 8.16, "pm2_5": 6.42}}, {"dt": 1744732800, "main": {"aqi": 2}, "components": {"co": 175.34, "no": 0.6, "o3": 60.77, "nh3": 1.26, "no2": 3.04, "so2": 1.05, "pm10": 8.41, "pm2_5": 6.6}}, {"dt": 1744736400, "main": {"aqi": 2}, "components": {"co": 175.28, "no": 0.81, "o3": 61.3, "nh3": 1.23, "no2": 2.66, "so2": 1.09, "pm10": 8.74, "pm2_5": 6.91}}, {"dt": 1744740000, "main": {"aqi": 2}, "components": {"co": 174.14, "no": 0.67, "o3": 68.68, "nh3": 1.15, "no2": 2.16, "so2": 1.24, "pm10": 9.62, "pm2_5": 7.78}}, {"dt": 1744743600, "main": {"aqi": 2}, "components": {"co": 167.75, "no": 0.29, "o3": 95.1, "nh3": 1.07, "no2": 1.27, "so2": 1.38, "pm10": 9.73, "pm2_5": 7.96}}, {"dt": 1744747200, "main": {"aqi": 3}, "components": {"co": 161.48, "no": 0.18, "o3": 100.64, "nh3": 0.94, "no2": 0.86, "so2": 1.23, "pm10": 9.78, "pm2_5": 8.01}}, {"dt": 1744750800, "main": {"aqi": 3}, "components": {"co": 155.26, "no": 0.14, "o3": 101.39, "nh3": 0.8, "no2": 0.69, "so2": 1.1, "pm10": 9.58, "pm2_5": 7.68}}, {"dt": 1744754400, "main": {"aqi": 3}, "components": {"co": 146.97, "no": 0.1, "o3": 106.25, "nh3": 0.64, "no2": 0.55, "so2": 0.87, "pm10": 8.38, "pm2_5": 6.33}}, {"dt": 1744758000, "main": {"aqi": 3}, "components": {"co": 140.72, "no": 0.09, "o3": 106.49, "nh3": 0.53, "no2": 0.49, "so2": 0.7, "pm10": 7.47, "pm2_5": 5.38}}, {"dt": 1744761600, "main": {"aqi": 3}, "components": {"co": 138.66, "no": 0.08, "o3": 105.17, "nh3": 0.48, "no2": 0.52, "so2": 0.64, "pm10": 7.24, "pm2_5": 5.13}}, {"dt": 1744765200, "main": {"aqi": 2}, "components": {"co": 140.25, "no": 0.11, "o3": 98.37, "nh3": 0.48, "no2": 0.76, "so2": 0.6, "pm10": 7.53, "pm2_5": 5.18}}, {"dt": 1744768800, "main": {"aqi": 2}, "components": {"co": 142.89, "no": 0.1, "o3": 88.23, "nh3": 0.51, "no2": 1.15, "so2": 0.56, "pm10": 7.99, "pm2_5": 5.3}}, {"dt": 1744772400, "main": {"aqi": 2}, "components": {"co": 145.02, "no": 0.02, "o3": 79.51, "nh3": 0.51, "no2": 1.48, "so2": 0.48, "pm10": 8.12, "pm2_5": 5.15}}, {"dt": 1744776000, "main": {"aqi": 2}, "components": {"co": 141.69, "no": 0, "o3": 64.17, "nh3": 0.41, "no2": 1.64, "so2": 0.3, "pm10": 7.75, "pm2_5": 4.8}}, {"dt": 1744779600, "main": {"aqi": 1}, "components": {"co": 140.36, "no": 0, "o3": 48.47, "nh3": 0.27, "no2": 1.77, "so2": 0.16, "pm10": 7.4, "pm2_5": 4.52}}, {"dt": 1744783200, "main": {"aqi": 1}, "components": {"co": 138.2, "no": 0, "o3": 38.52, "nh3": 0.2, "no2": 1.78, "so2": 0.1, "pm10": 7.04, "pm2_5": 4.16}}, {"dt": 1744786800, "main": {"aqi": 1}, "components": {"co": 132.63, "no": 0, "o3": 32.45, "nh3": 0.19, "no2": 1.63, "so2": 0.08, "pm10": 6.5, "pm2_5": 3.74}}]
24	2025-04-20 11:50:08.845288-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1744786800, "main": {"aqi": 1}, "components": {"co": 132.63, "no": 0, "o3": 32.45, "nh3": 0.19, "no2": 1.63, "so2": 0.08, "pm10": 6.5, "pm2_5": 3.74}}, {"dt": 1744790400, "main": {"aqi": 1}, "components": {"co": 128.03, "no": 0, "o3": 29.54, "nh3": 0.17, "no2": 1.44, "so2": 0.08, "pm10": 6.14, "pm2_5": 3.49}}, {"dt": 1744794000, "main": {"aqi": 1}, "components": {"co": 124.8, "no": 0, "o3": 30.01, "nh3": 0.15, "no2": 1.26, "so2": 0.1, "pm10": 6.01, "pm2_5": 3.37}}, {"dt": 1744797600, "main": {"aqi": 1}, "components": {"co": 123.65, "no": 0, "o3": 34.98, "nh3": 0.15, "no2": 1.1, "so2": 0.13, "pm10": 5.95, "pm2_5": 3.28}}, {"dt": 1744801200, "main": {"aqi": 1}, "components": {"co": 119.96, "no": 0, "o3": 30.4, "nh3": 0.18, "no2": 1.01, "so2": 0.09, "pm10": 5.65, "pm2_5": 3.18}}, {"dt": 1744804800, "main": {"aqi": 1}, "components": {"co": 116.51, "no": 0, "o3": 25.79, "nh3": 0.2, "no2": 1, "so2": 0.07, "pm10": 5.43, "pm2_5": 3.11}}, {"dt": 1744808400, "main": {"aqi": 1}, "components": {"co": 113.93, "no": 0, "o3": 23.29, "nh3": 0.21, "no2": 1.09, "so2": 0.06, "pm10": 5.29, "pm2_5": 2.99}}, {"dt": 1744812000, "main": {"aqi": 1}, "components": {"co": 117.75, "no": 0.01, "o3": 23.94, "nh3": 0.21, "no2": 1.52, "so2": 0.08, "pm10": 5.35, "pm2_5": 2.86}}, {"dt": 1744815600, "main": {"aqi": 1}, "components": {"co": 128.17, "no": 0.24, "o3": 28.59, "nh3": 0.24, "no2": 1.93, "so2": 0.12, "pm10": 5.5, "pm2_5": 2.72}}, {"dt": 1744819200, "main": {"aqi": 1}, "components": {"co": 135.87, "no": 0.64, "o3": 35.81, "nh3": 0.34, "no2": 1.76, "so2": 0.18, "pm10": 5.63, "pm2_5": 2.57}}, {"dt": 1744822800, "main": {"aqi": 1}, "components": {"co": 138.61, "no": 0.96, "o3": 34.13, "nh3": 0.52, "no2": 1.6, "so2": 0.16, "pm10": 5.72, "pm2_5": 2.48}}, {"dt": 1744826400, "main": {"aqi": 1}, "components": {"co": 139.68, "no": 0.98, "o3": 36.29, "nh3": 0.6, "no2": 1.47, "so2": 0.19, "pm10": 6, "pm2_5": 2.42}}, {"dt": 1744830000, "main": {"aqi": 2}, "components": {"co": 135.81, "no": 0.18, "o3": 88.63, "nh3": 0.24, "no2": 0.66, "so2": 0.49, "pm10": 5.27, "pm2_5": 1.84}}, {"dt": 1744833600, "main": {"aqi": 2}, "components": {"co": 133.5, "no": 0.11, "o3": 93.42, "nh3": 0.2, "no2": 0.44, "so2": 0.45, "pm10": 5.41, "pm2_5": 1.81}}, {"dt": 1744837200, "main": {"aqi": 2}, "components": {"co": 132.27, "no": 0.09, "o3": 92.25, "nh3": 0.2, "no2": 0.38, "so2": 0.45, "pm10": 6.05, "pm2_5": 1.92}}, {"dt": 1744840800, "main": {"aqi": 2}, "components": {"co": 133.88, "no": 0.08, "o3": 94.8, "nh3": 0.18, "no2": 0.34, "so2": 0.42, "pm10": 6.15, "pm2_5": 1.88}}, {"dt": 1744844400, "main": {"aqi": 2}, "components": {"co": 134.36, "no": 0.07, "o3": 95.4, "nh3": 0.17, "no2": 0.34, "so2": 0.4, "pm10": 6.24, "pm2_5": 1.85}}, {"dt": 1744848000, "main": {"aqi": 2}, "components": {"co": 135.1, "no": 0.08, "o3": 94.64, "nh3": 0.18, "no2": 0.38, "so2": 0.39, "pm10": 6.36, "pm2_5": 1.85}}, {"dt": 1744851600, "main": {"aqi": 2}, "components": {"co": 137.05, "no": 0.09, "o3": 90.5, "nh3": 0.23, "no2": 0.55, "so2": 0.38, "pm10": 6.55, "pm2_5": 1.87}}, {"dt": 1744855200, "main": {"aqi": 2}, "components": {"co": 139.69, "no": 0.07, "o3": 85.43, "nh3": 0.28, "no2": 0.8, "so2": 0.38, "pm10": 6.9, "pm2_5": 1.93}}, {"dt": 1744858800, "main": {"aqi": 2}, "components": {"co": 141.81, "no": 0.02, "o3": 82.81, "nh3": 0.29, "no2": 0.98, "so2": 0.37, "pm10": 7.2, "pm2_5": 1.95}}, {"dt": 1744862400, "main": {"aqi": 2}, "components": {"co": 140.46, "no": 0, "o3": 70, "nh3": 0.31, "no2": 1.19, "so2": 0.24, "pm10": 6.83, "pm2_5": 1.94}}, {"dt": 1744866000, "main": {"aqi": 1}, "components": {"co": 141.6, "no": 0, "o3": 55.06, "nh3": 0.28, "no2": 1.54, "so2": 0.13, "pm10": 6.48, "pm2_5": 1.97}}, {"dt": 1744869600, "main": {"aqi": 1}, "components": {"co": 142.2, "no": 0, "o3": 45.18, "nh3": 0.27, "no2": 1.82, "so2": 0.09, "pm10": 6.32, "pm2_5": 2}}, {"dt": 1744873200, "main": {"aqi": 1}, "components": {"co": 138.78, "no": 0, "o3": 37.92, "nh3": 0.28, "no2": 1.91, "so2": 0.07, "pm10": 6.07, "pm2_5": 1.98}}]
25	2025-04-20 11:50:10.268301-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1744873200, "main": {"aqi": 1}, "components": {"co": 141.39, "no": 0, "o3": 56, "nh3": 0.22, "no2": 1.58, "so2": 0.2, "pm10": 6.67, "pm2_5": 2.03}}, {"dt": 1744876800, "main": {"aqi": 1}, "components": {"co": 139.75, "no": 0, "o3": 52.46, "nh3": 0.19, "no2": 1.57, "so2": 0.18, "pm10": 6.36, "pm2_5": 2.04}}, {"dt": 1744880400, "main": {"aqi": 1}, "components": {"co": 139.41, "no": 0, "o3": 53.9, "nh3": 0.19, "no2": 1.44, "so2": 0.21, "pm10": 6.3, "pm2_5": 2.1}}, {"dt": 1744884000, "main": {"aqi": 2}, "components": {"co": 146.23, "no": 0, "o3": 67.41, "nh3": 0.26, "no2": 1.43, "so2": 0.48, "pm10": 6.8, "pm2_5": 2.36}}, {"dt": 1744887600, "main": {"aqi": 2}, "components": {"co": 149.87, "no": 0, "o3": 67.08, "nh3": 0.3, "no2": 1.67, "so2": 0.55, "pm10": 6.65, "pm2_5": 2.53}}, {"dt": 1744891200, "main": {"aqi": 2}, "components": {"co": 153.71, "no": 0, "o3": 65.01, "nh3": 0.34, "no2": 1.99, "so2": 0.6, "pm10": 6.6, "pm2_5": 2.8}}, {"dt": 1744894800, "main": {"aqi": 2}, "components": {"co": 157.83, "no": 0, "o3": 62.57, "nh3": 0.38, "no2": 2.34, "so2": 0.63, "pm10": 6.7, "pm2_5": 3.19}}, {"dt": 1744898400, "main": {"aqi": 2}, "components": {"co": 162.22, "no": 0, "o3": 61.76, "nh3": 0.44, "no2": 2.71, "so2": 0.65, "pm10": 6.73, "pm2_5": 3.54}}, {"dt": 1744902000, "main": {"aqi": 2}, "components": {"co": 167.16, "no": 0.2, "o3": 62.93, "nh3": 0.52, "no2": 3.22, "so2": 0.64, "pm10": 6.47, "pm2_5": 3.66}}, {"dt": 1744905600, "main": {"aqi": 2}, "components": {"co": 169.93, "no": 0.59, "o3": 66.12, "nh3": 0.64, "no2": 2.95, "so2": 0.66, "pm10": 5.88, "pm2_5": 3.52}}, {"dt": 1744909200, "main": {"aqi": 2}, "components": {"co": 168.49, "no": 0.72, "o3": 71.35, "nh3": 0.72, "no2": 2.54, "so2": 0.64, "pm10": 4.99, "pm2_5": 3.14}}, {"dt": 1744912800, "main": {"aqi": 2}, "components": {"co": 165.07, "no": 0.61, "o3": 79.94, "nh3": 0.74, "no2": 2.07, "so2": 0.62, "pm10": 4.22, "pm2_5": 2.8}}, {"dt": 1744916400, "main": {"aqi": 2}, "components": {"co": 157.77, "no": 0.32, "o3": 98.01, "nh3": 0.64, "no2": 1.26, "so2": 0.45, "pm10": 2.94, "pm2_5": 2.08}}, {"dt": 1744920000, "main": {"aqi": 3}, "components": {"co": 151.67, "no": 0.2, "o3": 103.88, "nh3": 0.55, "no2": 0.85, "so2": 0.36, "pm10": 2.44, "pm2_5": 1.82}}, {"dt": 1744923600, "main": {"aqi": 3}, "components": {"co": 148.67, "no": 0.15, "o3": 105.94, "nh3": 0.51, "no2": 0.68, "so2": 0.35, "pm10": 2.38, "pm2_5": 1.81}}, {"dt": 1744927200, "main": {"aqi": 3}, "components": {"co": 147.13, "no": 0.12, "o3": 108.11, "nh3": 0.45, "no2": 0.57, "so2": 0.33, "pm10": 2.38, "pm2_5": 1.75}}, {"dt": 1744930800, "main": {"aqi": 3}, "components": {"co": 145.77, "no": 0.11, "o3": 108.42, "nh3": 0.42, "no2": 0.56, "so2": 0.33, "pm10": 2.63, "pm2_5": 1.87}}, {"dt": 1744934400, "main": {"aqi": 3}, "components": {"co": 146.2, "no": 0.11, "o3": 109.11, "nh3": 0.41, "no2": 0.61, "so2": 0.37, "pm10": 3, "pm2_5": 2.11}}, {"dt": 1744938000, "main": {"aqi": 3}, "components": {"co": 146.94, "no": 0.11, "o3": 108.73, "nh3": 0.44, "no2": 0.79, "so2": 0.39, "pm10": 3.03, "pm2_5": 2.2}}, {"dt": 1744941600, "main": {"aqi": 3}, "components": {"co": 149.25, "no": 0.09, "o3": 105.25, "nh3": 0.51, "no2": 1.16, "so2": 0.43, "pm10": 3.11, "pm2_5": 2.31}}, {"dt": 1744945200, "main": {"aqi": 3}, "components": {"co": 151.22, "no": 0.02, "o3": 101.74, "nh3": 0.56, "no2": 1.53, "so2": 0.49, "pm10": 3.26, "pm2_5": 2.44}}, {"dt": 1744948800, "main": {"aqi": 2}, "components": {"co": 152.06, "no": 0, "o3": 95.85, "nh3": 0.61, "no2": 1.71, "so2": 0.51, "pm10": 3.44, "pm2_5": 2.59}}, {"dt": 1744952400, "main": {"aqi": 2}, "components": {"co": 154.14, "no": 0, "o3": 89.98, "nh3": 0.68, "no2": 1.87, "so2": 0.49, "pm10": 3.77, "pm2_5": 2.82}}, {"dt": 1744956000, "main": {"aqi": 2}, "components": {"co": 155.69, "no": 0, "o3": 85.79, "nh3": 0.73, "no2": 1.98, "so2": 0.47, "pm10": 4.04, "pm2_5": 2.98}}, {"dt": 1744959600, "main": {"aqi": 2}, "components": {"co": 154.93, "no": 0, "o3": 83.47, "nh3": 0.73, "no2": 1.97, "so2": 0.47, "pm10": 4.12, "pm2_5": 3.05}}]
26	2025-04-20 11:50:11.701848-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1744959600, "main": {"aqi": 2}, "components": {"co": 154.93, "no": 0, "o3": 83.47, "nh3": 0.73, "no2": 1.97, "so2": 0.47, "pm10": 4.12, "pm2_5": 3.05}}, {"dt": 1744963200, "main": {"aqi": 2}, "components": {"co": 155.7, "no": 0, "o3": 84.21, "nh3": 0.71, "no2": 1.9, "so2": 0.57, "pm10": 4.25, "pm2_5": 3.2}}, {"dt": 1744966800, "main": {"aqi": 2}, "components": {"co": 158.12, "no": 0, "o3": 84.96, "nh3": 0.71, "no2": 1.94, "so2": 0.75, "pm10": 4.5, "pm2_5": 3.46}}, {"dt": 1744970400, "main": {"aqi": 2}, "components": {"co": 159.83, "no": 0, "o3": 83.2, "nh3": 0.73, "no2": 2.02, "so2": 0.9, "pm10": 4.76, "pm2_5": 3.73}}, {"dt": 1744974000, "main": {"aqi": 2}, "components": {"co": 161.56, "no": 0, "o3": 78.61, "nh3": 0.76, "no2": 2.13, "so2": 0.9, "pm10": 4.91, "pm2_5": 3.9}}, {"dt": 1744977600, "main": {"aqi": 2}, "components": {"co": 162.74, "no": 0, "o3": 74.09, "nh3": 0.79, "no2": 2.28, "so2": 0.88, "pm10": 4.93, "pm2_5": 3.94}}, {"dt": 1744981200, "main": {"aqi": 2}, "components": {"co": 162.88, "no": 0, "o3": 69.65, "nh3": 0.82, "no2": 2.46, "so2": 0.84, "pm10": 4.8, "pm2_5": 3.83}}, {"dt": 1744984800, "main": {"aqi": 2}, "components": {"co": 164, "no": 0, "o3": 66.41, "nh3": 0.84, "no2": 2.81, "so2": 0.83, "pm10": 4.61, "pm2_5": 3.66}}, {"dt": 1744988400, "main": {"aqi": 2}, "components": {"co": 166.95, "no": 0.22, "o3": 64.44, "nh3": 0.86, "no2": 3.46, "so2": 0.82, "pm10": 4.44, "pm2_5": 3.48}}, {"dt": 1744992000, "main": {"aqi": 2}, "components": {"co": 170.15, "no": 0.69, "o3": 63, "nh3": 0.89, "no2": 3.26, "so2": 0.84, "pm10": 4.22, "pm2_5": 3.27}}, {"dt": 1744995600, "main": {"aqi": 2}, "components": {"co": 170.26, "no": 0.9, "o3": 64.36, "nh3": 0.88, "no2": 2.88, "so2": 0.89, "pm10": 4.1, "pm2_5": 3.13}}, {"dt": 1744999200, "main": {"aqi": 2}, "components": {"co": 167.82, "no": 0.78, "o3": 70.44, "nh3": 0.84, "no2": 2.37, "so2": 0.97, "pm10": 4.37, "pm2_5": 3.35}}, {"dt": 1745002800, "main": {"aqi": 2}, "components": {"co": 164.15, "no": 0.44, "o3": 87.7, "nh3": 0.73, "no2": 1.57, "so2": 0.91, "pm10": 4.66, "pm2_5": 3.61}}, {"dt": 1745006400, "main": {"aqi": 2}, "components": {"co": 159.62, "no": 0.27, "o3": 94.27, "nh3": 0.61, "no2": 1.05, "so2": 0.82, "pm10": 5.29, "pm2_5": 4.04}}, {"dt": 1745010000, "main": {"aqi": 2}, "components": {"co": 154.57, "no": 0.18, "o3": 97.4, "nh3": 0.52, "no2": 0.77, "so2": 0.79, "pm10": 5.92, "pm2_5": 4.27}}, {"dt": 1745013600, "main": {"aqi": 3}, "components": {"co": 148.15, "no": 0.12, "o3": 102.19, "nh3": 0.39, "no2": 0.58, "so2": 0.69, "pm10": 5.98, "pm2_5": 3.8}}, {"dt": 1745017200, "main": {"aqi": 3}, "components": {"co": 143.75, "no": 0.1, "o3": 103.81, "nh3": 0.31, "no2": 0.53, "so2": 0.63, "pm10": 6.17, "pm2_5": 3.54}}, {"dt": 1745020800, "main": {"aqi": 3}, "components": {"co": 142.22, "no": 0.1, "o3": 104.65, "nh3": 0.27, "no2": 0.56, "so2": 0.64, "pm10": 6.55, "pm2_5": 3.57}}, {"dt": 1745024400, "main": {"aqi": 3}, "components": {"co": 144.35, "no": 0.11, "o3": 101.83, "nh3": 0.27, "no2": 0.8, "so2": 0.66, "pm10": 7.45, "pm2_5": 3.88}}, {"dt": 1745028000, "main": {"aqi": 2}, "components": {"co": 146.58, "no": 0.1, "o3": 96.05, "nh3": 0.3, "no2": 1.15, "so2": 0.67, "pm10": 8.59, "pm2_5": 4.28}}, {"dt": 1745031600, "main": {"aqi": 2}, "components": {"co": 147.56, "no": 0.02, "o3": 91.52, "nh3": 0.3, "no2": 1.43, "so2": 0.65, "pm10": 9.61, "pm2_5": 4.54}}, {"dt": 1745035200, "main": {"aqi": 2}, "components": {"co": 145.39, "no": 0, "o3": 85.66, "nh3": 0.31, "no2": 1.43, "so2": 0.59, "pm10": 10.06, "pm2_5": 4.58}}, {"dt": 1745038800, "main": {"aqi": 2}, "components": {"co": 144.8, "no": 0, "o3": 80.5, "nh3": 0.28, "no2": 1.42, "so2": 0.51, "pm10": 10.32, "pm2_5": 4.55}}, {"dt": 1745042400, "main": {"aqi": 2}, "components": {"co": 143.83, "no": 0, "o3": 76.78, "nh3": 0.17, "no2": 1.37, "so2": 0.45, "pm10": 10.44, "pm2_5": 4.42}}, {"dt": 1745046000, "main": {"aqi": 2}, "components": {"co": 139.88, "no": 0, "o3": 73.39, "nh3": 0.1, "no2": 1.22, "so2": 0.41, "pm10": 10.05, "pm2_5": 4.11}}]
27	2025-04-20 11:50:13.134912-07	{"lat": 44.9369, "lon": -123.028}	[{"dt": 1745046000, "main": {"aqi": 2}, "components": {"co": 139.88, "no": 0, "o3": 73.39, "nh3": 0.1, "no2": 1.22, "so2": 0.41, "pm10": 10.05, "pm2_5": 4.11}}, {"dt": 1745049600, "main": {"aqi": 2}, "components": {"co": 136.72, "no": 0, "o3": 72.26, "nh3": 0.09, "no2": 0.99, "so2": 0.38, "pm10": 9.55, "pm2_5": 3.76}}, {"dt": 1745053200, "main": {"aqi": 2}, "components": {"co": 133.45, "no": 0, "o3": 72.08, "nh3": 0.08, "no2": 0.78, "so2": 0.37, "pm10": 8.87, "pm2_5": 3.38}}, {"dt": 1745056800, "main": {"aqi": 2}, "components": {"co": 130.14, "no": 0, "o3": 73.33, "nh3": 0.08, "no2": 0.6, "so2": 0.37, "pm10": 7.85, "pm2_5": 2.89}}, {"dt": 1745060400, "main": {"aqi": 2}, "components": {"co": 127.82, "no": 0, "o3": 73.81, "nh3": 0.08, "no2": 0.5, "so2": 0.34, "pm10": 6.63, "pm2_5": 2.43}}, {"dt": 1745064000, "main": {"aqi": 2}, "components": {"co": 126.24, "no": 0, "o3": 73.49, "nh3": 0.08, "no2": 0.46, "so2": 0.3, "pm10": 5.45, "pm2_5": 2.08}}, {"dt": 1745067600, "main": {"aqi": 2}, "components": {"co": 125.29, "no": 0, "o3": 71.97, "nh3": 0.09, "no2": 0.48, "so2": 0.26, "pm10": 4.21, "pm2_5": 1.79}}, {"dt": 1745071200, "main": {"aqi": 2}, "components": {"co": 125.34, "no": 0, "o3": 68.05, "nh3": 0.11, "no2": 0.62, "so2": 0.21, "pm10": 3.32, "pm2_5": 1.61}}, {"dt": 1745074800, "main": {"aqi": 2}, "components": {"co": 127.9, "no": 0.02, "o3": 65.17, "nh3": 0.13, "no2": 0.88, "so2": 0.19, "pm10": 2.93, "pm2_5": 1.57}}, {"dt": 1745078400, "main": {"aqi": 2}, "components": {"co": 130.68, "no": 0.07, "o3": 63.77, "nh3": 0.16, "no2": 1.04, "so2": 0.2, "pm10": 3.14, "pm2_5": 1.7}}, {"dt": 1745082000, "main": {"aqi": 2}, "components": {"co": 132.2, "no": 0.14, "o3": 65.65, "nh3": 0.2, "no2": 0.99, "so2": 0.25, "pm10": 3.8, "pm2_5": 1.87}}, {"dt": 1745085600, "main": {"aqi": 2}, "components": {"co": 132.88, "no": 0.16, "o3": 71.53, "nh3": 0.21, "no2": 0.81, "so2": 0.32, "pm10": 4.75, "pm2_5": 1.93}}, {"dt": 1745089200, "main": {"aqi": 2}, "components": {"co": 133.56, "no": 0.09, "o3": 86.8, "nh3": 0.13, "no2": 0.45, "so2": 0.33, "pm10": 5.16, "pm2_5": 1.7}}, {"dt": 1745092800, "main": {"aqi": 2}, "components": {"co": 132.69, "no": 0.07, "o3": 91.02, "nh3": 0.11, "no2": 0.31, "so2": 0.33, "pm10": 5.43, "pm2_5": 1.52}}, {"dt": 1745096400, "main": {"aqi": 2}, "components": {"co": 133.29, "no": 0.06, "o3": 91.87, "nh3": 0.1, "no2": 0.25, "so2": 0.34, "pm10": 5.63, "pm2_5": 1.46}}, {"dt": 1745100000, "main": {"aqi": 2}, "components": {"co": 134.52, "no": 0.05, "o3": 93.56, "nh3": 0.09, "no2": 0.23, "so2": 0.36, "pm10": 5.92, "pm2_5": 1.45}}, {"dt": 1745103600, "main": {"aqi": 2}, "components": {"co": 135.47, "no": 0.05, "o3": 95.07, "nh3": 0.09, "no2": 0.24, "so2": 0.38, "pm10": 6.33, "pm2_5": 1.5}}, {"dt": 1745107200, "main": {"aqi": 2}, "components": {"co": 136.42, "no": 0.05, "o3": 96.27, "nh3": 0.09, "no2": 0.27, "so2": 0.41, "pm10": 6.7, "pm2_5": 1.54}}, {"dt": 1745110800, "main": {"aqi": 2}, "components": {"co": 137.65, "no": 0.05, "o3": 96.81, "nh3": 0.1, "no2": 0.35, "so2": 0.43, "pm10": 6.99, "pm2_5": 1.58}}, {"dt": 1745114400, "main": {"aqi": 2}, "components": {"co": 139.46, "no": 0.04, "o3": 97.16, "nh3": 0.11, "no2": 0.45, "so2": 0.45, "pm10": 7.02, "pm2_5": 1.58}}, {"dt": 1745118000, "main": {"aqi": 2}, "components": {"co": 141.27, "no": 0.01, "o3": 97.66, "nh3": 0.11, "no2": 0.53, "so2": 0.44, "pm10": 6.58, "pm2_5": 1.51}}, {"dt": 1745121600, "main": {"aqi": 2}, "components": {"co": 141.34, "no": 0, "o3": 96.2, "nh3": 0.11, "no2": 0.51, "so2": 0.4, "pm10": 5.83, "pm2_5": 1.39}}, {"dt": 1745125200, "main": {"aqi": 2}, "components": {"co": 142.79, "no": 0, "o3": 95.06, "nh3": 0.12, "no2": 0.51, "so2": 0.37, "pm10": 5.27, "pm2_5": 1.3}}, {"dt": 1745128800, "main": {"aqi": 2}, "components": {"co": 144.35, "no": 0, "o3": 94.24, "nh3": 0.11, "no2": 0.51, "so2": 0.35, "pm10": 4.9, "pm2_5": 1.24}}, {"dt": 1745132400, "main": {"aqi": 2}, "components": {"co": 143.9, "no": 0, "o3": 88.26, "nh3": 0.1, "no2": 0.56, "so2": 0.28, "pm10": 4.48, "pm2_5": 1.18}}]
\.


--
-- Data for Name: reading_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reading_components (reading_id, component_id, value) FROM stdin;
1	1	150.11
2	1	267.03
3	1	263.69
4	1	263.69
5	1	267.03
6	1	267.03
7	1	267.03
8	1	267.03
9	1	263.69
10	1	263.69
11	1	267.03
12	1	267.03
13	1	267.03
14	1	263.69
15	1	263.69
16	1	260.35
17	1	257.02
18	1	257.02
19	1	253.68
20	1	257.02
21	1	267.03
22	1	277.04
23	1	293.73
24	1	303.75
25	1	310.42
26	1	303.75
28	1	283.72
29	1	267.03
30	1	257.02
31	1	257.02
32	1	253.68
33	1	253.68
34	1	253.68
35	1	260.35
36	1	277.04
37	1	287.06
38	1	287.06
39	1	260.35
40	1	257.02
41	1	257.02
42	1	257.02
43	1	257.02
44	1	257.02
45	1	273.7
46	1	300.41
47	1	317.1
48	1	320.43
49	1	313.76
50	1	300.41
51	1	277.04
53	1	267.03
54	1	263.69
55	1	257.02
56	1	250.34
57	1	250.34
58	1	247
59	1	250.34
60	1	253.68
61	1	257.02
62	1	257.02
63	1	253.68
64	1	250.34
65	1	247
66	1	247
67	1	243.66
68	1	243.66
69	1	243.66
70	1	243.66
71	1	247
72	1	250.34
73	1	253.68
74	1	253.68
75	1	250.34
76	1	247
78	1	243.66
79	1	243.66
80	1	240.33
81	1	240.33
82	1	236.99
83	1	236.99
84	1	240.33
85	1	250.34
86	1	267.03
87	1	273.7
88	1	270.37
89	1	236.99
90	1	230.31
91	1	226.97
92	1	223.64
93	1	226.97
94	1	226.97
95	1	250.34
96	1	283.72
97	1	310.42
98	1	327.11
99	1	347.14
100	1	380.52
101	1	423.91
103	1	460.62
104	1	494
105	1	520.71
106	1	527.38
107	1	527.38
108	1	514.03
109	1	500.68
110	1	500.68
111	1	507.35
112	1	500.68
113	1	473.98
114	1	343.8
115	1	310.42
116	1	300.41
117	1	290.39
118	1	287.06
119	1	287.06
120	1	297.07
121	1	317.1
122	1	330.45
123	1	343.8
124	1	367.16
125	1	387.19
126	1	400.54
128	1	400.54
129	1	397.21
130	1	393.87
131	1	397.21
132	1	377.18
133	1	307.08
134	1	270.37
135	1	270.37
136	1	287.06
137	1	303.75
138	1	323.77
139	1	287.06
140	1	287.06
141	1	297.07
142	1	290.39
143	1	290.39
144	1	273.7
145	1	240.33
146	1	230.31
147	1	230.31
148	1	233.65
149	1	233.65
150	1	233.65
151	1	233.65
153	1	233.65
154	1	236.99
155	1	236.99
156	1	236.99
157	1	236.99
158	1	233.65
159	1	233.65
160	1	236.99
161	1	236.99
162	1	236.99
163	1	236.99
164	1	236.99
165	1	236.99
166	1	240.33
167	1	243.66
168	1	243.66
169	1	243.66
170	1	243.66
171	1	247
172	1	243.66
173	1	243.66
174	1	243.66
175	1	240.33
176	1	236.99
178	1	236.99
179	1	240.33
180	1	243.66
181	1	240.33
182	1	240.33
183	1	240.33
184	1	243.66
185	1	243.66
186	1	250.34
187	1	250.34
188	1	253.68
189	1	250.34
190	1	247
191	1	243.66
192	1	243.66
193	1	243.66
194	1	243.66
195	1	247
196	1	250.34
197	1	257.02
198	1	263.69
199	1	263.69
200	1	260.35
201	1	257.02
203	1	253.68
204	1	250.34
205	1	250.34
206	1	247
207	1	247
208	1	247
209	1	250.34
210	1	257.02
211	1	260.35
212	1	263.69
213	1	260.35
214	1	247
215	1	243.66
216	1	243.66
217	1	240.33
218	1	240.33
219	1	240.33
220	1	247
221	1	250.34
222	1	257.02
223	1	263.69
224	1	263.69
225	1	260.35
226	1	257.02
228	1	253.68
229	1	250.34
230	1	250.34
231	1	247
232	1	247
233	1	247
234	1	250.34
235	1	257.02
236	1	260.35
237	1	263.69
238	1	260.35
239	1	247
240	1	243.66
241	1	243.66
242	1	240.33
243	1	240.33
244	1	240.33
245	1	140.88
246	1	146.51
247	1	150.56
248	1	148.98
249	1	148.23
250	1	146.94
251	1	143.3
253	1	138.42
254	1	133.81
255	1	129.32
256	1	125.21
257	1	122.46
258	1	121.15
259	1	124.85
260	1	132.95
261	1	139.57
262	1	141.17
263	1	141.4
264	1	140.63
265	1	137.8
266	1	136.32
267	1	135.68
268	1	135.6
269	1	136.88
270	1	136.79
271	1	133.7
272	1	129.53
273	1	127.36
274	1	126.91
275	1	126.73
276	1	126.25
278	1	125.19
279	1	124.13
280	1	123.07
281	1	122.27
282	1	122.56
283	1	124.49
284	1	127.53
285	1	131.11
286	1	133.78
287	1	135.52
288	1	136.71
289	1	137.6
290	1	138.73
291	1	140.15
292	1	140.81
293	1	140.7
294	1	140.05
295	1	140.67
296	1	140.9
297	1	141.69
298	1	140.79
299	1	140.95
300	1	141.66
301	1	141.76
303	1	141.25
304	1	140.74
305	1	140.53
306	1	140.06
307	1	139.59
308	1	138.64
309	1	138.6
310	1	139.66
311	1	141.04
312	1	141.38
313	1	141.18
314	1	141.53
315	1	140.8
316	1	140.08
317	1	140.61
318	1	140.23
319	1	139.84
320	1	138.95
321	1	139.45
322	1	139.41
323	1	138.46
324	1	137.71
325	1	137.22
326	1	136.45
328	1	135.12
329	1	133.51
330	1	128.6
331	1	120.68
332	1	113.58
333	1	109.46
334	1	111.89
335	1	121.72
336	1	135.97
337	1	136.57
338	1	135.81
339	1	136.19
340	1	135.3
341	1	133.87
342	1	133.88
343	1	133.17
344	1	133.27
345	1	137.07
346	1	142.73
347	1	147.36
348	1	146.31
349	1	144.99
350	1	142.57
351	1	137.64
353	1	132.39
354	1	126.57
355	1	120.64
356	1	116.55
357	1	114.1
358	1	116.02
359	1	123.12
360	1	132.96
361	1	138.6
362	1	139.19
363	1	137.58
364	1	137.74
365	1	137.8
366	1	136.78
367	1	135.52
368	1	135.63
369	1	136
370	1	134.38
371	1	134.55
372	1	134.46
373	1	132.53
374	1	132.08
375	1	132.46
376	1	130.6
378	1	126.49
379	1	122.94
380	1	121.88
381	1	118.91
382	1	120.07
383	1	126.5
384	1	130.2
385	1	135.3
386	1	138.27
387	1	138.85
388	1	138.88
389	1	138.2
390	1	136.81
391	1	135.7
392	1	136.46
393	1	135.56
394	1	135.47
395	1	136.91
396	1	139.61
397	1	142.06
398	1	142.11
399	1	143.62
400	1	145.13
401	1	144.82
403	1	144.37
404	1	143.35
405	1	142.87
406	1	142.63
407	1	142.96
408	1	143.57
409	1	143.62
410	1	144.8
411	1	144.57
412	1	142.93
413	1	141.31
414	1	141.41
415	1	140.47
416	1	139.53
417	1	140.06
418	1	139.86
419	1	139.66
420	1	141.67
421	1	143.14
422	1	144.07
423	1	143.47
424	1	144.64
425	1	145.82
426	1	144.5
428	1	145.14
429	1	146.34
430	1	147.04
431	1	148.37
432	1	150.26
433	1	151.45
434	1	152.52
435	1	153.58
436	1	154.66
437	1	154.08
438	1	151.29
439	1	149.69
440	1	147.09
441	1	145.05
442	1	142.79
443	1	140.85
444	1	141.6
445	1	144.91
446	1	149.76
447	1	153.56
448	1	155.66
449	1	159.28
450	1	161.83
451	1	162.78
453	1	164.3
454	1	164.73
455	1	163.46
456	1	162.69
457	1	161.91
458	1	160.38
459	1	160.84
460	1	164.6
461	1	167.1
462	1	165.58
463	1	161.92
464	1	156.3
465	1	152.48
466	1	148.18
467	1	136.47
468	1	134.59
469	1	136.36
470	1	143.93
471	1	152.7
472	1	157.88
473	1	157.04
474	1	157.57
475	1	157.56
476	1	154.79
478	1	153.01
479	1	153.37
480	1	154.24
481	1	156.17
482	1	158.11
483	1	158.86
484	1	163.83
485	1	171.52
486	1	175.34
487	1	175.28
488	1	174.14
489	1	167.75
490	1	161.48
491	1	155.26
492	1	146.97
493	1	140.72
494	1	138.66
495	1	140.25
496	1	142.89
497	1	145.02
498	1	141.69
499	1	140.36
500	1	138.2
501	1	132.63
503	1	128.03
504	1	124.8
505	1	123.65
506	1	119.96
507	1	116.51
508	1	113.93
509	1	117.75
510	1	128.17
511	1	135.87
512	1	138.61
513	1	139.68
514	1	135.81
515	1	133.5
516	1	132.27
517	1	133.88
518	1	134.36
519	1	135.1
520	1	137.05
521	1	139.69
522	1	141.81
523	1	140.46
524	1	141.6
525	1	142.2
526	1	138.78
528	1	139.75
529	1	139.41
530	1	146.23
531	1	149.87
532	1	153.71
533	1	157.83
534	1	162.22
535	1	167.16
536	1	169.93
537	1	168.49
538	1	165.07
539	1	157.77
540	1	151.67
541	1	148.67
542	1	147.13
543	1	145.77
544	1	146.2
545	1	146.94
546	1	149.25
547	1	151.22
548	1	152.06
549	1	154.14
550	1	155.69
551	1	154.93
553	1	155.7
554	1	158.12
555	1	159.83
556	1	161.56
557	1	162.74
558	1	162.88
559	1	164
560	1	166.95
561	1	170.15
562	1	170.26
563	1	167.82
564	1	164.15
565	1	159.62
566	1	154.57
567	1	148.15
568	1	143.75
569	1	142.22
570	1	144.35
571	1	146.58
572	1	147.56
573	1	145.39
574	1	144.8
575	1	143.83
576	1	139.88
578	1	136.72
579	1	133.45
580	1	130.14
581	1	127.82
582	1	126.24
583	1	125.29
584	1	125.34
585	1	127.9
586	1	130.68
587	1	132.2
588	1	132.88
589	1	133.56
590	1	132.69
591	1	133.29
592	1	134.52
593	1	135.47
594	1	136.42
595	1	137.65
596	1	139.46
597	1	141.27
598	1	141.34
599	1	142.79
600	1	144.35
601	1	143.9
1	2	0.06
2	2	0
3	2	0
4	2	0
5	2	0
6	2	0
7	2	0
8	2	0
9	2	0
10	2	0
11	2	0.02
12	2	0.06
13	2	0.13
14	2	0.17
15	2	0.17
16	2	0.15
17	2	0.1
18	2	0.07
19	2	0.04
20	2	0.02
21	2	0.01
22	2	0
23	2	0
24	2	0
25	2	0
26	2	0
28	2	0
29	2	0
30	2	0
31	2	0
32	2	0
33	2	0
34	2	0
35	2	0.01
36	2	0.21
37	2	0.86
38	2	1.27
39	2	0.21
40	2	0.15
41	2	0.15
42	2	0.1
43	2	0.08
44	2	0.05
45	2	0.05
46	2	0.03
47	2	0
48	2	0
49	2	0
50	2	0
51	2	0
53	2	0
54	2	0
55	2	0
56	2	0
57	2	0
58	2	0
59	2	0
60	2	0
61	2	0.01
62	2	0.04
63	2	0.11
64	2	0.16
65	2	0.14
66	2	0.13
67	2	0.09
68	2	0.06
69	2	0.04
70	2	0.03
71	2	0.01
72	2	0
73	2	0
74	2	0
75	2	0
76	2	0
78	2	0
79	2	0
80	2	0
81	2	0
82	2	0
83	2	0
84	2	0
85	2	0.01
86	2	0.17
87	2	0.57
88	2	0.84
89	2	0.59
90	2	0.42
91	2	0.35
92	2	0.34
93	2	0.35
94	2	0.3
95	2	0.45
96	2	0.34
97	2	0.19
98	2	0.5
99	2	1.36
100	2	3.32
101	2	5.92
103	2	8.49
104	2	12.07
105	2	16.32
106	2	19
107	2	19.67
108	2	18.1
109	2	17.21
110	2	18.33
111	2	19.89
112	2	21.68
113	2	19.67
114	2	6.65
115	2	3.91
116	2	2.63
117	2	1.61
118	2	1.01
119	2	0.78
120	2	0.67
121	2	0.31
122	2	0.01
123	2	0
124	2	0.04
125	2	0.22
126	2	0.69
128	2	1.17
129	2	1.75
130	2	2.54
131	2	3.35
132	2	2.57
133	2	0.22
134	2	0.08
135	2	0.3
136	2	1.72
137	2	4.81
138	2	7.71
139	2	2.88
140	2	2.65
141	2	2.93
142	2	1.68
143	2	0.73
144	2	0.14
145	2	0.02
146	2	0.01
147	2	0
148	2	0
149	2	0
150	2	0
151	2	0
153	2	0
154	2	0
155	2	0
156	2	0
157	2	0
158	2	0
159	2	0
160	2	0.02
161	2	0.18
162	2	0.26
163	2	0.2
164	2	0.12
165	2	0.12
166	2	0.11
167	2	0.09
168	2	0.07
169	2	0.05
170	2	0.03
171	2	0.01
172	2	0
173	2	0
174	2	0
175	2	0
176	2	0
178	2	0
179	2	0
180	2	0
181	2	0
182	2	0
183	2	0
184	2	0
185	2	0
186	2	0.02
187	2	0.1
188	2	0.17
189	2	0.19
190	2	0.15
191	2	0.11
192	2	0.1
193	2	0.11
194	2	0.12
195	2	0.15
196	2	0.1
197	2	0.01
198	2	0
199	2	0
200	2	0
201	2	0
203	2	0
204	2	0
205	2	0
206	2	0
207	2	0
208	2	0
209	2	0
210	2	0.03
211	2	0.35
212	2	0.7
213	2	0.72
214	2	0.24
215	2	0.17
216	2	0.16
217	2	0.15
218	2	0.13
219	2	0.1
220	2	0.15
221	2	0.1
222	2	0.01
223	2	0
224	2	0
225	2	0
226	2	0
228	2	0
229	2	0
230	2	0
231	2	0
232	2	0
233	2	0
234	2	0
235	2	0.03
236	2	0.35
237	2	0.7
238	2	0.72
239	2	0.24
240	2	0.17
241	2	0.16
242	2	0.15
243	2	0.13
244	2	0.1
245	2	0.03
246	2	0.02
247	2	0
248	2	0
249	2	0
250	2	0
251	2	0
253	2	0
254	2	0
255	2	0
256	2	0
257	2	0
258	2	0
259	2	0.01
260	2	0.02
261	2	0.08
262	2	0.21
263	2	0.24
264	2	0.05
265	2	0.05
266	2	0.05
267	2	0.06
268	2	0.07
269	2	0.07
270	2	0.06
271	2	0.02
272	2	0
273	2	0
274	2	0
275	2	0
276	2	0
278	2	0
279	2	0
280	2	0
281	2	0
282	2	0
283	2	0
284	2	0
285	2	0
286	2	0
287	2	0.01
288	2	0.01
289	2	0.01
290	2	0.02
291	2	0.02
292	2	0.02
293	2	0.03
294	2	0.03
295	2	0.03
296	2	0.01
297	2	0
298	2	0
299	2	0
300	2	0
301	2	0
303	2	0
304	2	0
305	2	0
306	2	0
307	2	0
308	2	0
309	2	0
310	2	0
311	2	0.01
312	2	0.01
313	2	0.02
314	2	0.02
315	2	0.02
316	2	0.03
317	2	0.02
318	2	0.02
319	2	0.01
320	2	0.01
321	2	0
322	2	0
323	2	0
324	2	0
325	2	0
326	2	0
328	2	0
329	2	0
330	2	0
331	2	0
332	2	0
333	2	0.01
334	2	0.05
335	2	0.1
336	2	0.03
337	2	0.05
338	2	0.06
339	2	0.05
340	2	0.04
341	2	0.04
342	2	0.03
343	2	0.03
344	2	0.03
345	2	0.04
346	2	0.02
347	2	0
348	2	0
349	2	0
350	2	0.01
351	2	0.01
353	2	0.01
354	2	0.01
355	2	0.01
356	2	0.01
357	2	0
358	2	0
359	2	0.01
360	2	0.03
361	2	0.16
362	2	0.35
363	2	0.4
364	2	0.04
365	2	0.03
366	2	0.03
367	2	0.02
368	2	0.01
369	2	0.01
370	2	0.01
371	2	0
372	2	0
373	2	0
374	2	0
375	2	0
376	2	0
378	2	0
379	2	0
380	2	0
381	2	0
382	2	0
383	2	0
384	2	0
385	2	0.01
386	2	0.04
387	2	0.08
388	2	0.1
389	2	0.1
390	2	0.08
391	2	0.06
392	2	0.06
393	2	0.04
394	2	0.03
395	2	0.03
396	2	0.02
397	2	0
398	2	0
399	2	0
400	2	0
401	2	0
403	2	0
404	2	0
405	2	0
406	2	0
407	2	0
408	2	0
409	2	0
410	2	0.01
411	2	0.04
412	2	0.05
413	2	0.04
414	2	0.04
415	2	0.04
416	2	0.04
417	2	0.04
418	2	0.04
419	2	0.04
420	2	0.04
421	2	0.03
422	2	0
423	2	0
424	2	0
425	2	0
426	2	0
428	2	0
429	2	0
430	2	0
431	2	0
432	2	0
433	2	0
434	2	0
435	2	0.11
436	2	0.43
437	2	0.63
438	2	0.55
439	2	0.34
440	2	0.22
441	2	0.15
442	2	0.11
443	2	0.09
444	2	0.09
445	2	0.09
446	2	0.07
447	2	0.01
448	2	0
449	2	0
450	2	0
451	2	0
453	2	0
454	2	0
455	2	0
456	2	0
457	2	0
458	2	0
459	2	0
460	2	0.19
461	2	0.61
462	2	0.75
463	2	0.59
464	2	0.31
465	2	0.22
466	2	0.17
467	2	0.09
468	2	0.08
469	2	0.1
470	2	0.14
471	2	0.14
472	2	0.03
473	2	0
474	2	0
475	2	0
476	2	0
478	2	0
479	2	0
480	2	0
481	2	0
482	2	0
483	2	0
484	2	0
485	2	0.19
486	2	0.6
487	2	0.81
488	2	0.67
489	2	0.29
490	2	0.18
491	2	0.14
492	2	0.1
493	2	0.09
494	2	0.08
495	2	0.11
496	2	0.1
497	2	0.02
498	2	0
499	2	0
500	2	0
501	2	0
503	2	0
504	2	0
505	2	0
506	2	0
507	2	0
508	2	0
509	2	0.01
510	2	0.24
511	2	0.64
512	2	0.96
513	2	0.98
514	2	0.18
515	2	0.11
516	2	0.09
517	2	0.08
518	2	0.07
519	2	0.08
520	2	0.09
521	2	0.07
522	2	0.02
523	2	0
524	2	0
525	2	0
526	2	0
528	2	0
529	2	0
530	2	0
531	2	0
532	2	0
533	2	0
534	2	0
535	2	0.2
536	2	0.59
537	2	0.72
538	2	0.61
539	2	0.32
540	2	0.2
541	2	0.15
542	2	0.12
543	2	0.11
544	2	0.11
545	2	0.11
546	2	0.09
547	2	0.02
548	2	0
549	2	0
550	2	0
551	2	0
553	2	0
554	2	0
555	2	0
556	2	0
557	2	0
558	2	0
559	2	0
560	2	0.22
561	2	0.69
562	2	0.9
563	2	0.78
564	2	0.44
565	2	0.27
566	2	0.18
567	2	0.12
568	2	0.1
569	2	0.1
570	2	0.11
571	2	0.1
572	2	0.02
573	2	0
574	2	0
575	2	0
576	2	0
578	2	0
579	2	0
580	2	0
581	2	0
582	2	0
583	2	0
584	2	0
585	2	0.02
586	2	0.07
587	2	0.14
588	2	0.16
589	2	0.09
590	2	0.07
591	2	0.06
592	2	0.05
593	2	0.05
594	2	0.05
595	2	0.05
596	2	0.04
597	2	0.01
598	2	0
599	2	0
600	2	0
601	2	0
1	3	0.56
2	3	1.76
3	3	1.59
4	3	1.46
5	3	1.35
6	3	1.27
7	3	1.22
8	3	1.22
9	3	1.33
10	3	1.8
11	3	2.57
12	3	2.96
13	3	2.96
14	3	2.63
15	3	2.21
16	3	1.86
17	3	1.63
18	3	1.63
19	3	1.74
20	3	2.36
21	3	3.77
22	3	5.57
23	3	8.14
24	3	9.77
25	3	10.02
26	3	8.14
28	3	5.31
29	3	3.51
30	3	2.72
31	3	2.59
32	3	2.7
33	3	2.96
34	3	3.51
35	3	5.18
36	3	7.8
37	3	8.65
38	3	7.28
39	3	2.44
40	3	1.74
41	3	1.67
42	3	1.71
43	3	1.76
44	3	1.86
45	3	4.67
46	3	9.17
47	3	12
48	3	12.85
49	3	12.17
50	3	10.62
51	3	6.6
53	3	5.23
54	3	4.5
55	3	3
56	3	2.06
57	3	1.59
58	3	1.41
59	3	1.44
60	3	1.8
61	3	2.4
62	3	2.87
63	3	2.87
64	3	2.53
65	3	2.18
66	3	1.86
67	3	1.5
68	3	1.39
69	3	1.44
70	3	1.84
71	3	2.44
72	3	2.83
73	3	3.13
74	3	3.04
75	3	2.72
76	3	2.38
78	3	2.16
79	3	2.14
80	3	2.1
81	3	2.1
82	3	2.25
83	3	2.78
84	3	3.64
85	3	5.1
86	3	6.68
87	3	6.51
88	3	4.97
89	3	2.42
90	3	1.71
91	3	1.41
92	3	1.56
93	3	2.23
94	3	2.87
95	3	6.85
96	3	12.85
97	3	17.31
98	3	19.88
99	3	22.28
100	3	25.02
101	3	25.7
103	3	23.99
104	3	21.93
105	3	20.39
106	3	19.19
107	3	19.02
108	3	19.36
109	3	19.36
110	3	19.36
111	3	18.34
112	3	15.42
113	3	14.39
114	3	13.37
115	3	10.2
116	3	8.23
117	3	5.91
118	3	5.06
119	3	5.65
120	3	8.23
121	3	12.85
122	3	15.94
123	3	18.85
124	3	22.62
125	3	25.7
126	3	26.73
128	3	25.7
129	3	23.31
130	3	20.91
131	3	19.54
132	3	17.48
133	3	12
134	3	8.14
135	3	8.91
136	3	10.2
137	3	9.17
138	3	8.31
139	3	8.57
140	3	7.97
141	3	7.88
142	3	6.51
143	3	5.48
144	3	3.04
145	3	2.01
146	3	2.14
147	3	2.27
148	3	2.42
149	3	2.21
150	3	1.99
151	3	1.78
153	3	1.52
154	3	1.32
155	3	1.61
156	3	2.16
157	3	2.66
158	3	2.96
159	3	2.83
160	3	3.13
161	3	2.66
162	3	2.48
163	3	2.44
164	3	1.95
165	3	1.48
166	3	1.15
167	3	1.1
168	3	1.29
169	3	1.54
170	3	1.84
171	3	2.06
172	3	2.08
173	3	2.16
174	3	2.21
175	3	2.12
176	3	1.82
178	3	1.29
179	3	0.92
180	3	0.74
181	3	0.71
182	3	0.73
183	3	0.77
184	3	0.86
185	3	1.2
186	3	1.67
187	3	1.78
188	3	1.54
189	3	1.24
190	3	1.02
191	3	0.9
192	3	0.82
193	3	0.8
194	3	0.82
195	3	1.44
196	3	2.59
197	3	3.6
198	3	4.41
199	3	4.37
200	3	3.86
201	3	3.04
203	3	2.42
204	3	1.91
205	3	1.41
206	3	1.17
207	3	1.1
208	3	1.52
209	3	2.25
210	3	3.04
211	3	3.73
212	3	3.68
213	3	3.08
214	3	1.3
215	3	0.92
216	3	0.89
217	3	0.93
218	3	1.04
219	3	1.21
220	3	1.44
221	3	2.59
222	3	3.6
223	3	4.41
224	3	4.37
225	3	3.86
226	3	3.04
228	3	2.42
229	3	1.91
230	3	1.41
231	3	1.17
232	3	1.1
233	3	1.52
234	3	2.25
235	3	3.04
236	3	3.73
237	3	3.68
238	3	3.08
239	3	1.3
240	3	0.92
241	3	0.89
242	3	0.93
243	3	1.04
244	3	1.21
245	3	0.68
246	3	1.15
247	3	1.4
248	3	1.52
249	3	1.65
250	3	1.76
251	3	1.79
253	3	1.69
254	3	1.57
255	3	1.47
256	3	1.32
257	3	1.17
258	3	1.04
259	3	1.18
260	3	1.68
261	3	2.06
262	3	1.92
263	3	1.56
264	3	0.85
265	3	0.66
266	3	0.62
267	3	0.67
268	3	0.83
269	3	1.11
270	3	1.33
271	3	1.34
272	3	1.19
273	3	1.01
274	3	0.95
275	3	0.93
276	3	0.91
278	3	0.87
279	3	0.81
280	3	0.75
281	3	0.67
282	3	0.57
283	3	0.49
284	3	0.51
285	3	0.66
286	3	0.77
287	3	0.7
288	3	0.52
289	3	0.37
290	3	0.34
291	3	0.33
292	3	0.31
293	3	0.3
294	3	0.31
295	3	0.36
296	3	0.46
297	3	0.5
298	3	0.46
299	3	0.42
300	3	0.4
301	3	0.38
303	3	0.35
304	3	0.32
305	3	0.3
306	3	0.3
307	3	0.3
308	3	0.31
309	3	0.38
310	3	0.54
311	3	0.68
312	3	0.72
313	3	0.68
314	3	0.58
315	3	0.5
316	3	0.47
317	3	0.48
318	3	0.51
319	3	0.57
320	3	0.62
321	3	0.68
322	3	0.67
323	3	0.63
324	3	0.61
325	3	0.63
326	3	0.63
328	3	0.59
329	3	0.52
330	3	0.48
331	3	0.44
332	3	0.44
333	3	0.52
334	3	0.89
335	3	1.47
336	3	0.79
337	3	0.69
338	3	0.6
339	3	0.48
340	3	0.37
341	3	0.31
342	3	0.28
343	3	0.29
344	3	0.35
345	3	0.67
346	3	1.18
347	3	1.5
348	3	1.73
349	3	1.85
350	3	1.84
351	3	1.69
353	3	1.39
354	3	1.1
355	3	0.91
356	3	0.8
357	3	0.75
358	3	0.79
359	3	1.15
360	3	1.71
361	3	1.85
362	3	1.7
363	3	1.31
364	3	0.55
365	3	0.43
366	3	0.36
367	3	0.36
368	3	0.45
369	3	0.62
370	3	0.81
371	3	0.99
372	3	1.05
373	3	0.97
374	3	0.88
375	3	0.81
376	3	0.87
378	3	0.92
379	3	0.94
380	3	0.95
381	3	0.8
382	3	0.69
383	3	0.64
384	3	0.83
385	3	1.21
386	3	1.38
387	3	1.3
388	3	1.14
389	3	0.86
390	3	0.7
391	3	0.63
392	3	0.49
393	3	0.42
394	3	0.43
395	3	0.51
396	3	0.59
397	3	0.59
398	3	0.52
399	3	0.49
400	3	0.49
401	3	0.47
403	3	0.41
404	3	0.35
405	3	0.31
406	3	0.28
407	3	0.28
408	3	0.27
409	3	0.29
410	3	0.39
411	3	0.4
412	3	0.39
413	3	0.38
414	3	0.35
415	3	0.32
416	3	0.3
417	3	0.29
418	3	0.32
419	3	0.38
420	3	0.64
421	3	1.06
422	3	1.36
423	3	1.5
424	3	1.58
425	3	1.59
426	3	1.46
428	3	1.42
429	3	1.44
430	3	1.42
431	3	1.4
432	3	1.48
433	3	1.61
434	3	1.8
435	3	2.3
436	3	2.28
437	3	2
438	3	1.57
439	3	1.09
440	3	0.77
441	3	0.58
442	3	0.44
443	3	0.42
444	3	0.47
445	3	0.62
446	3	0.88
447	3	1.19
448	3	1.44
449	3	1.76
450	3	2.06
451	3	2.26
453	3	2.42
454	3	2.53
455	3	2.53
456	3	2.56
457	3	2.59
458	3	2.62
459	3	2.77
460	3	3.1
461	3	2.75
462	3	2.24
463	3	1.65
464	3	1.16
465	3	0.88
466	3	0.7
467	3	0.46
468	3	0.47
469	3	0.59
470	3	1.03
471	3	1.68
472	3	2.26
473	3	2.52
474	3	2.72
475	3	2.82
476	3	2.74
478	3	2.48
479	3	2.21
480	3	1.97
481	3	1.94
482	3	2.04
483	3	2.26
484	3	2.76
485	3	3.31
486	3	3.04
487	3	2.66
488	3	2.16
489	3	1.27
490	3	0.86
491	3	0.69
492	3	0.55
493	3	0.49
494	3	0.52
495	3	0.76
496	3	1.15
497	3	1.48
498	3	1.64
499	3	1.77
500	3	1.78
501	3	1.63
503	3	1.44
504	3	1.26
505	3	1.1
506	3	1.01
507	3	1
508	3	1.09
509	3	1.52
510	3	1.93
511	3	1.76
512	3	1.6
513	3	1.47
514	3	0.66
515	3	0.44
516	3	0.38
517	3	0.34
518	3	0.34
519	3	0.38
520	3	0.55
521	3	0.8
522	3	0.98
523	3	1.19
524	3	1.54
525	3	1.82
526	3	1.91
528	3	1.57
529	3	1.44
530	3	1.43
531	3	1.67
532	3	1.99
533	3	2.34
534	3	2.71
535	3	3.22
536	3	2.95
537	3	2.54
538	3	2.07
539	3	1.26
540	3	0.85
541	3	0.68
542	3	0.57
543	3	0.56
544	3	0.61
545	3	0.79
546	3	1.16
547	3	1.53
548	3	1.71
549	3	1.87
550	3	1.98
551	3	1.97
553	3	1.9
554	3	1.94
555	3	2.02
556	3	2.13
557	3	2.28
558	3	2.46
559	3	2.81
560	3	3.46
561	3	3.26
562	3	2.88
563	3	2.37
564	3	1.57
565	3	1.05
566	3	0.77
567	3	0.58
568	3	0.53
569	3	0.56
570	3	0.8
571	3	1.15
572	3	1.43
573	3	1.43
574	3	1.42
575	3	1.37
576	3	1.22
578	3	0.99
579	3	0.78
580	3	0.6
581	3	0.5
582	3	0.46
583	3	0.48
584	3	0.62
585	3	0.88
586	3	1.04
587	3	0.99
588	3	0.81
589	3	0.45
590	3	0.31
591	3	0.25
592	3	0.23
593	3	0.24
594	3	0.27
595	3	0.35
596	3	0.45
597	3	0.53
598	3	0.51
599	3	0.51
600	3	0.51
601	3	0.56
1	4	93.53
2	4	87.98
3	4	87.98
4	4	88.69
5	4	88.69
6	4	88.69
7	4	87.26
8	4	85.83
9	4	83.68
10	4	81.54
11	4	79.39
12	4	77.96
13	4	76.53
14	4	76.53
15	4	75.82
16	4	75.1
17	4	75.82
18	4	78.68
19	4	83.68
20	4	89.41
21	4	86.55
22	4	78.68
23	4	66.52
24	4	56.51
25	4	50.78
26	4	56.51
28	4	67.95
29	4	75.82
30	4	78.68
31	4	80.11
32	4	79.39
33	4	76.53
34	4	70.1
35	4	61.51
36	4	53.64
37	4	50.78
38	4	57.94
39	4	104.43
40	4	110.15
41	4	111.58
42	4	111.58
43	4	113.01
44	4	113.01
45	4	101.57
46	4	84.4
47	4	70.81
48	4	62.23
49	4	55.79
50	4	50.78
51	4	52.21
53	4	45.78
54	4	44.35
55	4	54.36
56	4	61.51
57	4	65.09
58	4	68.66
59	4	68.66
60	4	67.23
61	4	63.66
62	4	59.37
63	4	59.37
64	4	62.23
65	4	67.23
66	4	70.81
67	4	75.1
68	4	78.68
69	4	83.68
70	4	85.12
71	4	83.68
72	4	82.25
73	4	79.39
74	4	76.53
75	4	73.67
76	4	70.1
78	4	67.23
79	4	64.37
80	4	61.51
81	4	59.37
82	4	57.94
83	4	52.93
84	4	47.92
85	4	43.99
86	4	40.41
87	4	38.62
88	4	39.34
89	4	52.21
90	4	55.79
91	4	59.37
92	4	60.8
93	4	60.8
94	4	60.08
95	4	47.21
96	4	30.04
97	4	18.42
98	4	10.28
99	4	3.8
100	4	0.59
101	4	0.09
103	4	0.03
104	4	0.01
105	4	0
106	4	0
107	4	0
108	4	0
109	4	0
110	4	0.1
111	4	1.17
112	4	3.17
113	4	6.35
114	4	36.48
115	4	52.93
116	4	67.95
117	4	86.55
118	4	98.71
119	4	101.57
120	4	94.41
121	4	77.25
122	4	59.37
123	4	41.84
124	4	25.39
125	4	13.05
126	4	5.9
128	4	2.26
129	4	0.78
130	4	0.2
131	4	0.09
132	4	0.74
133	4	9.03
134	4	13.59
135	4	11.27
136	4	6.35
137	4	4.74
138	4	5.45
139	4	34.69
140	4	47.21
141	4	54.36
142	4	69.38
143	4	75.1
144	4	79.39
145	4	75.1
146	4	62.94
147	4	62.94
148	4	62.94
149	4	65.09
150	4	68.66
151	4	72.96
153	4	77.25
154	4	80.11
155	4	77.96
156	4	71.53
157	4	64.37
158	4	58.65
159	4	58.65
160	4	61.51
161	4	66.52
162	4	68.66
163	4	70.81
164	4	84.4
165	4	95.84
166	4	100.14
167	4	101.57
168	4	100.14
169	4	95.84
170	4	91.55
171	4	87.26
172	4	82.25
173	4	78.68
174	4	75.82
175	4	72.96
176	4	70.1
178	4	74.39
179	4	82.25
180	4	87.26
181	4	87.98
182	4	87.26
183	4	86.55
184	4	87.26
185	4	88.69
186	4	89.41
187	4	90.84
188	4	92.98
189	4	95.84
190	4	98.71
191	4	101.57
192	4	104.43
193	4	103
194	4	100.14
195	4	92.98
196	4	85.12
197	4	77.96
198	4	73.67
199	4	71.53
200	4	72.96
201	4	76.53
203	4	77.96
204	4	79.39
205	4	80.82
206	4	81.54
207	4	81.54
208	4	78.68
209	4	72.96
210	4	67.95
211	4	65.09
212	4	63.66
213	4	65.8
214	4	82.97
215	4	87.98
216	4	89.41
217	4	89.41
218	4	88.69
219	4	88.69
220	4	92.98
221	4	85.12
222	4	77.96
223	4	73.67
224	4	71.53
225	4	72.96
226	4	76.53
228	4	77.96
229	4	79.39
230	4	80.82
231	4	81.54
232	4	81.54
233	4	78.68
234	4	72.96
235	4	67.95
236	4	65.09
237	4	63.66
238	4	65.8
239	4	82.97
240	4	87.98
241	4	89.41
242	4	89.41
243	4	88.69
244	4	88.69
245	4	94.59
246	4	81.03
247	4	74.04
248	4	65.01
249	4	55.94
250	4	49.28
251	4	43.01
253	4	36.23
254	4	29.14
255	4	23.13
256	4	18.95
257	4	18.1
258	4	21.54
259	4	25.69
260	4	26.96
261	4	25.38
262	4	21.28
263	4	23.57
264	4	62.37
265	4	63.26
266	4	60.17
267	4	53.26
268	4	43.33
269	4	35.5
270	4	31.17
271	4	31.27
272	4	36.35
273	4	44.59
274	4	45.32
275	4	45.47
276	4	45.03
278	4	44.23
279	4	43.3
280	4	43.31
281	4	45.18
282	4	49.38
283	4	55.57
284	4	60.83
285	4	64.82
286	4	69.45
287	4	76.12
288	4	81.84
289	4	86.54
290	4	87.44
291	4	87.17
292	4	87.01
293	4	88.58
294	4	90.85
295	4	92.53
296	4	92.22
297	4	92.14
298	4	91.8
299	4	92.14
300	4	92.24
301	4	91.13
303	4	89.74
304	4	88.59
305	4	86.98
306	4	84.67
307	4	83.07
308	4	82.53
309	4	83.05
310	4	83.8
311	4	85.05
312	4	84.45
313	4	84.33
314	4	85.38
315	4	86.44
316	4	86.56
317	4	87.49
318	4	88.28
319	4	88.85
320	4	87.34
321	4	84.21
322	4	81.07
323	4	77.4
324	4	73.92
325	4	70.9
326	4	66.93
328	4	62.96
329	4	59.33
330	4	45.71
331	4	28.56
332	4	18.11
333	4	12.7
334	4	10.96
335	4	14.66
336	4	63.32
337	4	67.99
338	4	70.31
339	4	74.96
340	4	78.47
341	4	80.81
342	4	83.41
343	4	84
344	4	83.89
345	4	79.71
346	4	72.76
347	4	68.28
348	4	53
349	4	35.64
350	4	24.97
351	4	19.13
353	4	15.57
354	4	13.3
355	4	12.04
356	4	12.84
357	4	15.87
358	4	22.2
359	4	25.85
360	4	28.43
361	4	32.35
362	4	31.92
363	4	37.96
364	4	74.88
365	4	76.52
366	4	74.94
367	4	73.29
368	4	72.25
369	4	70.97
370	4	67.52
371	4	64.46
372	4	62.8
373	4	61.28
374	4	60.85
375	4	61.37
376	4	52.9
378	4	44.29
379	4	43.36
380	4	45.14
381	4	40.67
382	4	39.75
383	4	49.01
384	4	50.94
385	4	52.17
386	4	54.99
387	4	58.44
388	4	62.36
389	4	68.29
390	4	71.77
391	4	74.5
392	4	79.92
393	4	84.06
394	4	86.56
395	4	88.19
396	4	89.4
397	4	92.03
398	4	92.9
399	4	94.58
400	4	96.04
401	4	95.73
403	4	95.79
404	4	95.38
405	4	94.47
406	4	93.79
407	4	93.1
408	4	93.61
409	4	94.36
410	4	94.16
411	4	93.53
412	4	92.72
413	4	91.67
414	4	91.62
415	4	90.42
416	4	88.99
417	4	88.57
418	4	87.27
419	4	85.98
420	4	80.87
421	4	72.39
422	4	66.22
423	4	61.02
424	4	59.02
425	4	60.23
426	4	63.6
428	4	66.75
429	4	69.42
430	4	71.89
431	4	73.18
432	4	74.01
433	4	73.8
434	4	72.81
435	4	71.58
436	4	68.92
437	4	67.22
438	4	69.56
439	4	79.61
440	4	83.28
441	4	86.2
442	4	93.17
443	4	95.02
444	4	94.8
445	4	95.11
446	4	94.78
447	4	96.06
448	4	95.67
449	4	94.5
450	4	92.4
451	4	87.26
453	4	80.71
454	4	73.65
455	4	67.7
456	4	63.6
457	4	60.66
458	4	58.34
459	4	57.48
460	4	58.04
461	4	58.58
462	4	59.45
463	4	63.4
464	4	85.96
465	4	88.27
466	4	89.18
467	4	104.87
468	4	105.07
469	4	102.6
470	4	93.64
471	4	80.06
472	4	69.7
473	4	57.75
474	4	47.34
475	4	40.75
476	4	37.19
478	4	39.35
479	4	46.7
480	4	56.63
481	4	58.48
482	4	56.86
483	4	53.79
484	4	53.24
485	4	57.46
486	4	60.77
487	4	61.3
488	4	68.68
489	4	95.1
490	4	100.64
491	4	101.39
492	4	106.25
493	4	106.49
494	4	105.17
495	4	98.37
496	4	88.23
497	4	79.51
498	4	64.17
499	4	48.47
500	4	38.52
501	4	32.45
503	4	29.54
504	4	30.01
505	4	34.98
506	4	30.4
507	4	25.79
508	4	23.29
509	4	23.94
510	4	28.59
511	4	35.81
512	4	34.13
513	4	36.29
514	4	88.63
515	4	93.42
516	4	92.25
517	4	94.8
518	4	95.4
519	4	94.64
520	4	90.5
521	4	85.43
522	4	82.81
523	4	70
524	4	55.06
525	4	45.18
526	4	37.92
528	4	52.46
529	4	53.9
530	4	67.41
531	4	67.08
532	4	65.01
533	4	62.57
534	4	61.76
535	4	62.93
536	4	66.12
537	4	71.35
538	4	79.94
539	4	98.01
540	4	103.88
541	4	105.94
542	4	108.11
543	4	108.42
544	4	109.11
545	4	108.73
546	4	105.25
547	4	101.74
548	4	95.85
549	4	89.98
550	4	85.79
551	4	83.47
553	4	84.21
554	4	84.96
555	4	83.2
556	4	78.61
557	4	74.09
558	4	69.65
559	4	66.41
560	4	64.44
561	4	63
562	4	64.36
563	4	70.44
564	4	87.7
565	4	94.27
566	4	97.4
567	4	102.19
568	4	103.81
569	4	104.65
570	4	101.83
571	4	96.05
572	4	91.52
573	4	85.66
574	4	80.5
575	4	76.78
576	4	73.39
578	4	72.26
579	4	72.08
580	4	73.33
581	4	73.81
582	4	73.49
583	4	71.97
584	4	68.05
585	4	65.17
586	4	63.77
587	4	65.65
588	4	71.53
589	4	86.8
590	4	91.02
591	4	91.87
592	4	93.56
593	4	95.07
594	4	96.27
595	4	96.81
596	4	97.16
597	4	97.66
598	4	96.2
599	4	95.06
600	4	94.24
601	4	88.26
1	5	0.24
2	5	0.23
3	5	0.23
4	5	0.25
5	5	0.25
6	5	0.26
7	5	0.26
8	5	0.27
9	5	0.28
10	5	0.3
11	5	0.32
12	5	0.33
13	5	0.34
14	5	0.32
15	5	0.29
16	5	0.25
17	5	0.2
18	5	0.19
19	5	0.2
20	5	0.23
21	5	0.28
22	5	0.35
23	5	0.38
24	5	0.38
25	5	0.38
26	5	0.34
28	5	0.29
29	5	0.26
30	5	0.23
31	5	0.24
32	5	0.27
33	5	0.31
34	5	0.32
35	5	0.33
36	5	0.37
37	5	0.47
38	5	0.69
39	5	0.51
40	5	0.45
41	5	0.49
42	5	0.51
43	5	0.51
44	5	0.48
45	5	0.54
46	5	0.57
47	5	0.49
48	5	0.41
49	5	0.39
50	5	0.47
51	5	0.7
53	5	0.61
54	5	0.54
55	5	0.38
56	5	0.29
57	5	0.27
58	5	0.28
59	5	0.31
60	5	0.33
61	5	0.34
62	5	0.35
63	5	0.33
64	5	0.33
65	5	0.34
66	5	0.32
67	5	0.26
68	5	0.23
69	5	0.22
70	5	0.25
71	5	0.29
72	5	0.31
73	5	0.35
74	5	0.38
75	5	0.38
76	5	0.37
78	5	0.38
79	5	0.43
80	5	0.46
81	5	0.5
82	5	0.58
83	5	0.7
84	5	0.85
85	5	0.98
86	5	1.09
87	5	1.12
88	5	1.03
89	5	0.6
90	5	0.51
91	5	0.51
92	5	0.58
93	5	0.72
94	5	0.7
95	5	0.54
96	5	0.49
97	5	0.52
98	5	0.57
99	5	0.6
100	5	0.62
101	5	0.53
103	5	0.43
104	5	0.38
105	5	0.37
106	5	0.37
107	5	0.38
108	5	0.42
109	5	0.51
110	5	0.67
111	5	0.78
112	5	0.9
113	5	1.39
114	5	3.49
115	5	3.28
116	5	3.01
117	5	2.56
118	5	2.24
119	5	2.12
120	5	1.88
121	5	1.49
122	5	1.09
123	5	0.77
124	5	0.59
125	5	0.49
126	5	0.43
128	5	0.37
129	5	0.34
130	5	0.33
131	5	0.32
132	5	0.31
133	5	0.29
134	5	0.28
135	5	0.33
136	5	0.37
137	5	0.44
138	5	0.62
139	5	1.46
140	5	1.82
141	5	2.03
142	5	1.55
143	5	1.19
144	5	0.64
145	5	0.36
146	5	0.3
147	5	0.26
148	5	0.26
149	5	0.24
150	5	0.22
151	5	0.23
153	5	0.25
154	5	0.27
155	5	0.35
156	5	0.42
157	5	0.45
158	5	0.42
159	5	0.39
160	5	0.4
161	5	0.38
162	5	0.39
163	5	0.45
164	5	0.38
165	5	0.29
166	5	0.23
167	5	0.21
168	5	0.22
169	5	0.24
170	5	0.25
171	5	0.26
172	5	0.26
173	5	0.27
174	5	0.28
175	5	0.26
176	5	0.24
178	5	0.23
179	5	0.2
180	5	0.19
181	5	0.18
182	5	0.19
183	5	0.2
184	5	0.21
185	5	0.22
186	5	0.25
187	5	0.27
188	5	0.28
189	5	0.27
190	5	0.25
191	5	0.23
192	5	0.21
193	5	0.21
194	5	0.2
195	5	0.27
196	5	0.36
197	5	0.42
198	5	0.53
199	5	0.6
200	5	0.6
201	5	0.51
203	5	0.45
204	5	0.38
205	5	0.29
206	5	0.24
207	5	0.23
208	5	0.34
209	5	0.53
210	5	0.62
211	5	0.67
212	5	0.7
213	5	0.64
214	5	0.29
215	5	0.25
216	5	0.25
217	5	0.26
218	5	0.28
219	5	0.29
220	5	0.27
221	5	0.36
222	5	0.42
223	5	0.53
224	5	0.6
225	5	0.6
226	5	0.51
228	5	0.45
229	5	0.38
230	5	0.29
231	5	0.24
232	5	0.23
233	5	0.34
234	5	0.53
235	5	0.62
236	5	0.67
237	5	0.7
238	5	0.64
239	5	0.29
240	5	0.25
241	5	0.25
242	5	0.26
243	5	0.28
244	5	0.29
245	5	0.13
246	5	0.16
247	5	0.16
248	5	0.13
249	5	0.1
250	5	0.09
251	5	0.07
253	5	0.06
254	5	0.05
255	5	0.05
256	5	0.04
257	5	0.04
258	5	0.04
259	5	0.04
260	5	0.03
261	5	0.03
262	5	0.03
263	5	0.03
264	5	0.03
265	5	0.02
266	5	0.02
267	5	0.02
268	5	0.02
269	5	0.03
270	5	0.04
271	5	0.04
272	5	0.04
273	5	0.04
274	5	0.04
275	5	0.04
276	5	0.04
278	5	0.05
279	5	0.05
280	5	0.05
281	5	0.05
282	5	0.05
283	5	0.04
284	5	0.04
285	5	0.05
286	5	0.07
287	5	0.1
288	5	0.12
289	5	0.11
290	5	0.1
291	5	0.09
292	5	0.1
293	5	0.12
294	5	0.13
295	5	0.13
296	5	0.14
297	5	0.14
298	5	0.13
299	5	0.12
300	5	0.1
301	5	0.09
303	5	0.09
304	5	0.09
305	5	0.09
306	5	0.09
307	5	0.09
308	5	0.09
309	5	0.08
310	5	0.09
311	5	0.13
312	5	0.15
313	5	0.16
314	5	0.18
315	5	0.2
316	5	0.21
317	5	0.21
318	5	0.19
319	5	0.17
320	5	0.16
321	5	0.15
322	5	0.15
323	5	0.14
324	5	0.13
325	5	0.12
326	5	0.12
328	5	0.11
329	5	0.11
330	5	0.08
331	5	0.05
332	5	0.04
333	5	0.04
334	5	0.03
335	5	0.04
336	5	0.1
337	5	0.09
338	5	0.08
339	5	0.07
340	5	0.05
341	5	0.04
342	5	0.04
343	5	0.04
344	5	0.04
345	5	0.04
346	5	0.06
347	5	0.08
348	5	0.07
349	5	0.04
350	5	0.03
351	5	0.03
353	5	0.03
354	5	0.03
355	5	0.02
356	5	0.03
357	5	0.03
358	5	0.04
359	5	0.05
360	5	0.05
361	5	0.05
362	5	0.05
363	5	0.05
364	5	0.04
365	5	0.03
366	5	0.03
367	5	0.04
368	5	0.05
369	5	0.09
370	5	0.13
371	5	0.18
372	5	0.21
373	5	0.2
374	5	0.18
375	5	0.17
376	5	0.13
378	5	0.12
379	5	0.13
380	5	0.15
381	5	0.13
382	5	0.11
383	5	0.13
384	5	0.15
385	5	0.17
386	5	0.2
387	5	0.2
388	5	0.19
389	5	0.16
390	5	0.13
391	5	0.13
392	5	0.12
393	5	0.12
394	5	0.13
395	5	0.17
396	5	0.21
397	5	0.25
398	5	0.26
399	5	0.26
400	5	0.26
401	5	0.24
403	5	0.23
404	5	0.21
405	5	0.2
406	5	0.19
407	5	0.18
408	5	0.17
409	5	0.16
410	5	0.15
411	5	0.15
412	5	0.14
413	5	0.14
414	5	0.13
415	5	0.12
416	5	0.11
417	5	0.11
418	5	0.11
419	5	0.11
420	5	0.12
421	5	0.13
422	5	0.14
423	5	0.15
424	5	0.17
425	5	0.19
426	5	0.22
428	5	0.25
429	5	0.29
430	5	0.31
431	5	0.32
432	5	0.36
433	5	0.41
434	5	0.47
435	5	0.51
436	5	0.57
437	5	0.63
438	5	0.67
439	5	0.66
440	5	0.58
441	5	0.52
442	5	0.46
443	5	0.43
444	5	0.42
445	5	0.45
446	5	0.51
447	5	0.55
448	5	0.58
449	5	0.62
450	5	0.64
451	5	0.62
453	5	0.58
454	5	0.54
455	5	0.5
456	5	0.47
457	5	0.45
458	5	0.44
459	5	0.45
460	5	0.47
461	5	0.49
462	5	0.53
463	5	0.56
464	5	0.51
465	5	0.43
466	5	0.4
467	5	0.27
468	5	0.26
469	5	0.3
470	5	0.35
471	5	0.35
472	5	0.32
473	5	0.25
474	5	0.2
475	5	0.18
476	5	0.17
478	5	0.22
479	5	0.32
480	5	0.47
481	5	0.52
482	5	0.55
483	5	0.59
484	5	0.69
485	5	0.89
486	5	1.05
487	5	1.09
488	5	1.24
489	5	1.38
490	5	1.23
491	5	1.1
492	5	0.87
493	5	0.7
494	5	0.64
495	5	0.6
496	5	0.56
497	5	0.48
498	5	0.3
499	5	0.16
500	5	0.1
501	5	0.08
503	5	0.08
504	5	0.1
505	5	0.13
506	5	0.09
507	5	0.07
508	5	0.06
509	5	0.08
510	5	0.12
511	5	0.18
512	5	0.16
513	5	0.19
514	5	0.49
515	5	0.45
516	5	0.45
517	5	0.42
518	5	0.4
519	5	0.39
520	5	0.38
521	5	0.38
522	5	0.37
523	5	0.24
524	5	0.13
525	5	0.09
526	5	0.07
528	5	0.18
529	5	0.21
530	5	0.48
531	5	0.55
532	5	0.6
533	5	0.63
534	5	0.65
535	5	0.64
536	5	0.66
537	5	0.64
538	5	0.62
539	5	0.45
540	5	0.36
541	5	0.35
542	5	0.33
543	5	0.33
544	5	0.37
545	5	0.39
546	5	0.43
547	5	0.49
548	5	0.51
549	5	0.49
550	5	0.47
551	5	0.47
553	5	0.57
554	5	0.75
555	5	0.9
556	5	0.9
557	5	0.88
558	5	0.84
559	5	0.83
560	5	0.82
561	5	0.84
562	5	0.89
563	5	0.97
564	5	0.91
565	5	0.82
566	5	0.79
567	5	0.69
568	5	0.63
569	5	0.64
570	5	0.66
571	5	0.67
572	5	0.65
573	5	0.59
574	5	0.51
575	5	0.45
576	5	0.41
578	5	0.38
579	5	0.37
580	5	0.37
581	5	0.34
582	5	0.3
583	5	0.26
584	5	0.21
585	5	0.19
586	5	0.2
587	5	0.25
588	5	0.32
589	5	0.33
590	5	0.33
591	5	0.34
592	5	0.36
593	5	0.38
594	5	0.41
595	5	0.43
596	5	0.45
597	5	0.44
598	5	0.4
599	5	0.37
600	5	0.35
601	5	0.28
1	6	0.73
2	6	0.5
3	6	0.5
4	6	0.5
5	6	0.5
6	6	0.5
7	6	0.5
8	6	0.5
9	6	0.5
10	6	0.5
11	6	0.5
12	6	0.5
13	6	0.5
14	6	0.5
15	6	0.5
16	6	0.5
17	6	0.5
18	6	0.53
19	6	0.61
20	6	0.66
21	6	0.77
22	6	1.04
23	6	1.5
24	6	1.93
25	6	2.23
26	6	2.02
28	6	1.4
29	6	0.96
30	6	0.79
31	6	0.78
32	6	0.81
33	6	0.87
34	6	0.96
35	6	1.25
36	6	1.68
37	6	1.95
38	6	1.88
39	6	0.69
40	6	0.52
41	6	0.54
42	6	0.58
43	6	0.6
44	6	0.58
45	6	0.87
46	6	1.47
47	6	2.04
48	6	2.38
49	6	2.46
50	6	2.28
51	6	1.51
53	6	1.31
54	6	1.3
55	6	1.15
56	6	0.97
57	6	0.86
58	6	0.77
59	6	0.82
60	6	0.94
61	6	1.01
62	6	0.98
63	6	0.85
64	6	0.69
65	6	0.56
66	6	0.5
67	6	0.5
68	6	0.5
69	6	0.5
70	6	0.5
71	6	0.5
72	6	0.55
73	6	0.61
74	6	0.62
75	6	0.61
76	6	0.58
78	6	0.56
79	6	0.58
80	6	0.62
81	6	0.66
82	6	0.71
83	6	0.79
84	6	0.96
85	6	1.26
86	6	1.55
87	6	1.55
88	6	1.31
89	6	0.73
90	6	0.6
91	6	0.57
92	6	0.63
93	6	0.76
94	6	0.81
95	6	1.11
96	6	1.62
97	6	2.25
98	6	2.9
99	6	3.64
100	6	4.88
101	6	6.36
103	6	7.56
104	6	9.16
105	6	10.74
106	6	11.85
107	6	12.34
108	6	12.28
109	6	12.18
110	6	12.67
111	6	12.52
112	6	11.77
113	6	10.73
114	6	8.17
115	6	8.32
116	6	10.27
117	6	12.38
118	6	13.91
119	6	14.57
120	6	14.55
121	6	14.68
122	6	14.09
123	6	13.29
124	6	12.69
125	6	11.66
126	6	11.09
128	6	10.85
129	6	10.86
130	6	10.96
131	6	11.56
132	6	10.53
133	6	6.63
134	6	5.14
135	6	5.14
136	6	5.61
137	6	6.12
138	6	6.74
139	6	5.31
140	6	5.79
141	6	7.65
142	6	8.6
143	6	11.35
144	6	9.03
145	6	2.92
146	6	0.8
147	6	0.5
148	6	0.5
149	6	0.55
150	6	0.61
151	6	0.71
153	6	0.81
154	6	0.86
155	6	0.87
156	6	0.87
157	6	0.81
158	6	0.76
159	6	0.76
160	6	0.81
161	6	0.61
162	6	0.5
163	6	0.5
164	6	0.5
165	6	0.5
166	6	0.5
167	6	0.5
168	6	0.5
169	6	0.5
170	6	0.5
171	6	0.5
172	6	0.5
173	6	0.5
174	6	0.5
175	6	0.5
176	6	0.5
178	6	0.57
179	6	0.76
180	6	0.86
181	6	0.81
182	6	0.62
183	6	0.5
184	6	0.5
185	6	0.5
186	6	0.5
187	6	0.56
188	6	0.58
189	6	0.52
190	6	0.5
191	6	0.5
192	6	0.5
193	6	0.5
194	6	0.5
195	6	0.5
196	6	0.52
197	6	0.64
198	6	0.76
199	6	0.74
200	6	0.65
201	6	0.5
203	6	0.5
204	6	0.5
205	6	0.5
206	6	0.5
207	6	0.5
208	6	0.5
209	6	0.5
210	6	0.5
211	6	0.56
212	6	0.61
213	6	0.6
214	6	0.5
215	6	0.5
216	6	0.5
217	6	0.5
218	6	0.5
219	6	0.5
220	6	0.5
221	6	0.52
222	6	0.64
223	6	0.76
224	6	0.74
225	6	0.65
226	6	0.5
228	6	0.5
229	6	0.5
230	6	0.5
231	6	0.5
232	6	0.5
233	6	0.5
234	6	0.5
235	6	0.5
236	6	0.56
237	6	0.61
238	6	0.6
239	6	0.5
240	6	0.5
241	6	0.5
242	6	0.5
243	6	0.5
244	6	0.5
245	6	2.55
246	6	3.14
247	6	3.63
248	6	3.79
249	6	3.82
250	6	3.77
251	6	3.64
253	6	3.57
254	6	3.51
255	6	3.44
256	6	3.35
257	6	3.26
258	6	3.12
259	6	3.02
260	6	2.97
261	6	2.97
262	6	2.94
263	6	2.84
264	6	2.05
265	6	1.61
266	6	1.4
267	6	1.32
268	6	1.3
269	6	1.31
270	6	1.27
271	6	1.16
272	6	1.03
273	6	0.92
274	6	0.9
275	6	0.9
276	6	0.91
278	6	0.85
279	6	0.76
280	6	0.67
281	6	0.57
282	6	0.5
283	6	0.5
284	6	0.5
285	6	0.5
286	6	0.5
287	6	0.67
288	6	0.91
289	6	0.82
290	6	0.67
291	6	0.51
292	6	0.5
293	6	0.52
294	6	0.55
295	6	0.54
296	6	0.5
297	6	0.5
298	6	0.5
299	6	0.5
300	6	0.5
301	6	0.5
303	6	0.5
304	6	0.5
305	6	0.5
306	6	0.5
307	6	0.5
308	6	0.5
309	6	0.5
310	6	0.5
311	6	0.5
312	6	0.51
313	6	0.64
314	6	0.72
315	6	0.75
316	6	0.83
317	6	0.96
318	6	0.97
319	6	0.91
320	6	0.88
321	6	0.96
322	6	1.01
323	6	1
324	6	0.99
325	6	1.03
326	6	1.1
328	6	1.17
329	6	1.22
330	6	1.24
331	6	1.23
332	6	1.21
333	6	1.19
334	6	1.21
335	6	1.26
336	6	1.41
337	6	1.28
338	6	1.14
339	6	1.01
340	6	0.81
341	6	0.66
342	6	0.57
343	6	0.52
344	6	0.5
345	6	0.55
346	6	0.72
347	6	0.98
348	6	1.22
349	6	1.38
350	6	1.47
351	6	1.5
353	6	1.49
354	6	1.44
355	6	1.28
356	6	1.17
357	6	1.15
358	6	1.27
359	6	1.39
360	6	1.47
361	6	1.49
362	6	1.43
363	6	1.29
364	6	0.67
365	6	0.52
366	6	0.5
367	6	0.51
368	6	0.68
369	6	1.09
370	6	1.71
371	6	2.4
372	6	2.89
373	6	2.85
374	6	2.59
375	6	2.46
376	6	2.37
378	6	2.32
379	6	2.25
380	6	2.17
381	6	2.08
382	6	1.92
383	6	1.6
384	6	1.38
385	6	1.27
386	6	1.15
387	6	1.01
388	6	0.91
389	6	0.8
390	6	0.7
391	6	0.63
392	6	0.55
393	6	0.5
394	6	0.5
395	6	0.58
396	6	0.72
397	6	0.82
398	6	0.88
399	6	0.91
400	6	0.9
401	6	0.83
403	6	0.74
404	6	0.65
405	6	0.54
406	6	0.5
407	6	0.5
408	6	0.5
409	6	0.5
410	6	0.5
411	6	0.5
412	6	0.5
413	6	0.5
414	6	0.5
415	6	0.5
416	6	0.5
417	6	0.5
418	6	0.5
419	6	0.5
420	6	0.5
421	6	0.5
422	6	0.5
423	6	0.5
424	6	0.5
425	6	0.5
426	6	0.5
428	6	0.5
429	6	0.5
430	6	0.5
431	6	0.5
432	6	0.5
433	6	0.51
434	6	0.53
435	6	0.55
436	6	0.59
437	6	0.66
438	6	0.86
439	6	1.3
440	6	1.88
441	6	2.39
442	6	2.44
443	6	2.62
444	6	2.93
445	6	3.43
446	6	4
447	6	4.21
448	6	4
449	6	3.55
450	6	2.96
451	6	2.55
453	6	2.39
454	6	2.3
455	6	2.2
456	6	2.15
457	6	2.1
458	6	2.02
459	6	1.92
460	6	1.85
461	6	1.79
462	6	1.76
463	6	1.9
464	6	2.29
465	6	2.74
466	6	3.07
467	6	2.42
468	6	2.55
469	6	2.98
470	6	3.75
471	6	4.63
472	6	5.29
473	6	5.64
474	6	5.97
475	6	6.24
476	6	6.35
478	6	6.46
479	6	6.43
480	6	6.08
481	6	5.88
482	6	5.89
483	6	5.97
484	6	6.06
485	6	6.42
486	6	6.6
487	6	6.91
488	6	7.78
489	6	7.96
490	6	8.01
491	6	7.68
492	6	6.33
493	6	5.38
494	6	5.13
495	6	5.18
496	6	5.3
497	6	5.15
498	6	4.8
499	6	4.52
500	6	4.16
501	6	3.74
503	6	3.49
504	6	3.37
505	6	3.28
506	6	3.18
507	6	3.11
508	6	2.99
509	6	2.86
510	6	2.72
511	6	2.57
512	6	2.48
513	6	2.42
514	6	1.84
515	6	1.81
516	6	1.92
517	6	1.88
518	6	1.85
519	6	1.85
520	6	1.87
521	6	1.93
522	6	1.95
523	6	1.94
524	6	1.97
525	6	2
526	6	1.98
528	6	2.04
529	6	2.1
530	6	2.36
531	6	2.53
532	6	2.8
533	6	3.19
534	6	3.54
535	6	3.66
536	6	3.52
537	6	3.14
538	6	2.8
539	6	2.08
540	6	1.82
541	6	1.81
542	6	1.75
543	6	1.87
544	6	2.11
545	6	2.2
546	6	2.31
547	6	2.44
548	6	2.59
549	6	2.82
550	6	2.98
551	6	3.05
553	6	3.2
554	6	3.46
555	6	3.73
556	6	3.9
557	6	3.94
558	6	3.83
559	6	3.66
560	6	3.48
561	6	3.27
562	6	3.13
563	6	3.35
564	6	3.61
565	6	4.04
566	6	4.27
567	6	3.8
568	6	3.54
569	6	3.57
570	6	3.88
571	6	4.28
572	6	4.54
573	6	4.58
574	6	4.55
575	6	4.42
576	6	4.11
578	6	3.76
579	6	3.38
580	6	2.89
581	6	2.43
582	6	2.08
583	6	1.79
584	6	1.61
585	6	1.57
586	6	1.7
587	6	1.87
588	6	1.93
589	6	1.7
590	6	1.52
591	6	1.46
592	6	1.45
593	6	1.5
594	6	1.54
595	6	1.58
596	6	1.58
597	6	1.51
598	6	1.39
599	6	1.3
600	6	1.24
601	6	1.18
1	7	2.06
2	7	0.58
3	7	0.57
4	7	0.56
5	7	0.56
6	7	0.56
7	7	0.57
8	7	0.56
9	7	0.56
10	7	0.58
11	7	0.59
12	7	0.6
13	7	0.59
14	7	0.59
15	7	0.58
16	7	0.57
17	7	0.56
18	7	0.6
19	7	0.69
20	7	0.77
21	7	0.94
22	7	1.29
23	7	1.84
24	7	2.37
25	7	2.76
26	7	2.55
28	7	1.85
29	7	1.36
30	7	1.23
31	7	1.26
32	7	1.32
33	7	1.39
34	7	1.52
35	7	1.91
36	7	2.52
37	7	3.02
38	7	3.05
39	7	1.4
40	7	1.07
41	7	1.05
42	7	1.1
43	7	1.14
44	7	1.09
45	7	1.48
46	7	2.27
47	7	3.01
48	7	3.48
49	7	3.6
50	7	3.39
51	7	2.42
53	7	2.07
54	7	1.93
55	7	1.58
56	7	1.25
57	7	1.08
58	7	0.97
59	7	1.06
60	7	1.25
61	7	1.34
62	7	1.25
63	7	1.06
64	7	0.88
65	7	0.79
66	7	0.75
67	7	0.72
68	7	0.68
69	7	0.67
70	7	0.69
71	7	0.73
72	7	0.83
73	7	0.94
74	7	0.99
75	7	0.99
76	7	0.95
78	7	0.92
79	7	0.95
80	7	0.99
81	7	1.05
82	7	1.12
83	7	1.25
84	7	1.5
85	7	1.95
86	7	2.37
87	7	2.38
88	7	2.06
89	7	1.18
90	7	0.95
91	7	0.87
92	7	0.97
93	7	1.14
94	7	1.27
95	7	2.02
96	7	3.23
97	7	4.66
98	7	6.39
99	7	8.32
100	7	10.59
101	7	12.68
103	7	13.87
104	7	14.94
105	7	15.85
106	7	15.93
107	7	15.6
108	7	14.78
109	7	14.2
110	7	14.58
111	7	14.69
112	7	13.91
113	7	12.84
114	7	9.82
115	7	9.99
116	7	12.09
117	7	14.11
118	7	15.57
119	7	16.32
120	7	16.49
121	7	16.96
122	7	16.8
123	7	16.56
124	7	16.59
125	7	15.95
126	7	15.5
128	7	15.29
129	7	15.46
130	7	15.56
131	7	16.38
132	7	16.1
133	7	13.24
134	7	11.27
135	7	10.88
136	7	11.56
137	7	13.11
138	7	14.75
139	7	13.34
140	7	13.32
141	7	14.59
142	7	14.64
143	7	15.33
144	7	10.15
145	7	3.3
146	7	0.97
147	7	0.63
148	7	0.64
149	7	0.67
150	7	0.73
151	7	0.81
153	7	0.9
154	7	0.95
155	7	1
156	7	1.06
157	7	1.05
158	7	1.01
159	7	1.01
160	7	1.07
161	7	0.83
162	7	0.72
163	7	0.72
164	7	0.62
165	7	0.56
166	7	0.55
167	7	0.54
168	7	0.54
169	7	0.55
170	7	0.55
171	7	0.56
172	7	0.58
173	7	0.58
174	7	0.57
175	7	0.57
176	7	0.57
178	7	0.62
179	7	0.81
180	7	0.9
181	7	0.86
182	7	0.67
183	7	0.54
184	7	0.55
185	7	0.56
186	7	0.58
187	7	0.67
188	7	0.72
189	7	0.7
190	7	0.73
191	7	0.83
192	7	0.89
193	7	0.91
194	7	0.9
195	7	0.9
196	7	0.95
197	7	1.1
198	7	1.23
199	7	1.19
200	7	1.08
201	7	0.81
203	7	0.7
204	7	0.66
205	7	0.62
206	7	0.6
207	7	0.6
208	7	0.65
209	7	0.74
210	7	0.82
211	7	0.94
212	7	0.99
213	7	0.95
214	7	0.7
215	7	0.66
216	7	0.65
217	7	0.65
218	7	0.65
219	7	0.65
220	7	0.9
221	7	0.95
222	7	1.1
223	7	1.23
224	7	1.19
225	7	1.08
226	7	0.81
228	7	0.7
229	7	0.66
230	7	0.62
231	7	0.6
232	7	0.6
233	7	0.65
234	7	0.74
235	7	0.82
236	7	0.94
237	7	0.99
238	7	0.95
239	7	0.7
240	7	0.66
241	7	0.65
242	7	0.65
243	7	0.65
244	7	0.65
245	7	3.99
246	7	4.31
247	7	4.56
248	7	4.55
249	7	4.52
250	7	4.46
251	7	4.36
253	7	4.3
254	7	4.27
255	7	4.16
256	7	4.02
257	7	3.9
258	7	3.74
259	7	3.6
260	7	3.53
261	7	3.5
262	7	3.43
263	7	3.24
264	7	2.32
265	7	1.8
266	7	1.58
267	7	1.48
268	7	1.45
269	7	1.44
270	7	1.37
271	7	1.22
272	7	1.06
273	7	0.94
274	7	0.92
275	7	0.92
276	7	0.93
278	7	0.88
279	7	0.79
280	7	0.71
281	7	0.61
282	7	0.5
283	7	0.5
284	7	0.5
285	7	0.5
286	7	0.5
287	7	0.8
288	7	1.13
289	7	1.05
290	7	0.84
291	7	0.68
292	7	0.68
293	7	0.88
294	7	1
295	7	1.05
296	7	1.01
297	7	0.95
298	7	0.9
299	7	0.81
300	7	0.68
301	7	0.58
303	7	0.57
304	7	0.63
305	7	0.73
306	7	0.83
307	7	0.9
308	7	0.89
309	7	0.79
310	7	0.74
311	7	0.8
312	7	0.97
313	7	1.19
314	7	1.32
315	7	1.29
316	7	1.33
317	7	1.46
318	7	1.39
319	7	1.2
320	7	1.08
321	7	1.16
322	7	1.25
323	7	1.24
324	7	1.23
325	7	1.28
326	7	1.38
328	7	1.49
329	7	1.57
330	7	1.58
331	7	1.55
332	7	1.51
333	7	1.5
334	7	1.54
335	7	1.65
336	7	2.32
337	7	2.14
338	7	1.88
339	7	1.66
340	7	1.33
341	7	1.09
342	7	0.96
343	7	0.9
344	7	0.88
345	7	0.95
346	7	1.18
347	7	1.58
348	7	1.95
349	7	2.17
350	7	2.27
351	7	2.19
353	7	2.04
354	7	1.88
355	7	1.53
356	7	1.41
357	7	1.42
358	7	1.7
359	7	1.91
360	7	2.05
361	7	2.17
362	7	2.2
363	7	2.08
364	7	1.13
365	7	0.76
366	7	0.61
367	7	0.58
368	7	0.73
369	7	1.18
370	7	1.89
371	7	2.82
372	7	3.55
373	7	3.67
374	7	3.61
375	7	3.65
376	7	3.53
378	7	3.41
379	7	3.31
380	7	3.21
381	7	3.08
382	7	2.85
383	7	2.53
384	7	2.35
385	7	2.32
386	7	2.15
387	7	1.83
388	7	1.58
389	7	1.34
390	7	1.15
391	7	1.04
392	7	0.99
393	7	0.98
394	7	1.07
395	7	1.5
396	7	2.18
397	7	2.78
398	7	3.2
399	7	3.43
400	7	3.43
401	7	3.2
403	7	2.87
404	7	2.5
405	7	2.1
406	7	1.76
407	7	1.49
408	7	1.23
409	7	1.05
410	7	0.93
411	7	0.84
412	7	0.69
413	7	0.54
414	7	0.5
415	7	0.5
416	7	0.5
417	7	0.5
418	7	0.5
419	7	0.5
420	7	0.5
421	7	0.5
422	7	0.5
423	7	0.58
424	7	0.66
425	7	0.75
426	7	0.8
428	7	0.89
429	7	1
430	7	1.07
431	7	1.1
432	7	1.15
433	7	1.21
434	7	1.26
435	7	1.31
436	7	1.38
437	7	1.47
438	7	1.66
439	7	2.07
440	7	2.62
441	7	3.08
442	7	3.14
443	7	3.33
444	7	3.65
445	7	4.17
446	7	4.76
447	7	4.97
448	7	4.75
449	7	4.31
450	7	3.74
451	7	3.35
453	7	3.21
454	7	3.16
455	7	3.07
456	7	3.05
457	7	3.02
458	7	2.96
459	7	2.91
460	7	2.88
461	7	2.86
462	7	2.87
463	7	3.03
464	7	3.52
465	7	3.93
466	7	4.24
467	7	3.64
468	7	3.77
469	7	4.21
470	7	5.04
471	7	6
472	7	6.74
473	7	7.08
474	7	7.43
475	7	7.76
476	7	7.89
478	7	8.02
479	7	8
480	7	7.62
481	7	7.43
482	7	7.47
483	7	7.58
484	7	7.72
485	7	8.16
486	7	8.41
487	7	8.74
488	7	9.62
489	7	9.73
490	7	9.78
491	7	9.58
492	7	8.38
493	7	7.47
494	7	7.24
495	7	7.53
496	7	7.99
497	7	8.12
498	7	7.75
499	7	7.4
500	7	7.04
501	7	6.5
503	7	6.14
504	7	6.01
505	7	5.95
506	7	5.65
507	7	5.43
508	7	5.29
509	7	5.35
510	7	5.5
511	7	5.63
512	7	5.72
513	7	6
514	7	5.27
515	7	5.41
516	7	6.05
517	7	6.15
518	7	6.24
519	7	6.36
520	7	6.55
521	7	6.9
522	7	7.2
523	7	6.83
524	7	6.48
525	7	6.32
526	7	6.07
528	7	6.36
529	7	6.3
530	7	6.8
531	7	6.65
532	7	6.6
533	7	6.7
534	7	6.73
535	7	6.47
536	7	5.88
537	7	4.99
538	7	4.22
539	7	2.94
540	7	2.44
541	7	2.38
542	7	2.38
543	7	2.63
544	7	3
545	7	3.03
546	7	3.11
547	7	3.26
548	7	3.44
549	7	3.77
550	7	4.04
551	7	4.12
553	7	4.25
554	7	4.5
555	7	4.76
556	7	4.91
557	7	4.93
558	7	4.8
559	7	4.61
560	7	4.44
561	7	4.22
562	7	4.1
563	7	4.37
564	7	4.66
565	7	5.29
566	7	5.92
567	7	5.98
568	7	6.17
569	7	6.55
570	7	7.45
571	7	8.59
572	7	9.61
573	7	10.06
574	7	10.32
575	7	10.44
576	7	10.05
578	7	9.55
579	7	8.87
580	7	7.85
581	7	6.63
582	7	5.45
583	7	4.21
584	7	3.32
585	7	2.93
586	7	3.14
587	7	3.8
588	7	4.75
589	7	5.16
590	7	5.43
591	7	5.63
592	7	5.92
593	7	6.33
594	7	6.7
595	7	6.99
596	7	7.02
597	7	6.58
598	7	5.83
599	7	5.27
600	7	4.9
601	7	4.48
1	8	0.15
2	8	0.18
3	8	0.18
4	8	0.18
5	8	0.19
6	8	0.2
7	8	0.21
8	8	0.21
9	8	0.2
10	8	0.22
11	8	0.24
12	8	0.23
13	8	0.22
14	8	0.2
15	8	0.18
16	8	0.17
17	8	0.15
18	8	0.15
19	8	0.16
20	8	0.22
21	8	0.32
22	8	0.39
23	8	0.46
24	8	0.5
25	8	0.55
26	8	0.55
28	8	0.51
29	8	0.47
30	8	0.49
31	8	0.48
32	8	0.47
33	8	0.47
34	8	0.51
35	8	0.6
36	8	0.68
37	8	0.7
38	8	0.74
39	8	0.32
40	8	0.32
41	8	0.36
42	8	0.41
43	8	0.44
44	8	0.46
45	8	0.85
46	8	1.35
47	8	1.49
48	8	1.38
49	8	1.01
50	8	0.71
51	8	0.57
53	8	0.48
54	8	0.42
55	8	0.3
56	8	0.25
57	8	0.23
58	8	0.22
59	8	0.24
60	8	0.28
61	8	0.32
62	8	0.31
63	8	0.29
64	8	0.29
65	8	0.33
66	8	0.38
67	8	0.41
68	8	0.44
69	8	0.44
70	8	0.51
71	8	0.63
72	8	0.72
73	8	0.78
74	8	0.78
75	8	0.7
76	8	0.59
78	8	0.49
79	8	0.42
80	8	0.36
81	8	0.33
82	8	0.32
83	8	0.34
84	8	0.39
85	8	0.46
86	8	0.53
87	8	0.55
88	8	0.56
89	8	0.43
90	8	0.43
91	8	0.43
92	8	0.51
93	8	0.59
94	8	0.7
95	8	1.36
96	8	1.88
97	8	2.15
98	8	2.63
99	8	2.69
100	8	2.66
101	8	2.34
103	8	1.98
104	8	1.77
105	8	1.66
106	8	1.44
107	8	1.28
108	8	1.22
109	8	1.2
110	8	1.31
111	8	1.41
112	8	1.27
113	8	1.06
114	8	0.69
115	8	0.76
116	8	0.94
117	8	1.06
118	8	1.16
119	8	1.31
120	8	1.63
121	8	1.92
122	8	1.85
123	8	1.63
124	8	1.49
125	8	1.39
126	8	1.27
128	8	1.12
129	8	1.12
130	8	1.01
131	8	0.85
132	8	0.97
133	8	1.16
134	8	0.86
135	8	0.85
136	8	1.01
137	8	1.04
138	8	1.03
139	8	1.36
140	8	1.49
141	8	1.71
142	8	2.15
143	8	2.37
144	8	1.12
145	8	0.45
146	8	0.35
147	8	0.3
148	8	0.28
149	8	0.25
150	8	0.22
151	8	0.21
153	8	0.2
154	8	0.19
155	8	0.27
156	8	0.37
157	8	0.44
158	8	0.47
159	8	0.46
160	8	0.5
161	8	0.5
162	8	0.58
163	8	0.64
164	8	0.45
165	8	0.29
166	8	0.22
167	8	0.18
168	8	0.18
169	8	0.17
170	8	0.18
171	8	0.21
172	8	0.23
173	8	0.23
174	8	0.21
175	8	0.18
176	8	0.17
178	8	0.13
179	8	0.12
180	8	0.11
181	8	0.12
182	8	0.12
183	8	0.12
184	8	0.13
185	8	0.14
186	8	0.17
187	8	0.18
188	8	0.19
189	8	0.19
190	8	0.19
191	8	0.2
192	8	0.19
193	8	0.2
194	8	0.2
195	8	0.32
196	8	0.5
197	8	0.55
198	8	0.51
199	8	0.46
200	8	0.42
201	8	0.34
203	8	0.29
204	8	0.26
205	8	0.22
206	8	0.2
207	8	0.2
208	8	0.28
209	8	0.39
210	8	0.45
211	8	0.5
212	8	0.57
213	8	0.58
214	8	0.3
215	8	0.25
216	8	0.26
217	8	0.3
218	8	0.34
219	8	0.36
220	8	0.32
221	8	0.5
222	8	0.55
223	8	0.51
224	8	0.46
225	8	0.42
226	8	0.34
228	8	0.29
229	8	0.26
230	8	0.22
231	8	0.2
232	8	0.2
233	8	0.28
234	8	0.39
235	8	0.45
236	8	0.5
237	8	0.57
238	8	0.58
239	8	0.3
240	8	0.25
241	8	0.26
242	8	0.3
243	8	0.34
244	8	0.36
245	8	0.33
246	8	0.44
247	8	0.51
248	8	0.62
249	8	0.75
250	8	0.87
251	8	1.01
253	8	1.15
254	8	1.25
255	8	1.21
256	8	0.87
257	8	0.5
258	8	0.33
259	8	0.27
260	8	0.25
261	8	0.23
262	8	0.21
263	8	0.19
264	8	0.14
265	8	0.12
266	8	0.12
267	8	0.13
268	8	0.16
269	8	0.19
270	8	0.19
271	8	0.15
272	8	0.12
273	8	0.09
274	8	0.09
275	8	0.09
276	8	0.09
278	8	0.1
279	8	0.1
280	8	0.1
281	8	0.09
282	8	0.08
283	8	0.08
284	8	0.08
285	8	0.08
286	8	0.08
287	8	0.07
288	8	0.05
289	8	0.04
290	8	0.04
291	8	0.04
292	8	0.04
293	8	0.05
294	8	0.05
295	8	0.07
296	8	0.09
297	8	0.1
298	8	0.12
299	8	0.13
300	8	0.14
301	8	0.15
303	8	0.15
304	8	0.15
305	8	0.15
306	8	0.17
307	8	0.17
308	8	0.18
309	8	0.18
310	8	0.2
311	8	0.18
312	8	0.16
313	8	0.14
314	8	0.11
315	8	0.09
316	8	0.07
317	8	0.06
318	8	0.06
319	8	0.05
320	8	0.05
321	8	0.06
322	8	0.07
323	8	0.08
324	8	0.09
325	8	0.1
326	8	0.12
328	8	0.13
329	8	0.15
330	8	0.22
331	8	0.26
332	8	0.28
333	8	0.29
334	8	0.27
335	8	0.24
336	8	0.11
337	8	0.1
338	8	0.11
339	8	0.11
340	8	0.12
341	8	0.12
342	8	0.12
343	8	0.14
344	8	0.15
345	8	0.24
346	8	0.33
347	8	0.26
348	8	0.19
349	8	0.22
350	8	0.31
351	8	0.38
353	8	0.33
354	8	0.28
355	8	0.26
356	8	0.25
357	8	0.27
358	8	0.25
359	8	0.23
360	8	0.22
361	8	0.2
362	8	0.24
363	8	0.38
364	8	0.18
365	8	0.15
366	8	0.12
367	8	0.08
368	8	0.06
369	8	0.04
370	8	0.03
371	8	0.04
372	8	0.04
373	8	0.05
374	8	0.07
375	8	0.09
376	8	0.23
378	8	0.53
379	8	0.92
380	8	1.22
381	8	0.97
382	8	0.52
383	8	0.23
384	8	0.21
385	8	0.21
386	8	0.18
387	8	0.14
388	8	0.11
389	8	0.09
390	8	0.11
391	8	0.12
392	8	0.12
393	8	0.12
394	8	0.12
395	8	0.14
396	8	0.17
397	8	0.17
398	8	0.15
399	8	0.14
400	8	0.14
401	8	0.14
403	8	0.13
404	8	0.13
405	8	0.13
406	8	0.13
407	8	0.14
408	8	0.12
409	8	0.11
410	8	0.11
411	8	0.12
412	8	0.13
413	8	0.13
414	8	0.13
415	8	0.13
416	8	0.14
417	8	0.14
418	8	0.15
419	8	0.17
420	8	0.26
421	8	0.41
422	8	0.52
423	8	0.55
424	8	0.46
425	8	0.33
426	8	0.25
428	8	0.27
429	8	0.31
430	8	0.3
431	8	0.25
432	8	0.21
433	8	0.19
434	8	0.19
435	8	0.19
436	8	0.24
437	8	0.32
438	8	0.36
439	8	0.34
440	8	0.35
441	8	0.35
442	8	0.32
443	8	0.33
444	8	0.36
445	8	0.42
446	8	0.52
447	8	0.61
448	8	0.72
449	8	0.83
450	8	0.9
451	8	0.95
453	8	0.99
454	8	1.01
455	8	0.99
456	8	0.93
457	8	0.86
458	8	0.83
459	8	0.88
460	8	0.93
461	8	1.05
462	8	1.15
463	8	1.15
464	8	1.16
465	8	1.12
466	8	1.08
467	8	1.09
468	8	1.07
469	8	1.05
470	8	1.04
471	8	1.04
472	8	0.98
473	8	0.7
474	8	0.65
475	8	0.68
476	8	0.74
478	8	0.85
479	8	0.99
480	8	1.1
481	8	1.09
482	8	1.06
483	8	1.05
484	8	1.1
485	8	1.15
486	8	1.26
487	8	1.23
488	8	1.15
489	8	1.07
490	8	0.94
491	8	0.8
492	8	0.64
493	8	0.53
494	8	0.48
495	8	0.48
496	8	0.51
497	8	0.51
498	8	0.41
499	8	0.27
500	8	0.2
501	8	0.19
503	8	0.17
504	8	0.15
505	8	0.15
506	8	0.18
507	8	0.2
508	8	0.21
509	8	0.21
510	8	0.24
511	8	0.34
512	8	0.52
513	8	0.6
514	8	0.24
515	8	0.2
516	8	0.2
517	8	0.18
518	8	0.17
519	8	0.18
520	8	0.23
521	8	0.28
522	8	0.29
523	8	0.31
524	8	0.28
525	8	0.27
526	8	0.28
528	8	0.19
529	8	0.19
530	8	0.26
531	8	0.3
532	8	0.34
533	8	0.38
534	8	0.44
535	8	0.52
536	8	0.64
537	8	0.72
538	8	0.74
539	8	0.64
540	8	0.55
541	8	0.51
542	8	0.45
543	8	0.42
544	8	0.41
545	8	0.44
546	8	0.51
547	8	0.56
548	8	0.61
549	8	0.68
550	8	0.73
551	8	0.73
553	8	0.71
554	8	0.71
555	8	0.73
556	8	0.76
557	8	0.79
558	8	0.82
559	8	0.84
560	8	0.86
561	8	0.89
562	8	0.88
563	8	0.84
564	8	0.73
565	8	0.61
566	8	0.52
567	8	0.39
568	8	0.31
569	8	0.27
570	8	0.27
571	8	0.3
572	8	0.3
573	8	0.31
574	8	0.28
575	8	0.17
576	8	0.1
578	8	0.09
579	8	0.08
580	8	0.08
581	8	0.08
582	8	0.08
583	8	0.09
584	8	0.11
585	8	0.13
586	8	0.16
587	8	0.2
588	8	0.21
589	8	0.13
590	8	0.11
591	8	0.1
592	8	0.09
593	8	0.09
594	8	0.09
595	8	0.1
596	8	0.11
597	8	0.11
598	8	0.11
599	8	0.12
600	8	0.11
601	8	0.1
\.


--
-- Name: air_quality_readings_reading_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.air_quality_readings_reading_id_seq', 1803, true);


--
-- Name: components_component_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.components_component_id_seq', 32, true);


--
-- Name: locations_location_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.locations_location_id_seq', 7, true);


--
-- Name: raw_air_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.raw_air_data_id_seq', 27, true);


--
-- Name: air_quality_readings air_quality_readings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.air_quality_readings
    ADD CONSTRAINT air_quality_readings_pkey PRIMARY KEY (reading_id);


--
-- Name: components components_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components
    ADD CONSTRAINT components_name_key UNIQUE (name);


--
-- Name: components components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components
    ADD CONSTRAINT components_pkey PRIMARY KEY (component_id);


--
-- Name: locations locations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (location_id);


--
-- Name: raw_air_data raw_air_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.raw_air_data
    ADD CONSTRAINT raw_air_data_pkey PRIMARY KEY (id);


--
-- Name: reading_components reading_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reading_components
    ADD CONSTRAINT reading_components_pkey PRIMARY KEY (reading_id, component_id);


--
-- Name: locations uq_location; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT uq_location UNIQUE (latitude, longitude);


--
-- Name: air_quality_readings uq_reading; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.air_quality_readings
    ADD CONSTRAINT uq_reading UNIQUE (location_id, datetime);


--
-- Name: idx_air_quality_location; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_air_quality_location ON public.air_quality_readings USING btree (location_id);


--
-- Name: idx_reading_components_component; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_reading_components_component ON public.reading_components USING btree (component_id);


--
-- Name: air_quality_readings air_quality_readings_location_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.air_quality_readings
    ADD CONSTRAINT air_quality_readings_location_id_fkey FOREIGN KEY (location_id) REFERENCES public.locations(location_id) ON DELETE CASCADE;


--
-- Name: reading_components reading_components_component_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reading_components
    ADD CONSTRAINT reading_components_component_id_fkey FOREIGN KEY (component_id) REFERENCES public.components(component_id) ON DELETE CASCADE;


--
-- Name: reading_components reading_components_reading_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reading_components
    ADD CONSTRAINT reading_components_reading_id_fkey FOREIGN KEY (reading_id) REFERENCES public.air_quality_readings(reading_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

