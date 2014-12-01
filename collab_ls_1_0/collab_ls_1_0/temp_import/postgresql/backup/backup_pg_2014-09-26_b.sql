--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.5
-- Dumped by pg_dump version 9.3.3
-- Started on 2014-09-26 17:15:41 UTC

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 2034 (class 1262 OID 16799)
-- Name: statdb; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE statdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE statdb OWNER TO postgres;

\connect statdb

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 7 (class 2615 OID 16830)
-- Name: ahasemann; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ahasemann;


ALTER SCHEMA ahasemann OWNER TO postgres;

--
-- TOC entry 185 (class 3079 OID 11706)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2038 (class 0 OID 0)
-- Dependencies: 185
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = ahasemann, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 171 (class 1259 OID 16831)
-- Name: country_codes; Type: TABLE; Schema: ahasemann; Owner: ahasemann; Tablespace: 
--

CREATE TABLE country_codes (
    "ID" real NOT NULL,
    name character varying(70),
    "ISO3166_1_Alpha_3" character(3)
);


ALTER TABLE ahasemann.country_codes OWNER TO ahasemann;

--
-- TOC entry 173 (class 1259 OID 16924)
-- Name: country_prioritization_framework; Type: TABLE; Schema: ahasemann; Owner: ahasemann; Tablespace: 
--

CREATE TABLE country_prioritization_framework (
    "ID" integer NOT NULL,
    country character varying(100),
    nrgi_country character(1),
    "nrgi-staff-survey" character(1),
    imf_resource_rich_country_ character(1),
    prospective_resource_exporting_country character(1),
    average_resource_exports_to_total_exports_2010_2012 numeric(16,10),
    reporting_practices numeric(16,10),
    budget_transparency integer,
    voice_and_accountability numeric(16,10),
    government_effectiveness numeric(16,10),
    economic_management_policies numeric(16,10),
    structural_policies numeric(16,10),
    institutional_and_legal_setting numeric(16,10),
    corruption numeric(16,10),
    gdp_per_capita_usd numeric(16,10),
    year_of_gdp_data_if_not_2012 character varying(100),
    total_population integer,
    inequality numeric(16,10),
    year_of_inequality_data integer,
    human_development numeric(16,10),
    poverty_headcount_ratio_at_2usd_day numeric(16,10),
    year_of_poverty_data integer,
    global_ranking_by_size_of_mineral_petroleum_reserves integer,
    oil_2013 integer,
    gas_2013 integer,
    gold_2012 integer,
    diamonds_2012 integer,
    copper_2012 integer,
    coal_2013 integer,
    iron_ore_2012 integer,
    g20_member character varying(100),
    size_of_the_economy_measured_using_gdp_relative_to_region numeric(16,10),
    total_population_relative_to_region numeric(16,10),
    nrgi_staff_expertise integer,
    rents numeric(16,10),
    wgi_political_stability_and_absence_of_violence numeric(16,10),
    regime_type numeric(16,10),
    civil_liberties integer,
    presence_of_reformers_change_agents_in_public_office integer,
    priority_of_nr_governance_issues_to_leadership integer,
    enabling_environment numeric(16,10),
    existence_of_cso_partners integer,
    new_vs_old_producers integer,
    eiti_participation integer,
    ogp_participating_countries integer,
    below_25pc_on_wgi_control_of_corruption numeric(16,10),
    nrgi_investment_2013_usd numeric(16,10),
    "osf_high-risk_list" character varying(100),
    state_dept_advisory character varying(100),
    risk_rating character varying(100),
    difficulty_of_travel integer,
    nrgi_staff integer,
    nrgi_presence integer,
    financial_cost_of_living integer,
    funding_available numeric(16,10),
    amount_of_oda_pc_to_gdp numeric(16,10),
    "Amount_of_oda_flows_usd_million" numeric(16,10),
    perceptions_of_demand_from_stakeholders_for_our_work integer
);


ALTER TABLE ahasemann.country_prioritization_framework OWNER TO ahasemann;

--
-- TOC entry 2039 (class 0 OID 0)
-- Dependencies: 173
-- Name: TABLE country_prioritization_framework; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON TABLE country_prioritization_framework IS 'test comment blabla';


--
-- TOC entry 2040 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.average_resource_exports_to_total_exports_2010_2012; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.average_resource_exports_to_total_exports_2010_2012 IS '% of total. UNCTAD stats.';


--
-- TOC entry 2041 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.reporting_practices; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.reporting_practices IS '0=weak to 100=strong, Resource Governance Index 2013, Revenue Watch Institute, http://www.revenuewatch.org/rgi/downloads';


--
-- TOC entry 2042 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.budget_transparency; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.budget_transparency IS '0=weak to 100=strong, Open Budget Index 2012, International Budget Partnership, http://survey.internationalbudget.org/#download';


--
-- TOC entry 2043 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.voice_and_accountability; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.voice_and_accountability IS ' -2.5=weak to 2.5=strong, Worldwide Governance Indicators 2012, World Bank, http://info.worldbank.org/governance/wgi/index.aspx#home';


--
-- TOC entry 2044 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.government_effectiveness; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.government_effectiveness IS ' -2.5=weak to 2.5=strong, Worldwide Governance Indicators 2012, World Bank, http://info.worldbank.org/governance/wgi/index.aspx#home';


--
-- TOC entry 2045 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.economic_management_policies; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.economic_management_policies IS '1=weak to 6=strong, Country Policy and Institutional Assesment 2012, World Bank, http://data.worldbank.org/indicator/IQ.CPA.ECON.XQ/countries';


--
-- TOC entry 2046 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.structural_policies; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.structural_policies IS '1=weak to 6=strong, Country Policy and Institutional Assesment 2012, World Bank, http://data.worldbank.org/indicator/IQ.CPA.STRC.XQ/countries';


--
-- TOC entry 2047 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.institutional_and_legal_setting; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.institutional_and_legal_setting IS '0=weak to 100=strong, Resource Governance Index 2013, Revenue Watch Institute, http://www.revenuewatch.org/rgi/downloads';


--
-- TOC entry 2048 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.corruption; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.corruption IS ' -2.5=weak to 2.5=strong, Worldwide Governance Indicators 2012, World Bank, http://info.worldbank.org/governance/wgi/index.aspx#home';


--
-- TOC entry 2049 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.gdp_per_capita_usd; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.gdp_per_capita_usd IS 'US$, 2012 (unless noted otherwise), World Bank, http://data.worldbank.org/indicator/NY.GDP.PCAP.CD';


--
-- TOC entry 2050 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.total_population; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.total_population IS '2012, World Bank, http://data.worldbank.org/indicator/SP.POP.TOTL';


--
-- TOC entry 2051 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.inequality; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.inequality IS '0=perfect equality to 100=perfect inequality, most recent GINI Index available from World Bank, http://data.worldbank.org/indicator/SI.POV.GINI';


--
-- TOC entry 2052 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.human_development; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.human_development IS '0=weak to 1=strong, Human Development Index 2012, UNDP, http://hdr.undp.org/en/statistics/data/';


--
-- TOC entry 2053 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.poverty_headcount_ratio_at_2usd_day; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.poverty_headcount_ratio_at_2usd_day IS '% of total population, most recent data available from World Bank, http://data.worldbank.org/indicator/SI.POV.2DAY';


--
-- TOC entry 2054 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.global_ranking_by_size_of_mineral_petroleum_reserves; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.global_ranking_by_size_of_mineral_petroleum_reserves IS 'In top 20 of oil (100 for top 10, 50 for 11-20) and top 10 for gas (100 top 5, 50 top 6-10) and top 3 of minerals globally by size of reserves';


--
-- TOC entry 2055 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.oil_2013; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.oil_2013 IS 'Oil. 2013. Source: http://www.bp.com/en/global/corporate/about-bp/statistical-review-of-world-energy-2013.html';


--
-- TOC entry 2056 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.gas_2013; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.gas_2013 IS 'Gas. 2013. Source: http://www.bp.com/en/global/corporate/about-bp/statistical-review-of-world-energy-2013.html';


--
-- TOC entry 2057 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.gold_2012; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.gold_2012 IS 'Gold. 2012. Source: http://minerals.usgs.gov/minerals/pubs/commodity/gold/';


--
-- TOC entry 2058 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.diamonds_2012; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.diamonds_2012 IS 'Diamonds. 2012. Source: http://minerals.usgs.gov/minerals/pubs/commodity/diamond/';


--
-- TOC entry 2059 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.copper_2012; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.copper_2012 IS 'Copper. 2012. Source: http://minerals.usgs.gov/minerals/pubs/commodity/copper/';


--
-- TOC entry 2060 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.coal_2013; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.coal_2013 IS 'Coal. 2013. Source: http://www.bp.com/en/global/corporate/about-bp/statistical-review-of-world-energy-2013.html';


--
-- TOC entry 2061 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.iron_ore_2012; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.iron_ore_2012 IS 'Iron ore. 2012. Source: http://minerals.usgs.gov/minerals/pubs/commodity/iron_ore/';


--
-- TOC entry 2062 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.g20_member; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.g20_member IS 'G20, http://www.g20.org/';


--
-- TOC entry 2063 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.size_of_the_economy_measured_using_gdp_relative_to_region; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.size_of_the_economy_measured_using_gdp_relative_to_region IS 'US$ % of regional GDP, 2012, World Bank, http://data.worldbank.org/indicator/NY.GDP.MKTP.CD';


--
-- TOC entry 2064 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.total_population_relative_to_region; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.total_population_relative_to_region IS '% of total regional population, 2012, World Bank, http://data.worldbank.org/indicator/SP.POP.TOTL';


--
-- TOC entry 2065 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.nrgi_staff_expertise; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.nrgi_staff_expertise IS '1 = Not geopolitically influential 5 = Significantly geopolitically influential';


--
-- TOC entry 2066 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.rents; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.rents IS '% of total GDP, 2012 (unless noted otherwise), World Bank, http://data.worldbank.org/indicator/NY.GDP.TOTL.RT.ZS';


--
-- TOC entry 2067 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.wgi_political_stability_and_absence_of_violence; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.wgi_political_stability_and_absence_of_violence IS ' -2.5=weak to 2.5=strong,  source: http://databank.worldbank.org/data/views/variableselection/selectvariables.aspx?source=worldwide-governance-indicators# ';


--
-- TOC entry 2068 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.regime_type; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.regime_type IS '1=least democratic to 10=most democratic, Democracy Index 2012, EIU, https://www.eiu.com/public/topical_report.aspx?campaignid=DemocracyIndex12';


--
-- TOC entry 2069 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.civil_liberties; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.civil_liberties IS '0=weak to 60=strong, Freedom in the World 2013, Freedom House, http://www.freedomhouse.org/report/freedom-world-aggregate-and-subcategory-scores';


--
-- TOC entry 2070 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.presence_of_reformers_change_agents_in_public_office; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.presence_of_reformers_change_agents_in_public_office IS '1 = No reformers / change agents 5 = Pro reform';


--
-- TOC entry 2071 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.priority_of_nr_governance_issues_to_leadership; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.priority_of_nr_governance_issues_to_leadership IS '1 = Not important 5 = Top priority';


--
-- TOC entry 2072 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.enabling_environment; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.enabling_environment IS '0=weak to 1=strong, Enabling Environment Index 2013, CIVICUS, https://socs.civicus.org/?p=4297';


--
-- TOC entry 2073 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.existence_of_cso_partners; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.existence_of_cso_partners IS '1 = No civil society partners 5 = range of partners';


--
-- TOC entry 2074 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.new_vs_old_producers; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.new_vs_old_producers IS '100 = Prospective resource exporting country
50 = all others
0 = World top producer (top 10 for oil/gas and top 3 for minerals)';


--
-- TOC entry 2075 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.eiti_participation; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.eiti_participation IS '33=suspended, 66=candidate, 100=compliant, EITI, http://eiti.org/countries';


--
-- TOC entry 2076 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.ogp_participating_countries; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.ogp_participating_countries IS '0=no, 100=yes, Open Government Partnership, http://www.opengovpartnership.org/countries';


--
-- TOC entry 2077 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.below_25pc_on_wgi_control_of_corruption; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.below_25pc_on_wgi_control_of_corruption IS '0=highest to 100=lowest corruption, WGI';


--
-- TOC entry 2078 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework."osf_high-risk_list"; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework."osf_high-risk_list" IS 'OSF';


--
-- TOC entry 2079 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.state_dept_advisory; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.state_dept_advisory IS '2013, US State Department, http://travel.state.gov/travel/cis_pa_tw/tw/tw_1764.html';


--
-- TOC entry 2080 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.risk_rating; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.risk_rating IS 'Country Risks, International SOS';


--
-- TOC entry 2081 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.difficulty_of_travel; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.difficulty_of_travel IS '1 = very difficult 5 = Easy to operate';


--
-- TOC entry 2082 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.nrgi_staff; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.nrgi_staff IS '1 = No advantage 5 = Contributes a unique benefit';


--
-- TOC entry 2083 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.nrgi_presence; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.nrgi_presence IS '0= no presence, 33= work with partners, 66=in country staff, 100=regional office';


--
-- TOC entry 2084 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.financial_cost_of_living; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.financial_cost_of_living IS 'US$ per day, Foreign Per Diem Rates 2013, US State Department, http://aoprals.state.gov/content.asp?content_id=233&menu_id=81';


--
-- TOC entry 2085 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.funding_available; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.funding_available IS 'USD';


--
-- TOC entry 2086 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.amount_of_oda_pc_to_gdp; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.amount_of_oda_pc_to_gdp IS '%';


--
-- TOC entry 2087 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework."Amount_of_oda_flows_usd_million"; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework."Amount_of_oda_flows_usd_million" IS 'US$ millions, ODA Receipts 2011, OECD, http://www.oecd.org/dac/stats/TAB25e.xls';


--
-- TOC entry 2088 (class 0 OID 0)
-- Dependencies: 173
-- Name: COLUMN country_prioritization_framework.perceptions_of_demand_from_stakeholders_for_our_work; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON COLUMN country_prioritization_framework.perceptions_of_demand_from_stakeholders_for_our_work IS '1 = no demand - 5 = high demand';


--
-- TOC entry 176 (class 1259 OID 16948)
-- Name: priority_and_limited_engagement_countries; Type: TABLE; Schema: ahasemann; Owner: ahasemann; Tablespace: 
--

CREATE TABLE priority_and_limited_engagement_countries (
    "ID" integer NOT NULL,
    country character varying(100),
    iso3166_1_alpha_3 character(3),
    priority character(1),
    limited_engagement character(1)
);


ALTER TABLE ahasemann.priority_and_limited_engagement_countries OWNER TO ahasemann;

--
-- TOC entry 183 (class 1259 OID 17128)
-- Name: rgi_2013_questionnaire_with_categories; Type: TABLE; Schema: ahasemann; Owner: ahasemann; Tablespace: 
--

CREATE TABLE rgi_2013_questionnaire_with_categories (
    "ID" integer NOT NULL,
    original_questionnaire_order_row integer,
    category integer,
    subcategory character varying(100),
    question_set character varying(100),
    qid character varying(100),
    question_theme text,
    question_text text
);


ALTER TABLE ahasemann.rgi_2013_questionnaire_with_categories OWNER TO ahasemann;

--
-- TOC entry 181 (class 1259 OID 17092)
-- Name: rgi_raw_data_web_column_a_and_i_to_bn_transposed; Type: TABLE; Schema: ahasemann; Owner: ahasemann; Tablespace: 
--

CREATE TABLE rgi_raw_data_web_column_a_and_i_to_bn_transposed (
    "ID" integer NOT NULL,
    uid_question character varying(100),
    inlsq1 numeric(16,4),
    inlsq2 numeric(16,4),
    inlsq3 numeric(16,4),
    inlsc4_a numeric(16,4),
    inlsc4_b numeric(16,4),
    inlsc5_a numeric(16,4),
    inlsc5_b numeric(16,4),
    inlsc6_a numeric(16,4),
    inlsc6_b numeric(16,4),
    inlsc7_a numeric(16,4),
    inlsc7_b numeric(16,4),
    inlsc7_c numeric(16,4),
    inlsq8 numeric(16,4),
    inlsc9_a numeric(16,4),
    inlsc9_b numeric(16,4),
    inlsq10 numeric(16,4),
    rprc1_a numeric(16,4),
    rprc1_b numeric(16,4),
    rprq2 numeric(16,4),
    rprc3_a numeric(16,4),
    rprc3_b numeric(16,4),
    rprc4_cb_a numeric(16,4),
    rprc4_cb_b numeric(16,4),
    rprc4_mes_a numeric(16,4),
    rprc4_mes_b numeric(16,4),
    rprc4_mof_a numeric(16,4),
    rprc4_mof_b numeric(16,4),
    rprc4_oa_a numeric(16,4),
    rprc4_oa_b numeric(16,4),
    rprc4_ra_a numeric(16,4),
    rprc4_ra_b numeric(16,4),
    rprc5_cb_a numeric(16,4),
    rprc5_cb_b numeric(16,4),
    rprc5_mes_a numeric(16,4),
    rprc5_mes_b numeric(16,4),
    rprc5_mof_a numeric(16,4),
    rprc5_mof_b numeric(16,4),
    rprc5_oa_a numeric(16,4),
    rprc5_oa_b numeric(16,4),
    rprc5_ra_a numeric(16,4),
    rprc5_ra_b numeric(16,4),
    rprc6_cb_a numeric(16,4),
    rprc6_cb_b numeric(16,4),
    rprc6_cb_c numeric(16,4),
    rprc6_mes_a numeric(16,4),
    rprc6_mes_b numeric(16,4),
    rprc6_mes_c numeric(16,4),
    rprc6_mof_a numeric(16,4),
    rprc6_mof_b numeric(16,4),
    rprc6_mof_c numeric(16,4),
    rprc6_oa_a numeric(16,4),
    rprc6_oa_b numeric(16,4),
    rprc6_oa_c numeric(16,4),
    rprc6_ra_a numeric(16,4),
    rprc6_ra_b numeric(16,4),
    rprc6_ra_c numeric(16,4),
    rprc7_cb_a numeric(16,4),
    rprc7_cb_b numeric(16,4),
    rprc7_cb_c numeric(16,4),
    rprc7_cb_d numeric(16,4),
    rprc7_mes_a numeric(16,4),
    rprc7_mes_b numeric(16,4),
    rprc7_mes_c numeric(16,4),
    rprc7_mes_d numeric(16,4),
    rprc7_mof_a numeric(16,4),
    rprc7_mof_b numeric(16,4),
    rprc7_mof_c numeric(16,4),
    rprc7_mof_d numeric(16,4),
    rprc7_oa_a numeric(16,4),
    rprc7_oa_b numeric(16,4),
    rprc7_oa_c numeric(16,4),
    rprc7_oa_d numeric(16,4),
    rprc7_ra_a numeric(16,4),
    rprc7_ra_b numeric(16,4),
    rprc7_ra_c numeric(16,4),
    rprc7_ra_d numeric(16,4),
    rprc8_cb_a numeric(16,4),
    rprc8_cb_b numeric(16,4),
    rprc8_cb_c numeric(16,4),
    rprc8_cb_d numeric(16,4),
    rprc8_cb_e numeric(16,4),
    rprc8_mes_a numeric(16,4),
    rprc8_mes_b numeric(16,4),
    rprc8_mes_c numeric(16,4),
    rprc8_mes_d numeric(16,4),
    rprc8_mes_e numeric(16,4),
    rprc8_mof_a numeric(16,4),
    rprc8_mof_b numeric(16,4),
    rprc8_mof_c numeric(16,4),
    rprc8_mof_d numeric(16,4),
    rprc8_mof_e numeric(16,4),
    rprc8_oa_a numeric(16,4),
    rprc8_oa_b numeric(16,4),
    rprc8_oa_c numeric(16,4),
    rprc8_oa_d numeric(16,4),
    rprc8_oa_e numeric(16,4),
    rprc8_ra_a numeric(16,4),
    rprc8_ra_b numeric(16,4),
    rprc8_ra_c numeric(16,4),
    rprc8_ra_d numeric(16,4),
    rprc8_ra_e numeric(16,4),
    rprq9_cb numeric(16,4),
    rprq9_mes numeric(16,4),
    rprq9_mof numeric(16,4),
    rprq9_oa numeric(16,4),
    rprq9_ra numeric(16,4),
    rprq10_cb numeric(16,4),
    rprq10_mes numeric(16,4),
    rprq10_mof numeric(16,4),
    rprq10_oa numeric(16,4),
    rprq10_ra numeric(16,4),
    rprc11_a numeric(16,4),
    rprc11_b numeric(16,4),
    rprc12_a numeric(16,4),
    rprc12_b numeric(16,4),
    rprc12_c numeric(16,4),
    rprc12_d numeric(16,4),
    rprc12_e numeric(16,4),
    rprc12_f numeric(16,4),
    rprc12_g numeric(16,4),
    rprc13_a numeric(16,4),
    rprc13_b numeric(16,4),
    rprc13_c numeric(16,4),
    rprc13_d numeric(16,4),
    rprc13_e numeric(16,4),
    rprc13_f numeric(16,4),
    rprc13_g numeric(16,4),
    rprc13_h numeric(16,4),
    rprc13_i numeric(16,4),
    rprc14_a numeric(16,4),
    rprc14_b numeric(16,4),
    rprc15_a numeric(16,4),
    rprc15_b numeric(16,4),
    rprq16 numeric(16,4),
    rprq17 numeric(16,4),
    rprq18 numeric(16,4),
    rprq19 numeric(16,4),
    rprq20 numeric(16,4),
    sfqcc1_a numeric(16,4),
    sfqcc1_b numeric(16,4),
    sfqcc1_c numeric(16,4),
    sfqcc2_a numeric(16,4),
    sfqcc2_b numeric(16,4),
    sfqcc2_c numeric(16,4),
    sfqcc3_cb_a numeric(16,4),
    sfqcc3_cb_b numeric(16,4),
    sfqcc3_mes_a numeric(16,4),
    sfqcc3_mes_b numeric(16,4),
    sfqcc3_mof_a numeric(16,4),
    sfqcc3_mof_b numeric(16,4),
    sfqcc3_oa_a numeric(16,4),
    sfqcc3_oa_b numeric(16,4),
    sfqcc3_ra_a numeric(16,4),
    sfqcc3_ra_b numeric(16,4),
    sfqcq4 numeric(16,4),
    sfqcc5_a numeric(16,4),
    sfqcc5_b numeric(16,4),
    sfqcc6_a numeric(16,4),
    sfqcc6_b numeric(16,4),
    sfqcc6_c numeric(16,4),
    sfqcq7 numeric(16,4),
    sfqcq8 numeric(16,4),
    sfqcc9_a numeric(16,4),
    sfqcc9_b numeric(16,4),
    sfqcc10_a numeric(16,4),
    sfqcc10_b numeric(16,4),
    sfqcc11_a numeric(16,4),
    sfqcc11_b numeric(16,4),
    sfqcq12 numeric(16,4),
    sfqcq13 numeric(16,4),
    sfqcc14_a numeric(16,4),
    sfqcc14_b numeric(16,4),
    sfqcq15 numeric(16,4),
    eec1_a numeric(16,4),
    eec1_b numeric(16,4),
    eeq2 numeric(16,4),
    eec3_a numeric(16,4),
    eec3_b numeric(16,4),
    eeq4 numeric(16,4),
    eeq5 numeric(16,4)
);


ALTER TABLE ahasemann.rgi_raw_data_web_column_a_and_i_to_bn_transposed OWNER TO ahasemann;

--
-- TOC entry 2089 (class 0 OID 0)
-- Dependencies: 181
-- Name: TABLE rgi_raw_data_web_column_a_and_i_to_bn_transposed; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON TABLE rgi_raw_data_web_column_a_and_i_to_bn_transposed IS 'data available from http://www.resourcegovernance.org/rgi/downloads';


--
-- TOC entry 179 (class 1259 OID 16993)
-- Name: rgi_raw_data_web_column_a_to_h; Type: TABLE; Schema: ahasemann; Owner: ahasemann; Tablespace: 
--

CREATE TABLE rgi_raw_data_web_column_a_to_h (
    "ID" integer NOT NULL,
    uid_question text,
    uid_indicator text,
    component text,
    indicator_name text,
    question_summary text,
    question_order integer,
    ministry_if_applicable text,
    rwi_questionnaire_code text
);


ALTER TABLE ahasemann.rgi_raw_data_web_column_a_to_h OWNER TO ahasemann;

--
-- TOC entry 2090 (class 0 OID 0)
-- Dependencies: 179
-- Name: TABLE rgi_raw_data_web_column_a_to_h; Type: COMMENT; Schema: ahasemann; Owner: ahasemann
--

COMMENT ON TABLE rgi_raw_data_web_column_a_to_h IS 'data available from http://www.resourcegovernance.org/rgi/downloads';


--
-- TOC entry 174 (class 1259 OID 16929)
-- Name: view_country_prioritization_framework_comments; Type: VIEW; Schema: ahasemann; Owner: ahasemann
--

CREATE VIEW view_country_prioritization_framework_comments AS
 SELECT cols.column_name,
    ( SELECT obj_description(c.oid) AS obj_description
           FROM pg_class c
          WHERE (c.relname = (cols.table_name)::name)) AS table_comment,
    ( SELECT col_description(c.oid, (cols.ordinal_position)::integer) AS col_description
           FROM pg_class c
          WHERE (c.relname = (cols.table_name)::name)) AS column_comment
   FROM information_schema.columns cols
  WHERE ((cols.table_name)::text = 'country_prioritization_framework'::text);


ALTER TABLE ahasemann.view_country_prioritization_framework_comments OWNER TO ahasemann;

SET search_path = public, pg_catalog;

--
-- TOC entry 172 (class 1259 OID 16836)
-- Name: country_codes; Type: TABLE; Schema: public; Owner: ahasemann; Tablespace: 
--

CREATE TABLE country_codes (
    "ID" real NOT NULL,
    name character varying(70),
    "ISO3166_1_Alpha_3" character(3)
);


ALTER TABLE public.country_codes OWNER TO ahasemann;

--
-- TOC entry 175 (class 1259 OID 16943)
-- Name: country_prioritization_framework; Type: TABLE; Schema: public; Owner: ahasemann; Tablespace: 
--

CREATE TABLE country_prioritization_framework (
    "ID" integer NOT NULL,
    country character varying(100),
    nrgi_country character(1),
    "nrgi-staff-survey" character(1),
    imf_resource_rich_country_ character(1),
    prospective_resource_exporting_country character(1),
    average_resource_exports_to_total_exports_2010_2012 numeric(16,10),
    reporting_practices numeric(16,10),
    budget_transparency integer,
    voice_and_accountability numeric(16,10),
    government_effectiveness numeric(16,10),
    economic_management_policies numeric(16,10),
    structural_policies numeric(16,10),
    institutional_and_legal_setting numeric(16,10),
    corruption numeric(16,10),
    gdp_per_capita_usd numeric(16,10),
    year_of_gdp_data_if_not_2012 character varying(100),
    total_population integer,
    inequality numeric(16,10),
    year_of_inequality_data integer,
    human_development numeric(16,10),
    poverty_headcount_ratio_at_2usd_day numeric(16,10),
    year_of_poverty_data integer,
    global_ranking_by_size_of_mineral_petroleum_reserves integer,
    oil_2013 integer,
    gas_2013 integer,
    gold_2012 integer,
    diamonds_2012 integer,
    copper_2012 integer,
    coal_2013 integer,
    iron_ore_2012 integer,
    g20_member character varying(100),
    size_of_the_economy_measured_using_gdp_relative_to_region numeric(16,10),
    total_population_relative_to_region numeric(16,10),
    nrgi_staff_expertise integer,
    rents numeric(16,10),
    wgi_political_stability_and_absence_of_violence numeric(16,10),
    regime_type numeric(16,10),
    civil_liberties integer,
    presence_of_reformers_change_agents_in_public_office integer,
    priority_of_nr_governance_issues_to_leadership integer,
    enabling_environment numeric(16,10),
    existence_of_cso_partners integer,
    new_vs_old_producers integer,
    eiti_participation integer,
    ogp_participating_countries integer,
    below_25pc_on_wgi_control_of_corruption numeric(16,10),
    nrgi_investment_2013_usd numeric(16,10),
    "osf_high-risk_list" character varying(100),
    state_dept_advisory character varying(100),
    risk_rating character varying(100),
    difficulty_of_travel integer,
    nrgi_staff integer,
    nrgi_presence integer,
    financial_cost_of_living integer,
    funding_available numeric(16,10),
    amount_of_oda_pc_to_gdp numeric(16,10),
    "Amount_of_oda_flows_usd_million" numeric(16,10),
    perceptions_of_demand_from_stakeholders_for_our_work integer
);


ALTER TABLE public.country_prioritization_framework OWNER TO ahasemann;

--
-- TOC entry 177 (class 1259 OID 16953)
-- Name: priority_and_limited_engagement_countries; Type: TABLE; Schema: public; Owner: ahasemann; Tablespace: 
--

CREATE TABLE priority_and_limited_engagement_countries (
    "ID" integer NOT NULL,
    country character varying(100),
    iso3166_1_alpha_3 character(3),
    priority character(1),
    limited_engagement character(1)
);


ALTER TABLE public.priority_and_limited_engagement_countries OWNER TO ahasemann;

--
-- TOC entry 184 (class 1259 OID 17136)
-- Name: rgi_2013_questionnaire_with_categories; Type: TABLE; Schema: public; Owner: ahasemann; Tablespace: 
--

CREATE TABLE rgi_2013_questionnaire_with_categories (
    "ID" integer NOT NULL,
    original_questionnaire_order_row integer,
    category integer,
    subcategory character varying(100),
    question_set character varying(100),
    qid character varying(100),
    question_theme text,
    question_text text
);


ALTER TABLE public.rgi_2013_questionnaire_with_categories OWNER TO ahasemann;

--
-- TOC entry 182 (class 1259 OID 17097)
-- Name: rgi_raw_data_web_column_a_and_i_to_bn_transposed; Type: TABLE; Schema: public; Owner: ahasemann; Tablespace: 
--

CREATE TABLE rgi_raw_data_web_column_a_and_i_to_bn_transposed (
    "ID" integer NOT NULL,
    uid_question character varying(100),
    inlsq1 numeric(16,4),
    inlsq2 numeric(16,4),
    inlsq3 numeric(16,4),
    inlsc4_a numeric(16,4),
    inlsc4_b numeric(16,4),
    inlsc5_a numeric(16,4),
    inlsc5_b numeric(16,4),
    inlsc6_a numeric(16,4),
    inlsc6_b numeric(16,4),
    inlsc7_a numeric(16,4),
    inlsc7_b numeric(16,4),
    inlsc7_c numeric(16,4),
    inlsq8 numeric(16,4),
    inlsc9_a numeric(16,4),
    inlsc9_b numeric(16,4),
    inlsq10 numeric(16,4),
    rprc1_a numeric(16,4),
    rprc1_b numeric(16,4),
    rprq2 numeric(16,4),
    rprc3_a numeric(16,4),
    rprc3_b numeric(16,4),
    rprc4_cb_a numeric(16,4),
    rprc4_cb_b numeric(16,4),
    rprc4_mes_a numeric(16,4),
    rprc4_mes_b numeric(16,4),
    rprc4_mof_a numeric(16,4),
    rprc4_mof_b numeric(16,4),
    rprc4_oa_a numeric(16,4),
    rprc4_oa_b numeric(16,4),
    rprc4_ra_a numeric(16,4),
    rprc4_ra_b numeric(16,4),
    rprc5_cb_a numeric(16,4),
    rprc5_cb_b numeric(16,4),
    rprc5_mes_a numeric(16,4),
    rprc5_mes_b numeric(16,4),
    rprc5_mof_a numeric(16,4),
    rprc5_mof_b numeric(16,4),
    rprc5_oa_a numeric(16,4),
    rprc5_oa_b numeric(16,4),
    rprc5_ra_a numeric(16,4),
    rprc5_ra_b numeric(16,4),
    rprc6_cb_a numeric(16,4),
    rprc6_cb_b numeric(16,4),
    rprc6_cb_c numeric(16,4),
    rprc6_mes_a numeric(16,4),
    rprc6_mes_b numeric(16,4),
    rprc6_mes_c numeric(16,4),
    rprc6_mof_a numeric(16,4),
    rprc6_mof_b numeric(16,4),
    rprc6_mof_c numeric(16,4),
    rprc6_oa_a numeric(16,4),
    rprc6_oa_b numeric(16,4),
    rprc6_oa_c numeric(16,4),
    rprc6_ra_a numeric(16,4),
    rprc6_ra_b numeric(16,4),
    rprc6_ra_c numeric(16,4),
    rprc7_cb_a numeric(16,4),
    rprc7_cb_b numeric(16,4),
    rprc7_cb_c numeric(16,4),
    rprc7_cb_d numeric(16,4),
    rprc7_mes_a numeric(16,4),
    rprc7_mes_b numeric(16,4),
    rprc7_mes_c numeric(16,4),
    rprc7_mes_d numeric(16,4),
    rprc7_mof_a numeric(16,4),
    rprc7_mof_b numeric(16,4),
    rprc7_mof_c numeric(16,4),
    rprc7_mof_d numeric(16,4),
    rprc7_oa_a numeric(16,4),
    rprc7_oa_b numeric(16,4),
    rprc7_oa_c numeric(16,4),
    rprc7_oa_d numeric(16,4),
    rprc7_ra_a numeric(16,4),
    rprc7_ra_b numeric(16,4),
    rprc7_ra_c numeric(16,4),
    rprc7_ra_d numeric(16,4),
    rprc8_cb_a numeric(16,4),
    rprc8_cb_b numeric(16,4),
    rprc8_cb_c numeric(16,4),
    rprc8_cb_d numeric(16,4),
    rprc8_cb_e numeric(16,4),
    rprc8_mes_a numeric(16,4),
    rprc8_mes_b numeric(16,4),
    rprc8_mes_c numeric(16,4),
    rprc8_mes_d numeric(16,4),
    rprc8_mes_e numeric(16,4),
    rprc8_mof_a numeric(16,4),
    rprc8_mof_b numeric(16,4),
    rprc8_mof_c numeric(16,4),
    rprc8_mof_d numeric(16,4),
    rprc8_mof_e numeric(16,4),
    rprc8_oa_a numeric(16,4),
    rprc8_oa_b numeric(16,4),
    rprc8_oa_c numeric(16,4),
    rprc8_oa_d numeric(16,4),
    rprc8_oa_e numeric(16,4),
    rprc8_ra_a numeric(16,4),
    rprc8_ra_b numeric(16,4),
    rprc8_ra_c numeric(16,4),
    rprc8_ra_d numeric(16,4),
    rprc8_ra_e numeric(16,4),
    rprq9_cb numeric(16,4),
    rprq9_mes numeric(16,4),
    rprq9_mof numeric(16,4),
    rprq9_oa numeric(16,4),
    rprq9_ra numeric(16,4),
    rprq10_cb numeric(16,4),
    rprq10_mes numeric(16,4),
    rprq10_mof numeric(16,4),
    rprq10_oa numeric(16,4),
    rprq10_ra numeric(16,4),
    rprc11_a numeric(16,4),
    rprc11_b numeric(16,4),
    rprc12_a numeric(16,4),
    rprc12_b numeric(16,4),
    rprc12_c numeric(16,4),
    rprc12_d numeric(16,4),
    rprc12_e numeric(16,4),
    rprc12_f numeric(16,4),
    rprc12_g numeric(16,4),
    rprc13_a numeric(16,4),
    rprc13_b numeric(16,4),
    rprc13_c numeric(16,4),
    rprc13_d numeric(16,4),
    rprc13_e numeric(16,4),
    rprc13_f numeric(16,4),
    rprc13_g numeric(16,4),
    rprc13_h numeric(16,4),
    rprc13_i numeric(16,4),
    rprc14_a numeric(16,4),
    rprc14_b numeric(16,4),
    rprc15_a numeric(16,4),
    rprc15_b numeric(16,4),
    rprq16 numeric(16,4),
    rprq17 numeric(16,4),
    rprq18 numeric(16,4),
    rprq19 numeric(16,4),
    rprq20 numeric(16,4),
    sfqcc1_a numeric(16,4),
    sfqcc1_b numeric(16,4),
    sfqcc1_c numeric(16,4),
    sfqcc2_a numeric(16,4),
    sfqcc2_b numeric(16,4),
    sfqcc2_c numeric(16,4),
    sfqcc3_cb_a numeric(16,4),
    sfqcc3_cb_b numeric(16,4),
    sfqcc3_mes_a numeric(16,4),
    sfqcc3_mes_b numeric(16,4),
    sfqcc3_mof_a numeric(16,4),
    sfqcc3_mof_b numeric(16,4),
    sfqcc3_oa_a numeric(16,4),
    sfqcc3_oa_b numeric(16,4),
    sfqcc3_ra_a numeric(16,4),
    sfqcc3_ra_b numeric(16,4),
    sfqcq4 numeric(16,4),
    sfqcc5_a numeric(16,4),
    sfqcc5_b numeric(16,4),
    sfqcc6_a numeric(16,4),
    sfqcc6_b numeric(16,4),
    sfqcc6_c numeric(16,4),
    sfqcq7 numeric(16,4),
    sfqcq8 numeric(16,4),
    sfqcc9_a numeric(16,4),
    sfqcc9_b numeric(16,4),
    sfqcc10_a numeric(16,4),
    sfqcc10_b numeric(16,4),
    sfqcc11_a numeric(16,4),
    sfqcc11_b numeric(16,4),
    sfqcq12 numeric(16,4),
    sfqcq13 numeric(16,4),
    sfqcc14_a numeric(16,4),
    sfqcc14_b numeric(16,4),
    sfqcq15 numeric(16,4),
    eec1_a numeric(16,4),
    eec1_b numeric(16,4),
    eeq2 numeric(16,4),
    eec3_a numeric(16,4),
    eec3_b numeric(16,4),
    eeq4 numeric(16,4),
    eeq5 numeric(16,4)
);


ALTER TABLE public.rgi_raw_data_web_column_a_and_i_to_bn_transposed OWNER TO ahasemann;

--
-- TOC entry 2091 (class 0 OID 0)
-- Dependencies: 182
-- Name: TABLE rgi_raw_data_web_column_a_and_i_to_bn_transposed; Type: COMMENT; Schema: public; Owner: ahasemann
--

COMMENT ON TABLE rgi_raw_data_web_column_a_and_i_to_bn_transposed IS 'data available from http://www.resourcegovernance.org/rgi/downloads';


--
-- TOC entry 180 (class 1259 OID 17001)
-- Name: rgi_raw_data_web_column_a_to_h; Type: TABLE; Schema: public; Owner: ahasemann; Tablespace: 
--

CREATE TABLE rgi_raw_data_web_column_a_to_h (
    "ID" integer NOT NULL,
    uid_question text,
    uid_indicator text,
    component text,
    indicator_name text,
    question_summary text,
    question_order integer,
    ministry_if_applicable text,
    rwi_questionnaire_code text
);


ALTER TABLE public.rgi_raw_data_web_column_a_to_h OWNER TO ahasemann;

--
-- TOC entry 2092 (class 0 OID 0)
-- Dependencies: 180
-- Name: TABLE rgi_raw_data_web_column_a_to_h; Type: COMMENT; Schema: public; Owner: ahasemann
--

COMMENT ON TABLE rgi_raw_data_web_column_a_to_h IS 'data available from http://www.resourcegovernance.org/rgi/downloads';


--
-- TOC entry 178 (class 1259 OID 16958)
-- Name: view_country_prioritization_framework_comments; Type: TABLE; Schema: public; Owner: ahasemann; Tablespace: 
--

CREATE TABLE view_country_prioritization_framework_comments (
    "ID" integer NOT NULL,
    column_name abstime[],
    table_comment text,
    column_comment text
);


ALTER TABLE public.view_country_prioritization_framework_comments OWNER TO ahasemann;

SET search_path = ahasemann, pg_catalog;

--
-- TOC entry 2017 (class 0 OID 16831)
-- Dependencies: 171
-- Data for Name: country_codes; Type: TABLE DATA; Schema: ahasemann; Owner: ahasemann
--

INSERT INTO country_codes VALUES (1, 'Afghanistan', 'AFG');
INSERT INTO country_codes VALUES (2, 'Albania', 'ALB');
INSERT INTO country_codes VALUES (3, 'Algeria', 'DZA');
INSERT INTO country_codes VALUES (4, 'American Samoa', 'ASM');
INSERT INTO country_codes VALUES (5, 'Andorra', 'AND');
INSERT INTO country_codes VALUES (6, 'Angola', 'AGO');
INSERT INTO country_codes VALUES (7, 'Anguilla', 'AIA');
INSERT INTO country_codes VALUES (8, 'Antarctica', 'ATA');
INSERT INTO country_codes VALUES (9, 'Antigua and Barbuda', 'ATG');
INSERT INTO country_codes VALUES (10, 'Argentina', 'ARG');
INSERT INTO country_codes VALUES (11, 'Armenia', 'ARM');
INSERT INTO country_codes VALUES (12, 'Aruba', 'ABW');
INSERT INTO country_codes VALUES (13, 'Australia', 'AUS');
INSERT INTO country_codes VALUES (14, 'Austria', 'AUT');
INSERT INTO country_codes VALUES (15, 'Azerbaijan', 'AZE');
INSERT INTO country_codes VALUES (16, 'Bahamas', 'BHS');
INSERT INTO country_codes VALUES (17, 'Bahrain', 'BHR');
INSERT INTO country_codes VALUES (18, 'Bangladesh', 'BGD');
INSERT INTO country_codes VALUES (19, 'Barbados', 'BRB');
INSERT INTO country_codes VALUES (20, 'Belarus', 'BLR');
INSERT INTO country_codes VALUES (21, 'Belgium', 'BEL');
INSERT INTO country_codes VALUES (22, 'Belize', 'BLZ');
INSERT INTO country_codes VALUES (23, 'Benin', 'BEN');
INSERT INTO country_codes VALUES (24, 'Bermuda', 'BMU');
INSERT INTO country_codes VALUES (25, 'Bhutan', 'BTN');
INSERT INTO country_codes VALUES (26, 'Bolivia, Plurinational State of', 'BOL');
INSERT INTO country_codes VALUES (27, 'Bonaire, Sint Eustatius and Saba', 'BES');
INSERT INTO country_codes VALUES (28, 'Bosnia and Herzegovina', 'BIH');
INSERT INTO country_codes VALUES (29, 'Botswana', 'BWA');
INSERT INTO country_codes VALUES (30, 'Bouvet Island', 'BVT');
INSERT INTO country_codes VALUES (31, 'Brazil', 'BRA');
INSERT INTO country_codes VALUES (32, 'British Indian Ocean Territory', 'IOT');
INSERT INTO country_codes VALUES (33, 'Brunei Darussalam', 'BRN');
INSERT INTO country_codes VALUES (34, 'Bulgaria', 'BGR');
INSERT INTO country_codes VALUES (35, 'Burkina Faso', 'BFA');
INSERT INTO country_codes VALUES (36, 'Burundi', 'BDI');
INSERT INTO country_codes VALUES (37, 'Cambodia', 'KHM');
INSERT INTO country_codes VALUES (38, 'Cameroon', 'CMR');
INSERT INTO country_codes VALUES (39, 'Canada', 'CAN');
INSERT INTO country_codes VALUES (40, 'Cape Verde', 'CPV');
INSERT INTO country_codes VALUES (41, 'Cayman Islands', 'CYM');
INSERT INTO country_codes VALUES (42, 'Central African Republic', 'CAF');
INSERT INTO country_codes VALUES (43, 'Chad', 'TCD');
INSERT INTO country_codes VALUES (44, 'Chile', 'CHL');
INSERT INTO country_codes VALUES (45, 'China', 'CHN');
INSERT INTO country_codes VALUES (46, 'Christmas Island', 'CXR');
INSERT INTO country_codes VALUES (47, 'Cocos (Keeling) Islands', 'CCK');
INSERT INTO country_codes VALUES (48, 'Colombia', 'COL');
INSERT INTO country_codes VALUES (49, 'Comoros', 'COM');
INSERT INTO country_codes VALUES (50, 'Congo', 'COG');
INSERT INTO country_codes VALUES (51, 'Congo, the Democratic Republic of the', 'COD');
INSERT INTO country_codes VALUES (52, 'Cook Islands', 'COK');
INSERT INTO country_codes VALUES (53, 'Costa Rica', 'CRI');
INSERT INTO country_codes VALUES (54, 'Croatia', 'HRV');
INSERT INTO country_codes VALUES (55, 'Cuba', 'CUB');
INSERT INTO country_codes VALUES (56, 'Curaçao', 'CUW');
INSERT INTO country_codes VALUES (57, 'Cyprus', 'CYP');
INSERT INTO country_codes VALUES (58, 'Czech Republic', 'CZE');
INSERT INTO country_codes VALUES (59, 'Côte d''Ivoire', 'CIV');
INSERT INTO country_codes VALUES (60, 'Denmark', 'DNK');
INSERT INTO country_codes VALUES (61, 'Djibouti', 'DJI');
INSERT INTO country_codes VALUES (62, 'Dominica', 'DMA');
INSERT INTO country_codes VALUES (63, 'Dominican Republic', 'DOM');
INSERT INTO country_codes VALUES (64, 'Ecuador', 'ECU');
INSERT INTO country_codes VALUES (65, 'Egypt', 'EGY');
INSERT INTO country_codes VALUES (66, 'El Salvador', 'SLV');
INSERT INTO country_codes VALUES (67, 'Equatorial Guinea', 'GNQ');
INSERT INTO country_codes VALUES (68, 'Eritrea', 'ERI');
INSERT INTO country_codes VALUES (69, 'Estonia', 'EST');
INSERT INTO country_codes VALUES (70, 'Ethiopia', 'ETH');
INSERT INTO country_codes VALUES (71, 'Falkland Islands (Malvinas)', 'FLK');
INSERT INTO country_codes VALUES (72, 'Faroe Islands', 'FRO');
INSERT INTO country_codes VALUES (73, 'Fiji', 'FJI');
INSERT INTO country_codes VALUES (74, 'Finland', 'FIN');
INSERT INTO country_codes VALUES (75, 'France', 'FRA');
INSERT INTO country_codes VALUES (76, 'French Guiana', 'GUF');
INSERT INTO country_codes VALUES (77, 'French Polynesia', 'PYF');
INSERT INTO country_codes VALUES (78, 'French Southern Territories', 'ATF');
INSERT INTO country_codes VALUES (79, 'Gabon', 'GAB');
INSERT INTO country_codes VALUES (80, 'Gambia', 'GMB');
INSERT INTO country_codes VALUES (81, 'Georgia', 'GEO');
INSERT INTO country_codes VALUES (82, 'Germany', 'DEU');
INSERT INTO country_codes VALUES (83, 'Ghana', 'GHA');
INSERT INTO country_codes VALUES (84, 'Gibraltar', 'GIB');
INSERT INTO country_codes VALUES (85, 'Greece', 'GRC');
INSERT INTO country_codes VALUES (86, 'Greenland', 'GRL');
INSERT INTO country_codes VALUES (87, 'Grenada', 'GRD');
INSERT INTO country_codes VALUES (88, 'Guadeloupe', 'GLP');
INSERT INTO country_codes VALUES (89, 'Guam', 'GUM');
INSERT INTO country_codes VALUES (90, 'Guatemala', 'GTM');
INSERT INTO country_codes VALUES (91, 'Guernsey', 'GGY');
INSERT INTO country_codes VALUES (92, 'Guinea', 'GIN');
INSERT INTO country_codes VALUES (93, 'Guinea-Bissau', 'GNB');
INSERT INTO country_codes VALUES (94, 'Guyana', 'GUY');
INSERT INTO country_codes VALUES (95, 'Haiti', 'HTI');
INSERT INTO country_codes VALUES (96, 'Heard Island and McDonald Mcdonald Islands', 'HMD');
INSERT INTO country_codes VALUES (97, 'Holy See (Vatican City State)', 'VAT');
INSERT INTO country_codes VALUES (98, 'Honduras', 'HND');
INSERT INTO country_codes VALUES (99, 'Hong Kong', 'HKG');
INSERT INTO country_codes VALUES (100, 'Hungary', 'HUN');
INSERT INTO country_codes VALUES (101, 'Iceland', 'ISL');
INSERT INTO country_codes VALUES (102, 'India', 'IND');
INSERT INTO country_codes VALUES (103, 'Indonesia', 'IDN');
INSERT INTO country_codes VALUES (104, 'Iran, Islamic Republic of', 'IRN');
INSERT INTO country_codes VALUES (105, 'Iraq', 'IRQ');
INSERT INTO country_codes VALUES (106, 'Ireland', 'IRL');
INSERT INTO country_codes VALUES (107, 'Isle of Man', 'IMN');
INSERT INTO country_codes VALUES (108, 'Israel', 'ISR');
INSERT INTO country_codes VALUES (109, 'Italy', 'ITA');
INSERT INTO country_codes VALUES (110, 'Jamaica', 'JAM');
INSERT INTO country_codes VALUES (111, 'Japan', 'JPN');
INSERT INTO country_codes VALUES (112, 'Jersey', 'JEY');
INSERT INTO country_codes VALUES (113, 'Jordan', 'JOR');
INSERT INTO country_codes VALUES (114, 'Kazakhstan', 'KAZ');
INSERT INTO country_codes VALUES (115, 'Kenya', 'KEN');
INSERT INTO country_codes VALUES (116, 'Kiribati', 'KIR');
INSERT INTO country_codes VALUES (117, 'Korea, Democratic People''s Republic of', 'PRK');
INSERT INTO country_codes VALUES (118, 'Korea, Republic of', 'KOR');
INSERT INTO country_codes VALUES (119, 'Kuwait', 'KWT');
INSERT INTO country_codes VALUES (120, 'Kyrgyzstan', 'KGZ');
INSERT INTO country_codes VALUES (121, 'Lao People''s Democratic Republic', 'LAO');
INSERT INTO country_codes VALUES (122, 'Latvia', 'LVA');
INSERT INTO country_codes VALUES (123, 'Lebanon', 'LBN');
INSERT INTO country_codes VALUES (124, 'Lesotho', 'LSO');
INSERT INTO country_codes VALUES (125, 'Liberia', 'LBR');
INSERT INTO country_codes VALUES (126, 'Libya', 'LBY');
INSERT INTO country_codes VALUES (127, 'Liechtenstein', 'LIE');
INSERT INTO country_codes VALUES (128, 'Lithuania', 'LTU');
INSERT INTO country_codes VALUES (129, 'Luxembourg', 'LUX');
INSERT INTO country_codes VALUES (130, 'Macao', 'MAC');
INSERT INTO country_codes VALUES (131, 'Macedonia, the Former Yugoslav Republic of', 'MKD');
INSERT INTO country_codes VALUES (132, 'Madagascar', 'MDG');
INSERT INTO country_codes VALUES (133, 'Malawi', 'MWI');
INSERT INTO country_codes VALUES (134, 'Malaysia', 'MYS');
INSERT INTO country_codes VALUES (135, 'Maldives', 'MDV');
INSERT INTO country_codes VALUES (136, 'Mali', 'MLI');
INSERT INTO country_codes VALUES (137, 'Malta', 'MLT');
INSERT INTO country_codes VALUES (138, 'Marshall Islands', 'MHL');
INSERT INTO country_codes VALUES (139, 'Martinique', 'MTQ');
INSERT INTO country_codes VALUES (140, 'Mauritania', 'MRT');
INSERT INTO country_codes VALUES (141, 'Mauritius', 'MUS');
INSERT INTO country_codes VALUES (142, 'Mayotte', 'MYT');
INSERT INTO country_codes VALUES (143, 'Mexico', 'MEX');
INSERT INTO country_codes VALUES (144, 'Micronesia, Federated States of', 'FSM');
INSERT INTO country_codes VALUES (145, 'Moldova, Republic of', 'MDA');
INSERT INTO country_codes VALUES (146, 'Monaco', 'MCO');
INSERT INTO country_codes VALUES (147, 'Mongolia', 'MNG');
INSERT INTO country_codes VALUES (148, 'Montenegro', 'MNE');
INSERT INTO country_codes VALUES (149, 'Montserrat', 'MSR');
INSERT INTO country_codes VALUES (150, 'Morocco', 'MAR');
INSERT INTO country_codes VALUES (151, 'Mozambique', 'MOZ');
INSERT INTO country_codes VALUES (152, 'Myanmar', 'MMR');
INSERT INTO country_codes VALUES (153, 'Namibia', 'NAM');
INSERT INTO country_codes VALUES (154, 'Nauru', 'NRU');
INSERT INTO country_codes VALUES (155, 'Nepal', 'NPL');
INSERT INTO country_codes VALUES (156, 'Netherlands', 'NLD');
INSERT INTO country_codes VALUES (157, 'New Caledonia', 'NCL');
INSERT INTO country_codes VALUES (158, 'New Zealand', 'NZL');
INSERT INTO country_codes VALUES (159, 'Nicaragua', 'NIC');
INSERT INTO country_codes VALUES (160, 'Niger', 'NER');
INSERT INTO country_codes VALUES (161, 'Nigeria', 'NGA');
INSERT INTO country_codes VALUES (162, 'Niue', 'NIU');
INSERT INTO country_codes VALUES (163, 'Norfolk Island', 'NFK');
INSERT INTO country_codes VALUES (164, 'Northern Mariana Islands', 'MNP');
INSERT INTO country_codes VALUES (165, 'Norway', 'NOR');
INSERT INTO country_codes VALUES (166, 'Oman', 'OMN');
INSERT INTO country_codes VALUES (167, 'Pakistan', 'PAK');
INSERT INTO country_codes VALUES (168, 'Palau', 'PLW');
INSERT INTO country_codes VALUES (169, 'Palestine, State of', 'PSE');
INSERT INTO country_codes VALUES (170, 'Panama', 'PAN');
INSERT INTO country_codes VALUES (171, 'Papua New Guinea', 'PNG');
INSERT INTO country_codes VALUES (172, 'Paraguay', 'PRY');
INSERT INTO country_codes VALUES (173, 'Peru', 'PER');
INSERT INTO country_codes VALUES (174, 'Philippines', 'PHL');
INSERT INTO country_codes VALUES (175, 'Pitcairn', 'PCN');
INSERT INTO country_codes VALUES (176, 'Poland', 'POL');
INSERT INTO country_codes VALUES (177, 'Portugal', 'PRT');
INSERT INTO country_codes VALUES (178, 'Puerto Rico', 'PRI');
INSERT INTO country_codes VALUES (179, 'Qatar', 'QAT');
INSERT INTO country_codes VALUES (180, 'Romania', 'ROU');
INSERT INTO country_codes VALUES (181, 'Russian Federation', 'RUS');
INSERT INTO country_codes VALUES (182, 'Rwanda', 'RWA');
INSERT INTO country_codes VALUES (183, 'Réunion', 'REU');
INSERT INTO country_codes VALUES (184, 'Saint Barthélemy', 'BLM');
INSERT INTO country_codes VALUES (185, 'Saint Helena, Ascension and Tristan da Cunha', 'SHN');
INSERT INTO country_codes VALUES (186, 'Saint Kitts and Nevis', 'KNA');
INSERT INTO country_codes VALUES (187, 'Saint Lucia', 'LCA');
INSERT INTO country_codes VALUES (188, 'Saint Martin (French part)', 'MAF');
INSERT INTO country_codes VALUES (189, 'Saint Pierre and Miquelon', 'SPM');
INSERT INTO country_codes VALUES (190, 'Saint Vincent and the Grenadines', 'VCT');
INSERT INTO country_codes VALUES (191, 'Samoa', 'WSM');
INSERT INTO country_codes VALUES (192, 'San Marino', 'SMR');
INSERT INTO country_codes VALUES (193, 'Sao Tome and Principe', 'STP');
INSERT INTO country_codes VALUES (194, 'Saudi Arabia', 'SAU');
INSERT INTO country_codes VALUES (195, 'Senegal', 'SEN');
INSERT INTO country_codes VALUES (196, 'Serbia', 'SRB');
INSERT INTO country_codes VALUES (197, 'Seychelles', 'SYC');
INSERT INTO country_codes VALUES (198, 'Sierra Leone', 'SLE');
INSERT INTO country_codes VALUES (199, 'Singapore', 'SGP');
INSERT INTO country_codes VALUES (200, 'Sint Maarten (Dutch part)', 'SXM');
INSERT INTO country_codes VALUES (201, 'Slovakia', 'SVK');
INSERT INTO country_codes VALUES (202, 'Slovenia', 'SVN');
INSERT INTO country_codes VALUES (203, 'Solomon Islands', 'SLB');
INSERT INTO country_codes VALUES (204, 'Somalia', 'SOM');
INSERT INTO country_codes VALUES (205, 'South Africa', 'ZAF');
INSERT INTO country_codes VALUES (206, 'South Georgia and the South Sandwich Islands', 'SGS');
INSERT INTO country_codes VALUES (207, 'South Sudan', 'SSD');
INSERT INTO country_codes VALUES (208, 'Spain', 'ESP');
INSERT INTO country_codes VALUES (209, 'Sri Lanka', 'LKA');
INSERT INTO country_codes VALUES (210, 'Sudan', 'SDN');
INSERT INTO country_codes VALUES (211, 'Suriname', 'SUR');
INSERT INTO country_codes VALUES (212, 'Svalbard and Jan Mayen', 'SJM');
INSERT INTO country_codes VALUES (213, 'Swaziland', 'SWZ');
INSERT INTO country_codes VALUES (214, 'Sweden', 'SWE');
INSERT INTO country_codes VALUES (215, 'Switzerland', 'CHE');
INSERT INTO country_codes VALUES (216, 'Syrian Arab Republic', 'SYR');
INSERT INTO country_codes VALUES (217, 'Taiwan, Province of China', 'TWN');
INSERT INTO country_codes VALUES (218, 'Tajikistan', 'TJK');
INSERT INTO country_codes VALUES (219, 'Tanzania, United Republic of', 'TZA');
INSERT INTO country_codes VALUES (220, 'Thailand', 'THA');
INSERT INTO country_codes VALUES (221, 'Timor-Leste', 'TLS');
INSERT INTO country_codes VALUES (222, 'Togo', 'TGO');
INSERT INTO country_codes VALUES (223, 'Tokelau', 'TKL');
INSERT INTO country_codes VALUES (224, 'Tonga', 'TON');
INSERT INTO country_codes VALUES (225, 'Trinidad and Tobago', 'TTO');
INSERT INTO country_codes VALUES (226, 'Tunisia', 'TUN');
INSERT INTO country_codes VALUES (227, 'Turkey', 'TUR');
INSERT INTO country_codes VALUES (228, 'Turkmenistan', 'TKM');
INSERT INTO country_codes VALUES (229, 'Turks and Caicos Islands', 'TCA');
INSERT INTO country_codes VALUES (230, 'Tuvalu', 'TUV');
INSERT INTO country_codes VALUES (231, 'Uganda', 'UGA');
INSERT INTO country_codes VALUES (232, 'Ukraine', 'UKR');
INSERT INTO country_codes VALUES (233, 'United Arab Emirates', 'ARE');
INSERT INTO country_codes VALUES (234, 'United Kingdom', 'GBR');
INSERT INTO country_codes VALUES (235, 'United States', 'USA');
INSERT INTO country_codes VALUES (236, 'United States Minor Outlying Islands', 'UMI');
INSERT INTO country_codes VALUES (237, 'Uruguay', 'URY');
INSERT INTO country_codes VALUES (238, 'Uzbekistan', 'UZB');
INSERT INTO country_codes VALUES (239, 'Vanuatu', 'VUT');
INSERT INTO country_codes VALUES (240, 'Venezuela, Bolivarian Republic of', 'VEN');
INSERT INTO country_codes VALUES (241, 'Viet Nam', 'VNM');
INSERT INTO country_codes VALUES (242, 'Virgin Islands, British', 'VGB');
INSERT INTO country_codes VALUES (243, 'Virgin Islands, U.S.', 'VIR');
INSERT INTO country_codes VALUES (244, 'Wallis and Futuna', 'WLF');
INSERT INTO country_codes VALUES (245, 'Western Sahara', 'ESH');
INSERT INTO country_codes VALUES (246, 'Yemen', 'YEM');
INSERT INTO country_codes VALUES (247, 'Zambia', 'ZMB');
INSERT INTO country_codes VALUES (248, 'Zimbabwe', 'ZWE');
INSERT INTO country_codes VALUES (249, 'Åland Islands', 'ALA');


--
-- TOC entry 2019 (class 0 OID 16924)
-- Dependencies: 173
-- Data for Name: country_prioritization_framework; Type: TABLE DATA; Schema: ahasemann; Owner: ahasemann
--

INSERT INTO country_prioritization_framework VALUES (1, 'Afghanistan', 'X', 'X', NULL, 'X', 14.4698805000, 28.5185190000, 59, -1.3171982490, -1.3975745980, 3.0000000000, 2.5000000000, 62.5000000000, -1.4064267650, 619.5921204000, '2011', 29824536, 28.0000000000, 2008, 0.3740000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.0100000000, 1.8086437840, 2, 0.0000000000, -2.4195342980, 2.4800000000, 15, 2, 3, 0.2146836910, 2, 100, 66, 0, -1.4064267600, 3.8401955210, 'Yes', 'Yes', 'Extreme', 2, 3, 33, 28, 0.0000000000, 37.5534989000, 6710.8700000000, 4);
INSERT INTO country_prioritization_framework VALUES (2, 'Algeria', NULL, NULL, 'X', NULL, 98.6178016500, 40.7936510000, 13, -0.9143329930, -0.5530610560, NULL, NULL, 56.6666666700, -0.5363664550, 5403.9992210000, NULL, 38481705, 35.0000000000, 1995, 0.7130000000, 23.6000000000, 1995, 50, 50, 50, NULL, NULL, NULL, NULL, NULL, 'No', 13.5035781700, 11.3314796800, NULL, 26.3000000000, -1.3407187160, 3.8300000000, 24, NULL, NULL, 0.3640562860, NULL, 50, 0, 0, -0.5363664600, 0.0000000000, 'Yes', 'Yes', 'High', NULL, NULL, 0, 356, 0.0000000000, 0.1043648500, 207.7600000000, NULL);
INSERT INTO country_prioritization_framework VALUES (3, 'Angola', NULL, 'X', 'X', NULL, 99.5000000000, 43.1250000000, 28, -1.0831820010, -1.0232833330, 3.0000000000, 2.6666666670, 57.7777777800, -1.2949667150, 5484.8349690000, NULL, 20820525, 43.0000000000, 2009, 0.5080000000, 67.4200000000, 2009, 50, 50, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 8.8662378570, 2.2869645210, 2, 46.4000000000, -0.3781556380, 3.3500000000, 19, 2, 3, 0.3713704460, 2, 50, 0, 0, -1.2949667200, 0.0000000000, 'No', 'No', 'Medium', 2, 3, 0, 575, 0.0000000000, 0.1917095000, 199.6000000000, 3);
INSERT INTO country_prioritization_framework VALUES (4, 'Azerbaijan', 'X', 'X', 'X', NULL, 94.8070646500, 54.0616250000, 42, -1.2614219480, -0.7780962790, NULL, NULL, 56.7901234600, -1.0737569530, 7391.9749660000, NULL, 9297507, 34.0000000000, 2008, 0.7340000000, 2.8100000000, 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 3.6890466450, 3.4169448730, 2, 45.1000000000, -0.6870151580, 3.1500000000, 17, 2, 3, 0.4296238000, 4, 50, 100, 100, -1.0737569500, 37.1786155400, 'No', 'Yes', 'Medium', 4, 4, 100, 410, 39.8953004000, 0.4443028400, 293.0300000000, 4);
INSERT INTO country_prioritization_framework VALUES (5, 'Bahrain', NULL, NULL, 'X', NULL, 71.7000000000, 40.0000000000, NULL, -1.3200000000, 0.5400000000, NULL, NULL, 38.0000000000, 0.3900000000, NULL, NULL, 1317827, NULL, NULL, 0.7960000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.8903574090, 0.3333627520, NULL, NULL, -1.1316998620, 2.5300000000, 12, NULL, NULL, NULL, NULL, 50, 0, 0, 0.3900000000, 0.0000000000, 'Yes', 'No', 'Medium', NULL, NULL, 0, 396, 0.0000000000, NULL, NULL, NULL);
INSERT INTO country_prioritization_framework VALUES (6, 'Bolivia, Plurinational State of', 'X', 'X', 'X', NULL, 79.6064444600, 46.5167550000, 12, -0.1348420150, -0.3737569040, 4.0000000000, 3.5000000000, 79.6296296300, -0.7037326370, 2575.6836950000, NULL, 10496285, 56.0000000000, 2008, 0.6750000000, 24.8900000000, 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.5059912060, 1.8053465770, 3, 20.3000000000, -0.5000066870, 5.8400000000, 40, 3, 3, 0.4998778380, 4, 50, 0, 0, -0.7037326400, 12.4402574800, 'No', 'No', 'Medium', 4, 4, 33, 167, 13.6114979000, 3.1710737200, 759.4300000000, 4);
INSERT INTO country_prioritization_framework VALUES (7, 'Botswana', NULL, 'X', 'X', NULL, 87.9970682300, 28.1547620000, 50, 0.5003760870, 0.4389048240, NULL, NULL, 55.0000000000, 0.9395069680, 7191.4308720000, NULL, 2003910, 61.0000000000, 1994, 0.6340000000, 49.4000000000, 1994, 100, NULL, NULL, NULL, 100, NULL, NULL, NULL, 'No', 1.1188649250, 0.2201131370, 4, 4.6000000000, 1.1054704380, 7.8500000000, 46, 3, 3, 0.5739623950, 3, 0, 0, 0, 0.9395069680, 0.0000000000, 'No', 'No', 'Low', 3, 2, 0, 240, 0.0000000000, 0.8262914600, 126.3600000000, 3);
INSERT INTO country_prioritization_framework VALUES (8, 'Brazil', 'X', 'X', NULL, NULL, 29.6790038700, 77.9100530000, 73, 0.4306037370, -0.1243177990, NULL, NULL, 81.4814814800, -0.0709744300, 11339.5211100000, NULL, 198656019, 55.0000000000, 2009, 0.7300000000, 10.8200000000, 2009, 100, 50, NULL, NULL, NULL, NULL, NULL, 100, 'Yes', 42.1610353900, 34.1685619200, 4, 5.5000000000, 0.0654288730, 7.1200000000, 48, 3, 3, 0.5761715360, 4, 0, 0, 100, -0.0709744300, 3.6900547450, 'No', 'No', 'Medium', 4, 4, 33, 518, 0.0000000000, 0.0351288700, 870.0200000000, 3);
INSERT INTO country_prioritization_framework VALUES (9, 'Burkina Faso', 'X', 'X', NULL, NULL, 46.0423922300, NULL, 23, -0.3453246740, -0.6326612570, 4.1666666670, 3.5000000000, NULL, -0.5192676610, 634.3209746000, NULL, 16460141, 40.0000000000, 2009, 0.3430000000, 72.5600000000, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.8106376310, 1.8080119730, 2, 9.1000000000, -0.6168624040, 3.5200000000, 36, 2, 2, 0.5015263550, 2, 50, 100, 0, -0.5192676600, 10.5375594900, 'Yes', 'Yes', 'Medium', 1, 3, 33, 270, 0.0000000000, 9.5235003500, 990.0400000000, 2);
INSERT INTO country_prioritization_framework VALUES (10, 'Cambodia', 'X', NULL, NULL, NULL, 3.3789914180, 13.3333330000, 15, -0.9752436670, -0.8311167450, 3.8333333330, 3.5000000000, 52.3809523800, -1.0440155140, 945.9893246000, NULL, 14864646, 36.0000000000, 2009, 0.5430000000, 49.5400000000, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.1345626450, 0.7462171690, NULL, 0.0000000000, -0.1355830660, 4.9600000000, 20, NULL, NULL, 0.3046374780, NULL, 50, 0, 0, -1.0440155100, 7.1867491850, 'No', 'No', 'Medium', NULL, NULL, 33, 227, 5.4445991600, 6.1752013700, 792.2500000000, NULL);
INSERT INTO country_prioritization_framework VALUES (11, 'Cameroon', 'X', 'X', 'X', NULL, 47.5360052400, 33.2010580000, 10, -1.0290642180, -0.9027136440, 3.6666666670, 3.1666666670, 62.5000000000, -1.2383915000, 1151.3550850000, NULL, 21699631, 39.0000000000, 2007, 0.4950000000, 30.3600000000, 2007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 1.9397500380, 2.3835271310, 2, 8.4000000000, -0.5754735150, 3.4400000000, 16, 2, 2, 0.3288285500, 3, 50, 100, 0, -1.2383915000, 5.0584201750, 'Yes', 'Yes', 'Medium', 3, 4, 66, 301, 0.0000000000, 2.4448616200, 623.1200000000, 3);
INSERT INTO country_prioritization_framework VALUES (12, 'Central African Republic', NULL, NULL, NULL, 'X', 44.8933736800, NULL, NULL, -1.2609111400, -1.4619119790, 3.3333333330, 2.5000000000, NULL, -0.8932081080, 472.6777561000, NULL, 4525209, 56.0000000000, 2008, 0.3520000000, 80.0900000000, 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.1660687610, 0.4970572280, NULL, 0.1000000000, -1.8690222470, 1.9900000000, 19, NULL, NULL, 0.2903226420, NULL, 100, 33, 0, -0.8932081100, 0.0000000000, 'Yes', 'No', 'High', NULL, NULL, 0, 252, 0.0000000000, 12.2908852000, 271.9600000000, NULL);
INSERT INTO country_prioritization_framework VALUES (13, 'Chad', NULL, 'X', 'X', NULL, 95.0451937200, NULL, 3, -1.3280709280, -1.4927900010, 2.5000000000, 2.5000000000, NULL, -1.2504398970, 885.1115555000, NULL, 12448175, 40.0000000000, 2003, 0.3400000000, 83.3000000000, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.8554366100, 1.3673302940, 1, 36.8000000000, -1.0650432340, 1.6200000000, 16, 1, 1, 0.2332393070, 2, 50, 66, 0, -1.2504399000, 0.0000000000, 'Yes', 'Yes', 'High', 1, 3, 0, 394, 0.0000000000, 3.8735215400, 470.8800000000, 2);
INSERT INTO country_prioritization_framework VALUES (14, 'Chile', NULL, NULL, 'X', NULL, 63.9475860700, 73.6274510000, 66, 1.0428300230, 1.2523002910, NULL, NULL, 77.1604938300, 1.5618731160, 15355.8910100000, NULL, 17464814, 52.0000000000, 2009, 0.8190000000, 2.7200000000, 2009, 100, NULL, NULL, 100, NULL, 100, NULL, NULL, 'No', 5.0194231750, 3.0039239770, NULL, 18.8000000000, 0.3465710230, 7.5400000000, 57, NULL, NULL, 0.6993722490, NULL, 0, 0, 100, 1.5618731160, 0.0000000000, 'No', 'No', 'Low', NULL, NULL, 0, 286, 0.0000000000, 0.0327599600, 82.2900000000, NULL);
INSERT INTO country_prioritization_framework VALUES (15, 'China', NULL, 'X', 'X', NULL, 3.1000000000, 46.0000000000, 11, -1.5800000000, 0.0100000000, NULL, NULL, 43.0000000000, -0.4800000000, 6188.0000000000, NULL, 1350695000, 42.1000000000, 2009, 0.6990000000, 27.2000000000, 2009, 100, NULL, NULL, NULL, 100, NULL, NULL, NULL, 'Yes', 41.1951952400, 60.4676735000, 5, 9.1000000000, -0.5442773670, 3.0000000000, 15, 2, 3, 0.4300000000, 2, 0, 0, 0, -0.4800000000, 0.0000000000, 'Yes', 'No', 'Low', 3, 3, 0, 377, 0.0000000000, -0.0108714000, -796.0000000000, 2);
INSERT INTO country_prioritization_framework VALUES (16, 'Colombia', 'X', 'X', NULL, NULL, 68.9421677500, 73.2142860000, 58, -0.1113742460, 0.0108759450, NULL, NULL, 75.3086419800, -0.4340033320, 7751.6781810000, NULL, 47704427, 56.0000000000, 2010, 0.7190000000, 15.8200000000, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 6.9210062870, 8.2050958030, 3, 12.0000000000, -1.4032071490, 6.6300000000, 34, 3, 3, 0.5131260730, 4, 50, 0, 100, -0.4340033300, 16.9976034300, 'No', 'Yes', 'Medium', 5, 4, 33, 382, 0.0000000000, 0.3358897200, 1130.4700000000, 4);
INSERT INTO country_prioritization_framework VALUES (17, 'Congo', NULL, 'X', 'X', NULL, 89.6497536200, NULL, NULL, -1.1557730960, -1.2017292180, 3.5000000000, 3.0000000000, NULL, -1.1913743030, 3153.7394610000, NULL, 4337051, 47.0000000000, 2005, 0.5340000000, 74.4000000000, 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 1.0619510000, 0.4763896090, 2, 71.5000000000, -0.4783403870, 2.8900000000, 22, 2, 2, 0.3177149090, 2, 50, 100, 0, -1.1913743000, 1.7044541910, 'Yes', 'Yes', 'Medium', 2, 3, 0, 443, 0.0000000000, 1.7586781900, 253.7000000000, 3);
INSERT INTO country_prioritization_framework VALUES (18, 'Côte d''Ivoire', NULL, NULL, NULL, 'X', 28.9202490100, NULL, NULL, -0.8000000000, -1.1000000000, 2.8000000000, 3.3000000000, NULL, -0.9100000000, 1244.0000000000, NULL, 19839750, NULL, NULL, 0.4320000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 1.9200000000, 2.0000000000, NULL, 6.6000000000, -1.2614607920, 3.2500000000, 21, NULL, NULL, NULL, NULL, 50, 100, 0, -0.9100000000, 2.2877923770, 'Yes', 'Yes', 'Medium', NULL, NULL, 0, 263, 0.0000000000, 5.9711771100, 1437.4900000000, NULL);
INSERT INTO country_prioritization_framework VALUES (19, 'Congo, the Democratic Republic of the', 'X', 'X', 'X', NULL, 91.2054341100, 45.0000000000, 18, -1.5155254060, -1.6586488260, 3.1666666670, 2.5000000000, 55.5555555600, -1.3035610180, 271.9685399000, NULL, 65705093, 44.0000000000, 2006, 0.3040000000, 95.1500000000, 2006, 100, NULL, NULL, NULL, 100, NULL, NULL, NULL, 'No', 1.3874004820, 7.2171675090, 3, 26.5000000000, -2.1175621960, 1.9200000000, 11, 2, 3, 0.2621324100, 4, 0, 33, 0, -1.3035610200, 1.3491459230, 'No', 'Yes', 'High', 2, 3, 33, 406, 0.0000000000, 35.1687551000, 5521.6600000000, 4);
INSERT INTO country_prioritization_framework VALUES (20, 'Ecuador', 'X', 'X', 'X', NULL, 56.3712134400, 63.5626100000, 31, -0.3317716300, -0.5100644170, NULL, NULL, 70.3703703700, -0.6574696290, 5424.6336110000, NULL, 15492264, 49.0000000000, 2010, 0.7240000000, 10.5900000000, 2010, 50, 50, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 1.5728964250, 2.6646480910, 2, 25.7000000000, -0.6016906120, 5.7800000000, 36, 3, 3, 0.4618076170, 3, 50, 0, 0, -0.6574696300, 4.1467524930, 'Yes', 'Yes', 'Medium', 4, 4, 33, 265, 0.0000000000, 0.2227049700, 170.9700000000, 3);
INSERT INTO country_prioritization_framework VALUES (21, 'Egypt', 'X', NULL, NULL, NULL, 45.3470479800, 44.0476190000, 13, -0.7378713300, -0.7688844530, NULL, NULL, 39.5833333300, -0.5725418000, 3187.3125910000, NULL, 80721874, 31.0000000000, 2008, 0.6620000000, 15.4300000000, 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 16.7068730800, 23.7696919900, NULL, 12.6000000000, -1.4810164190, 4.5600000000, 23, NULL, NULL, 0.4091400260, NULL, 50, 0, 0, -0.5725418000, 1.7646505230, 'No', 'No', 'Medium', NULL, NULL, 33, 267, 0.0000000000, 0.1738723400, 410.3400000000, NULL);
INSERT INTO country_prioritization_framework VALUES (22, 'Equatorial Guinea', NULL, NULL, 'X', NULL, 95.1801514500, 13.7500000000, 0, -1.8744084350, -1.6495926040, NULL, NULL, 26.6666666700, -1.5600852550, 24035.7060900000, NULL, 736296, NULL, NULL, 0.5540000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 1.3740212930, 0.0808760980, NULL, 41.1000000000, 0.2066276690, 1.8300000000, 7, NULL, NULL, 0.2271061110, NULL, 50, 0, 0, -1.5600852500, 1.5717788450, 'No', 'No', 'Low', NULL, NULL, 0, 389, 0.0000000000, 0.1439291000, 24.1900000000, NULL);
INSERT INTO country_prioritization_framework VALUES (23, 'Ethiopia', NULL, NULL, NULL, NULL, 7.3300000000, NULL, NULL, -1.2770000000, -0.4300000000, 3.5000000000, 3.2000000000, NULL, -0.6500000000, 454.0000000000, NULL, 91728849, 33.6000000000, 2011, 0.3960000000, 66.0000000000, 2011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 3.1000000000, 10.0600000000, NULL, 6.0000000000, -1.5300000000, 3.7200000000, 6, NULL, NULL, 0.3600000000, NULL, 50, 0, 0, -0.6500000000, 0.0000000000, 'No', 'No', 'Medium', NULL, NULL, 0, 400, 0.0000000000, 11.0000000000, 3261.3213300000, NULL);
INSERT INTO country_prioritization_framework VALUES (24, 'Gabon', NULL, NULL, 'X', NULL, 84.6738071300, 51.1111110000, NULL, -0.8530734670, -0.7755369490, NULL, NULL, 60.4166666700, -0.5512999610, 11430.4937500000, NULL, 1632572, 41.0000000000, 2005, 0.6830000000, 19.5900000000, 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 1.4488434820, 0.1793246920, NULL, 48.2000000000, 0.3066131410, 3.5600000000, 25, NULL, NULL, 0.4091334870, NULL, 50, 0, 0, -0.5512999600, 0.0000000000, 'No', 'Yes', 'Low', NULL, NULL, 0, 480, 0.0000000000, 0.4031544800, 75.6300000000, NULL);
INSERT INTO country_prioritization_framework VALUES (25, 'Ghana', 'X', 'X', NULL, 'X', 39.3934186800, 51.2820510000, 50, 0.4130545630, -0.0732018390, 3.8333333330, 4.1666666670, 79.1666666700, -0.0865030590, 1604.9057820000, NULL, 25366462, 43.0000000000, 2006, 0.5580000000, 51.8400000000, 2006, 100, NULL, NULL, 100, NULL, NULL, NULL, NULL, 'No', 3.1607749640, 2.7862985500, 4, 12.8000000000, 0.1002848100, 6.0200000000, 47, 4, 4, 0.5497570980, 4, 50, 100, 100, -0.0865030600, 13.9279256700, 'No', 'No', 'Low', 4, 4, 100, 331, 27.2229958000, 4.5886297800, 1815.4900000000, 4);
INSERT INTO country_prioritization_framework VALUES (26, 'Guatemala', NULL, NULL, NULL, 'X', 10.6254257900, NULL, 51, -0.3910225580, -0.7632735180, NULL, NULL, NULL, -0.6149799880, 3351.1404330000, NULL, 15082831, 56.0000000000, 2006, 0.5810000000, 26.3300000000, 2006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.9459982180, 2.5942261780, NULL, 2.0000000000, -0.6516595270, 5.8800000000, 33, NULL, NULL, 0.5254135560, NULL, 100, 66, 100, -0.6149799900, 0.0000000000, 'No', 'No', 'Medium', NULL, NULL, 0, 227, 0.0000000000, 0.8216170300, 391.8200000000, NULL);
INSERT INTO country_prioritization_framework VALUES (27, 'Guinea', 'X', 'X', 'X', NULL, 87.9058755200, 45.0000000000, NULL, -1.0833330350, -1.2712308490, 2.8333333330, 3.0000000000, 85.7142857100, -1.1086555850, 591.0189490000, NULL, 11451273, 39.0000000000, 2007, 0.3550000000, 69.5900000000, 2007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.5254595760, 1.2578287570, 3, 16.0000000000, -1.2807007050, 2.7900000000, 24, 4, 4, 0.3474181620, 3, 50, 66, 0, -1.1086555900, 17.1399877100, 'No', 'No', 'Medium', 3, 5, 66, 327, 0.0000000000, 4.1035173800, 207.9400000000, 4);
INSERT INTO country_prioritization_framework VALUES (28, 'Guyana', NULL, NULL, 'X', NULL, 57.0413695700, NULL, NULL, -0.0078446900, -0.1398064880, 3.6666666670, 3.3333333330, NULL, -0.7500752900, 3583.9621700000, NULL, 795369, 45.0000000000, 1998, 0.6360000000, 18.0000000000, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.0533515330, 0.1368023740, NULL, 14.9000000000, -0.4812876040, 6.0500000000, 40, NULL, NULL, 0.5039079710, NULL, 50, 0, 0, -0.7500752900, 0.0000000000, 'No', 'No', 'Medium', NULL, NULL, 0, 210, 0.0000000000, 6.1872954000, 159.4300000000, NULL);
INSERT INTO country_prioritization_framework VALUES (29, 'Haiti', NULL, NULL, NULL, NULL, 7.3000000000, NULL, NULL, -0.7900000000, -1.6200000000, 3.3000000000, 3.2000000000, NULL, -1.2400000000, 771.0000000000, NULL, 10173775, NULL, NULL, 0.4560000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.1300000000, 1.6700000000, NULL, 0.7000000000, -0.7900000000, 3.9600000000, 5, NULL, NULL, NULL, NULL, 50, 0, 0, -1.2400000000, 0.0000000000, 'Yes', 'Yes', 'High', NULL, NULL, 0, 266, 0.0000000000, 23.0000000000, 1710.0000000000, NULL);
INSERT INTO country_prioritization_framework VALUES (30, 'India', NULL, 'X', 'X', NULL, 33.0000000000, 72.0000000000, 68, 0.3500000000, -0.1800000000, 4.0000000000, 3.5000000000, 60.0000000000, -0.5700000000, 1489.0000000000, NULL, 1236686732, 33.9000000000, 2010, 0.5540000000, 68.8000000000, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 80.4478520700, 74.9848228500, 3, 7.4000000000, -1.2458887640, 7.5200000000, 42, 2, 2, 0.4800000000, 4, 50, 0, 0, -0.5700000000, 0.0000000000, 'No', 'No', 'Medium', 3, 2, 0, 400, 0.0000000000, 0.1719313800, 3220.0000000000, 2);
INSERT INTO country_prioritization_framework VALUES (31, 'Indonesia', 'X', 'X', 'X', NULL, 41.2086631500, 65.8543420000, 62, 0.0284858140, -0.2908476940, NULL, NULL, 75.9259259300, -0.6557281660, 3557.3927360000, NULL, 246864191, 38.0000000000, 2011, 0.6290000000, 43.3295632000, 2011, 100, NULL, NULL, 100, NULL, NULL, NULL, NULL, 'Yes', 8.4037596160, 12.3927806700, 4, 9.4000000000, -0.5731691060, 6.7600000000, 35, 3, 4, 0.5016698080, 4, 0, 66, 100, -0.6557281700, 87.5324672600, 'No', 'No', 'Medium', 4, 4, 100, 393, 0.0000000000, 0.0489873200, 414.6000000000, 4);
INSERT INTO country_prioritization_framework VALUES (32, 'Iran, Islamic Republic of', NULL, 'X', 'X', NULL, 79.8844798100, 32.6190480000, NULL, -1.5737794150, -0.5414860000, NULL, NULL, 26.1111111100, -0.8168039480, 6815.5701910000, NULL, 76424443, 39.0000000000, 2005, 0.7420000000, 8.0300000000, 2005, 100, 100, 100, NULL, NULL, NULL, NULL, NULL, 'No', 0.0000000000, 22.5042529400, 3, NULL, -1.3213454070, 1.9800000000, 10, 1, 1, 0.3297197240, 1, 0, 0, 0, -0.8168039500, 0.0000000000, 'No', 'Yes', 'Low', 1, 3, 0, 155, 0.0000000000, 0.0198303900, 101.9400000000, 2);
INSERT INTO country_prioritization_framework VALUES (33, 'Iraq', 'X', 'X', 'X', NULL, 99.0239287600, 52.2222220000, 4, -1.1344417600, -1.1129365240, NULL, NULL, 57.1428571400, -1.2291151310, 6454.6196280000, NULL, 32578209, 31.0000000000, 2007, 0.5900000000, 21.4100000000, 2007, 100, 100, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 13.6545420300, 9.5931121910, 3, 78.5000000000, -1.9324913400, 4.1000000000, 13, 3, 3, 0.3621171550, 3, 0, 100, 0, -1.2291151300, 79.7775901700, 'No', 'Yes', 'High', 2, 4, 66, 11, 30.1741047000, 1.0542515800, 1904.0500000000, 4);
INSERT INTO country_prioritization_framework VALUES (34, 'Kazakhstan', 'X', 'X', 'X', NULL, 85.0373650700, 58.2936510000, 48, -1.1496385940, -0.4413462350, NULL, NULL, 62.2222222200, -0.8834446030, 11935.4312600000, NULL, 16797459, 29.0000000000, 2009, 0.7540000000, 1.1200000000, 2009, 50, 50, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 5.2400000000, 6.1732668140, 3, 38.3000000000, -0.3745263200, 2.9500000000, 20, 3, 3, 0.4434858760, 3, 50, 100, 0, -0.8834446000, 5.7550704470, 'Yes', 'Yes', 'Medium', 4, 4, 33, 327, 0.0000000000, 0.1138633400, 214.1200000000, 4);
INSERT INTO country_prioritization_framework VALUES (35, 'Kenya', NULL, NULL, NULL, 'X', 8.8784301360, NULL, 49, -0.2989373340, -0.5453598550, 4.1666666670, 4.0000000000, NULL, -1.0965401470, 864.7447928000, NULL, 43178141, 48.0000000000, 2005, 0.5190000000, 67.2100000000, 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 2.8989186790, 4.7427659270, NULL, 0.1000000000, -1.2931246460, 4.7100000000, 34, NULL, NULL, 0.4321829150, NULL, 100, 0, 100, -1.0965401500, 4.4322564020, 'No', 'No', 'Medium', NULL, NULL, 0, 410, 0.0000000000, 7.3592494400, 2474.2300000000, NULL);
INSERT INTO country_prioritization_framework VALUES (36, 'Kuwait', NULL, NULL, 'X', NULL, 92.2361349900, 42.6237160000, NULL, -0.6239116840, -0.0767573770, NULL, NULL, 27.7777777800, -0.1609473300, 51496.9271500000, '2011', 3250496, NULL, NULL, 0.7900000000, NULL, NULL, 100, 100, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.0000000000, 0.9571542990, NULL, 51.3000000000, 0.1798597940, 3.7800000000, 24, NULL, NULL, 0.4782540060, NULL, 0, 0, 0, -0.1609473300, 0.0000000000, 'No', 'No', 'Low', NULL, NULL, 0, 466, 0.0000000000, NULL, NULL, NULL);
INSERT INTO country_prioritization_framework VALUES (37, 'Kyrgyzstan', NULL, NULL, NULL, 'X', 33.4107431400, NULL, 20, -0.6388019750, -0.6586990390, 4.1666666670, 3.6666666670, NULL, -1.0902106660, 1159.6309000000, NULL, 5582100, 33.0000000000, 2011, 0.6220000000, 21.6400000000, 2011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.1700000000, 2.0514884230, NULL, 12.8000000000, -0.8891132550, 4.6900000000, 25, NULL, NULL, 0.4261632270, NULL, 100, 100, 0, -1.0902106700, 0.0000000000, 'No', 'No', 'Medium', NULL, NULL, 0, 311, 0.0000000000, 8.4398069600, 523.1700000000, NULL);
INSERT INTO country_prioritization_framework VALUES (38, 'Lebanon', NULL, NULL, NULL, 'X', 31.3242162200, NULL, 33, -0.4000000000, -0.3000000000, NULL, NULL, NULL, -0.8700000000, 9705.0000000000, NULL, 4424888, NULL, NULL, 0.7450000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 2.7900000000, 1.0000000000, NULL, 0.0000000000, -1.6480655790, 5.0500000000, 32, NULL, NULL, NULL, NULL, 50, 0, NULL, -0.8700000000, 10.1537236400, 'Yes', 'Yes', 'Medium', NULL, NULL, 100, 210, 0.0000000000, 1.0781574800, 432.2800000000, NULL);
INSERT INTO country_prioritization_framework VALUES (39, 'Liberia', 'X', 'X', NULL, NULL, 32.5260150200, 61.5384620000, 43, -0.3600012610, -1.1795661160, 3.5000000000, 2.8333333330, 83.3333333300, -0.5729202280, 421.7036610000, NULL, 4190435, 38.0000000000, 2007, 0.3880000000, 94.8800000000, 2007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.1371988960, 0.4602850400, 1, 2.3000000000, -0.4748597950, 4.9500000000, 34, 3, 4, 0.4113019960, 3, 50, 100, 100, -0.5729202300, 2.2456095380, 'No', 'No', 'Medium', 3, 3, 33, 295, 0.0000000000, 49.7797474000, 765.4900000000, 4);
INSERT INTO country_prioritization_framework VALUES (40, 'Libya', 'X', 'X', 'X', NULL, 96.9137502000, 28.7946430000, NULL, -0.9368797040, -1.4899968030, NULL, NULL, 11.1111111100, -1.3990918180, 10455.5748700000, '2009', 6154623, NULL, NULL, 0.7690000000, NULL, NULL, 100, 100, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.0000000000, 1.8123153710, 3, NULL, -1.5610355240, 5.1500000000, 21, 3, 3, 0.2934175880, 3, 0, 0, 0, -1.3990918200, 100.0000000000, 'No', 'No', 'High', 2, 4, 66, 196, 100.0000000000, NULL, 642.2200000000, 4);
INSERT INTO country_prioritization_framework VALUES (41, 'Madagascar', NULL, NULL, NULL, 'X', 18.1694369500, NULL, NULL, -0.8482270460, -1.0833588230, 3.5000000000, 3.3333333330, NULL, -0.6091922100, 447.4371289000, NULL, 22293914, 44.0000000000, 2010, 0.4830000000, 92.6200000000, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.7744662170, 2.4488042620, NULL, 3.9000000000, -0.5669482310, 3.9300000000, 28, NULL, NULL, 0.4043133940, NULL, 100, 33, 0, -0.6091922100, 0.0000000000, 'Yes', 'Yes', 'Medium', NULL, NULL, 0, 237, 0.0000000000, 4.1248892400, 408.8500000000, NULL);
INSERT INTO country_prioritization_framework VALUES (42, 'Malaysia', 'X', NULL, 'X', NULL, 20.4855918400, 45.4338620000, 39, -0.3404475750, 1.0099019620, NULL, NULL, 39.4444444400, 0.2998480670, 10380.5390300000, NULL, 29239927, 46.0000000000, 2009, 0.7690000000, 2.2700000000, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 2.9045569700, 1.4678678210, NULL, 9.8000000000, -0.0028604710, 6.4100000000, 28, NULL, NULL, 0.5199885280, NULL, 50, 0, 0, 0.2998480670, 6.9122217300, 'Yes', 'Yes', 'Low', NULL, NULL, 33, 280, 2.7222995800, 0.0105925900, 30.6400000000, NULL);
INSERT INTO country_prioritization_framework VALUES (43, 'Mali', NULL, NULL, 'X', NULL, 56.6871152200, NULL, 43, -0.5467850390, -0.9886602870, 4.1666666670, 3.5000000000, NULL, -0.7613998290, 693.9843612000, NULL, 14853572, 39.0000000000, 2006, 0.3440000000, 78.6600000000, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.8003219470, 1.6315434970, NULL, 13.2000000000, -1.9774860270, 5.1200000000, 19, NULL, NULL, 0.5226117900, NULL, 50, 100, 0, -0.7613998300, 0.0000000000, 'Yes', 'Yes', 'Medium', NULL, NULL, 0, 239, 0.0000000000, 11.9260776000, 1270.8900000000, NULL);
INSERT INTO country_prioritization_framework VALUES (44, 'Mauritania', NULL, 'X', 'X', NULL, 69.5956968500, NULL, NULL, -0.9419827540, -0.9123813320, 3.3333333330, 3.1666666670, NULL, -0.6021456970, 1106.1369470000, NULL, 3796141, 40.0000000000, 2008, 0.4670000000, 47.6900000000, 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.3260133400, 0.4169750660, 2, 58.0000000000, -1.1266924780, 4.1700000000, 23, 3, 3, 0.3554114280, 4, 50, 100, 0, -0.6021457000, 2.7302425750, 'No', 'No', 'Medium', 2, 3, 0, 242, 0.0000000000, 8.6639326800, 370.2300000000, 2);
INSERT INTO country_prioritization_framework VALUES (45, 'Mexico', 'X', 'X', 'X', NULL, 20.2622047500, 82.4561400000, 61, 0.0944783210, 0.3216948300, NULL, NULL, 83.8888888900, -0.4097370040, 9747.4563880000, NULL, 120847477, 47.0000000000, 2010, 0.7750000000, 4.5400000000, 2010, 50, 50, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 22.0467061900, 20.7855997600, 3, 9.0000000000, -0.6739598390, 6.9000000000, 37, 3, 3, 0.5419028100, 4, 50, 0, 100, -0.4097370000, 14.7728057500, 'No', 'No', 'Medium', 4, 4, 33, 362, 0.0000000000, 0.0760667200, 882.2900000000, 3);
INSERT INTO country_prioritization_framework VALUES (46, 'Mongolia', 'X', 'X', 'X', NULL, 86.4306857200, 39.1975310000, 51, 0.0195134730, -0.6322722600, 3.5000000000, 3.3333333330, 79.6296296300, -0.5205367630, 3672.9669400000, NULL, 2796484, 37.0000000000, 2008, 0.6750000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.0982908450, 0.1403857430, 2, 45.8000000000, 0.4489765980, 6.3500000000, 50, 4, 4, 0.4856247280, 4, 50, 100, 100, -0.5205367600, 7.6658317940, 'Yes', 'Yes', 'Medium', 4, 4, 33, 267, 43.3650073000, 3.8785922000, 339.8200000000, 4);
INSERT INTO country_prioritization_framework VALUES (47, 'Morocco', NULL, NULL, NULL, NULL, 17.3000000000, 60.0000000000, 38, -0.6100000000, -0.0400000000, NULL, NULL, 48.0000000000, -0.4100000000, 2902.0000000000, NULL, 32521143, NULL, NULL, 0.5910000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 2.9423136220, 8.2266775040, NULL, 4.1000000000, -0.4596661410, 4.0700000000, 27, NULL, NULL, 0.4200000000, NULL, 50, 0, 0, -0.4100000000, 0.0000000000, 'No', 'No', 'Low', NULL, NULL, 0, 285, 0.0000000000, 1.2468332900, 1237.0000000000, NULL);
INSERT INTO country_prioritization_framework VALUES (48, 'Mozambique', 'X', 'X', NULL, 'X', 74.0884205200, 25.9523810000, 47, -0.1798229220, -0.6381386340, 4.5000000000, 3.5000000000, 58.3333333300, -0.5896830480, 578.7993780000, NULL, 25203395, 46.0000000000, 2008, 0.3270000000, 81.7700000000, 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 1.1325861300, 2.7683869730, 2, 4.4000000000, 0.3452142370, 4.8800000000, 36, 3, 3, 0.4454104800, 3, 100, 100, 0, -0.5896830500, 1.2915060640, 'No', 'No', 'Medium', 4, 3, 33, 256, 0.0000000000, 16.2828475000, 2046.5000000000, 2);
INSERT INTO country_prioritization_framework VALUES (49, 'Myanmar', 'X', 'X', NULL, NULL, 56.5524074300, 4.6031746000, 0, -1.6466975170, -1.5300463520, NULL, NULL, 8.3333333330, -1.1155155980, 1144.0000000000, 'UNDP_2011', 52797319, NULL, NULL, 0.4980000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.0000000000, 2.6504678210, 2, NULL, -0.9615808960, 2.3500000000, 17, 4, 4, 0.1939951310, 4, 50, 0, 0, -1.1155156000, 13.3085397600, 'No', 'No', 'Medium', 3, 4, 33, 347, 57.9546274000, NULL, 376.1100000000, 4);
INSERT INTO country_prioritization_framework VALUES (50, 'Niger', 'X', 'X', NULL, NULL, 41.8923068300, NULL, 4, -0.3950796000, -0.7039960160, 3.8333333330, 3.1666666670, NULL, -0.6855974410, 382.8300879000, NULL, 17157042, 35.0000000000, 2008, 0.3040000000, 75.2300000000, 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.5099558930, 1.8845608520, 1, 0.5000000000, -1.1728172820, 4.1600000000, 30, 3, 2, 0.3374812800, 3, 50, 100, 0, -0.6855974400, 2.4226240350, 'Yes', 'No', 'Medium', 3, 4, 33, 211, 0.0000000000, 10.1204926000, 648.9100000000, 4);
INSERT INTO country_prioritization_framework VALUES (51, 'Nigeria', 'X', 'X', 'X', NULL, 94.7857908300, 38.0833330000, 16, -0.7274964660, -0.9977801460, 4.0000000000, 3.5000000000, 65.5555555600, -1.1327559320, 1555.4109790000, NULL, 168833776, 49.0000000000, 2010, 0.4710000000, 84.4900000000, 2010, 100, 100, 50, 100, NULL, NULL, NULL, NULL, 'No', 20.3886575100, 18.5450105400, 4, 35.0000000000, -2.0532740180, 3.7700000000, 26, 3, 3, 0.3841828880, 4, 0, 100, 0, -1.1327559300, 20.1676768400, 'No', 'Yes', 'High', 3, 4, 66, 383, 0.0000000000, 0.7379689700, 1813.0600000000, 4);
INSERT INTO country_prioritization_framework VALUES (52, 'Papua New Guinea', NULL, 'X', 'X', NULL, 71.4167424500, 33.8624340000, 56, -0.0447426760, -0.7690822990, 4.0000000000, 3.5000000000, 59.2592592600, -1.0369719200, 2184.1634610000, NULL, 7167010, 51.0000000000, 1996, 0.4660000000, 57.4000000000, 1996, 100, NULL, NULL, 100, NULL, NULL, NULL, NULL, 'No', 0.1497982910, 0.3597896590, 1, 32.5000000000, -0.6429389080, 6.3200000000, 36, 2, 2, 0.4638539830, 2, 0, 0, 0, -1.0369719200, 0.0000000000, 'Banned', 'Yes', 'High', 2, 2, 0, 505, 0.0000000000, 4.9406128800, 612.3200000000, 3);
INSERT INTO country_prioritization_framework VALUES (53, 'Peru', 'X', 'X', 'X', NULL, 70.7391891400, 82.5641030000, 57, 0.0688061810, -0.1576263580, NULL, NULL, 87.5000000000, -0.3946942590, 6568.0392920000, NULL, 29987800, 48.0000000000, 2010, 0.7410000000, 12.7400000000, 2010, 100, NULL, NULL, NULL, NULL, 100, NULL, NULL, 'No', 3.6863381750, 5.1578603370, 3, 13.5000000000, -0.8619564860, 6.4700000000, 41, 3, 3, 0.5515033780, 5, 0, 100, 100, -0.3946942600, 30.0219330700, 'No', 'No', 'Medium', 4, 4, 100, 339, 0.0000000000, 0.3445369500, 623.6500000000, 3);
INSERT INTO country_prioritization_framework VALUES (54, 'Philippines', 'X', 'X', NULL, NULL, 8.2361796930, 53.9682540000, 48, -0.0417131270, 0.0775655930, NULL, NULL, 62.9629629600, -0.5840202600, 2587.0166480000, NULL, 96706764, 43.0000000000, 2009, 0.6540000000, 41.5300000000, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 2.3940862060, 4.8547572290, 2, 3.4000000000, -1.1602180720, 6.3000000000, 37, 3, 3, 0.4715950530, 4, 50, 66, 100, -0.5840202600, 7.5698842350, 'Yes', 'No', 'Medium', 3, 4, 33, 237, 10.8891983000, -0.0855172000, -191.6400000000, 3);
INSERT INTO country_prioritization_framework VALUES (55, 'Qatar', NULL, 'X', 'X', NULL, 88.7000000000, 14.0000000000, 0, -0.7900000000, 0.9500000000, NULL, NULL, 15.0000000000, 1.1900000000, NULL, NULL, 2050514, NULL, NULL, 0.8340000000, NULL, NULL, 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 'No', 5.2565970110, 0.5187061660, 3, 28.6000000000, 1.2125791650, 3.1800000000, 18, 2, 2, NULL, 1, 0, 0, 0, 1.1900000000, 0.0000000000, 'No', 'No', 'Low', 2, 2, 0, 341, 0.0000000000, NULL, NULL, 1);
INSERT INTO country_prioritization_framework VALUES (56, 'Russian Federation', 'X', 'X', 'X', NULL, 72.8295807800, 60.4166670000, 74, -0.9645208550, -0.4256328480, NULL, NULL, 56.6666666700, -1.0146979020, 14037.0250200000, NULL, 143533000, 40.0000000000, 2009, 0.7880000000, 0.0800000000, 2009, 100, 100, 100, NULL, NULL, NULL, 100, 100, 'Yes', 52.7100000000, 52.7500918800, 4, 21.7000000000, -0.8216629850, 3.7400000000, 19, 2, 2, 0.4506267500, 2, 0, 0, 0, -1.0146979000, 0.0000000000, 'No', 'No', 'Medium', 3, 3, 33, 565, 0.0000000000, NULL, NULL, 2);
INSERT INTO country_prioritization_framework VALUES (57, 'South Sudan', 'X', 'X', NULL, NULL, 99.0000000000, 17.0000000000, NULL, -1.2643136530, -1.5945072410, NULL, NULL, 79.6296296300, -1.3351668140, 861.5722647000, NULL, 10837527, 46.0000000000, 2009, NULL, 50.2000000000, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.7249466370, 1.1904137740, 2, NULL, -1.2169355690, NULL, 20, 2, 2, 0.4529294590, 3, 50, 0, 0, -1.3351668100, 1.2301341270, 'Yes', 'Yes', 'High', 2, 3, 33, 277, 0.0000000000, 5.6768325800, 1086.8800000000, 3);
INSERT INTO country_prioritization_framework VALUES (58, 'Sao Tome and Principe', NULL, NULL, NULL, 'X', 2.7064378340, NULL, 29, 0.1281189880, -0.7166576640, 2.8333333330, 3.1666666670, NULL, -0.3931272650, 1402.0830970000, NULL, 188098, 51.0000000000, 2001, 0.5250000000, 54.2000000000, 2001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.0000000000, 0.0206610280, NULL, 0.0000000000, 0.0196812360, NULL, 47, NULL, NULL, 0.4691108640, NULL, 100, 66, 0, -0.3931272600, 0.0000000000, 'Yes', 'Yes', 'Low', NULL, NULL, 0, 305, 0.0000000000, 30.2392260000, 75.0800000000, NULL);
INSERT INTO country_prioritization_framework VALUES (59, 'Saudi Arabia', NULL, 'X', 'X', NULL, 84.4316060900, 35.0297620000, 1, -1.8008098220, 0.0258576170, NULL, NULL, 29.6296296300, -0.0619045960, 25136.2148200000, NULL, 28287855, NULL, NULL, 0.7820000000, NULL, NULL, 100, 100, 50, 100, NULL, NULL, NULL, NULL, 'Yes', 46.1720519500, 8.3297570670, 4, 58.6000000000, -0.4568403570, 1.7100000000, 7, 2, 2, 0.3747469330, 1, 0, 0, 0, -0.0619046000, 0.0000000000, 'No', 'Yes', 'Medium', 2, 2, 0, 485, 0.0000000000, NULL, NULL, 1);
INSERT INTO country_prioritization_framework VALUES (60, 'Sierra Leone', 'X', 'X', NULL, 'X', 52.2064434200, 46.5811970000, 39, -0.3591219170, -1.2099061900, 3.6666666670, 3.1666666670, 52.3809523800, -0.9360949910, 634.9227930000, NULL, 5978727, 35.0000000000, 2011, 0.3590000000, 79.5600000000, 2011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.2947228300, 0.6567143010, 2, 1.0000000000, -0.2677720810, 4.7100000000, 40, 3, 4, 0.4095200520, 3, 100, 33, 0, -0.9360949900, 1.7902173260, 'No', 'No', 'Medium', 3, 4, 33, 195, 0.0000000000, 14.5881891000, 428.7100000000, 3);
INSERT INTO country_prioritization_framework VALUES (61, 'Somalia', NULL, NULL, NULL, NULL, 1.7300000000, NULL, NULL, -2.2320000000, -2.2500000000, NULL, NULL, NULL, -1.5800000000, 112.0000000000, '2011', 10195134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', NULL, 1.1000000000, NULL, 0.0000000000, -2.8900000000, NULL, 7, NULL, NULL, NULL, NULL, 50, 0, 0, -1.5800000000, 0.0000000000, 'Yes', 'Yes', 'High', NULL, NULL, 0, 208, 0.0000000000, NULL, 998.6150300000, NULL);
INSERT INTO country_prioritization_framework VALUES (62, 'South Africa', NULL, NULL, NULL, NULL, 45.7023505000, 31.0000000000, 90, 0.5600000000, 0.3300000000, NULL, NULL, 69.0000000000, -0.1500000000, 7508.0000000000, NULL, 51189307, 63.1000000000, 2009, 0.6290000000, 31.3000000000, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 29.8300000000, 6.0000000000, NULL, 9.9000000000, -0.0042039440, 7.7900000000, 47, NULL, NULL, 0.7200000000, NULL, 50, 0, 100, -0.1500000000, 1.6439800260, 'No', 'Yes', 'Medium', NULL, NULL, 0, 364, 0.0000000000, 0.3171336400, 1274.2500000000, NULL);
INSERT INTO country_prioritization_framework VALUES (63, 'Sudan', NULL, NULL, 'X', NULL, 95.0000000000, NULL, NULL, -1.7835178900, -1.4576684290, 2.3333333330, 2.5000000000, NULL, -1.5066044260, 1580.0040170000, NULL, 37195349, 35.0000000000, 2009, 0.4140000000, 44.1400000000, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 4.5627950960, 4.0856051190, NULL, 14.4000000000, -2.2668922330, 2.3800000000, 5, NULL, NULL, 0.3039864680, NULL, 50, 0, 0, -1.5066044300, 0.0000000000, 'Yes', 'Yes', 'Medium', NULL, NULL, 0, 443, 0.0000000000, 1.7774391100, 1137.5100000000, NULL);
INSERT INTO country_prioritization_framework VALUES (64, 'Suriname', NULL, NULL, 'X', NULL, 63.0479376400, NULL, NULL, 0.2782296000, 0.0090770660, NULL, NULL, NULL, -0.3681088150, 8864.0194490000, NULL, 534541, 53.0000000000, 1999, 0.6840000000, 27.2000000000, 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.0886801760, 0.0919403160, NULL, 11.5000000000, 0.0806974850, 6.6500000000, 44, NULL, NULL, 0.5160959140, NULL, 50, 0, 0, -0.3681088200, 0.0000000000, 'No', 'No', 'Low', NULL, NULL, 0, 187, 0.0000000000, 2.1676656100, 94.5800000000, NULL);
INSERT INTO country_prioritization_framework VALUES (65, 'Syrian Arab Republic', NULL, NULL, 'X', NULL, 34.8818803900, NULL, NULL, -1.7887321120, -1.2218641580, NULL, NULL, NULL, -1.1720554700, 3289.0563250000, NULL, 22399254, 36.0000000000, 2004, 0.6480000000, 16.8500000000, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 4.7839226000, 6.5957756180, NULL, NULL, -2.6878548540, 1.6300000000, 6, NULL, NULL, 0.2628773740, NULL, 50, 0, 0, -1.1720554700, 0.0000000000, 'Yes', 'Yes', 'Extreme', NULL, NULL, 0, 344, 0.0000000000, NULL, 340.0200000000, NULL);
INSERT INTO country_prioritization_framework VALUES (66, 'Tanzania, United Republic of', 'X', 'X', NULL, 'X', 42.0000000000, 47.6190480000, 47, -0.2229164330, -0.6908711400, 4.1666666670, 3.8333333330, 43.7500000000, -0.8506347800, 608.8542574000, NULL, 47783107, 38.0000000000, 2007, 0.4760000000, 87.8700000000, 2007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 2.1932332890, 5.2485838090, 3, 6.1000000000, 0.0269374400, 5.8800000000, 38, 4, 4, 0.4462321030, 4, 100, 100, 100, -0.8506347800, 31.7602427300, 'No', 'No', 'Medium', 4, 4, 66, 309, 14.9290909000, 10.2414053000, 2445.0500000000, 4);
INSERT INTO country_prioritization_framework VALUES (67, 'Timor-Leste', 'X', NULL, 'X', NULL, 72.7081397300, 82.0000000000, 36, 0.0468328960, -1.1934793720, 3.8333333330, 2.8333333330, 77.0833333300, -0.9786588540, 1068.1414240000, NULL, 1210233, NULL, NULL, 0.5760000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.0123703350, 0.0607546690, NULL, 0.0000000000, -0.2699519410, 7.1600000000, 34, NULL, NULL, 0.4730487680, NULL, 50, 100, 0, -0.9786588500, 7.6843615580, 'No', 'No', 'Medium', NULL, NULL, 33, 210, 5.4445991600, 25.1493397000, 283.7600000000, NULL);
INSERT INTO country_prioritization_framework VALUES (68, 'Togo', NULL, NULL, NULL, 'X', 30.1796081200, NULL, NULL, -1.0185350450, -1.3249219290, 3.1666666670, 3.0000000000, NULL, -0.9929301000, 574.1195223000, NULL, 6642928, 39.0000000000, 2011, 0.4590000000, 52.6500000000, 2011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.2961051750, 0.7296713530, NULL, 2.9000000000, -0.4187619710, 3.4500000000, 27, NULL, NULL, 0.2905472200, NULL, 100, 100, 0, -0.9929301000, 0.0000000000, 'No', 'No', 'Medium', NULL, NULL, 0, 270, 0.0000000000, 15.1164701000, 557.1600000000, NULL);
INSERT INTO country_prioritization_framework VALUES (69, 'Trinidad and Tobago', NULL, NULL, 'X', NULL, 64.2301621000, 83.1101190000, 38, 0.4510880840, 0.4025914850, NULL, NULL, 64.1975308600, -0.2913702570, 17934.0594200000, NULL, 1337439, 47.0000000000, 2007, 0.7600000000, 13.5000000000, 2007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.4489184070, 0.2300376680, NULL, 37.7000000000, 0.1084995710, 6.9900000000, 48, NULL, NULL, 0.6191137360, NULL, 50, 66, 100, -0.2913702600, 0.0000000000, 'No', 'No', 'Medium', NULL, NULL, 0, 440, 0.0000000000, NULL, NULL, NULL);
INSERT INTO country_prioritization_framework VALUES (70, 'Tunisia', 'X', 'X', NULL, NULL, 16.3816133800, NULL, 11, -0.1948360940, -0.0151670710, NULL, NULL, NULL, -0.1832760790, 4236.7936310000, NULL, 10777500, 36.0000000000, 2010, 0.7120000000, 4.2500000000, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 2.9650677510, 3.1735865720, 2, 6.6000000000, -0.7259716180, 5.6700000000, 32, 2, 2, 0.3568061050, 3, 50, 0, 0, -0.1832760800, 7.4248225390, 'No', 'No', 'Low', 4, 4, 66, 190, 52.2612101000, 1.4158833500, 657.4600000000, 3);
INSERT INTO country_prioritization_framework VALUES (71, 'Turkmenistan', NULL, 'X', 'X', NULL, 64.8576551300, 4.1666667000, NULL, -2.2097121430, -1.2934054090, NULL, NULL, 12.5000000000, -1.3438340720, 6510.6121400000, NULL, 5172931, 41.0000000000, 1998, 0.6980000000, 49.7000000000, 1998, 100, NULL, NULL, 100, NULL, NULL, NULL, NULL, 'No', 0.8800000000, 1.9011139290, 1, 43.9000000000, 0.3508181630, 1.7200000000, 6, 2, 2, 0.2513936040, 1, 0, 0, 0, -1.3438340700, 0.0000000000, 'Yes', 'Yes', 'Medium', 2, 3, 0, 258, 0.0000000000, 0.1314595200, 38.4300000000, 1);
INSERT INTO country_prioritization_framework VALUES (72, 'Uganda', 'X', 'X', NULL, 'X', 4.2448569030, NULL, 65, -0.4935088510, -0.5679924320, 4.1666666670, 4.0000000000, NULL, -0.9521855310, 547.0062461000, NULL, 36345860, 44.0000000000, 2009, 0.4560000000, 64.7400000000, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 1.5435879220, 3.9922956940, 2, 0.0000000000, -0.8898641400, 5.1600000000, 28, 3, 3, 0.4311444230, 3, 100, 0, 0, -0.9521855300, 9.3682043150, 'Yes', 'No', 'Medium', 3, 4, 66, 340, 4.7708300200, 9.3918153900, 1579.9300000000, 4);
INSERT INTO country_prioritization_framework VALUES (73, 'Ukraine', 'X', NULL, NULL, NULL, 15.1364645800, NULL, 54, -0.2882468330, -0.5832828600, NULL, NULL, NULL, -1.0283932210, 3867.0199840000, NULL, 45593300, 26.0000000000, 2010, 0.7400000000, 0.0800000000, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 4.6100000000, 16.7560823200, NULL, 5.8000000000, -0.0989362350, 5.9100000000, 36, NULL, NULL, 0.5359884020, NULL, 50, 66, 100, -1.0283932200, 16.1219516800, 'No', 'No', 'Low', NULL, NULL, 33, 374, 0.0000000000, 0.4587495700, 749.7000000000, NULL);
INSERT INTO country_prioritization_framework VALUES (74, 'Venezuela, Bolivarian Republic of', NULL, NULL, 'X', NULL, 89.2350149000, 68.9126980000, 37, -0.9248729530, -1.1368132470, NULL, NULL, 56.6666666700, -1.2406671560, 12728.7271600000, NULL, 29954782, 45.0000000000, 2006, 0.7480000000, 12.9100000000, 2006, 100, 100, 50, NULL, NULL, NULL, NULL, NULL, 'No', 7.1361828030, 5.1521812870, NULL, 32.6000000000, -0.9905989690, 5.1500000000, 24, NULL, NULL, 0.4271273350, NULL, 0, 0, 0, -1.2406671600, 0.0000000000, 'No', 'No', 'Medium', NULL, NULL, 0, 480, 0.0000000000, 0.0143009600, 45.2600000000, NULL);
INSERT INTO country_prioritization_framework VALUES (75, 'Viet Nam', 'X', 'X', 'X', NULL, 13.3123417500, 39.4047620000, 19, -1.3792750550, -0.2906909490, 4.0000000000, 3.3333333330, 62.5000000000, -0.5566901870, 1595.8130260000, NULL, 88775500, 36.0000000000, 2008, 0.6170000000, 43.3600000000, 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 1.3556851610, 4.4566014060, 2, 12.9000000000, 0.2511722790, 2.8900000000, 17, 3, 2, 0.3749604820, 3, 50, 0, 0, -0.5566901900, 7.1178819930, 'No', 'No', 'Low', 4, 4, 33, 271, 5.4445991600, 2.5924327100, 3513.7700000000, 4);
INSERT INTO country_prioritization_framework VALUES (76, 'Yemen', 'X', NULL, 'X', NULL, 90.2207361700, 45.5357140000, 11, -1.3937249880, -1.2757829960, 2.8333333330, 3.1666666670, 57.4074074100, -1.2324279920, 1494.4328320000, NULL, 23852409, 38.0000000000, 2005, 0.4580000000, 46.6000000000, 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 2.3146638400, 7.0236775620, NULL, 23.1000000000, -2.4308472450, 3.1200000000, 16, NULL, NULL, 0.2710192160, NULL, 50, 100, 0, -1.2324279900, 1.7646505230, 'No', 'No', 'Medium', NULL, NULL, 33, 455, 0.0000000000, 1.5008211000, 476.1300000000, NULL);
INSERT INTO country_prioritization_framework VALUES (77, 'Zambia', 'X', 'X', 'X', NULL, 78.2602418200, 62.1088440000, 4, -0.1555815310, -0.5016706480, 3.6666666670, 3.6666666670, 70.8333333300, -0.3607546830, 1469.1211620000, NULL, 14075099, 57.0000000000, 2010, 0.4480000000, 86.6400000000, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 1.6054367860, 1.5460346000, 2, 25.6000000000, 0.6139727400, 6.2600000000, 34, 3, 4, 0.4539482860, 4, 50, 100, 0, -0.3607546800, 1.2301341270, 'Yes', 'No', 'Low', 4, 4, 33, 258, 0.0000000000, 5.5868459400, 1072.9000000000, 4);
INSERT INTO country_prioritization_framework VALUES (78, 'Zimbabwe', NULL, NULL, NULL, NULL, 35.4000000000, 23.0000000000, 20, -1.4500000000, -1.2500000000, 2.0000000000, 2.3000000000, 48.0000000000, -0.2700000000, 788.0000000000, NULL, 13724317, NULL, NULL, 0.3970000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.8280253740, 1.5063026050, NULL, 6.9000000000, -0.7851824390, 2.6700000000, 14, NULL, NULL, 0.3600000000, NULL, 50, 0, 0, -0.2700000000, 0.0000000000, 'Yes', 'No', 'Medium', NULL, NULL, 0, 334, 0.0000000000, 8.0988758400, 718.0000000000, NULL);


--
-- TOC entry 2021 (class 0 OID 16948)
-- Dependencies: 176
-- Data for Name: priority_and_limited_engagement_countries; Type: TABLE DATA; Schema: ahasemann; Owner: ahasemann
--

INSERT INTO priority_and_limited_engagement_countries VALUES (1, 'Afghanistan', 'AFG', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (2, 'Azerbaijan', 'AZE', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (3, 'Bolivia', 'BOL', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (4, 'Burkina Faso', 'BFA', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (5, 'Colombia', 'COL', 'X', NULL);
INSERT INTO priority_and_limited_engagement_countries VALUES (6, 'Ghana', 'GHA', 'X', NULL);
INSERT INTO priority_and_limited_engagement_countries VALUES (7, 'Guinea', 'GIN', 'X', NULL);
INSERT INTO priority_and_limited_engagement_countries VALUES (8, 'Indonesia', 'IDN', 'X', NULL);
INSERT INTO priority_and_limited_engagement_countries VALUES (9, 'Iraq', 'IRQ', 'X', NULL);
INSERT INTO priority_and_limited_engagement_countries VALUES (10, 'Kenya', 'KEN', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (11, 'Kyrgyz Republic', 'KGZ', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (12, 'Liberia', 'LBR', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (13, 'Libya', 'LBY', 'X', NULL);
INSERT INTO priority_and_limited_engagement_countries VALUES (14, 'Mexico', 'MEX', 'X', NULL);
INSERT INTO priority_and_limited_engagement_countries VALUES (15, 'Mongolia', 'MNG', 'X', NULL);
INSERT INTO priority_and_limited_engagement_countries VALUES (16, 'Myanmar', 'MMR', 'X', NULL);
INSERT INTO priority_and_limited_engagement_countries VALUES (17, 'Niger', 'NER', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (18, 'Nigeria', 'NGA', 'X', NULL);
INSERT INTO priority_and_limited_engagement_countries VALUES (19, 'Peru', 'PER', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (20, 'Philippines', 'PHL', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (21, 'Sierra Leone', 'SLE', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (22, 'Tanzania', 'TZA', 'X', NULL);
INSERT INTO priority_and_limited_engagement_countries VALUES (23, 'Timor-Leste', 'TLS', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (24, 'Tunisia', 'TUN', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (25, 'Uganda', 'UGA', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (26, 'Vietnam', 'VNM', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (27, 'Yemen', 'YEM', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (28, 'Zambia', 'ZMB', NULL, 'X');


--
-- TOC entry 2028 (class 0 OID 17128)
-- Dependencies: 183
-- Data for Name: rgi_2013_questionnaire_with_categories; Type: TABLE DATA; Schema: ahasemann; Owner: ahasemann
--

INSERT INTO rgi_2013_questionnaire_with_categories VALUES (1, 4, 1, '1.1', '1.1', '1.1.001', 'Context', 'Does the country have a clear legal definition of ownership of mineral resources?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (2, 6, 1, '1.1', '1.1', '1.1.002', 'Context', 'Who has authority to grant hydrocarbon and mineral rights or licenses?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (3, 8, 1, '1.1', '1.1', '1.1.003', 'Context', 'What licensing practices does the government commonly follow?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (4, 10, 1, '1.1', '1.1', '1.1.004', 'Context', 'What is the fiscal system for mineral resources?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (5, 12, 1, '1.1', '1.1', '1.1.005', 'Context', 'What agency has authority to regulate the hydrocarbon and mineral sector?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (6, 16, 1, '1.2', '1.2.006', '1.2.006.a', 'Information on licensing process', 'What information does the government publish on the licensing process before negotiations?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (7, 18, 1, '1.2', '1.2.006', '1.2.006.b', 'Information on licensing process', 'What information does the government publish on the licensing process after negotiations?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (8, 21, 1, '1.2', '1.2', '1.2.007', 'Contract transparency', 'Are all contracts, agreements or negotiated terms for exploration and production, regardless of the way they are granted, disclosed to the public?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (9, 24, 1, '1.2', '1.2.008', '1.2.008.a', 'Environmental and social impact assessments', 'Does legislation require that mining, gas and oil development projects prepare an environmental impact assessment prior to the award of any mineral rights or project implementation?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (10, 26, 1, '1.2', '1.2.008', '1.2.008.b', 'Environmental and social impact assessments', 'Are environmental impact assessments for oil, gas and mining projects published by the authority in charge of regulating the sector and is there a consultation process?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (11, 28, 1, '1.2', '1.2.008', '1.2.008.c', 'Environmental and social impact assessments', 'Does legislation require that mining, gas and oil development projects prepare a social impact assessment?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (12, 30, 1, '1.2', '1.2.008', '1.2.008.d', 'Environmental and social impact assessments', 'Are social impact assessments for oil, gas and mining projects published and is there a consultation process?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (13, 33, 1, '1.2', '1.2', '1.2.009', 'Access to information and legislation', 'Does the government publish detailed mineral/hydrocarbon resource legislation?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (14, 35, 1, '1.2', '1.2', '1.2.010', 'Access to information and legislation', 'This country has adopted a rule or legislation that provides for disclosure of information in the oil, gas and mineral sectors.');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (15, 39, 1, '1.3', '1.3', '1.3.011', 'Legal Framework and Practices', 'The authority in charge of awarding licenses or contracts for mineral or hydrocarbon production is independent of the state owned company (SOC) or other operating companies.');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (16, 41, 1, '1.3', '1.3', '1.3.012', 'Legal Framework and Practices', 'Is the licensing process intended to be open and competitive to all qualified companies?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (17, 43, 1, '1.3', '1.3', '1.3.013', 'Legal Framework and Practices', 'Does the licensing process or legislation impose limits to discretionary powers of the authority in charge of awarding licenses or contracts?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (18, 45, 1, '1.3', '1.3', '1.3.014', 'Legal Framework and Practices', 'Does the legislative branch have any oversight role regarding contracts and licenses in the oil, gas and mining sector?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (19, 47, 1, '1.3', '1.3', '1.3.015', 'Legal Framework and Practices', 'Is there a due process to appeal licensing decisions?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (20, 49, 1, '1.3', '1.3', '1.3.016', 'Legal Framework and Practices', 'Is there a legal or regulatory requirement to disclose all beneficial ownership in oil, gas and mining companies or projects?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (21, 54, 2, '2.1', '2.1', '2.1.017', 'Context', 'Does the government receive in-kind payments instead of financial payments from resource companies?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (22, 56, 2, '2.1', '2.1', '2.1.018', 'Context', 'If the government or state owned companies sell physical commodities (oil, gas or minerals) from in-kind payments or own production, is there information about how these commodities are marketed?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (23, 58, 2, '2.1', '2.1', '2.1.019', 'Context', 'What authority actually collects payments from resource companies?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (24, 62, 2, '2.2', '2.2A.020', '2.2A.020.a', 'Does the Ministry of Finance publish periodical information on revenue generation?', 'Reserves');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (25, 64, 2, '2.2', '2.2A.020', '2.2A.020.b', 'Does the Ministry of Finance publish periodical information on revenue generation?', 'Production volumes');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (26, 66, 2, '2.2', '2.2A.020', '2.2A.020.c', 'Does the Ministry of Finance publish periodical information on revenue generation?', 'Information on prices');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (27, 68, 2, '2.2', '2.2A.020', '2.2A.020.d', 'Does the Ministry of Finance publish periodical information on revenue generation?', 'Value of resource exports');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (28, 70, 2, '2.2', '2.2A.020', '2.2A.020.e', 'Does the Ministry of Finance publish periodical information on revenue generation?', 'Estimates of investment in exploration and development');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (29, 72, 2, '2.2', '2.2A.020', '2.2A.020.f', 'Does the Ministry of Finance publish periodical information on revenue generation?', 'Production costs');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (30, 74, 2, '2.2', '2.2A.020', '2.2A.020.g', 'Does the Ministry of Finance publish periodical information on revenue generation?', 'Names of companies operating in country');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (31, 76, 2, '2.2', '2.2A.020', '2.2A.020.h', 'Does the Ministry of Finance publish periodical information on revenue generation?', 'Production data by company and/or block');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (32, 78, 2, '2.2', '2.2A.020', '2.2A.020.i', 'Does the Ministry of Finance publish periodical information on revenue generation?', 'Cost of subsidies or social investments paid by mineral revenue');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (33, 81, 2, '2.2', '2.2A.020.j', '2.2A.020.j1', 'Does the Ministry of Finance publish information on disaggregated revenue streams?', 'Production streams value');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (34, 83, 2, '2.2', '2.2A.020.j', '2.2A.020.j2', 'Does the Ministry of Finance publish information on disaggregated revenue streams?', 'Government s share in PSC');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (35, 85, 2, '2.2', '2.2A.020.j', '2.2A.020.j3', 'Does the Ministry of Finance publish information on disaggregated revenue streams?', 'Royalties');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (36, 87, 2, '2.2', '2.2A.020.j', '2.2A.020.j4', 'Does the Ministry of Finance publish information on disaggregated revenue streams?', 'Special taxes (e.g. withholding taxes, excise taxes, excess earning taxes, charged on extractive companies)');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (37, 89, 2, '2.2', '2.2A.020.j', '2.2A.020.j5', 'Does the Ministry of Finance publish information on disaggregated revenue streams?', 'Dividends');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (38, 91, 2, '2.2', '2.2A.020.j', '2.2A.020.j6', 'Does the Ministry of Finance publish information on disaggregated revenue streams?', 'Bonuses');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (39, 93, 2, '2.2', '2.2A.020.j', '2.2A.020.j7', 'Does the Ministry of Finance publish information on disaggregated revenue streams?', 'License fees');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (40, 95, 2, '2.2', '2.2A.020.j', '2.2A.020.j8', 'Does the Ministry of Finance publish information on disaggregated revenue streams?', 'Acreage fees');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (41, 97, 2, '2.2', '2.2A.020.j', '2.2A.020.j9', 'Does the Ministry of Finance publish information on disaggregated revenue streams?', 'Other (Explain in ''comments'' box.)');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (42, 100, 2, '2.2', '2.2A', '2.2A.021', 'Quality of reports', 'Are periodical reports containing information on revenue generation published by the Ministry of Finance understandable?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (43, 102, 2, '2.2', '2.2A', '2.2A.022', 'Quality of reports', 'How often are the periodical reports containing information on revenue generation published by the Ministry of Finance?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (44, 105, 2, '2.2', '2.2B.020', '2.2B.020.a', 'Does the Ministry of the extractive sector publish information on revenue generation?', 'Reserves');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (45, 107, 2, '2.2', '2.2B.020', '2.2B.020.b', 'Does the Ministry of the extractive sector publish information on revenue generation?', 'Production volumes');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (46, 109, 2, '2.2', '2.2B.020', '2.2B.020.c', 'Does the Ministry of the extractive sector publish information on revenue generation?', 'Information on prices');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (47, 111, 2, '2.2', '2.2B.020', '2.2B.020.d', 'Does the Ministry of the extractive sector publish information on revenue generation?', 'Value of resource exports');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (48, 113, 2, '2.2', '2.2B.020', '2.2B.020.e', 'Does the Ministry of the extractive sector publish information on revenue generation?', 'Estimates of investment in exploration and development');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (49, 115, 2, '2.2', '2.2B.020', '2.2B.020.f', 'Does the Ministry of the extractive sector publish information on revenue generation?', 'Production costs');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (50, 117, 2, '2.2', '2.2B.020', '2.2B.020.g', 'Does the Ministry of the extractive sector publish information on revenue generation?', 'Names of companies operating in country');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (51, 119, 2, '2.2', '2.2B.020', '2.2B.020.h', 'Does the Ministry of the extractive sector publish information on revenue generation?', 'Production data by company and/or block');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (52, 121, 2, '2.2', '2.2B.020', '2.2B.020.i', 'Does the Ministry of the extractive sector publish information on revenue generation?', 'Cost of subsidies or social investments paid by mineral revenue');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (53, 124, 2, '2.2', '2.2B.020.j', '2.2B.020.j1', 'Does the Ministry of the extractive sector publish information on disaggregated revenue streams?', 'Production streams value');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (54, 126, 2, '2.2', '2.2B.020.j', '2.2B.020.j2', 'Does the Ministry of the extractive sector publish information on disaggregated revenue streams?', 'Government s share in PSC');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (55, 128, 2, '2.2', '2.2B.020.j', '2.2B.020.j3', 'Does the Ministry of the extractive sector publish information on disaggregated revenue streams?', 'Royalties');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (56, 130, 2, '2.2', '2.2B.020.j', '2.2B.020.j4', 'Does the Ministry of the extractive sector publish information on disaggregated revenue streams?', 'Special taxes (e.g. withholding taxes, excise taxes, excess earning taxes, charged on extractive companies)');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (57, 132, 2, '2.2', '2.2B.020.j', '2.2B.020.j5', 'Does the Ministry of the extractive sector publish information on disaggregated revenue streams?', 'Dividends');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (58, 134, 2, '2.2', '2.2B.020.j', '2.2B.020.j6', 'Does the Ministry of the extractive sector publish information on disaggregated revenue streams?', 'Bonuses');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (59, 136, 2, '2.2', '2.2B.020.j', '2.2B.020.j7', 'Does the Ministry of the extractive sector publish information on disaggregated revenue streams?', 'License fees');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (60, 138, 2, '2.2', '2.2B.020.j', '2.2B.020.j8', 'Does the Ministry of the extractive sector publish information on disaggregated revenue streams?', 'Acreage fees');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (61, 140, 2, '2.2', '2.2B.020.j', '2.2B.020.j9', 'Does the Ministry of the extractive sector publish information on disaggregated revenue streams?', 'Other (Explain in ''comments'' box.)');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (62, 143, 2, '2.2', '2.2B', '2.2B.021', 'Quality of reports', 'Are periodical reports containing information on revenue generation published by the Ministry of the  extractive sector understandable?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (63, 145, 2, '2.2', '2.2B', '2.2B.022', 'Quality of reports', 'How often are the periodical reports containing information on revenue generation published by the Ministry of the extractive sector?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (64, 148, 2, '2.2', '2.2C.020', '2.2C.020.a', 'Does a Regulatory Agency publish information on revenue generation?', 'Reserves');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (65, 150, 2, '2.2', '2.2C.020', '2.2C.020.b', 'Does a Regulatory Agency publish information on revenue generation?', 'Production volumes');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (66, 152, 2, '2.2', '2.2C.020', '2.2C.020.c', 'Does a Regulatory Agency publish information on revenue generation?', 'Information on prices');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (67, 154, 2, '2.2', '2.2C.020', '2.2C.020.d', 'Does a Regulatory Agency publish information on revenue generation?', 'Value of resource exports');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (68, 156, 2, '2.2', '2.2C.020', '2.2C.020.e', 'Does a Regulatory Agency publish information on revenue generation?', 'Estimates of investment in exploration and development');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (69, 158, 2, '2.2', '2.2C.020', '2.2C.020.f', 'Does a Regulatory Agency publish information on revenue generation?', 'Production costs');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (70, 160, 2, '2.2', '2.2C.020', '2.2C.020.g', 'Does a Regulatory Agency publish information on revenue generation?', 'Names of companies operating in country');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (71, 162, 2, '2.2', '2.2C.020', '2.2C.020.h', 'Does a Regulatory Agency publish information on revenue generation?', 'Production data by company and/or block');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (72, 164, 2, '2.2', '2.2C.020', '2.2C.020.i', 'Does a Regulatory Agency publish information on revenue generation?', 'Cost of subsidies or social investments paid by mineral revenue');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (73, 167, 2, '2.2', '2.2C.020.j', '2.2C.020.j1', 'Does a Regulatory Agency publish information on disaggregated revenue streams?', 'Production streams value');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (74, 169, 2, '2.2', '2.2C.020.j', '2.2C.020.j2', 'Does a Regulatory Agency publish information on disaggregated revenue streams?', 'Government s share in PSC');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (75, 171, 2, '2.2', '2.2C.020.j', '2.2C.020.j3', 'Does a Regulatory Agency publish information on disaggregated revenue streams?', 'Royalties');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (76, 173, 2, '2.2', '2.2C.020.j', '2.2C.020.j4', 'Does a Regulatory Agency publish information on disaggregated revenue streams?', 'Special taxes (e.g. withholding taxes, excise taxes, excess earning taxes, charged on extractive companies)');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (77, 175, 2, '2.2', '2.2C.020.j', '2.2C.020.j5', 'Does a Regulatory Agency publish information on disaggregated revenue streams?', 'Dividends');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (78, 177, 2, '2.2', '2.2C.020.j', '2.2C.020.j6', 'Does a Regulatory Agency publish information on disaggregated revenue streams?', 'Bonuses');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (79, 179, 2, '2.2', '2.2C.020.j', '2.2C.020.j7', 'Does a Regulatory Agency publish information on disaggregated revenue streams?', 'License fees');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (80, 181, 2, '2.2', '2.2C.020.j', '2.2C.020.j8', 'Does a Regulatory Agency publish information on disaggregated revenue streams?', 'Acreage fees');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (81, 183, 2, '2.2', '2.2C.020.j', '2.2C.020.j9', 'Does a Regulatory Agency publish information on disaggregated revenue streams?', 'Other (Explain in ''comments'' box.)');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (82, 186, 2, '2.2', '2.2C', '2.2C.021', 'Quality of reports', 'Are periodical reports containing information on revenue generation published by the Regulatory Agency understandable?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (83, 188, 2, '2.2', '2.2C', '2.2C.022', 'Quality of reports', 'How often are the periodical reports containing information on revenue generation published by the Regulatory Agency?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (84, 191, 2, '2.2', '2.2D.020', '2.2D.020.a', 'Does the Central Bank publish information on revenue generation?', 'Reserves');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (85, 193, 2, '2.2', '2.2D.020', '2.2D.020.b', 'Does the Central Bank publish information on revenue generation?', 'Production volumes');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (86, 195, 2, '2.2', '2.2D.020', '2.2D.020.c', 'Does the Central Bank publish information on revenue generation?', 'Information on prices');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (87, 197, 2, '2.2', '2.2D.020', '2.2D.020.d', 'Does the Central Bank publish information on revenue generation?', 'Value of resource exports');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (88, 199, 2, '2.2', '2.2D.020', '2.2D.020.e', 'Does the Central Bank publish information on revenue generation?', 'Estimates of investment in exploration and development');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (89, 201, 2, '2.2', '2.2D.020', '2.2D.020.f', 'Does the Central Bank publish information on revenue generation?', 'Production costs');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (90, 203, 2, '2.2', '2.2D.020', '2.2D.020.g', 'Does the Central Bank publish information on revenue generation?', 'Names of companies operating in country');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (91, 205, 2, '2.2', '2.2D.020', '2.2D.020.h', 'Does the Central Bank publish information on revenue generation?', 'Production data by company and/or block');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (92, 207, 2, '2.2', '2.2D.020', '2.2D.020.i', 'Does the Central Bank publish information on revenue generation?', 'Cost of subsidies or social investments paid by mineral revenue');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (93, 210, 2, '2.2', '2.2D.020.j', '2.2D.020.j1', 'Does the Central Bank publish information on disaggregated revenue streams?', 'Production streams value');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (94, 212, 2, '2.2', '2.2D.020.j', '2.2D.020.j2', 'Does the Central Bank publish information on disaggregated revenue streams?', 'Government s share in PSC');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (95, 214, 2, '2.2', '2.2D.020.j', '2.2D.020.j3', 'Does the Central Bank publish information on disaggregated revenue streams?', 'Royalties');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (96, 216, 2, '2.2', '2.2D.020.j', '2.2D.020.j4', 'Does the Central Bank publish information on disaggregated revenue streams?', 'Special taxes (e.g. withholding taxes, excise taxes, excess earning taxes, charged on extractive companies)');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (97, 218, 2, '2.2', '2.2D.020.j', '2.2D.020.j5', 'Does the Central Bank publish information on disaggregated revenue streams?', 'Dividends');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (98, 220, 2, '2.2', '2.2D.020.j', '2.2D.020.j6', 'Does the Central Bank publish information on disaggregated revenue streams?', 'Bonuses');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (99, 222, 2, '2.2', '2.2D.020.j', '2.2D.020.j7', 'Does the Central Bank publish information on disaggregated revenue streams?', 'License fees');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (100, 224, 2, '2.2', '2.2D.020.j', '2.2D.020.j8', 'Does the Central Bank publish information on disaggregated revenue streams?', 'Acreage fees');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (101, 226, 2, '2.2', '2.2D.020.j', '2.2D.020.j9', 'Does the Central Bank publish information on disaggregated revenue streams?', 'Other (Explain in ''comments'' box.)');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (102, 229, 2, '2.2', '2.2D', '2.2D.021', 'Quality of reports', 'Are periodical reports containing information on revenue generation published by the Central Bank understandable?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (103, 231, 2, '2.2', '2.2D', '2.2D.022', 'Quality of reports', 'How often are the periodical reports containing information on revenue generation published by the Central Bank?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (104, 234, 2, '2.2', '2.2E.020', '2.2E.020.a', 'Does any other government agency or entity publish information on revenue generation?', 'Reserves');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (105, 236, 2, '2.2', '2.2E.020', '2.2E.020.b', 'Does any other government agency or entity publish information on revenue generation?', 'Production volumes');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (106, 238, 2, '2.2', '2.2E.020', '2.2E.020.c', 'Does any other government agency or entity publish information on revenue generation?', 'Information on prices');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (107, 240, 2, '2.2', '2.2E.020', '2.2E.020.d', 'Does any other government agency or entity publish information on revenue generation?', 'Value of resource exports');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (108, 242, 2, '2.2', '2.2E.020', '2.2E.020.e', 'Does any other government agency or entity publish information on revenue generation?', 'Estimates of investment in exploration and development');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (109, 244, 2, '2.2', '2.2E.020', '2.2E.020.f', 'Does any other government agency or entity publish information on revenue generation?', 'Production costs');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (110, 246, 2, '2.2', '2.2E.020', '2.2E.020.g', 'Does any other government agency or entity publish information on revenue generation?', 'Names of companies operating in country');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (111, 248, 2, '2.2', '2.2E.020', '2.2E.020.h', 'Does any other government agency or entity publish information on revenue generation?', 'Production data by company and/or block');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (112, 250, 2, '2.2', '2.2E.020', '2.2E.020.i', 'Does any other government agency or entity publish information on revenue generation?', 'Cost of subsidies or social investments paid by mineral revenue');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (113, 253, 2, '2.2', '2.2E.020.j', '2.2E.020.j1', 'Does any other government agency or entity publish information on disaggregated revenue streams?', 'Production streams value');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (114, 255, 2, '2.2', '2.2E.020.j', '2.2E.020.j2', 'Does any other government agency or entity publish information on disaggregated revenue streams?', 'Government s share in PSC');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (115, 257, 2, '2.2', '2.2E.020.j', '2.2E.020.j3', 'Does any other government agency or entity publish information on disaggregated revenue streams?', 'Royalties');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (116, 259, 2, '2.2', '2.2E.020.j', '2.2E.020.j4', 'Does any other government agency or entity publish information on disaggregated revenue streams?', 'Special taxes (e.g. withholding taxes, excise taxes, excess earning taxes, charged on extractive companies)');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (117, 261, 2, '2.2', '2.2E.020.j', '2.2E.020.j5', 'Does any other government agency or entity publish information on disaggregated revenue streams?', 'Dividends');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (118, 263, 2, '2.2', '2.2E.020.j', '2.2E.020.j6', 'Does any other government agency or entity publish information on disaggregated revenue streams?', 'Bonuses');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (119, 265, 2, '2.2', '2.2E.020.j', '2.2E.020.j7', 'Does any other government agency or entity publish information on disaggregated revenue streams?', 'License fees');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (120, 267, 2, '2.2', '2.2E.020.j', '2.2E.020.j8', 'Does any other government agency or entity publish information on disaggregated revenue streams?', 'Acreage fees');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (121, 269, 2, '2.2', '2.2E.020.j', '2.2E.020.j9', 'Does any other government agency or entity publish information on disaggregated revenue streams?', 'Other (Explain in ''comments'' box.)');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (122, 272, 2, '2.2', '2.2E', '2.2E.021', 'Quality of reports', 'Are periodical reports containing information on revenue generation published by any other government agency or entity understandable?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (123, 274, 2, '2.2', '2.2E', '2.2E.022', 'Quality of reports', 'How often are the periodical reports containing information on revenue generation published by the any other governmental agency or entity?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (124, 277, 2, '2.2', '2.2', '2.2.023', 'Public sector balance', 'Does the government include the SOC financial balance (its assets and liabilities) within the public sector balance or overall balance of general government in reports to the legislature?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (125, 279, 2, '2.2', '2.2', '2.2.024', 'Public sector balance', 'Does the government include projections of transactions, accounts of actual spending by the natural resource funds, and their assets and liabilities, within the public sector balance or overall balance of general government in reports to the legislature?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (126, 281, 2, '2.2', '2.2', '2.2.025', 'Public sector balance', 'Does the government provide information on the non resource fiscal balance in its budget proposal?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (127, 285, 2, '2.3', '2.3', '2.3.026', 'Legal Framework and Practices', 'In the legal framework, what government agencies have authority to collect taxes and payments from resource companies?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (128, 287, 2, '2.3', '2.3', '2.3.027', 'Legal Framework and Practices', 'Are all resource related revenues, including those collected by state owned companies, regulatory agencies, ministries, special funds or by the tax authority placed in the national treasury?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (129, 289, 2, '2.3', '2.3', '2.3.028', 'Legal Framework and Practices', 'Are government officials with a role in the oversight of the oil, gas or mining sector required to disclose information about their financial interest in any extractive activity or projects?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (130, 291, 2, '2.3', '2.3', '2.3.029', 'Legal Framework and Practices', 'Is there independent external validation of internal controls of agencies in charge of receiving payments from resource companies with the objective of providing assurances of integrity of public funds and sound financial management?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (131, 293, 2, '2.3', '2.3', '2.3.030', 'Legal Framework and Practices', 'Does the national audit office (or similar independent organization) report regularly to the legislature on its findings, including an objective analysis of agencies in charge of managing resource revenues, and are these reports published?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (132, 295, 2, '2.3', '2.3', '2.3.031', 'Legal Framework and Practices', 'Does a Parliamentary committee scrutinize  reports on resource related revenues and, if so, when does this occur?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (133, 297, 2, '2.3', '2.3', '2.3.032', 'Legal Framework and Practices', 'Is this country an EITI candidate or compliant country?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (134, 302, 3, '3.1', '3.1.1', '3.1.1.033', 'Context', 'Is there a state-owned company? If so, what is its role in the extractive sector?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (135, 304, 3, '3.1', '3.1.1', '3.1.1.034', 'Context', 'How is government ownership of resource companies structured in this country?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (136, 306, 3, '3.1', '3.1.1', '3.1.1.035', 'Context', 'Is there more than one state-owned company (SOC) operating in the extractive sector?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (137, 308, 3, '3.1', '3.1.1', '3.1.1.036', 'Context', 'Do the roles and responsibilities of the SOC include provision of subsidies or social expenditures (quasi-fiscal activities)?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (138, 311, 3, '3.1', '3.1.2', '3.1.2.037', 'Comprehensive reports', 'Does the SOC publish comprehensive reports with information about its operations and subsidiaries?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (139, 314, 3, '3.1', '3.1.2.038', '3.1.2.038.a', 'Does the SOC publish information on revenue generation?', 'Reserves');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (140, 316, 3, '3.1', '3.1.2.038', '3.1.2.038.b', 'Does the SOC publish information on revenue generation?', 'Production volumes');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (141, 318, 3, '3.1', '3.1.2.038', '3.1.2.038.c', 'Does the SOC publish information on revenue generation?', 'Information on prices');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (142, 320, 3, '3.1', '3.1.2.038', '3.1.2.038.d', 'Does the SOC publish information on revenue generation?', 'Value of resource exports');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (143, 322, 3, '3.1', '3.1.2.038', '3.1.2.038.e', 'Does the SOC publish information on revenue generation?', 'Estimates of investment in exploration and development');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (144, 324, 3, '3.1', '3.1.2.038', '3.1.2.038.f', 'Does the SOC publish information on revenue generation?', 'Production costs');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (145, 326, 3, '3.1', '3.1.2.038', '3.1.2.038.g', 'Does the SOC publish information on revenue generation?', 'Names of companies operating in country');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (146, 328, 3, '3.1', '3.1.2.038', '3.1.2.038.h', 'Does the SOC publish information on revenue generation?', 'Production data by company and/or block');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (147, 330, 3, '3.1', '3.1.2.038', '3.1.2.038.i', 'Does the SOC publish information on revenue generation?', 'Quasi fiscal activities');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (148, 333, 3, '3.1', '3.1.2.038.j', '3.1.2.038.j1', 'Disaggregated Revenue Streams', 'Production streams value');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (149, 335, 3, '3.1', '3.1.2.038.j', '3.1.2.038.j2', 'Disaggregated Revenue Streams', 'Government s share in PSC');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (150, 337, 3, '3.1', '3.1.2.038.j', '3.1.2.038.j3', 'Disaggregated Revenue Streams', 'Royalties');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (151, 339, 3, '3.1', '3.1.2.038.j', '3.1.2.038.j4', 'Disaggregated Revenue Streams', 'Special taxes');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (152, 341, 3, '3.1', '3.1.2.038.j', '3.1.2.038.j5', 'Disaggregated Revenue Streams', 'Dividends');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (153, 343, 3, '3.1', '3.1.2.038.j', '3.1.2.038.j6', 'Disaggregated Revenue Streams', 'Bonuses');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (154, 345, 3, '3.1', '3.1.2.038.j', '3.1.2.038.j7', 'Disaggregated Revenue Streams', 'License fees');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (155, 347, 3, '3.1', '3.1.2.038.j', '3.1.2.038.j8', 'Disaggregated Revenue Streams', 'Acreage fees');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (156, 349, 3, '3.1', '3.1.2.038.j', '3.1.2.038.j9', 'Disaggregated Revenue Streams', 'Other (Describe below)');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (157, 352, 3, '3.1', '3.1.2', '3.1.2.039', 'Quality of reports', 'Are the reports published by the state owned company understandable?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (158, 354, 3, '3.1', '3.1.2', '3.1.2.040', 'Quality of reports', 'How often are the reports or statistical databases containing information on revenue generation published by the state owned company?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (159, 356, 3, '3.1', '3.1.2', '3.1.2.041', 'Quality of reports', 'If the SOC is involved with quasi fiscal activities, does it publish information about them?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (160, 358, 3, '3.1', '3.1.2', '3.1.2.042', 'Quality of reports', 'If there are joint ventures, does the SOC (or government) publish information on its share of costs and revenues deriving from its equity participation in joint ventures?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (161, 361, 3, '3.1', '3.1.2.043', '3.1.2.043.a', 'Audited reports', 'Is the SOC subject to annual audits conducted by an independent external auditor to ensure that the financial statements represent the financial position and performance of the company?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (162, 363, 3, '3.1', '3.1.2.043', '3.1.2.043.b', 'Audited reports', 'Are SOC audited reports published?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (163, 366, 3, '3.1', '3.1.3', '3.1.3.044', 'Legal Framework and Practice', 'Does the SOC have a legal obligation to publish financial reports?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (164, 368, 3, '3.1', '3.1.3', '3.1.3.045', 'Legal Framework and Practice', 'Does the SOC follow internationally recognized accounting standards?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (165, 370, 3, '3.1', '3.1.3', '3.1.3.046', 'Legal Framework and Practice', 'Do SOC audits include consolidated accounts that cover all of the SOC subsidiaries?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (166, 372, 3, '3.1', '3.1.3', '3.1.3.047', 'Legal Framework and Practice', 'Are officials of the SOC required to disclose information about their financial interest in any oil, gas or mining projects?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (167, 374, 3, '3.1', '3.1.3', '3.1.3.048', 'Legal Framework and Practice', 'Does the SOC publish information on the composition of its Board of Directors?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (168, 376, 3, '3.1', '3.1.3', '3.1.3.049', 'Legal Framework and Practice', 'Does the SOC publish information about the rules governing decision making by the Board of Directors?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (169, 380, 3, '3.2', '3.2.1', '3.2.1.050', 'Context', 'Has the government created a special fund or natural resource fund that concentrates revenue directly from oil, gas or mineral extraction?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (170, 382, 3, '3.2', '3.2.1', '3.2.1.051', 'Context', 'What authority is responsible for the natural resource fund?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (171, 385, 3, '3.2', '3.2.2', '3.2.2.052', 'Disclosure', 'Are the rules for the fund''s deposits and withdrawals published, including the formula(s) for deposits and withdrawals?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (172, 387, 3, '3.2', '3.2.2', '3.2.2.053', 'Disclosure', 'Does the fund management or authority in charge of the fund publish comprehensive information on its assets, transactions and investments?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (173, 389, 3, '3.2', '3.2.2', '3.2.2.054', 'Disclosure', 'Are the reports containing information on the fund''s assets and transactions understandable?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (174, 391, 3, '3.2', '3.2.2', '3.2.2.055', 'Disclosure', 'How often are financial reports published by the fund management or authority in charge?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (175, 394, 3, '3.2', '3.2.2.056', '3.2.2.056a', 'Audited reports', 'Are the fund s financial reports audited?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (176, 396, 3, '3.2', '3.2.2.056', '3.2.2.056b', 'Audited reports', 'Are the audited financial reports published?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (177, 399, 3, '3.2', '3.2.3', '3.2.3.057', 'Legal Framework and Practice', 'Are the rules governing deposits into the fund defined by legislation?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (178, 401, 3, '3.2', '3.2.3', '3.2.3.058', 'Legal Framework and Practice', 'In practice, does the government follow the rules governing deposits to the natural resource fund?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (179, 403, 3, '3.2', '3.2.3', '3.2.3.059', 'Legal Framework and Practice', 'Are the rules governing withdrawal or disbursement from the fund defined by legislation?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (180, 405, 3, '3.2', '3.2.3', '3.2.3.060', 'Legal Framework and Practice', 'In practice, does the government follow the rules governing withdrawal or spending from natural resource fund?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (181, 407, 3, '3.2', '3.2.3', '3.2.3.061', 'Legal Framework and Practice', 'Are withdrawals or spending from the fund reserves approved by the legislature as part of the budget process?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (182, 409, 3, '3.2', '3.2.3', '3.2.3.062', 'Legal Framework and Practice', 'Are officials of the natural resource fund required to disclose information about their financial interest in any oil, gas or mining projects?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (183, 413, 3, '3.3', '3.3.1', '3.3.1.063', 'Context', 'Do central governments transfer resources to subnational authorities based on extraction of mineral resources?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (184, 415, 3, '3.3', '3.3.1', '3.3.1.064', 'Context', 'Are conditions imposed on subnational government as part of revenue sharing regime?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (185, 418, 3, '3.3', '3.3.2', '3.3.2.065', 'Disclosure', 'Are the rules for revenue transfers from central to sub national governments published, including the formula(s) for revenue sharing?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (186, 420, 3, '3.3', '3.3.2', '3.3.2.066', 'Disclosure', 'Does the central government publish comprehensive information on transfers of resource related revenues to sub-national governments?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (187, 422, 3, '3.3', '3.3.2', '3.3.2.067', 'Disclosure', 'Are the reports containing information on transfers of resource related revenues to sub-national governments understandable?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (188, 424, 3, '3.3', '3.3.2', '3.3.2.068', 'Disclosure', 'How often does the central government publish information on transfers of resource related revenues to sub-national governments?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (189, 426, 3, '3.3', '3.3.2', '3.3.2.069', 'Disclosure', 'Do sub-national governments publish information on transfers received from central governments?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (190, 429, 3, '3.3', '3.3.3', '3.3.3.070', 'Legal Framework and Practice', 'Are arrangements (including formulas and responsible institutions) for resource revenue sharing between central and sub-national governments defined by legislation?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (191, 431, 3, '3.3', '3.3.3', '3.3.3.071', 'Legal Framework and Practice', 'In practice, does the government follow the rules established by resource revenue sharing legislation?');


--
-- TOC entry 2026 (class 0 OID 17092)
-- Dependencies: 181
-- Data for Name: rgi_raw_data_web_column_a_and_i_to_bn_transposed; Type: TABLE DATA; Schema: ahasemann; Owner: ahasemann
--

INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (1, 'Afghanistan', 33.3333, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL, 66.6667, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, NULL, 66.6667, 0.0000, 0.0000, NULL, 33.3333, 0.0000, 0.0000, NULL, 100.0000, 0.0000, 100.0000, NULL, 66.6667, 66.6667, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 66.6667, 66.6667, 66.6667, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 100.0000, 0.0000, 100.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 100.0000, 33.3333, 0.0000, 66.6667, 33.3333, 100.0000, 66.6667, 100.0000, 0.0000, 0.0000, 66.6667, 100.0000, 66.6667, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.1858, 0.9569, 24.4681, 8.0569, 10.7784, 4.7847, 0.4739);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (2, 'Algeria', 0.0000, 100.0000, 0.0000, 100.0000, 66.6667, 100.0000, 100.0000, 66.6667, 33.3333, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, 33.3333, 0.0000, 33.3333, 33.3333, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 33.3333, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 100.0000, 0.0000, NULL, NULL, 66.6667, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, NULL, NULL, 33.3333, 33.3333, NULL, 33.3333, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 66.6667, 100.0000, 33.3333, 0.0000, 0.0000, 100.0000, 66.6667, 33.3333, NULL, NULL, 66.6667, 33.3333, 66.6667, 33.3333, NULL, NULL, NULL, NULL, 0.0000, 66.6667, 33.3333, 100.0000, 33.3333, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 33.3333, 66.6667, 39.3443, 37.7990, 6.3830, 18.4834, 25.7485, 33.9713, 27.0142);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (3, 'Angola', 0.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 66.6667, 100.0000, 33.3333, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, NULL, NULL, 66.6667, 66.6667, 0.0000, 0.0000, 100.0000, 100.0000, 33.3333, 100.0000, NULL, NULL, 66.6667, 66.6667, 100.0000, 100.0000, 0.0000, 33.3333, 100.0000, 33.3333, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, 0.0000, 66.6667, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 33.3333, 0.0000, 66.6667, 0.0000, 33.3333, NULL, NULL, NULL, NULL, 0.0000, 100.0000, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 33.3333, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 66.6667, 66.6667, 66.6667, 66.6667, NULL, 0.0000, 33.3333, 0.0000, NULL, 0.0000, 0.0000, 66.6667, 0.0000, NULL, 100.0000, 100.0000, 0.0000, 66.6667, 66.6667, 66.6667, 66.6667, 66.6667, 66.6667, 66.6667, 0.0000, 100.0000, 0.0000, 66.6667, 66.6667, 66.6667, 66.6667, 66.6667, NULL, 66.6667, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 66.6667, 66.6667, 100.0000, 66.6667, 0.0000, 0.0000, 100.0000, 33.3333, 66.6667, 100.0000, 100.0000, 100.0000, NULL, NULL, 66.6667, 33.3333, 100.0000, 66.6667, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 8.7432, 3.8278, 26.5957, 14.6919, 22.1557, 12.4402, 9.0047);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (4, 'Australia(WesternAustralia)', 100.0000, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, NULL, 100.0000, NULL, 0.0000, NULL, 0.0000, NULL, 100.0000, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 66.6667, 100.0000, 66.6667, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, 66.6667, 33.3333, 100.0000, 33.3333, 100.0000, 33.3333, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 66.6667, 33.3333, 100.0000, 96.1749, 96.1722, NULL, 95.2607, 97.0060, 96.1722, 95.2607);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (5, 'Azerbaijan', 66.6667, 66.6667, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 66.6667, 66.6667, 0.0000, 33.3333, 0.0000, 100.0000, 0.0000, 100.0000, NULL, 0.0000, 33.3333, 33.3333, 100.0000, 33.3333, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 100.0000, 100.0000, NULL, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 100.0000, NULL, NULL, 0.0000, 0.0000, 66.6667, NULL, 66.6667, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, NULL, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 66.6667, NULL, NULL, NULL, 0.0000, 66.6667, NULL, 33.3333, 33.3333, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 100.0000, NULL, NULL, 100.0000, 66.6667, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 33.3333, 100.0000, 100.0000, 100.0000, 66.6667, 0.0000, 0.0000, NULL, NULL, NULL, 22.4044, 9.0909, 45.7447, 12.3223, 19.7605, 22.0096, 21.8009);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (6, 'Bahrain', 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 66.6667, 100.0000, 0.0000, 100.0000, 100.0000, NULL, 33.3333, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, 0.0000, 100.0000, 100.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 100.0000, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 0.0000, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 0.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 66.6667, 33.3333, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, NULL, NULL, NULL, 0.0000, 33.3333, 0.0000, 100.0000, 100.0000, 100.0000, 33.3333, 100.0000, NULL, NULL, 100.0000, 33.3333, NULL, NULL, 33.3333, 33.3333, 100.0000, 33.3333, 33.3333, 0.0000, NULL, NULL, 0.0000, 0.0000, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, 75.4098, 63.6364, NULL, 25.1185, 27.5449, 69.8565, 64.4550);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (7, 'Bolivia', 66.6667, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, 100.0000, 100.0000, NULL, NULL, 100.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 100.0000, 0.0000, NULL, 33.3333, 0.0000, 0.0000, NULL, 66.6667, 66.6667, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 66.6667, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 33.3333, 0.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, NULL, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 66.6667, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, NULL, NULL, 0.0000, 100.0000, 100.0000, 66.6667, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 33.3333, 100.0000, 36.0656, 38.2775, 18.0851, 47.3934, 52.6946, 39.2344, 13.2701);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (8, 'Botswana', 0.0000, 100.0000, 0.0000, 100.0000, 66.6667, 100.0000, 0.0000, 66.6667, 33.3333, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 33.3333, 33.3333, 100.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 33.3333, 0.0000, 100.0000, NULL, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 100.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 33.3333, 0.0000, NULL, NULL, 33.3333, 0.0000, 0.0000, 66.6667, 66.6667, 66.6667, 0.0000, 0.0000, 0.0000, 66.6667, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 66.6667, 0.0000, 100.0000, 0.0000, 0.0000, 33.3333, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 33.3333, 66.6667, 100.0000, 100.0000, 66.6667, 33.3333, 66.6667, 33.3333, NULL, NULL, NULL, NULL, 100.0000, 66.6667, 33.3333, 66.6667, 0.0000, NULL, 100.0000, 0.0000, 33.3333, 33.3333, 66.6667, 100.0000, 66.6667, 66.6667, 0.0000, 100.0000, 0.0000, 0.0000, 100.0000, 83.0601, 79.9043, 59.5745, 59.7156, 79.6407, 67.4641, 67.7725);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (9, 'Brazil', 100.0000, 100.0000, 0.0000, 100.0000, 66.6667, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, NULL, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, NULL, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 100.0000, NULL, 100.0000, 100.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 100.0000, NULL, 100.0000, 100.0000, 0.0000, 0.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 100.0000, NULL, 100.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, NULL, 100.0000, 100.0000, 100.0000, 100.0000, NULL, 100.0000, NULL, 100.0000, 0.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 33.3333, 100.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, 60.6557, 59.8086, 91.4894, 63.5071, 72.4551, 56.9378, 55.4502);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (10, 'Cambodia', 0.0000, 66.6667, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 66.6667, 33.3333, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 66.6667, 100.0000, NULL, 66.6667, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 66.6667, 0.0000, 66.6667, 0.0000, NULL, NULL, NULL, 33.3333, 33.3333, 33.3333, 33.3333, NULL, NULL, 33.3333, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.9290, 7.6555, 21.2766, 24.6445, 40.7186, 22.4880, 12.7962);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (11, 'Cameroon', 33.3333, 66.6667, 66.6667, 0.0000, 66.6667, 100.0000, 100.0000, 66.6667, 0.0000, 33.3333, NULL, 100.0000, 100.0000, NULL, NULL, NULL, 33.3333, 33.3333, 0.0000, 100.0000, 100.0000, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 66.6667, 0.0000, 0.0000, NULL, NULL, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 33.3333, NULL, NULL, 66.6667, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 100.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 33.3333, 33.3333, 33.3333, 33.3333, 33.3333, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 33.3333, NULL, 33.3333, 100.0000, 0.0000, 66.6667, 66.6667, 0.0000, 0.0000, 0.0000, 66.6667, 66.6667, NULL, 66.6667, 66.6667, 0.0000, 66.6667, 0.0000, 0.0000, 66.6667, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 33.3333, 0.0000, 0.0000, 66.6667, 0.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 33.3333, NULL, NULL, 0.0000, 33.3333, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27.3224, 16.7464, 8.5106, 16.5877, 25.1497, 18.6603, 15.1659);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (12, 'Canada(Alberta)', 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 66.6667, NULL, 33.3333, 100.0000, NULL, 0.0000, 100.0000, NULL, 100.0000, 100.0000, 100.0000, 66.6667, NULL, NULL, NULL, 66.6667, 100.0000, 0.0000, 0.0000, 33.3333, 100.0000, 100.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, NULL, 100.0000, NULL, 0.0000, NULL, 100.0000, NULL, 0.0000, NULL, 0.0000, NULL, 100.0000, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 66.6667, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 33.3333, NULL, NULL, NULL, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 33.3333, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, 95.0820, 96.6507, NULL, 93.8389, 95.2096, 96.6507, 96.2085);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (13, 'Chile', 66.6667, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, 66.6667, 66.6667, 0.0000, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 33.3333, 0.0000, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, NULL, NULL, NULL, NULL, 100.0000, NULL, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, NULL, 66.6667, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, 100.0000, 0.0000, 100.0000, 100.0000, 66.6667, 0.0000, 66.6667, 100.0000, 66.6667, 33.3333, 100.0000, 33.3333, NULL, NULL, 100.0000, 33.3333, 0.0000, 66.6667, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, 88.5246, 90.9091, 92.5532, 81.9905, 80.2395, 83.7321, 87.6777);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (14, 'China', 33.3333, 66.6667, 0.0000, 100.0000, 66.6667, 0.0000, 0.0000, NULL, 66.6667, 66.6667, NULL, 0.0000, 100.0000, NULL, NULL, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 0.0000, 66.6667, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 66.6667, 66.6667, 100.0000, 100.0000, 100.0000, NULL, NULL, 0.0000, 66.6667, 100.0000, 66.6667, 0.0000, 0.0000, 100.0000, 33.3333, 0.0000, 66.6667, 100.0000, 66.6667, 33.3333, 66.6667, 100.0000, 33.3333, 33.3333, NULL, NULL, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33.3333, 33.3333, 0.0000, 59.5628, 32.5359, 17.0213, 5.2133, 19.1617, 59.8086, 44.5498);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (15, 'Colombia', 33.3333, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 66.6667, 33.3333, 100.0000, 0.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, 33.3333, 100.0000, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 33.3333, 33.3333, 100.0000, 100.0000, 33.3333, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 33.3333, NULL, 100.0000, 0.0000, 33.3333, 100.0000, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 33.3333, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 66.6667, 0.0000, NULL, NULL, 33.3333, NULL, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, NULL, 0.0000, 0.0000, 33.3333, 0.0000, NULL, 0.0000, 0.0000, 100.0000, 100.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 33.3333, 0.0000, NULL, 0.0000, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, 33.3333, 100.0000, 0.0000, NULL, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 33.3333, 33.3333, 0.0000, 100.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 0.0000, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 66.6667, 33.3333, 100.0000, 66.6667, 33.3333, 66.6667, 100.0000, 66.6667, 33.3333, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33.3333, 100.0000, 100.0000, 56.8306, 43.0622, 79.7872, 40.7583, 66.4671, 60.7656, 45.0237);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (16, 'Congo(DRC)', 33.3333, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, 100.0000, 100.0000, 66.6667, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 0.0000, 0.0000, NULL, 66.6667, 0.0000, NULL, NULL, 66.6667, 66.6667, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 66.6667, 66.6667, 0.0000, NULL, 66.6667, NULL, 66.6667, NULL, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 66.6667, 66.6667, 33.3333, 0.0000, 33.3333, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 33.3333, 0.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 66.6667, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 66.6667, 0.0000, 33.3333, 100.0000, 33.3333, 100.0000, 33.3333, 100.0000, 66.6667, 33.3333, NULL, NULL, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 8.7432, 2.8708, 12.7660, 9.0047, 7.7844, 1.4354, 2.3697);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (17, 'Ecuador', 100.0000, 100.0000, 0.0000, 100.0000, 66.6667, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, NULL, 0.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 66.6667, 66.6667, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 100.0000, 0.0000, 66.6667, 66.6667, 0.0000, 0.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 66.6667, 0.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 66.6667, 0.0000, NULL, NULL, NULL, NULL, 100.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 66.6667, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 100.0000, 0.0000, NULL, 100.0000, 100.0000, 0.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, 66.6667, 0.0000, 100.0000, 100.0000, 33.3333, 0.0000, 100.0000, 100.0000, 66.6667, 33.3333, 100.0000, 100.0000, NULL, NULL, 100.0000, 66.6667, 100.0000, 100.0000, 33.3333, 100.0000, 0.0000, NULL, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 66.6667, 33.3333, 100.0000, 34.9727, 20.0957, 29.7872, 37.9147, 48.5030, 29.1866, 11.8483);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (18, 'Egypt', 0.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 33.3333, 100.0000, 0.0000, NULL, 100.0000, 0.0000, NULL, NULL, NULL, 100.0000, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 66.6667, 0.0000, 0.0000, 100.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 100.0000, 0.0000, 66.6667, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 0.0000, 66.6667, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 100.0000, NULL, NULL, 0.0000, 66.6667, 0.0000, NULL, NULL, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 66.6667, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 66.6667, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 100.0000, 66.6667, 0.0000, 66.6667, 33.3333, 0.0000, 33.3333, 100.0000, 66.6667, 33.3333, 100.0000, 33.3333, NULL, NULL, NULL, NULL, 100.0000, 33.3333, 33.3333, 0.0000, NULL, NULL, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39.3443, 34.4498, 54.2553, 13.2701, 17.9641, 40.1914, 51.6588);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (19, 'EquatorialGuinea', 0.0000, 33.3333, 0.0000, 100.0000, 66.6667, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 66.6667, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 66.6667, 66.6667, 0.0000, 0.0000, 33.3333, 0.0000, NULL, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 33.3333, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 33.3333, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 33.3333, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 66.6667, 0.0000, 33.3333, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 0.0000, 66.6667, 0.0000, 0.0000, 66.6667, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 6.5574, 1.4354, 3.1915, 3.3175, 4.7904, 1.9139, 8.5308);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (20, 'Gabon', 0.0000, 66.6667, 66.6667, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, NULL, 0.0000, 100.0000, NULL, 100.0000, 0.0000, NULL, 66.6667, 33.3333, 0.0000, 0.0000, NULL, 0.0000, 66.6667, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 66.6667, 33.3333, 0.0000, NULL, NULL, 66.6667, 66.6667, 0.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 33.3333, 0.0000, 0.0000, NULL, NULL, NULL, 66.6667, 0.0000, 0.0000, NULL, 100.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 100.0000, NULL, 33.3333, 0.0000, 33.3333, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 33.3333, 33.3333, 33.3333, 33.3333, 33.3333, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 66.6667, 100.0000, 66.6667, 33.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 0.0000, NULL, NULL, NULL, 33.3333, 0.0000, NULL, 66.6667, 33.3333, 33.3333, 100.0000, 33.3333, 66.6667, 33.3333, 66.6667, 33.3333, 66.6667, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, NULL, 0.0000, 100.0000, NULL, NULL, NULL, 45.9016, 24.4019, NULL, 21.3270, 20.9581, 20.0957, 35.5450);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (21, 'Ghana', 33.3333, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 66.6667, NULL, NULL, 100.0000, NULL, NULL, NULL, 100.0000, 66.6667, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 100.0000, 0.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 66.6667, 66.6667, NULL, NULL, 100.0000, 100.0000, 0.0000, 33.3333, 33.3333, 0.0000, 66.6667, 100.0000, 0.0000, 66.6667, 66.6667, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 33.3333, NULL, 33.3333, 0.0000, 0.0000, NULL, 100.0000, 0.0000, 66.6667, NULL, 66.6667, 66.6667, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, 100.0000, NULL, 66.6667, 0.0000, NULL, 66.6667, NULL, 66.6667, 66.6667, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 66.6667, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, 66.6667, 66.6667, 100.0000, 66.6667, 66.6667, 100.0000, 66.6667, 100.0000, 66.6667, 33.3333, 66.6667, 100.0000, 66.6667, 33.3333, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 66.6667, 33.3333, 66.6667, 62.8415, 60.2871, 63.8298, 63.0332, 54.4910, 55.5024, 54.0284);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (22, 'Guinea', 66.6667, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, NULL, 66.6667, 100.0000, NULL, NULL, NULL, NULL, 100.0000, 66.6667, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 0.0000, 33.3333, 100.0000, 0.0000, 33.3333, 33.3333, NULL, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 33.3333, 0.0000, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 33.3333, NULL, 33.3333, 33.3333, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, 33.3333, NULL, 33.3333, 33.3333, 33.3333, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 33.3333, NULL, 0.0000, 100.0000, 0.0000, 33.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 100.0000, 0.0000, 0.0000, 66.6667, 66.6667, 66.6667, 33.3333, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.9290, 8.1340, NULL, 22.7488, 14.3713, 11.4833, 2.8436);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (23, 'India', 100.0000, 100.0000, 0.0000, 0.0000, 66.6667, 100.0000, 0.0000, 66.6667, 66.6667, 66.6667, NULL, 0.0000, 100.0000, NULL, NULL, NULL, 100.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 33.3333, 0.0000, 100.0000, 100.0000, 33.3333, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, NULL, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, 100.0000, NULL, 0.0000, 0.0000, 100.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, 100.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 66.6667, 0.0000, 0.0000, 100.0000, 0.0000, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 33.3333, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, 66.6667, 66.6667, NULL, 100.0000, 33.3333, 66.6667, 66.6667, 33.3333, 66.6667, 33.3333, 66.6667, 33.3333, 66.6667, 33.3333, 66.6667, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48.6339, 35.8852, 86.1702, 59.2417, 76.6467, 55.0239, 54.5024);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (24, 'Indonesia', 66.6667, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 100.0000, 0.0000, NULL, 100.0000, 100.0000, NULL, NULL, 100.0000, 33.3333, 66.6667, 0.0000, 33.3333, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, NULL, NULL, 100.0000, 0.0000, 0.0000, 100.0000, NULL, NULL, 100.0000, 0.0000, NULL, NULL, NULL, 100.0000, 0.0000, 33.3333, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, 0.0000, 0.0000, 100.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 100.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, 66.6667, NULL, 0.0000, 100.0000, NULL, 100.0000, NULL, 66.6667, 100.0000, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, 100.0000, 66.6667, 0.0000, 66.6667, NULL, NULL, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, NULL, NULL, 100.0000, 0.0000, NULL, NULL, 100.0000, 33.3333, 0.0000, 100.0000, 100.0000, NULL, 100.0000, 100.0000, 100.0000, NULL, NULL, 33.3333, NULL, 100.0000, 33.3333, NULL, NULL, 66.6667, 33.3333, 0.0000, 66.6667, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33.3333, 66.6667, 100.0000, 45.9016, 27.2727, 58.5106, 48.3412, 64.6707, 47.8469, 31.2796);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (25, 'Iran', 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 33.3333, 0.0000, 33.3333, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, NULL, 100.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 33.3333, 0.0000, 66.6667, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 66.6667, 0.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, 100.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 33.3333, NULL, 33.3333, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 33.3333, 0.0000, 100.0000, 0.0000, 100.0000, 33.3333, 0.0000, 66.6667, 0.0000, 33.3333, 100.0000, 0.0000, 66.6667, 33.3333, 100.0000, 66.6667, 33.3333, 33.3333, 0.0000, 33.3333, 33.3333, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, NULL, NULL, 0.0000, 66.6667, 100.0000, 66.6667, 0.0000, 66.6667, 33.3333, 0.0000, 0.0000, 33.3333, 33.3333, 0.0000, 34.9727, 19.6172, NULL, 6.6351, 5.9880, 36.8421, 20.3791);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (26, 'Iraq', 0.0000, NULL, 66.6667, 100.0000, 66.6667, 100.0000, 0.0000, NULL, 100.0000, 100.0000, NULL, 100.0000, 0.0000, NULL, NULL, NULL, 100.0000, 66.6667, 33.3333, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 66.6667, 0.0000, NULL, NULL, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 66.6667, 66.6667, NULL, NULL, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 66.6667, 100.0000, 0.0000, 66.6667, 66.6667, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0.0000, 100.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, 0.0000, 66.6667, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 100.0000, 0.0000, 66.6667, NULL, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 66.6667, 100.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 100.0000, 66.6667, 100.0000, 33.3333, 66.6667, NULL, 66.6667, 33.3333, 100.0000, 33.3333, 33.3333, 66.6667, 100.0000, 33.3333, 100.0000, 100.0000, NULL, NULL, NULL, 100.0000, 66.6667, 100.0000, 100.0000, 0.0000, NULL, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 66.6667, 33.3333, NULL, 4.9180, 4.7847, 5.3192, 17.0616, 34.1317, 9.0909, 1.8957);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (27, 'Kazakhstan', 33.3333, 100.0000, 66.6667, 100.0000, 66.6667, 100.0000, 0.0000, 100.0000, 66.6667, 0.0000, 66.6667, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 33.3333, 33.3333, 0.0000, 66.6667, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, NULL, NULL, 66.6667, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 66.6667, 66.6667, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 100.0000, 100.0000, 0.0000, NULL, 66.6667, 66.6667, 66.6667, 66.6667, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 66.6667, 66.6667, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 100.0000, 66.6667, 66.6667, 100.0000, 66.6667, 100.0000, 100.0000, NULL, NULL, 0.0000, 0.0000, 66.6667, 100.0000, 66.6667, 33.3333, 33.3333, 33.3333, 100.0000, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 33.3333, 100.0000, 33.3333, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 100.0000, 100.0000, 34.9727, 15.3110, 40.4255, 13.7441, 21.5569, 44.4976, 31.7536);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (28, 'Kuwait', 0.0000, 66.6667, 0.0000, 0.0000, 66.6667, 100.0000, 0.0000, 33.3333, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 33.3333, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 33.3333, 100.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, 33.3333, NULL, NULL, NULL, NULL, 33.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, NULL, NULL, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, 66.6667, 0.0000, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, 33.3333, 100.0000, 66.6667, 33.3333, NULL, NULL, 0.0000, 0.0000, 0.0000, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 71.0383, 66.9856, NULL, 32.2275, 32.3353, 58.8517, 65.8768);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (29, 'Liberia', 100.0000, 66.6667, 100.0000, 100.0000, 66.6667, 100.0000, 0.0000, 100.0000, 33.3333, NULL, NULL, 100.0000, NULL, NULL, NULL, 100.0000, 33.3333, 66.6667, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 0.0000, 66.6667, 66.6667, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 33.3333, NULL, 0.0000, 0.0000, 0.0000, NULL, 66.6667, 0.0000, 0.0000, NULL, 66.6667, 0.0000, 0.0000, NULL, 100.0000, 100.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 33.3333, 33.3333, NULL, 0.0000, 66.6667, 66.6667, 66.6667, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, 100.0000, NULL, NULL, NULL, 0.0000, 0.0000, 66.6667, 100.0000, NULL, 100.0000, 66.6667, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 66.6667, 0.0000, 66.6667, 66.6667, 100.0000, 100.0000, 66.6667, 100.0000, 66.6667, 33.3333, 66.6667, 33.3333, 66.6667, 66.6667, 100.0000, 33.3333, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33.3333, 33.3333, 66.6667, 50.8197, 36.3636, 43.6170, 40.2844, 42.5150, 8.1340, 17.0616);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (30, 'Libya', 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 0.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, 33.3333, 66.6667, 0.0000, 0.0000, NULL, 100.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 100.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 100.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 66.6667, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 33.3333, 0.0000, 0.0000, 66.6667, 33.3333, 0.0000, 66.6667, 100.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 33.3333, 100.0000, 33.3333, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 8.7432, 6.2201, NULL, 2.8436, 5.9880, 9.5694, 17.5355);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (31, 'Malaysia', 0.0000, 33.3333, 0.0000, 0.0000, 33.3333, 100.0000, 0.0000, 66.6667, 33.3333, 33.3333, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 33.3333, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 100.0000, NULL, NULL, 100.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, NULL, 100.0000, 100.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 33.3333, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, 33.3333, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 33.3333, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, NULL, NULL, 100.0000, 33.3333, 100.0000, 33.3333, NULL, NULL, 0.0000, 100.0000, 100.0000, 33.3333, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 33.3333, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 67.7596, 61.2440, 42.5532, 31.2796, 58.0838, 82.2967, 65.4028);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (32, 'Mexico', 100.0000, 100.0000, 0.0000, 100.0000, NULL, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 33.3333, 33.3333, 33.3333, 100.0000, 0.0000, 66.6667, 0.0000, 66.6667, 66.6667, 0.0000, 66.6667, 33.3333, 0.0000, 100.0000, 100.0000, 66.6667, NULL, 100.0000, 100.0000, 100.0000, NULL, 100.0000, NULL, 100.0000, 100.0000, 100.0000, 66.6667, 0.0000, 100.0000, 66.6667, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, 100.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 33.3333, NULL, 0.0000, 0.0000, 100.0000, NULL, 100.0000, 100.0000, 66.6667, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 66.6667, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 100.0000, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, 100.0000, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, 100.0000, 66.6667, NULL, NULL, 66.6667, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 33.3333, 100.0000, 66.6667, 100.0000, 100.0000, 0.0000, NULL, 66.6667, 66.6667, 66.6667, 100.0000, 33.3333, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 33.3333, 33.3333, 100.0000, 100.0000, 0.0000, 100.0000, 66.6667, 45.9016, 44.4976, 60.6383, 52.1327, 70.6587, 61.7225, 33.6493);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (33, 'Mongolia', 66.6667, 66.6667, 100.0000, 100.0000, 66.6667, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, NULL, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 33.3333, 33.3333, 33.3333, 0.0000, NULL, NULL, 33.3333, 66.6667, 0.0000, 0.0000, 66.6667, 100.0000, 0.0000, 66.6667, NULL, NULL, 66.6667, 0.0000, 66.6667, 66.6667, 100.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 66.6667, 66.6667, 0.0000, 66.6667, 66.6667, 0.0000, 66.6667, 100.0000, 0.0000, 66.6667, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 66.6667, 66.6667, NULL, 66.6667, 66.6667, 0.0000, NULL, 66.6667, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, 66.6667, NULL, 66.6667, 0.0000, 66.6667, 66.6667, NULL, NULL, 0.0000, NULL, 0.0000, NULL, 66.6667, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 33.3333, 0.0000, NULL, 0.0000, 66.6667, 66.6667, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, 100.0000, 66.6667, 0.0000, 100.0000, 66.6667, 100.0000, 66.6667, 66.6667, 100.0000, NULL, NULL, 33.3333, 100.0000, 66.6667, 33.3333, 100.0000, 33.3333, 66.6667, 33.3333, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 66.6667, 34.9727, 27.7512, 77.6596, 48.8152, 62.2754, 32.0574, 41.2322);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (34, 'Morocco', 33.3333, 66.6667, 0.0000, NULL, NULL, 100.0000, 0.0000, 100.0000, 33.3333, 33.3333, NULL, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, 0.0000, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, 33.3333, NULL, 66.6667, 66.6667, 0.0000, 66.6667, 100.0000, 33.3333, 33.3333, 66.6667, 33.3333, NULL, NULL, NULL, NULL, 100.0000, 66.6667, 33.3333, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 56.8306, 53.1100, 27.6596, 28.4360, 31.1377, 48.8038, 50.2370);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (35, 'Mozambique', 0.0000, 66.6667, 100.0000, 100.0000, 66.6667, 100.0000, 0.0000, 100.0000, 33.3333, 100.0000, NULL, 100.0000, 0.0000, NULL, NULL, NULL, 33.3333, 33.3333, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 33.3333, NULL, 33.3333, 33.3333, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 0.0000, 33.3333, 66.6667, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 100.0000, 66.6667, 66.6667, 0.0000, 66.6667, 100.0000, 0.0000, 0.0000, 33.3333, 100.0000, 66.6667, 33.3333, 0.0000, 0.0000, 0.0000, 33.3333, 33.3333, 66.6667, 66.6667, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34.9727, 42.5837, 28.7234, 45.0237, 41.3174, 38.7560, 36.9668);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (36, 'Myanmar', 0.0000, 66.6667, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.1858, 0.4785, NULL, 0.9479, 2.9940, 2.3923, 3.3175);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (37, 'Nigeria', 100.0000, 66.6667, 100.0000, 100.0000, 33.3333, 100.0000, 0.0000, 66.6667, 33.3333, 0.0000, 66.6667, 0.0000, 100.0000, 0.0000, 0.0000, 100.0000, 33.3333, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 66.6667, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 66.6667, 66.6667, 66.6667, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 66.6667, 66.6667, 66.6667, 33.3333, 33.3333, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 33.3333, 33.3333, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 33.3333, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 33.3333, 33.3333, 0.0000, 66.6667, 66.6667, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 66.6667, 66.6667, 66.6667, NULL, 0.0000, 0.0000, 100.0000, 66.6667, 66.6667, 66.6667, 0.0000, 0.0000, NULL, 100.0000, 0.0000, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 22.4044, 15.7895, 23.4043, 27.0142, 26.9461, 10.5263, 10.9005);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (38, 'Norway', 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, 100.0000, NULL, NULL, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, 100.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 33.3333, 100.0000, NULL, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 33.3333, 100.0000, 66.6667, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, 97.2678, 97.1292, 95.7447, 100.0000, 100.0000, 95.6938, 99.0521);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (39, 'PapuaNewGuinea', 0.0000, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 33.3333, 100.0000, NULL, 100.0000, 100.0000, NULL, NULL, 0.0000, 66.6667, 0.0000, 33.3333, 33.3333, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 66.6667, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 100.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 66.6667, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 66.6667, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, NULL, NULL, 66.6667, 100.0000, 100.0000, 0.0000, NULL, NULL, 0.0000, 66.6667, 0.0000, 33.3333, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 66.6667, 100.0000, 0.0000, 0.0000, 66.6667, 100.0000, NULL, NULL, 0.0000, 0.0000, 100.0000, 66.6667, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33.3333, 33.3333, 0.0000, 16.3934, 10.0478, 73.4043, 51.6588, 65.2695, 26.3158, 18.4834);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (40, 'Peru', 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, 0.0000, NULL, NULL, NULL, 100.0000, 66.6667, 66.6667, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 0.0000, NULL, 100.0000, 0.0000, 100.0000, NULL, 100.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, 66.6667, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 66.6667, 100.0000, 66.6667, 100.0000, 66.6667, 66.6667, 100.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 66.6667, 100.0000, 100.0000, 56.8306, 50.2392, 85.1064, 49.7630, 63.4731, 47.3684, 32.2275);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (41, 'Philippines', 33.3333, 100.0000, 33.3333, 100.0000, 33.3333, 100.0000, 0.0000, 66.6667, 100.0000, 0.0000, NULL, 0.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 66.6667, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 33.3333, 100.0000, 100.0000, 100.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, NULL, 100.0000, 100.0000, 100.0000, 100.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 66.6667, 100.0000, 100.0000, 0.0000, 100.0000, NULL, NULL, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 0.0000, NULL, 0.0000, 100.0000, 66.6667, NULL, NULL, 0.0000, 100.0000, NULL, 0.0000, 100.0000, NULL, NULL, NULL, NULL, 100.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, NULL, NULL, 0.0000, 0.0000, NULL, 0.0000, 33.3333, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 66.6667, 100.0000, 100.0000, 0.0000, NULL, NULL, 100.0000, 33.3333, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 33.3333, 100.0000, 33.3333, 66.6667, 33.3333, 100.0000, 33.3333, 100.0000, NULL, 66.6667, 100.0000, 100.0000, 33.3333, 33.3333, 33.3333, 33.3333, 0.0000, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 33.3333, 30.0546, 22.4880, 65.9574, 46.9194, 56.2874, 51.6746, 34.5972);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (42, 'Qatar', 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 33.3333, 66.6667, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 66.6667, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 66.6667, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 66.6667, 33.3333, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 88.5246, 91.3876, NULL, 19.4313, 18.5629, 77.9904, 75.8294);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (43, 'Russia', 33.3333, 100.0000, 0.0000, 0.0000, 33.3333, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 66.6667, 33.3333, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, NULL, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, 33.3333, 0.0000, NULL, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 100.0000, NULL, NULL, 0.0000, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 33.3333, 100.0000, NULL, 100.0000, 100.0000, 100.0000, 0.0000, 33.3333, 100.0000, NULL, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, 66.6667, 0.0000, 33.3333, 33.3333, 0.0000, 66.6667, 100.0000, 0.0000, 66.6667, 33.3333, 0.0000, 0.0000, 33.3333, 33.3333, 66.6667, 33.3333, 33.3333, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 33.3333, 33.3333, 66.6667, 0.0000, 33.3333, 33.3333, 0.0000, 100.0000, 66.6667, 33.3333, 66.6667, 22.4044, 12.9187, 78.7234, 20.8531, 36.5269, 41.6268, 26.0664);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (44, 'SaudiArabia', 0.0000, 66.6667, 0.0000, NULL, 66.6667, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 33.3333, 33.3333, 0.0000, NULL, NULL, NULL, 0.0000, NULL, 100.0000, 0.0000, 100.0000, 33.3333, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 100.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 33.3333, NULL, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 33.3333, 0.0000, 33.3333, 0.0000, NULL, 0.0000, 33.3333, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 33.3333, NULL, NULL, NULL, 66.6667, 0.0000, 100.0000, 66.6667, 0.0000, 0.0000, 100.0000, 33.3333, 33.3333, 0.0000, 33.3333, 33.3333, NULL, NULL, 0.0000, 0.0000, 0.0000, 66.6667, 0.0000, 100.0000, 0.0000, NULL, 100.0000, 0.0000, 66.6667, 33.3333, 33.3333, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 69.3989, 62.2010, 7.4468, 3.7915, 4.7904, 52.6316, 60.1896);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (45, 'SierraLeone', 33.3333, 100.0000, 66.6667, 100.0000, 66.6667, 100.0000, 0.0000, 66.6667, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 66.6667, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 33.3333, 33.3333, 33.3333, 0.0000, 0.0000, 33.3333, NULL, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 100.0000, 0.0000, NULL, 100.0000, 0.0000, 0.0000, NULL, 100.0000, 66.6667, NULL, NULL, 33.3333, 33.3333, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 0.0000, NULL, NULL, NULL, 100.0000, 33.3333, NULL, NULL, NULL, 100.0000, 66.6667, NULL, NULL, 0.0000, 33.3333, 33.3333, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 33.3333, 0.0000, 0.0000, NULL, 0.0000, 33.3333, 66.6667, 33.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 33.3333, 0.0000, 33.3333, 33.3333, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 66.6667, 66.6667, 100.0000, 66.6667, 33.3333, 66.6667, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 66.6667, 27.3224, 25.3589, NULL, 41.7062, 37.7246, 11.0048, 18.0095);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (46, 'SouthAfrica', 100.0000, 100.0000, 0.0000, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 33.3333, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 100.0000, 0.0000, 66.6667, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, NULL, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 33.3333, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 66.6667, 66.6667, 33.3333, 100.0000, 33.3333, NULL, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 65.5738, 60.7656, 100.0000, 65.4028, 82.6347, 65.0718, 57.8199);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (47, 'SouthSudan', 33.3333, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, NULL, 100.0000, 100.0000, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 66.6667, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 66.6667, 0.0000, 66.6667, 66.6667, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 100.0000, 0.0000, NULL, NULL, 100.0000, 66.6667, 0.0000, 33.3333, 33.3333, 0.0000, 66.6667, 66.6667, 0.0000, NULL, NULL, 0.0000, 0.0000, 33.3333, 33.3333, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, 33.3333, 33.3333, NULL, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33.3333, 33.3333, 0.0000, 3.8251, 4.3062, 13.8298, 4.2654, 10.1796, 6.6986, 6.1611);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (48, 'Tanzania', 0.0000, 66.6667, 66.6667, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 66.6667, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 33.3333, 66.6667, 0.0000, 66.6667, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 100.0000, NULL, 100.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 100.0000, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, 33.3333, 33.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 33.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 33.3333, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 100.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 66.6667, 33.3333, 0.0000, 66.6667, 100.0000, 100.0000, 66.6667, 100.0000, 66.6667, 33.3333, 66.6667, 33.3333, 100.0000, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45.9016, 37.3206, 47.8723, 46.4455, 45.5090, 37.7990, 36.4929);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (49, 'Timor-Leste', 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, NULL, 100.0000, 100.0000, NULL, 100.0000, NULL, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 66.6667, 100.0000, NULL, 100.0000, 100.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 66.6667, NULL, 66.6667, 66.6667, 100.0000, NULL, NULL, NULL, 100.0000, NULL, 0.0000, 0.0000, 100.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, 100.0000, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 66.6667, 0.0000, NULL, 0.0000, NULL, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, 100.0000, 66.6667, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, NULL, NULL, NULL, 100.0000, 0.0000, 100.0000, 33.3333, 0.0000, 100.0000, 66.6667, 100.0000, 0.0000, 0.0000, 66.6667, 100.0000, 66.6667, 33.3333, 66.6667, 33.3333, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, 0.0000, NULL, NULL, NULL, 22.4044, 18.1818, 35.1064, 49.2891, 75.4491, 10.0478, 10.4265);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (50, 'TrinidadandTobago', 33.3333, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 100.0000, 33.3333, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, NULL, 100.0000, 66.6667, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 66.6667, 100.0000, 100.0000, 66.6667, 66.6667, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, NULL, 66.6667, 66.6667, NULL, NULL, NULL, NULL, 100.0000, NULL, 100.0000, 100.0000, 100.0000, NULL, 0.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, NULL, NULL, 66.6667, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, NULL, 100.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, 100.0000, 0.0000, 100.0000, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, NULL, NULL, NULL, 100.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 100.0000, 0.0000, 100.0000, 100.0000, NULL, NULL, NULL, 33.3333, 66.6667, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 66.6667, 100.0000, 33.3333, 33.3333, NULL, NULL, NULL, NULL, 100.0000, 33.3333, 33.3333, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, 50.8197, 46.4115, 31.9149, 64.9289, 73.6527, 63.6364, 47.8673);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (51, 'Turkmenistan', 0.0000, 33.3333, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, 0.0000, 33.3333, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 33.3333, 0.0000, NULL, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.8251, 1.9139, NULL, 1.4218, 1.7964, 3.3493, 4.2654);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (52, 'UnitedKingdom', 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, 100.0000, 33.3333, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 33.3333, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33.3333, NULL, NULL, 0.0000, 100.0000, NULL, 0.0000, 100.0000, 100.0000, NULL, 33.3333, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 66.6667, 66.6667, 100.0000, 66.6667, 100.0000, 100.0000, NULL, NULL, 100.0000, 33.3333, 100.0000, 33.3333, 100.0000, 33.3333, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 91.8033, 89.9522, 97.8723, 91.9431, 89.2216, 92.3445, 94.7867);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (53, 'UnitedStates(GulfofMexico)', 100.0000, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 66.6667, NULL, 100.0000, 100.0000, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, NULL, NULL, 100.0000, 33.3333, 0.0000, 0.0000, NULL, NULL, 100.0000, 100.0000, NULL, NULL, 100.0000, NULL, 33.3333, 0.0000, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, NULL, NULL, NULL, 100.0000, 0.0000, 100.0000, 33.3333, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, 100.0000, NULL, 100.0000, NULL, 33.3333, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 33.3333, NULL, NULL, 100.0000, 100.0000, 100.0000, 33.3333, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 33.3333, 100.0000, 87.4317, 85.6459, 93.6170, 87.2038, 90.4192, 89.9522, 91.4692);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (54, 'Venezuela', 33.3333, 100.0000, 0.0000, 0.0000, 33.3333, 100.0000, 0.0000, 66.6667, 33.3333, 66.6667, 33.3333, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 66.6667, 66.6667, 33.3333, 33.3333, 0.0000, 66.6667, 0.0000, 100.0000, 100.0000, 66.6667, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 100.0000, 33.3333, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 66.6667, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, 100.0000, 100.0000, 33.3333, NULL, 100.0000, 100.0000, 0.0000, NULL, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, NULL, 33.3333, 0.0000, 33.3333, 33.3333, 33.3333, 100.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, NULL, NULL, 0.0000, 33.3333, 0.0000, NULL, NULL, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, NULL, 100.0000, 100.0000, 100.0000, 66.6667, NULL, 100.0000, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 33.3333, 100.0000, 100.0000, 0.0000, 66.6667, 66.6667, 0.0000, 66.6667, 100.0000, 0.0000, 66.6667, 100.0000, 66.6667, 33.3333, 66.6667, 33.3333, NULL, NULL, NULL, NULL, 100.0000, 66.6667, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 33.3333, 33.3333, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 66.6667, 33.3333, 66.6667, 6.5574, 7.1770, 34.0426, 22.2749, 43.1138, 14.8325, 1.4218);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (55, 'Vietnam', 33.3333, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 66.6667, 66.6667, NULL, 100.0000, 100.0000, NULL, NULL, NULL, 66.6667, 66.6667, 0.0000, 33.3333, NULL, NULL, NULL, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 66.6667, 0.0000, NULL, 33.3333, 0.0000, 33.3333, 0.0000, 100.0000, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 66.6667, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, 66.6667, 66.6667, 0.0000, 66.6667, 66.6667, 100.0000, NULL, NULL, 66.6667, 100.0000, 33.3333, 33.3333, 66.6667, 33.3333, NULL, NULL, 0.0000, 33.3333, 0.0000, 66.6667, 0.0000, 100.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39.3443, 33.0144, 19.1489, 8.5308, 16.7665, 44.0191, 38.8626);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (56, 'Yemen', 0.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, NULL, 100.0000, 0.0000, NULL, NULL, 0.0000, 100.0000, 66.6667, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 33.3333, 66.6667, 0.0000, 100.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, 33.3333, 33.3333, 100.0000, 66.6667, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 33.3333, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 33.3333, 100.0000, 33.3333, 33.3333, 0.0000, 66.6667, 0.0000, 100.0000, 0.0000, 33.3333, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 33.3333, 0.0000, 33.3333, NULL, 0.0000, 100.0000, 0.0000, 0.0000, NULL, 0.0000, 33.3333, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 33.3333, 100.0000, 33.3333, 0.0000, 0.0000, 100.0000, 0.0000, 33.3333, 66.6667, 66.6667, 100.0000, 33.3333, 33.3333, 33.3333, 33.3333, 0.0000, 0.0000, 33.3333, 33.3333, 100.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 33.3333, 0.0000, 33.3333, 100.0000, 100.0000, 66.6667, 33.3333, 0.0000, 66.6667, 33.3333, 66.6667, 33.3333, 66.6667, 100.0000, 66.6667, NULL, 33.3333, NULL, 100.0000, 66.6667, 33.3333, 66.6667, 33.3333, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33.3333, 33.3333, 0.0000, 10.9290, 11.0048, 25.5319, 11.8483, 13.1737, 14.3541, 14.2180);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (57, 'Zambia', 0.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, NULL, 0.0000, 100.0000, NULL, NULL, NULL, 66.6667, 33.3333, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 66.6667, NULL, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 66.6667, 0.0000, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 66.6667, NULL, 66.6667, 66.6667, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 66.6667, 0.0000, 66.6667, 100.0000, 66.6667, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 66.6667, NULL, 0.0000, 33.3333, 100.0000, 66.6667, NULL, 66.6667, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, 100.0000, 33.3333, 100.0000, 66.6667, 66.6667, 66.6667, 66.6667, 100.0000, 0.0000, 0.0000, 66.6667, 33.3333, 100.0000, 33.3333, NULL, NULL, 100.0000, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50.8197, 33.4928, 37.2340, 38.8626, 46.1078, 23.4450, 38.3886);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (58, 'Zimbabwe', 66.6667, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 33.3333, 0.0000, NULL, 100.0000, 0.0000, NULL, NULL, NULL, 66.6667, 33.3333, 0.0000, 33.3333, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 66.6667, 66.6667, NULL, NULL, 0.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, 66.6667, 0.0000, NULL, NULL, 0.0000, 0.0000, 33.3333, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 66.6667, 66.6667, 66.6667, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 33.3333, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 66.6667, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 66.6667, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 33.3333, 0.0000, 0.0000, NULL, 0.0000, 33.3333, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 33.3333, 33.3333, 0.0000, 66.6667, 33.3333, 100.0000, 66.6667, 0.0000, 0.0000, 0.0000, 100.0000, 66.6667, NULL, NULL, 33.3333, 66.6667, 100.0000, 0.0000, 0.0000, 33.3333, 0.0000, NULL, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16.3934, 2.3923, NULL, 7.5829, 13.1737, 3.8278, 0.9479);


--
-- TOC entry 2024 (class 0 OID 16993)
-- Dependencies: 179
-- Data for Name: rgi_raw_data_web_column_a_to_h; Type: TABLE DATA; Schema: ahasemann; Owner: ahasemann
--

INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (1, 'INLSq1', 'INLSq1', 'Institutional & Legal Setting', 'Freedom of information law', 'Adoption of freedom of information law', 1, 'NA', '1.2.010');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (2, 'INLSq2', 'INLSq2', 'Institutional & Legal Setting', 'Comprehensive sector legislation', 'Publication of mineral law', 2, 'NA', '1.2.009');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (3, 'INLSq3', 'INLSq3', 'Institutional & Legal Setting', 'EITI participation', 'EITI compliant or candidate country', 3, 'NA', '2.3.032');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (4, 'INLSc4_a', 'INLSc4', 'Institutional & Legal Setting', 'Independent licensing process', 'Licensing authority independent from SOC', 4, 'NA', '1.3.011');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (5, 'INLSc4_b', 'INLSc4', 'Institutional & Legal Setting', 'Independent licensing process', 'Open and competitive licensing process', 4, 'NA', '1.3.012');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (6, 'INLSc5_a', 'INLSc5', 'Institutional & Legal Setting', 'Environmental and social impact assessments required', 'Requirement of environmental impact assessment', 5, 'NA', '1.2.008.a');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (7, 'INLSc5_b', 'INLSc5', 'Institutional & Legal Setting', 'Environmental and social impact assessments required', 'Requirement of social impact assessments', 5, 'NA', '1.2.008.c');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (8, 'INLSc6_a', 'INLSc6', 'Institutional & Legal Setting', 'Clarity in revenue collection', 'Clear authority to collect payments', 6, 'NA', '2.3.026');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (9, 'INLSc6_b', 'INLSc6', 'Institutional & Legal Setting', 'Clarity in revenue collection', 'Clear transfer of payments into treasury', 6, 'NA', '2.3.027');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (10, 'INLSc7_a', 'INLSc7', 'Institutional & Legal Setting', 'Comprehensive public sector balance', 'Includes SOC balance', 7, 'NA', '2.2.023');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (11, 'INLSc7_b', 'INLSc7', 'Institutional & Legal Setting', 'Comprehensive public sector balance', 'Includes special fund balance', 7, 'NA', '2.2.024');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (12, 'INLSc7_c', 'INLSc7', 'Institutional & Legal Setting', 'Comprehensive public sector balance', 'Includes non-resource fiscal balance', 7, 'NA', '2.2.025');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (13, 'INLSq8', 'INLSq8', 'Institutional & Legal Setting', 'SOC financial reports required', 'Legal obligation to publish financial reports (SOC)', 8, 'NA', '3.1.3.044');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (14, 'INLSc9_a', 'INLSc9', 'Institutional & Legal Setting', 'Fund rules defined in law', 'Clear rules for deposits (NRF)', 9, 'NA', '3.2.3.057');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (15, 'INLSc9_b', 'INLSc9', 'Institutional & Legal Setting', 'Fund rules defined in law', 'Clear rules for disbursements (NRF)', 9, 'NA', '3.2.3.059');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (16, 'INLSq10', 'INLSq10', 'Institutional & Legal Setting', 'Subnational transfer rules defined in law', 'Clear rules for revenue sharing (SNT)', 10, 'NA', '3.3.3.070');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (17, 'RPRc1_a', 'RPRc1', 'Reporting Practices', 'Licensing process', 'Information before licensing', 11, 'NA', '1.2.006.a');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (18, 'RPRc1_b', 'RPRc1', 'Reporting Practices', 'Licensing process', 'Information after licensing', 11, 'NA', '1.2.006.b');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (19, 'RPRq2', 'RPRq2', 'Reporting Practices', 'Contracts', 'Publication of contracts', 12, 'NA', '1.2.007');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (20, 'RPRc3_a', 'RPRc3', 'Reporting Practices', 'Environmental and social impact assessments', 'Publication of environmental impact assessments', 13, 'NA', '1.2.008.b');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (21, 'RPRc3_b', 'RPRc3', 'Reporting Practices', 'Environmental and social impact assessments', 'Publication of social impact assessments', 13, 'NA', '1.2.008.d');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (22, 'RPRc4_cb_a', 'RPRc4_cb', 'Reporting Practices', 'Exploration data ', 'Reserves (Central Bank)', 14, 'Central Bank', '2.2D.020.a');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (23, 'RPRc4_cb_b', 'RPRc4_cb', 'Reporting Practices', 'Exploration data ', 'Investment in exploration (Central Bank)', 14, 'Central Bank', '2.2D.020.e');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (24, 'RPRc4_mes_a', 'RPRc4_mes', 'Reporting Practices', 'Exploration data ', 'Reserves (Ministry of Extractive Sector)', 14, 'Ministry of Extractive Sector', '2.2B.020.a');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (25, 'RPRc4_mes_b', 'RPRc4_mes', 'Reporting Practices', 'Exploration data ', 'Investment in exploration (Ministry of Extractive Sector)', 14, 'Ministry of Extractive Sector', '2.2B.020.e');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (26, 'RPRc4_mof_a', 'RPRc4_mof', 'Reporting Practices', 'Exploration data ', 'Reserves (Ministry of Finance)', 14, 'Ministry of Finance', '2.2A.020.a');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (27, 'RPRc4_mof_b', 'RPRc4_mof', 'Reporting Practices', 'Exploration data ', 'Investment in exploration (Ministry of Finance)', 14, 'Ministry of Finance', '2.2A.020.e');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (28, 'RPRc4_oa_a', 'RPRc4_oa', 'Reporting Practices', 'Exploration data ', 'Reserves (Other Agencies)', 14, 'Other Agencies', '2.2E.020.a');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (29, 'RPRc4_oa_b', 'RPRc4_oa', 'Reporting Practices', 'Exploration data ', 'Investment in exploration (Other Agencies)', 14, 'Other Agencies', '2.2E.020.e');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (30, 'RPRc4_ra_a', 'RPRc4_ra', 'Reporting Practices', 'Exploration data ', 'Reserves (Regulatory Agency)', 14, 'Regulatory Agency', '2.2C.020.a');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (31, 'RPRc4_ra_b', 'RPRc4_ra', 'Reporting Practices', 'Exploration data ', 'Investment in exploration (Regulatory Agency)', 14, 'Regulatory Agency', '2.2C.020.e');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (32, 'RPRc5_cb_a', 'RPRc5_cb', 'Reporting Practices', 'Production volumes ', 'Production volumes (Central Bank)', 15, 'Central Bank', '2.2D.020.b');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (33, 'RPRc5_cb_b', 'RPRc5_cb', 'Reporting Practices', 'Production volumes ', 'Production data by company and/or block (Central Bank)', 15, 'Central Bank', '2.2D.020.h');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (34, 'RPRc5_mes_a', 'RPRc5_mes', 'Reporting Practices', 'Production volumes ', 'Production volumes (Ministry of Extractive Sector)', 15, 'Ministry of Extractive Sector', '2.2B.020.b');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (35, 'RPRc5_mes_b', 'RPRc5_mes', 'Reporting Practices', 'Production volumes ', 'Production data by company and/or block (Ministry of Extractive Sector)', 15, 'Ministry of Extractive Sector', '2.2B.020.h');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (36, 'RPRc5_mof_a', 'RPRc5_mof', 'Reporting Practices', 'Production volumes ', 'Production volumes (Ministry of Finance)', 15, 'Ministry of Finance', '2.2A.020.b');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (37, 'RPRc5_mof_b', 'RPRc5_mof', 'Reporting Practices', 'Production volumes ', 'Production data by company and/or block (Ministry of Finance)', 15, 'Ministry of Finance', '2.2A.020.h');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (38, 'RPRc5_oa_a', 'RPRc5_oa', 'Reporting Practices', 'Production volumes ', 'Production volumes (Other Agencies)', 15, 'Other Agencies', '2.2E.020.b');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (39, 'RPRc5_oa_b', 'RPRc5_oa', 'Reporting Practices', 'Production volumes ', 'Production data by company and/or block (Other Agencies)', 15, 'Other Agencies', '2.2E.020.h');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (40, 'RPRc5_ra_a', 'RPRc5_ra', 'Reporting Practices', 'Production volumes ', 'Production volumes (Regulatory Agency)', 15, 'Regulatory Agency', '2.2C.020.b');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (41, 'RPRc5_ra_b', 'RPRc5_ra', 'Reporting Practices', 'Production volumes ', 'Production data by company and/or block (Regulatory Agency)', 15, 'Regulatory Agency', '2.2C.020.h');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (42, 'RPRc6_cb_a', 'RPRc6_cb', 'Reporting Practices', 'Production value ', 'Prices (Central Bank)', 16, 'Central Bank', '2.2D.020.c');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (43, 'RPRc6_cb_b', 'RPRc6_cb', 'Reporting Practices', 'Production value ', 'Value of resource exports (Central Bank)', 16, 'Central Bank', '2.2D.020.d');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (44, 'RPRc6_cb_c', 'RPRc6_cb', 'Reporting Practices', 'Production value ', 'Production costs (Central Bank)', 16, 'Central Bank', '2.2D.020.f');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (45, 'RPRc6_mes_a', 'RPRc6_mes', 'Reporting Practices', 'Production value ', 'Prices (Ministry of Extractive Sector)', 16, 'Ministry of Extractive Sector', '2.2B.020.c');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (46, 'RPRc6_mes_b', 'RPRc6_mes', 'Reporting Practices', 'Production value ', 'Value of resource exports (Ministry of Extractive Sector)', 16, 'Ministry of Extractive Sector', '2.2B.020.d');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (47, 'RPRc6_mes_c', 'RPRc6_mes', 'Reporting Practices', 'Production value ', 'Production costs (Ministry of Extractive Sector)', 16, 'Ministry of Extractive Sector', '2.2B.020.f');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (48, 'RPRc6_mof_a', 'RPRc6_mof', 'Reporting Practices', 'Production value ', 'Prices (Ministry of Finance)', 16, 'Ministry of Finance', '2.2A.020.c');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (49, 'RPRc6_mof_b', 'RPRc6_mof', 'Reporting Practices', 'Production value ', 'Value of resource exports (Ministry of Finance)', 16, 'Ministry of Finance', '2.2A.020.d');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (50, 'RPRc6_mof_c', 'RPRc6_mof', 'Reporting Practices', 'Production value ', 'Production costs (Ministry of Finance)', 16, 'Ministry of Finance', '2.2A.020.f');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (51, 'RPRc6_oa_a', 'RPRc6_oa', 'Reporting Practices', 'Production value ', 'Prices (Other Agencies)', 16, 'Other Agencies', '2.2E.020.c');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (52, 'RPRc6_oa_b', 'RPRc6_oa', 'Reporting Practices', 'Production value ', 'Value of resource exports (Other Agencies)', 16, 'Other Agencies', '2.2E.020.d');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (53, 'RPRc6_oa_c', 'RPRc6_oa', 'Reporting Practices', 'Production value ', 'Production costs (Other Agencies)', 16, 'Other Agencies', '2.2E.020.f');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (54, 'RPRc6_ra_a', 'RPRc6_ra', 'Reporting Practices', 'Production value ', 'Prices (Regulatory Agency)', 16, 'Regulatory Agency', '2.2C.020.c');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (55, 'RPRc6_ra_b', 'RPRc6_ra', 'Reporting Practices', 'Production value ', 'Value of resource exports (Regulatory Agency)', 16, 'Regulatory Agency', '2.2C.020.d');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (56, 'RPRc6_ra_c', 'RPRc6_ra', 'Reporting Practices', 'Production value ', 'Production costs (Regulatory Agency)', 16, 'Regulatory Agency', '2.2C.020.f');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (57, 'RPRc7_cb_a', 'RPRc7_cb', 'Reporting Practices', 'Primary sources of revenue ', 'Value of production streams (Central Bank)', 17, 'Central Bank', '2.2D.020.j1');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (58, 'RPRc7_cb_b', 'RPRc7_cb', 'Reporting Practices', 'Primary sources of revenue ', 'Government''s share in PSCs (Central Bank)', 17, 'Central Bank', '2.2D.020.j2');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (59, 'RPRc7_cb_c', 'RPRc7_cb', 'Reporting Practices', 'Primary sources of revenue ', 'Royalties (Central Bank)', 17, 'Central Bank', '2.2D.020.j3');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (60, 'RPRc7_cb_d', 'RPRc7_cb', 'Reporting Practices', 'Primary sources of revenue ', 'Special taxes (Central Bank)', 17, 'Central Bank', '2.2D.020.j4');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (61, 'RPRc7_mes_a', 'RPRc7_mes', 'Reporting Practices', 'Primary sources of revenue ', 'Value of production streams (Ministry of Extractive Sector)', 17, 'Ministry of Extractive Sector', '2.2B.020.j1');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (62, 'RPRc7_mes_b', 'RPRc7_mes', 'Reporting Practices', 'Primary sources of revenue ', 'Government''s share in PSCs (Ministry of Extractive Sector)', 17, 'Ministry of Extractive Sector', '2.2B.020.j2');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (63, 'RPRc7_mes_c', 'RPRc7_mes', 'Reporting Practices', 'Primary sources of revenue ', 'Royalties (Ministry of Extractive Sector)', 17, 'Ministry of Extractive Sector', '2.2B.020.j3');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (64, 'RPRc7_mes_d', 'RPRc7_mes', 'Reporting Practices', 'Primary sources of revenue ', 'Special taxes (Ministry of Extractive Sector)', 17, 'Ministry of Extractive Sector', '2.2B.020.j4');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (65, 'RPRc7_mof_a', 'RPRc7_mof', 'Reporting Practices', 'Primary sources of revenue ', 'Value of production streams (Ministry of Finance)', 17, 'Ministry of Finance', '2.2A.020.j1');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (66, 'RPRc7_mof_b', 'RPRc7_mof', 'Reporting Practices', 'Primary sources of revenue ', 'Government''s share in PSCs (Ministry of Finance)', 17, 'Ministry of Finance', '2.2A.020.j2');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (67, 'RPRc7_mof_c', 'RPRc7_mof', 'Reporting Practices', 'Primary sources of revenue ', 'Royalties (Ministry of Finance)', 17, 'Ministry of Finance', '2.2A.020.j3');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (68, 'RPRc7_mof_d', 'RPRc7_mof', 'Reporting Practices', 'Primary sources of revenue ', 'Special taxes (Ministry of Finance)', 17, 'Ministry of Finance', '2.2A.020.j4');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (69, 'RPRc7_oa_a', 'RPRc7_oa', 'Reporting Practices', 'Primary sources of revenue ', 'Value of production streams (Other Agencies)', 17, 'Other Agencies', '2.2E.020.j1');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (70, 'RPRc7_oa_b', 'RPRc7_oa', 'Reporting Practices', 'Primary sources of revenue ', 'Government''s share in PSCs (Other Agencies)', 17, 'Other Agencies', '2.2E.020.j2');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (71, 'RPRc7_oa_c', 'RPRc7_oa', 'Reporting Practices', 'Primary sources of revenue ', 'Royalties (Other Agencies)', 17, 'Other Agencies', '2.2E.020.j3');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (72, 'RPRc7_oa_d', 'RPRc7_oa', 'Reporting Practices', 'Primary sources of revenue ', 'Special taxes (Other Agencies)', 17, 'Other Agencies', '2.2E.020.j4');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (73, 'RPRc7_ra_a', 'RPRc7_ra', 'Reporting Practices', 'Primary sources of revenue ', 'Value of production streams (Regulatory Agency)', 17, 'Regulatory Agency', '2.2C.020.j1');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (74, 'RPRc7_ra_b', 'RPRc7_ra', 'Reporting Practices', 'Primary sources of revenue ', 'Government''s share in PSCs (Regulatory Agency)', 17, 'Regulatory Agency', '2.2C.020.j2');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (75, 'RPRc7_ra_c', 'RPRc7_ra', 'Reporting Practices', 'Primary sources of revenue ', 'Royalties (Regulatory Agency)', 17, 'Regulatory Agency', '2.2C.020.j3');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (76, 'RPRc7_ra_d', 'RPRc7_ra', 'Reporting Practices', 'Primary sources of revenue ', 'Special taxes (Regulatory Agency)', 17, 'Regulatory Agency', '2.2C.020.j4');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (77, 'RPRc8_cb_a', 'RPRc8_cb', 'Reporting Practices', 'Secondary sources of revenue ', 'Dividends (Central Bank)', 18, 'Central Bank', '2.2D.020.j5');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (78, 'RPRc8_cb_b', 'RPRc8_cb', 'Reporting Practices', 'Secondary sources of revenue ', 'Bonuses (Central Bank)', 18, 'Central Bank', '2.2D.020.j6');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (79, 'RPRc8_cb_c', 'RPRc8_cb', 'Reporting Practices', 'Secondary sources of revenue ', 'License fees (Central Bank)', 18, 'Central Bank', '2.2D.020.j7');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (80, 'RPRc8_cb_d', 'RPRc8_cb', 'Reporting Practices', 'Secondary sources of revenue ', 'Acreage fees (Central Bank)', 18, 'Central Bank', '2.2D.020.j8');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (81, 'RPRc8_cb_e', 'RPRc8_cb', 'Reporting Practices', 'Secondary sources of revenue ', 'Other  (Central Bank)', 18, 'Central Bank', '2.2D.020.j9');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (82, 'RPRc8_mes_a', 'RPRc8_mes', 'Reporting Practices', 'Secondary sources of revenue ', 'Dividends (Ministry of Extractive Sector)', 18, 'Ministry of Extractive Sector', '2.2B.020.j5');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (83, 'RPRc8_mes_b', 'RPRc8_mes', 'Reporting Practices', 'Secondary sources of revenue ', 'Bonuses (Ministry of Extractive Sector)', 18, 'Ministry of Extractive Sector', '2.2B.020.j6');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (84, 'RPRc8_mes_c', 'RPRc8_mes', 'Reporting Practices', 'Secondary sources of revenue ', 'License fees (Ministry of Extractive Sector)', 18, 'Ministry of Extractive Sector', '2.2B.020.j7');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (85, 'RPRc8_mes_d', 'RPRc8_mes', 'Reporting Practices', 'Secondary sources of revenue ', 'Acreage fees (Ministry of Extractive Sector)', 18, 'Ministry of Extractive Sector', '2.2B.020.j8');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (86, 'RPRc8_mes_e', 'RPRc8_mes', 'Reporting Practices', 'Secondary sources of revenue ', 'Other (Ministry of Extractive Sector) ', 18, 'Ministry of Extractive Sector', '2.2B.020.j9');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (87, 'RPRc8_mof_a', 'RPRc8_mof', 'Reporting Practices', 'Secondary sources of revenue ', 'Dividends (Ministry of Finance)', 18, 'Ministry of Finance', '2.2A.020.j5');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (88, 'RPRc8_mof_b', 'RPRc8_mof', 'Reporting Practices', 'Secondary sources of revenue ', 'Bonuses (Ministry of Finance)', 18, 'Ministry of Finance', '2.2A.020.j6');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (89, 'RPRc8_mof_c', 'RPRc8_mof', 'Reporting Practices', 'Secondary sources of revenue ', 'License fees (Ministry of Finance)', 18, 'Ministry of Finance', '2.2A.020.j7');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (90, 'RPRc8_mof_d', 'RPRc8_mof', 'Reporting Practices', 'Secondary sources of revenue ', 'Acreage fees (Ministry of Finance)', 18, 'Ministry of Finance', '2.2A.020.j8');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (91, 'RPRc8_mof_e', 'RPRc8_mof', 'Reporting Practices', 'Secondary sources of revenue ', 'Other (Ministry of Finance)', 18, 'Ministry of Finance', '2.2A.020.j9');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (92, 'RPRc8_oa_a', 'RPRc8_oa', 'Reporting Practices', 'Secondary sources of revenue ', 'Dividends (Other Agencies)', 18, 'Other Agencies', '2.2E.020.j5');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (93, 'RPRc8_oa_b', 'RPRc8_oa', 'Reporting Practices', 'Secondary sources of revenue ', 'Bonuses (Other Agencies)', 18, 'Other Agencies', '2.2E.020.j6');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (94, 'RPRc8_oa_c', 'RPRc8_oa', 'Reporting Practices', 'Secondary sources of revenue ', 'License fees (Other Agencies)', 18, 'Other Agencies', '2.2E.020.j7');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (95, 'RPRc8_oa_d', 'RPRc8_oa', 'Reporting Practices', 'Secondary sources of revenue ', 'Acreage fees (Other Agencies)', 18, 'Other Agencies', '2.2E.020.j8');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (96, 'RPRc8_oa_e', 'RPRc8_oa', 'Reporting Practices', 'Secondary sources of revenue ', 'Other (Other Agencies) ', 18, 'Other Agencies', '2.2E.020.j9');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (97, 'RPRc8_ra_a', 'RPRc8_ra', 'Reporting Practices', 'Secondary sources of revenue ', 'Dividends (Regulatory Agency)', 18, 'Regulatory Agency', '2.2C.020.j5');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (98, 'RPRc8_ra_b', 'RPRc8_ra', 'Reporting Practices', 'Secondary sources of revenue ', 'Bonuses (Regulatory Agency)', 18, 'Regulatory Agency', '2.2C.020.j6');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (99, 'RPRc8_ra_c', 'RPRc8_ra', 'Reporting Practices', 'Secondary sources of revenue ', 'License fees (Regulatory Agency)', 18, 'Regulatory Agency', '2.2C.020.j7');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (100, 'RPRc8_ra_d', 'RPRc8_ra', 'Reporting Practices', 'Secondary sources of revenue ', 'Acreage fees (Regulatory Agency)', 18, 'Regulatory Agency', '2.2C.020.j8');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (101, 'RPRc8_ra_e', 'RPRc8_ra', 'Reporting Practices', 'Secondary sources of revenue ', 'Other (Regulatory Agency)', 18, 'Regulatory Agency', '2.2C.020.j9');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (102, 'RPRq9_cb', 'RPRq9_cb', 'Reporting Practices', 'Subsidies ', 'Cost of subsidies or social investments paid by mineral revenue', 19, 'Central Bank', '2.2D.020.i');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (103, 'RPRq9_mes', 'RPRq9_mes', 'Reporting Practices', 'Subsidies ', 'Cost of subsidies or social investments paid by mineral revenue', 19, 'Ministry of Extractive Sector', '2.2B.020.i');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (104, 'RPRq9_mof', 'RPRq9_mof', 'Reporting Practices', 'Subsidies ', 'Cost of subsidies or social investments paid by mineral revenue', 19, 'Ministry of Finance', '2.2A.020.i');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (105, 'RPRq9_oa', 'RPRq9_oa', 'Reporting Practices', 'Subsidies ', 'Cost of subsidies or social investments paid by mineral revenue', 19, 'Other Agencies', '2.2E.020.i');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (106, 'RPRq9_ra', 'RPRq9_ra', 'Reporting Practices', 'Subsidies ', 'Cost of subsidies or social investments paid by mineral revenue', 19, 'Regulatory Agency', '2.2C.020.i');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (107, 'RPRq10_cb', 'RPRq10_cb', 'Reporting Practices', 'Operating company names ', 'Names of companies operating in country', 20, 'Central Bank', '2.2D.020.g');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (108, 'RPRq10_mes', 'RPRq10_mes', 'Reporting Practices', 'Operating company names ', 'Names of companies operating in country', 20, 'Ministry of Extractive Sector', '2.2B.020.g');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (109, 'RPRq10_mof', 'RPRq10_mof', 'Reporting Practices', 'Operating company names ', 'Names of companies operating in country', 20, 'Ministry of Finance', '2.2A.020.g');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (110, 'RPRq10_oa', 'RPRq10_oa', 'Reporting Practices', 'Operating company names ', 'Names of companies operating in country', 20, 'Other Agencies', '2.2E.020.g');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (111, 'RPRq10_ra', 'RPRq10_ra', 'Reporting Practices', 'Operating company names ', 'Names of companies operating in country', 20, 'Regulatory Agency', '2.2C.020.g');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (112, 'RPRc11_a', 'RPRc11', 'Reporting Practices', 'Comprehensive SOC reports', 'Include cash flow statements (SOC)', 21, 'NA', '3.1.2.037');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (113, 'RPRc11_b', 'RPRc11', 'Reporting Practices', 'Comprehensive SOC reports', 'Disclosure of joint ventures (SOC)', 21, 'NA', '3.1.2.042');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (114, 'RPRc12_a', 'RPRc12', 'Reporting Practices', 'SOC production data', 'Reserves (SOC)', 22, 'NA', '3.1.2.038.a');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (115, 'RPRc12_b', 'RPRc12', 'Reporting Practices', 'SOC production data', 'Production volumes (SOC)', 22, 'NA', '3.1.2.038.b');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (116, 'RPRc12_c', 'RPRc12', 'Reporting Practices', 'SOC production data', 'Prices (SOC)', 22, 'NA', '3.1.2.038.c');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (117, 'RPRc12_d', 'RPRc12', 'Reporting Practices', 'SOC production data', 'Value of resource exports (SOC)', 22, 'NA', '3.1.2.038.d');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (118, 'RPRc12_e', 'RPRc12', 'Reporting Practices', 'SOC production data', 'Investment in exploration (SOC)', 22, 'NA', '3.1.2.038.e');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (119, 'RPRc12_f', 'RPRc12', 'Reporting Practices', 'SOC production data', 'Production costs (SOC)', 22, 'NA', '3.1.2.038.f');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (120, 'RPRc12_g', 'RPRc12', 'Reporting Practices', 'SOC production data', 'Production data by company and/or block (SOC)', 22, 'NA', '3.1.2.038.h');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (121, 'RPRc13_a', 'RPRc13', 'Reporting Practices', 'SOC revenue data', 'Value of production streams (SOC)', 23, 'NA', '3.1.2.038.j1');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (122, 'RPRc13_b', 'RPRc13', 'Reporting Practices', 'SOC revenue data', 'Government''s share in PSCs (SOC)', 23, 'NA', '3.1.2.038.j2');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (123, 'RPRc13_c', 'RPRc13', 'Reporting Practices', 'SOC revenue data', 'Royalties (SOC)', 23, 'NA', '3.1.2.038.j3');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (124, 'RPRc13_d', 'RPRc13', 'Reporting Practices', 'SOC revenue data', 'Special taxes (SOC)', 23, 'NA', '3.1.2.038.j4');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (125, 'RPRc13_e', 'RPRc13', 'Reporting Practices', 'SOC revenue data', 'Dividends (SOC)', 23, 'NA', '3.1.2.038.j5');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (126, 'RPRc13_f', 'RPRc13', 'Reporting Practices', 'SOC revenue data', 'Bonuses (SOC)', 23, 'NA', '3.1.2.038.j6');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (127, 'RPRc13_g', 'RPRc13', 'Reporting Practices', 'SOC revenue data', 'License fees (SOC)', 23, 'NA', '3.1.2.038.j7');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (128, 'RPRc13_h', 'RPRc13', 'Reporting Practices', 'SOC revenue data', 'Acreage fees (SOC)', 23, 'NA', '3.1.2.038.j8');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (129, 'RPRc13_i', 'RPRc13', 'Reporting Practices', 'SOC revenue data', 'Other  (SOC)', 23, 'NA', '3.1.2.038.j9');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (130, 'RPRc14_a', 'RPRc14', 'Reporting Practices', 'SOC quasi fiscal activities', 'Timely data (SOC)', 24, 'NA', '3.1.2.038.i');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (131, 'RPRc14_b', 'RPRc14', 'Reporting Practices', 'SOC quasi fiscal activities', 'Disclosure of comprehensive and quantitative data (SOC)', 24, 'NA', '3.1.2.041');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (132, 'RPRc15_a', 'RPRc15', 'Reporting Practices', 'SOC board of directors', 'Board of directors - composition (SOC)', 25, 'NA', '3.1.3.048');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (133, 'RPRc15_b', 'RPRc15', 'Reporting Practices', 'SOC board of directors', 'Board of directors - decision making rules (SOC)', 25, 'NA', '3.1.3.049');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (134, 'RPRq16', 'RPRq16', 'Reporting Practices', 'Fund rules', 'Publication of rules governing fund (NRF)', 26, 'NA', '3.2.2.052');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (135, 'RPRq17', 'RPRq17', 'Reporting Practices', 'Comprehensive fund reports', 'Publication of assets, investments and transactions (NRF)', 27, 'NA', '3.2.2.053');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (136, 'RPRq18', 'RPRq18', 'Reporting Practices', 'Subnational transfer rules', 'Publication of rules governing subnational transfers (SNT)', 28, 'NA', '3.3.2.065');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (137, 'RPRq19', 'RPRq19', 'Reporting Practices', 'Comprehensive subnational transfer reports', 'Publication of subnational transfers breakdown (SNT)', 29, 'NA', '3.3.2.066');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (138, 'RPRq20', 'RPRq20', 'Reporting Practices', 'Subnational reporting of transfers', 'Subnational governments publish transfers (SNT)', 30, 'NA', '3.3.2.069');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (139, 'SFQCc1_a', 'SFQCc1', 'Safeguard & Quality Control', 'Checks on licensing process', 'Limits to licensing discretionary powers', 31, 'NA', '1.3.013');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (140, 'SFQCc1_b', 'SFQCc1', 'Safeguard & Quality Control', 'Checks on licensing process', 'Legislative oversight of licensing process', 31, 'NA', '1.3.014');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (141, 'SFQCc1_c', 'SFQCc1', 'Safeguard & Quality Control', 'Checks on licensing process', 'Appeal process available', 31, 'NA', '1.3.015');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (142, 'SFQCc2_a', 'SFQCc2', 'Safeguard & Quality Control', 'Checks on budgetary process', 'Review of revenue by national audit institution', 32, 'NA', '2.3.029');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (143, 'SFQCc2_b', 'SFQCc2', 'Safeguard & Quality Control', 'Checks on budgetary process', 'Legislature reviews audit reports', 32, 'NA', '2.3.030');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (144, 'SFQCc2_c', 'SFQCc2', 'Safeguard & Quality Control', 'Checks on budgetary process', 'Legislative oversight of resource revenue', 32, 'NA', '2.3.031');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (145, 'SFQCc3_cb_a', 'SFQCc3_cb', 'Safeguard & Quality Control', 'Quality of government reports', 'Understandable reports (Central Bank)', 33, 'Central Bank', '2.2D.021');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (146, 'SFQCc3_cb_b', 'SFQCc3_cb', 'Safeguard & Quality Control', 'Quality of government reports', 'Timely reports (Central Bank)', 33, 'Central Bank', '2.2D.022');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (147, 'SFQCc3_mes_a', 'SFQCc3_mes', 'Safeguard & Quality Control', 'Quality of government reports', 'Understandable reports (Ministry of Extractive Sector)', 33, 'Ministry of Extractive Sector', '2.2B.021');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (148, 'SFQCc3_mes_b', 'SFQCc3_mes', 'Safeguard & Quality Control', 'Quality of government reports', 'Timely reports (Ministry of Extractive Sector)', 33, 'Ministry of Extractive Sector', '2.2B.022');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (149, 'SFQCc3_mof_a', 'SFQCc3_mof', 'Safeguard & Quality Control', 'Quality of government reports', 'Understandable reports (Ministry of Finance)', 33, 'Ministry of Finance', '2.2A.021');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (150, 'SFQCc3_mof_b', 'SFQCc3_mof', 'Safeguard & Quality Control', 'Quality of government reports', 'Timely reports (Ministry of Finance)', 33, 'Ministry of Finance', '2.2A.022');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (151, 'SFQCc3_oa_a', 'SFQCc3_oa', 'Safeguard & Quality Control', 'Quality of government reports', 'Understandable reports (Other Agencies)', 33, 'Other Agencies', '2.2E.021');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (152, 'SFQCc3_oa_b', 'SFQCc3_oa', 'Safeguard & Quality Control', 'Quality of government reports', 'Timely reports (Other Agencies)', 33, 'Other Agencies', '2.2E.022');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (153, 'SFQCc3_ra_a', 'SFQCc3_ra', 'Safeguard & Quality Control', 'Quality of government reports', 'Understandable reports (Regulatory Agency)', 33, 'Regulatory Agency', '2.2C.021');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (154, 'SFQCc3_ra_b', 'SFQCc3_ra', 'Safeguard & Quality Control', 'Quality of government reports', 'Timely reports (Regulatory Agency)', 33, 'Regulatory Agency', '2.2C.022');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (155, 'SFQCq4', 'SFQCq4', 'Safeguard & Quality Control', 'Government disclosure of conflicts of interest', 'Disclosure of conflicts of interest (RG)', 34, 'NA', '2.3.028');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (156, 'SFQCc5_a', 'SFQCc5', 'Safeguard & Quality Control', 'Quality of SOC reports', 'Understandable reports (SOC)', 35, 'NA', '3.1.2.039');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (157, 'SFQCc5_b', 'SFQCc5', 'Safeguard & Quality Control', 'Quality of SOC reports', 'Timely reports (SOC)', 35, 'NA', '3.1.2.040');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (158, 'SFQCc6_a', 'SFQCc6', 'Safeguard & Quality Control', 'SOC reports audited', 'Reports are audited (SOC)', 36, 'NA', '3.1.2.043.a');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (159, 'SFQCc6_b', 'SFQCc6', 'Safeguard & Quality Control', 'SOC reports audited', 'Audited reports are published (SOC)', 36, 'NA', '3.1.2.043.b');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (160, 'SFQCc6_c', 'SFQCc6', 'Safeguard & Quality Control', 'SOC reports audited', 'Audits include subsidiaries (SOC)', 36, 'NA', '3.1.3.046');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (161, 'SFQCq7', 'SFQCq7', 'Safeguard & Quality Control', 'SOC use of international accounting standards', 'Reports follow accounting standards (SOC)', 37, 'NA', '3.1.3.045');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (162, 'SFQCq8', 'SFQCq8', 'Safeguard & Quality Control', 'SOC disclosure of conflicts of interest', 'Disclosure of conflict of interest (SOC)', 38, 'NA', '3.1.3.047');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (163, 'SFQCc9_a', 'SFQCc9', 'Safeguard & Quality Control', 'Quality of fund reports', 'Understandable reports (NRF)', 39, 'NA', '3.2.2.054');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (164, 'SFQCc9_b', 'SFQCc9', 'Safeguard & Quality Control', 'Quality of fund reports', 'Timely reports (NRF)', 39, 'NA', '3.2.2.055');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (165, 'SFQCc10_a', 'SFQCc10', 'Safeguard & Quality Control', 'Fund reports audited', 'Reports are audited (NRF)', 40, 'NA', '3.2.2.056a');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (166, 'SFQCc10_b', 'SFQCc10', 'Safeguard & Quality Control', 'Fund reports audited', 'Audited reports are published (NRF)', 40, 'NA', '3.2.2.056b');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (167, 'SFQCc11_a', 'SFQCc11', 'Safeguard & Quality Control', 'Government follows fund rules', 'Actual practice for deposits (NRF)', 41, 'NA', '3.2.3.058');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (168, 'SFQCc11_b', 'SFQCc11', 'Safeguard & Quality Control', 'Government follows fund rules', 'Actual practice for disbursements (NRF)', 41, 'NA', '3.2.3.060');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (169, 'SFQCq12', 'SFQCq12', 'Safeguard & Quality Control', 'Checks on fund spending', 'Legislative oversight of spending (NRF)', 42, 'NA', '3.2.3.061');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (170, 'SFQCq13', 'SFQCq13', 'Safeguard & Quality Control', 'Fund disclosure of conflicts of interest', 'Disclosure of conflicts of interest (NRF)', 43, 'NA', '3.2.3.062');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (171, 'SFQCc14_a', 'SFQCc14', 'Safeguard & Quality Control', 'Quality of subnational transfer reports', 'Understandable reports (SNT)', 44, 'NA', '3.3.2.067');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (172, 'SFQCc14_b', 'SFQCc14', 'Safeguard & Quality Control', 'Quality of subnational transfer reports', 'Timely reports (SNT)', 44, 'NA', '3.3.2.068');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (173, 'SFQCq15', 'SFQCq15', 'Safeguard & Quality Control', 'Government follows subnational transfer rules', 'Actual practice for revenue sharing (SNT)', 45, 'NA', '3.3.3.071');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (174, 'EEc1_a', 'EEc1', 'Enabling Environment', 'Corruption (TI Corruption Perceptions Index & WGI control of corruption)', 'TI Corruption Perceptions Index', 46, 'NA', 'NA');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (175, 'EEc1_b', 'EEc1', 'Enabling Environment', 'Corruption (TI Corruption Perceptions Index & WGI control of corruption)', 'WGI Control of Corruption', 46, 'NA', 'NA');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (176, 'EEq2', 'EEq2', 'Enabling Environment', 'Open Budget (IBP Index)', 'IBP Open Budget Index', 47, 'NA', 'NA');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (177, 'EEc3_a', 'EEc3', 'Enabling Environment', 'Accountability & democracy (EIU Democracy Index & WGI voice and accountability)', 'WGI Voice & Democratic Accountability', 48, 'NA', 'NA');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (178, 'EEc3_b', 'EEc3', 'Enabling Environment', 'Accountability & democracy (EIU Democracy Index & WGI voice and accountability)', 'EIU Democracy Index', 51, 'NA', 'NA');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (179, 'EEq4', 'EEq4', 'Enabling Environment', 'Government effectiveness (WGI)', 'WGI Government Effectiveness', 49, 'NA', 'NA');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (180, 'EEq5', 'EEq5', 'Enabling Environment', 'Rule of law (WGI)', 'WGI Rule of Law', 50, 'NA', 'NA');


SET search_path = public, pg_catalog;

--
-- TOC entry 2018 (class 0 OID 16836)
-- Dependencies: 172
-- Data for Name: country_codes; Type: TABLE DATA; Schema: public; Owner: ahasemann
--

INSERT INTO country_codes VALUES (1, 'Afghanistan', 'AFG');
INSERT INTO country_codes VALUES (2, 'Albania', 'ALB');
INSERT INTO country_codes VALUES (3, 'Algeria', 'DZA');
INSERT INTO country_codes VALUES (4, 'American Samoa', 'ASM');
INSERT INTO country_codes VALUES (5, 'Andorra', 'AND');
INSERT INTO country_codes VALUES (6, 'Angola', 'AGO');
INSERT INTO country_codes VALUES (7, 'Anguilla', 'AIA');
INSERT INTO country_codes VALUES (8, 'Antarctica', 'ATA');
INSERT INTO country_codes VALUES (9, 'Antigua and Barbuda', 'ATG');
INSERT INTO country_codes VALUES (10, 'Argentina', 'ARG');
INSERT INTO country_codes VALUES (11, 'Armenia', 'ARM');
INSERT INTO country_codes VALUES (12, 'Aruba', 'ABW');
INSERT INTO country_codes VALUES (13, 'Australia', 'AUS');
INSERT INTO country_codes VALUES (14, 'Austria', 'AUT');
INSERT INTO country_codes VALUES (15, 'Azerbaijan', 'AZE');
INSERT INTO country_codes VALUES (16, 'Bahamas', 'BHS');
INSERT INTO country_codes VALUES (17, 'Bahrain', 'BHR');
INSERT INTO country_codes VALUES (18, 'Bangladesh', 'BGD');
INSERT INTO country_codes VALUES (19, 'Barbados', 'BRB');
INSERT INTO country_codes VALUES (20, 'Belarus', 'BLR');
INSERT INTO country_codes VALUES (21, 'Belgium', 'BEL');
INSERT INTO country_codes VALUES (22, 'Belize', 'BLZ');
INSERT INTO country_codes VALUES (23, 'Benin', 'BEN');
INSERT INTO country_codes VALUES (24, 'Bermuda', 'BMU');
INSERT INTO country_codes VALUES (25, 'Bhutan', 'BTN');
INSERT INTO country_codes VALUES (26, 'Bolivia, Plurinational State of', 'BOL');
INSERT INTO country_codes VALUES (27, 'Bonaire, Sint Eustatius and Saba', 'BES');
INSERT INTO country_codes VALUES (28, 'Bosnia and Herzegovina', 'BIH');
INSERT INTO country_codes VALUES (29, 'Botswana', 'BWA');
INSERT INTO country_codes VALUES (30, 'Bouvet Island', 'BVT');
INSERT INTO country_codes VALUES (31, 'Brazil', 'BRA');
INSERT INTO country_codes VALUES (32, 'British Indian Ocean Territory', 'IOT');
INSERT INTO country_codes VALUES (33, 'Brunei Darussalam', 'BRN');
INSERT INTO country_codes VALUES (34, 'Bulgaria', 'BGR');
INSERT INTO country_codes VALUES (35, 'Burkina Faso', 'BFA');
INSERT INTO country_codes VALUES (36, 'Burundi', 'BDI');
INSERT INTO country_codes VALUES (37, 'Cambodia', 'KHM');
INSERT INTO country_codes VALUES (38, 'Cameroon', 'CMR');
INSERT INTO country_codes VALUES (39, 'Canada', 'CAN');
INSERT INTO country_codes VALUES (40, 'Cape Verde', 'CPV');
INSERT INTO country_codes VALUES (41, 'Cayman Islands', 'CYM');
INSERT INTO country_codes VALUES (42, 'Central African Republic', 'CAF');
INSERT INTO country_codes VALUES (43, 'Chad', 'TCD');
INSERT INTO country_codes VALUES (44, 'Chile', 'CHL');
INSERT INTO country_codes VALUES (45, 'China', 'CHN');
INSERT INTO country_codes VALUES (46, 'Christmas Island', 'CXR');
INSERT INTO country_codes VALUES (47, 'Cocos (Keeling) Islands', 'CCK');
INSERT INTO country_codes VALUES (48, 'Colombia', 'COL');
INSERT INTO country_codes VALUES (49, 'Comoros', 'COM');
INSERT INTO country_codes VALUES (50, 'Congo', 'COG');
INSERT INTO country_codes VALUES (51, 'Congo, the Democratic Republic of the', 'COD');
INSERT INTO country_codes VALUES (52, 'Cook Islands', 'COK');
INSERT INTO country_codes VALUES (53, 'Costa Rica', 'CRI');
INSERT INTO country_codes VALUES (54, 'Croatia', 'HRV');
INSERT INTO country_codes VALUES (55, 'Cuba', 'CUB');
INSERT INTO country_codes VALUES (56, 'Curaçao', 'CUW');
INSERT INTO country_codes VALUES (57, 'Cyprus', 'CYP');
INSERT INTO country_codes VALUES (58, 'Czech Republic', 'CZE');
INSERT INTO country_codes VALUES (59, 'Côte d''Ivoire', 'CIV');
INSERT INTO country_codes VALUES (60, 'Denmark', 'DNK');
INSERT INTO country_codes VALUES (61, 'Djibouti', 'DJI');
INSERT INTO country_codes VALUES (62, 'Dominica', 'DMA');
INSERT INTO country_codes VALUES (63, 'Dominican Republic', 'DOM');
INSERT INTO country_codes VALUES (64, 'Ecuador', 'ECU');
INSERT INTO country_codes VALUES (65, 'Egypt', 'EGY');
INSERT INTO country_codes VALUES (66, 'El Salvador', 'SLV');
INSERT INTO country_codes VALUES (67, 'Equatorial Guinea', 'GNQ');
INSERT INTO country_codes VALUES (68, 'Eritrea', 'ERI');
INSERT INTO country_codes VALUES (69, 'Estonia', 'EST');
INSERT INTO country_codes VALUES (70, 'Ethiopia', 'ETH');
INSERT INTO country_codes VALUES (71, 'Falkland Islands (Malvinas)', 'FLK');
INSERT INTO country_codes VALUES (72, 'Faroe Islands', 'FRO');
INSERT INTO country_codes VALUES (73, 'Fiji', 'FJI');
INSERT INTO country_codes VALUES (74, 'Finland', 'FIN');
INSERT INTO country_codes VALUES (75, 'France', 'FRA');
INSERT INTO country_codes VALUES (76, 'French Guiana', 'GUF');
INSERT INTO country_codes VALUES (77, 'French Polynesia', 'PYF');
INSERT INTO country_codes VALUES (78, 'French Southern Territories', 'ATF');
INSERT INTO country_codes VALUES (79, 'Gabon', 'GAB');
INSERT INTO country_codes VALUES (80, 'Gambia', 'GMB');
INSERT INTO country_codes VALUES (81, 'Georgia', 'GEO');
INSERT INTO country_codes VALUES (82, 'Germany', 'DEU');
INSERT INTO country_codes VALUES (83, 'Ghana', 'GHA');
INSERT INTO country_codes VALUES (84, 'Gibraltar', 'GIB');
INSERT INTO country_codes VALUES (85, 'Greece', 'GRC');
INSERT INTO country_codes VALUES (86, 'Greenland', 'GRL');
INSERT INTO country_codes VALUES (87, 'Grenada', 'GRD');
INSERT INTO country_codes VALUES (88, 'Guadeloupe', 'GLP');
INSERT INTO country_codes VALUES (89, 'Guam', 'GUM');
INSERT INTO country_codes VALUES (90, 'Guatemala', 'GTM');
INSERT INTO country_codes VALUES (91, 'Guernsey', 'GGY');
INSERT INTO country_codes VALUES (92, 'Guinea', 'GIN');
INSERT INTO country_codes VALUES (93, 'Guinea-Bissau', 'GNB');
INSERT INTO country_codes VALUES (94, 'Guyana', 'GUY');
INSERT INTO country_codes VALUES (95, 'Haiti', 'HTI');
INSERT INTO country_codes VALUES (96, 'Heard Island and McDonald Mcdonald Islands', 'HMD');
INSERT INTO country_codes VALUES (97, 'Holy See (Vatican City State)', 'VAT');
INSERT INTO country_codes VALUES (98, 'Honduras', 'HND');
INSERT INTO country_codes VALUES (99, 'Hong Kong', 'HKG');
INSERT INTO country_codes VALUES (100, 'Hungary', 'HUN');
INSERT INTO country_codes VALUES (101, 'Iceland', 'ISL');
INSERT INTO country_codes VALUES (102, 'India', 'IND');
INSERT INTO country_codes VALUES (103, 'Indonesia', 'IDN');
INSERT INTO country_codes VALUES (104, 'Iran, Islamic Republic of', 'IRN');
INSERT INTO country_codes VALUES (105, 'Iraq', 'IRQ');
INSERT INTO country_codes VALUES (106, 'Ireland', 'IRL');
INSERT INTO country_codes VALUES (107, 'Isle of Man', 'IMN');
INSERT INTO country_codes VALUES (108, 'Israel', 'ISR');
INSERT INTO country_codes VALUES (109, 'Italy', 'ITA');
INSERT INTO country_codes VALUES (110, 'Jamaica', 'JAM');
INSERT INTO country_codes VALUES (111, 'Japan', 'JPN');
INSERT INTO country_codes VALUES (112, 'Jersey', 'JEY');
INSERT INTO country_codes VALUES (113, 'Jordan', 'JOR');
INSERT INTO country_codes VALUES (114, 'Kazakhstan', 'KAZ');
INSERT INTO country_codes VALUES (115, 'Kenya', 'KEN');
INSERT INTO country_codes VALUES (116, 'Kiribati', 'KIR');
INSERT INTO country_codes VALUES (117, 'Korea, Democratic People''s Republic of', 'PRK');
INSERT INTO country_codes VALUES (118, 'Korea, Republic of', 'KOR');
INSERT INTO country_codes VALUES (119, 'Kuwait', 'KWT');
INSERT INTO country_codes VALUES (120, 'Kyrgyzstan', 'KGZ');
INSERT INTO country_codes VALUES (121, 'Lao People''s Democratic Republic', 'LAO');
INSERT INTO country_codes VALUES (122, 'Latvia', 'LVA');
INSERT INTO country_codes VALUES (123, 'Lebanon', 'LBN');
INSERT INTO country_codes VALUES (124, 'Lesotho', 'LSO');
INSERT INTO country_codes VALUES (125, 'Liberia', 'LBR');
INSERT INTO country_codes VALUES (126, 'Libya', 'LBY');
INSERT INTO country_codes VALUES (127, 'Liechtenstein', 'LIE');
INSERT INTO country_codes VALUES (128, 'Lithuania', 'LTU');
INSERT INTO country_codes VALUES (129, 'Luxembourg', 'LUX');
INSERT INTO country_codes VALUES (130, 'Macao', 'MAC');
INSERT INTO country_codes VALUES (131, 'Macedonia, the Former Yugoslav Republic of', 'MKD');
INSERT INTO country_codes VALUES (132, 'Madagascar', 'MDG');
INSERT INTO country_codes VALUES (133, 'Malawi', 'MWI');
INSERT INTO country_codes VALUES (134, 'Malaysia', 'MYS');
INSERT INTO country_codes VALUES (135, 'Maldives', 'MDV');
INSERT INTO country_codes VALUES (136, 'Mali', 'MLI');
INSERT INTO country_codes VALUES (137, 'Malta', 'MLT');
INSERT INTO country_codes VALUES (138, 'Marshall Islands', 'MHL');
INSERT INTO country_codes VALUES (139, 'Martinique', 'MTQ');
INSERT INTO country_codes VALUES (140, 'Mauritania', 'MRT');
INSERT INTO country_codes VALUES (141, 'Mauritius', 'MUS');
INSERT INTO country_codes VALUES (142, 'Mayotte', 'MYT');
INSERT INTO country_codes VALUES (143, 'Mexico', 'MEX');
INSERT INTO country_codes VALUES (144, 'Micronesia, Federated States of', 'FSM');
INSERT INTO country_codes VALUES (145, 'Moldova, Republic of', 'MDA');
INSERT INTO country_codes VALUES (146, 'Monaco', 'MCO');
INSERT INTO country_codes VALUES (147, 'Mongolia', 'MNG');
INSERT INTO country_codes VALUES (148, 'Montenegro', 'MNE');
INSERT INTO country_codes VALUES (149, 'Montserrat', 'MSR');
INSERT INTO country_codes VALUES (150, 'Morocco', 'MAR');
INSERT INTO country_codes VALUES (151, 'Mozambique', 'MOZ');
INSERT INTO country_codes VALUES (152, 'Myanmar', 'MMR');
INSERT INTO country_codes VALUES (153, 'Namibia', 'NAM');
INSERT INTO country_codes VALUES (154, 'Nauru', 'NRU');
INSERT INTO country_codes VALUES (155, 'Nepal', 'NPL');
INSERT INTO country_codes VALUES (156, 'Netherlands', 'NLD');
INSERT INTO country_codes VALUES (157, 'New Caledonia', 'NCL');
INSERT INTO country_codes VALUES (158, 'New Zealand', 'NZL');
INSERT INTO country_codes VALUES (159, 'Nicaragua', 'NIC');
INSERT INTO country_codes VALUES (160, 'Niger', 'NER');
INSERT INTO country_codes VALUES (161, 'Nigeria', 'NGA');
INSERT INTO country_codes VALUES (162, 'Niue', 'NIU');
INSERT INTO country_codes VALUES (163, 'Norfolk Island', 'NFK');
INSERT INTO country_codes VALUES (164, 'Northern Mariana Islands', 'MNP');
INSERT INTO country_codes VALUES (165, 'Norway', 'NOR');
INSERT INTO country_codes VALUES (166, 'Oman', 'OMN');
INSERT INTO country_codes VALUES (167, 'Pakistan', 'PAK');
INSERT INTO country_codes VALUES (168, 'Palau', 'PLW');
INSERT INTO country_codes VALUES (169, 'Palestine, State of', 'PSE');
INSERT INTO country_codes VALUES (170, 'Panama', 'PAN');
INSERT INTO country_codes VALUES (171, 'Papua New Guinea', 'PNG');
INSERT INTO country_codes VALUES (172, 'Paraguay', 'PRY');
INSERT INTO country_codes VALUES (173, 'Peru', 'PER');
INSERT INTO country_codes VALUES (174, 'Philippines', 'PHL');
INSERT INTO country_codes VALUES (175, 'Pitcairn', 'PCN');
INSERT INTO country_codes VALUES (176, 'Poland', 'POL');
INSERT INTO country_codes VALUES (177, 'Portugal', 'PRT');
INSERT INTO country_codes VALUES (178, 'Puerto Rico', 'PRI');
INSERT INTO country_codes VALUES (179, 'Qatar', 'QAT');
INSERT INTO country_codes VALUES (180, 'Romania', 'ROU');
INSERT INTO country_codes VALUES (181, 'Russian Federation', 'RUS');
INSERT INTO country_codes VALUES (182, 'Rwanda', 'RWA');
INSERT INTO country_codes VALUES (183, 'Réunion', 'REU');
INSERT INTO country_codes VALUES (184, 'Saint Barthélemy', 'BLM');
INSERT INTO country_codes VALUES (185, 'Saint Helena, Ascension and Tristan da Cunha', 'SHN');
INSERT INTO country_codes VALUES (186, 'Saint Kitts and Nevis', 'KNA');
INSERT INTO country_codes VALUES (187, 'Saint Lucia', 'LCA');
INSERT INTO country_codes VALUES (188, 'Saint Martin (French part)', 'MAF');
INSERT INTO country_codes VALUES (189, 'Saint Pierre and Miquelon', 'SPM');
INSERT INTO country_codes VALUES (190, 'Saint Vincent and the Grenadines', 'VCT');
INSERT INTO country_codes VALUES (191, 'Samoa', 'WSM');
INSERT INTO country_codes VALUES (192, 'San Marino', 'SMR');
INSERT INTO country_codes VALUES (193, 'Sao Tome and Principe', 'STP');
INSERT INTO country_codes VALUES (194, 'Saudi Arabia', 'SAU');
INSERT INTO country_codes VALUES (195, 'Senegal', 'SEN');
INSERT INTO country_codes VALUES (196, 'Serbia', 'SRB');
INSERT INTO country_codes VALUES (197, 'Seychelles', 'SYC');
INSERT INTO country_codes VALUES (198, 'Sierra Leone', 'SLE');
INSERT INTO country_codes VALUES (199, 'Singapore', 'SGP');
INSERT INTO country_codes VALUES (200, 'Sint Maarten (Dutch part)', 'SXM');
INSERT INTO country_codes VALUES (201, 'Slovakia', 'SVK');
INSERT INTO country_codes VALUES (202, 'Slovenia', 'SVN');
INSERT INTO country_codes VALUES (203, 'Solomon Islands', 'SLB');
INSERT INTO country_codes VALUES (204, 'Somalia', 'SOM');
INSERT INTO country_codes VALUES (205, 'South Africa', 'ZAF');
INSERT INTO country_codes VALUES (206, 'South Georgia and the South Sandwich Islands', 'SGS');
INSERT INTO country_codes VALUES (207, 'South Sudan', 'SSD');
INSERT INTO country_codes VALUES (208, 'Spain', 'ESP');
INSERT INTO country_codes VALUES (209, 'Sri Lanka', 'LKA');
INSERT INTO country_codes VALUES (210, 'Sudan', 'SDN');
INSERT INTO country_codes VALUES (211, 'Suriname', 'SUR');
INSERT INTO country_codes VALUES (212, 'Svalbard and Jan Mayen', 'SJM');
INSERT INTO country_codes VALUES (213, 'Swaziland', 'SWZ');
INSERT INTO country_codes VALUES (214, 'Sweden', 'SWE');
INSERT INTO country_codes VALUES (215, 'Switzerland', 'CHE');
INSERT INTO country_codes VALUES (216, 'Syrian Arab Republic', 'SYR');
INSERT INTO country_codes VALUES (217, 'Taiwan, Province of China', 'TWN');
INSERT INTO country_codes VALUES (218, 'Tajikistan', 'TJK');
INSERT INTO country_codes VALUES (219, 'Tanzania, United Republic of', 'TZA');
INSERT INTO country_codes VALUES (220, 'Thailand', 'THA');
INSERT INTO country_codes VALUES (221, 'Timor-Leste', 'TLS');
INSERT INTO country_codes VALUES (222, 'Togo', 'TGO');
INSERT INTO country_codes VALUES (223, 'Tokelau', 'TKL');
INSERT INTO country_codes VALUES (224, 'Tonga', 'TON');
INSERT INTO country_codes VALUES (225, 'Trinidad and Tobago', 'TTO');
INSERT INTO country_codes VALUES (226, 'Tunisia', 'TUN');
INSERT INTO country_codes VALUES (227, 'Turkey', 'TUR');
INSERT INTO country_codes VALUES (228, 'Turkmenistan', 'TKM');
INSERT INTO country_codes VALUES (229, 'Turks and Caicos Islands', 'TCA');
INSERT INTO country_codes VALUES (230, 'Tuvalu', 'TUV');
INSERT INTO country_codes VALUES (231, 'Uganda', 'UGA');
INSERT INTO country_codes VALUES (232, 'Ukraine', 'UKR');
INSERT INTO country_codes VALUES (233, 'United Arab Emirates', 'ARE');
INSERT INTO country_codes VALUES (234, 'United Kingdom', 'GBR');
INSERT INTO country_codes VALUES (235, 'United States', 'USA');
INSERT INTO country_codes VALUES (236, 'United States Minor Outlying Islands', 'UMI');
INSERT INTO country_codes VALUES (237, 'Uruguay', 'URY');
INSERT INTO country_codes VALUES (238, 'Uzbekistan', 'UZB');
INSERT INTO country_codes VALUES (239, 'Vanuatu', 'VUT');
INSERT INTO country_codes VALUES (240, 'Venezuela, Bolivarian Republic of', 'VEN');
INSERT INTO country_codes VALUES (241, 'Viet Nam', 'VNM');
INSERT INTO country_codes VALUES (242, 'Virgin Islands, British', 'VGB');
INSERT INTO country_codes VALUES (243, 'Virgin Islands, U.S.', 'VIR');
INSERT INTO country_codes VALUES (244, 'Wallis and Futuna', 'WLF');
INSERT INTO country_codes VALUES (245, 'Western Sahara', 'ESH');
INSERT INTO country_codes VALUES (246, 'Yemen', 'YEM');
INSERT INTO country_codes VALUES (247, 'Zambia', 'ZMB');
INSERT INTO country_codes VALUES (248, 'Zimbabwe', 'ZWE');
INSERT INTO country_codes VALUES (249, 'Åland Islands', 'ALA');


--
-- TOC entry 2020 (class 0 OID 16943)
-- Dependencies: 175
-- Data for Name: country_prioritization_framework; Type: TABLE DATA; Schema: public; Owner: ahasemann
--

INSERT INTO country_prioritization_framework VALUES (1, 'Afghanistan', 'X', 'X', NULL, 'X', 14.4698805000, 28.5185190000, 59, -1.3171982490, -1.3975745980, 3.0000000000, 2.5000000000, 62.5000000000, -1.4064267650, 619.5921204000, '2011', 29824536, 28.0000000000, 2008, 0.3740000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.0100000000, 1.8086437840, 2, 0.0000000000, -2.4195342980, 2.4800000000, 15, 2, 3, 0.2146836910, 2, 100, 66, 0, -1.4064267600, 3.8401955210, 'Yes', 'Yes', 'Extreme', 2, 3, 33, 28, 0.0000000000, 37.5534989000, 6710.8700000000, 4);
INSERT INTO country_prioritization_framework VALUES (2, 'Algeria', NULL, NULL, 'X', NULL, 98.6178016500, 40.7936510000, 13, -0.9143329930, -0.5530610560, NULL, NULL, 56.6666666700, -0.5363664550, 5403.9992210000, NULL, 38481705, 35.0000000000, 1995, 0.7130000000, 23.6000000000, 1995, 50, 50, 50, NULL, NULL, NULL, NULL, NULL, 'No', 13.5035781700, 11.3314796800, NULL, 26.3000000000, -1.3407187160, 3.8300000000, 24, NULL, NULL, 0.3640562860, NULL, 50, 0, 0, -0.5363664600, 0.0000000000, 'Yes', 'Yes', 'High', NULL, NULL, 0, 356, 0.0000000000, 0.1043648500, 207.7600000000, NULL);
INSERT INTO country_prioritization_framework VALUES (3, 'Angola', NULL, 'X', 'X', NULL, 99.5000000000, 43.1250000000, 28, -1.0831820010, -1.0232833330, 3.0000000000, 2.6666666670, 57.7777777800, -1.2949667150, 5484.8349690000, NULL, 20820525, 43.0000000000, 2009, 0.5080000000, 67.4200000000, 2009, 50, 50, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 8.8662378570, 2.2869645210, 2, 46.4000000000, -0.3781556380, 3.3500000000, 19, 2, 3, 0.3713704460, 2, 50, 0, 0, -1.2949667200, 0.0000000000, 'No', 'No', 'Medium', 2, 3, 0, 575, 0.0000000000, 0.1917095000, 199.6000000000, 3);
INSERT INTO country_prioritization_framework VALUES (4, 'Azerbaijan', 'X', 'X', 'X', NULL, 94.8070646500, 54.0616250000, 42, -1.2614219480, -0.7780962790, NULL, NULL, 56.7901234600, -1.0737569530, 7391.9749660000, NULL, 9297507, 34.0000000000, 2008, 0.7340000000, 2.8100000000, 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 3.6890466450, 3.4169448730, 2, 45.1000000000, -0.6870151580, 3.1500000000, 17, 2, 3, 0.4296238000, 4, 50, 100, 100, -1.0737569500, 37.1786155400, 'No', 'Yes', 'Medium', 4, 4, 100, 410, 39.8953004000, 0.4443028400, 293.0300000000, 4);
INSERT INTO country_prioritization_framework VALUES (5, 'Bahrain', NULL, NULL, 'X', NULL, 71.7000000000, 40.0000000000, NULL, -1.3200000000, 0.5400000000, NULL, NULL, 38.0000000000, 0.3900000000, NULL, NULL, 1317827, NULL, NULL, 0.7960000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.8903574090, 0.3333627520, NULL, NULL, -1.1316998620, 2.5300000000, 12, NULL, NULL, NULL, NULL, 50, 0, 0, 0.3900000000, 0.0000000000, 'Yes', 'No', 'Medium', NULL, NULL, 0, 396, 0.0000000000, NULL, NULL, NULL);
INSERT INTO country_prioritization_framework VALUES (6, 'Bolivia, Plurinational State of', 'X', 'X', 'X', NULL, 79.6064444600, 46.5167550000, 12, -0.1348420150, -0.3737569040, 4.0000000000, 3.5000000000, 79.6296296300, -0.7037326370, 2575.6836950000, NULL, 10496285, 56.0000000000, 2008, 0.6750000000, 24.8900000000, 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.5059912060, 1.8053465770, 3, 20.3000000000, -0.5000066870, 5.8400000000, 40, 3, 3, 0.4998778380, 4, 50, 0, 0, -0.7037326400, 12.4402574800, 'No', 'No', 'Medium', 4, 4, 33, 167, 13.6114979000, 3.1710737200, 759.4300000000, 4);
INSERT INTO country_prioritization_framework VALUES (7, 'Botswana', NULL, 'X', 'X', NULL, 87.9970682300, 28.1547620000, 50, 0.5003760870, 0.4389048240, NULL, NULL, 55.0000000000, 0.9395069680, 7191.4308720000, NULL, 2003910, 61.0000000000, 1994, 0.6340000000, 49.4000000000, 1994, 100, NULL, NULL, NULL, 100, NULL, NULL, NULL, 'No', 1.1188649250, 0.2201131370, 4, 4.6000000000, 1.1054704380, 7.8500000000, 46, 3, 3, 0.5739623950, 3, 0, 0, 0, 0.9395069680, 0.0000000000, 'No', 'No', 'Low', 3, 2, 0, 240, 0.0000000000, 0.8262914600, 126.3600000000, 3);
INSERT INTO country_prioritization_framework VALUES (8, 'Brazil', 'X', 'X', NULL, NULL, 29.6790038700, 77.9100530000, 73, 0.4306037370, -0.1243177990, NULL, NULL, 81.4814814800, -0.0709744300, 11339.5211100000, NULL, 198656019, 55.0000000000, 2009, 0.7300000000, 10.8200000000, 2009, 100, 50, NULL, NULL, NULL, NULL, NULL, 100, 'Yes', 42.1610353900, 34.1685619200, 4, 5.5000000000, 0.0654288730, 7.1200000000, 48, 3, 3, 0.5761715360, 4, 0, 0, 100, -0.0709744300, 3.6900547450, 'No', 'No', 'Medium', 4, 4, 33, 518, 0.0000000000, 0.0351288700, 870.0200000000, 3);
INSERT INTO country_prioritization_framework VALUES (9, 'Burkina Faso', 'X', 'X', NULL, NULL, 46.0423922300, NULL, 23, -0.3453246740, -0.6326612570, 4.1666666670, 3.5000000000, NULL, -0.5192676610, 634.3209746000, NULL, 16460141, 40.0000000000, 2009, 0.3430000000, 72.5600000000, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.8106376310, 1.8080119730, 2, 9.1000000000, -0.6168624040, 3.5200000000, 36, 2, 2, 0.5015263550, 2, 50, 100, 0, -0.5192676600, 10.5375594900, 'Yes', 'Yes', 'Medium', 1, 3, 33, 270, 0.0000000000, 9.5235003500, 990.0400000000, 2);
INSERT INTO country_prioritization_framework VALUES (10, 'Cambodia', 'X', NULL, NULL, NULL, 3.3789914180, 13.3333330000, 15, -0.9752436670, -0.8311167450, 3.8333333330, 3.5000000000, 52.3809523800, -1.0440155140, 945.9893246000, NULL, 14864646, 36.0000000000, 2009, 0.5430000000, 49.5400000000, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.1345626450, 0.7462171690, NULL, 0.0000000000, -0.1355830660, 4.9600000000, 20, NULL, NULL, 0.3046374780, NULL, 50, 0, 0, -1.0440155100, 7.1867491850, 'No', 'No', 'Medium', NULL, NULL, 33, 227, 5.4445991600, 6.1752013700, 792.2500000000, NULL);
INSERT INTO country_prioritization_framework VALUES (11, 'Cameroon', 'X', 'X', 'X', NULL, 47.5360052400, 33.2010580000, 10, -1.0290642180, -0.9027136440, 3.6666666670, 3.1666666670, 62.5000000000, -1.2383915000, 1151.3550850000, NULL, 21699631, 39.0000000000, 2007, 0.4950000000, 30.3600000000, 2007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 1.9397500380, 2.3835271310, 2, 8.4000000000, -0.5754735150, 3.4400000000, 16, 2, 2, 0.3288285500, 3, 50, 100, 0, -1.2383915000, 5.0584201750, 'Yes', 'Yes', 'Medium', 3, 4, 66, 301, 0.0000000000, 2.4448616200, 623.1200000000, 3);
INSERT INTO country_prioritization_framework VALUES (12, 'Central African Republic', NULL, NULL, NULL, 'X', 44.8933736800, NULL, NULL, -1.2609111400, -1.4619119790, 3.3333333330, 2.5000000000, NULL, -0.8932081080, 472.6777561000, NULL, 4525209, 56.0000000000, 2008, 0.3520000000, 80.0900000000, 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.1660687610, 0.4970572280, NULL, 0.1000000000, -1.8690222470, 1.9900000000, 19, NULL, NULL, 0.2903226420, NULL, 100, 33, 0, -0.8932081100, 0.0000000000, 'Yes', 'No', 'High', NULL, NULL, 0, 252, 0.0000000000, 12.2908852000, 271.9600000000, NULL);
INSERT INTO country_prioritization_framework VALUES (13, 'Chad', NULL, 'X', 'X', NULL, 95.0451937200, NULL, 3, -1.3280709280, -1.4927900010, 2.5000000000, 2.5000000000, NULL, -1.2504398970, 885.1115555000, NULL, 12448175, 40.0000000000, 2003, 0.3400000000, 83.3000000000, 2003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.8554366100, 1.3673302940, 1, 36.8000000000, -1.0650432340, 1.6200000000, 16, 1, 1, 0.2332393070, 2, 50, 66, 0, -1.2504399000, 0.0000000000, 'Yes', 'Yes', 'High', 1, 3, 0, 394, 0.0000000000, 3.8735215400, 470.8800000000, 2);
INSERT INTO country_prioritization_framework VALUES (14, 'Chile', NULL, NULL, 'X', NULL, 63.9475860700, 73.6274510000, 66, 1.0428300230, 1.2523002910, NULL, NULL, 77.1604938300, 1.5618731160, 15355.8910100000, NULL, 17464814, 52.0000000000, 2009, 0.8190000000, 2.7200000000, 2009, 100, NULL, NULL, 100, NULL, 100, NULL, NULL, 'No', 5.0194231750, 3.0039239770, NULL, 18.8000000000, 0.3465710230, 7.5400000000, 57, NULL, NULL, 0.6993722490, NULL, 0, 0, 100, 1.5618731160, 0.0000000000, 'No', 'No', 'Low', NULL, NULL, 0, 286, 0.0000000000, 0.0327599600, 82.2900000000, NULL);
INSERT INTO country_prioritization_framework VALUES (15, 'China', NULL, 'X', 'X', NULL, 3.1000000000, 46.0000000000, 11, -1.5800000000, 0.0100000000, NULL, NULL, 43.0000000000, -0.4800000000, 6188.0000000000, NULL, 1350695000, 42.1000000000, 2009, 0.6990000000, 27.2000000000, 2009, 100, NULL, NULL, NULL, 100, NULL, NULL, NULL, 'Yes', 41.1951952400, 60.4676735000, 5, 9.1000000000, -0.5442773670, 3.0000000000, 15, 2, 3, 0.4300000000, 2, 0, 0, 0, -0.4800000000, 0.0000000000, 'Yes', 'No', 'Low', 3, 3, 0, 377, 0.0000000000, -0.0108714000, -796.0000000000, 2);
INSERT INTO country_prioritization_framework VALUES (16, 'Colombia', 'X', 'X', NULL, NULL, 68.9421677500, 73.2142860000, 58, -0.1113742460, 0.0108759450, NULL, NULL, 75.3086419800, -0.4340033320, 7751.6781810000, NULL, 47704427, 56.0000000000, 2010, 0.7190000000, 15.8200000000, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 6.9210062870, 8.2050958030, 3, 12.0000000000, -1.4032071490, 6.6300000000, 34, 3, 3, 0.5131260730, 4, 50, 0, 100, -0.4340033300, 16.9976034300, 'No', 'Yes', 'Medium', 5, 4, 33, 382, 0.0000000000, 0.3358897200, 1130.4700000000, 4);
INSERT INTO country_prioritization_framework VALUES (17, 'Congo', NULL, 'X', 'X', NULL, 89.6497536200, NULL, NULL, -1.1557730960, -1.2017292180, 3.5000000000, 3.0000000000, NULL, -1.1913743030, 3153.7394610000, NULL, 4337051, 47.0000000000, 2005, 0.5340000000, 74.4000000000, 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 1.0619510000, 0.4763896090, 2, 71.5000000000, -0.4783403870, 2.8900000000, 22, 2, 2, 0.3177149090, 2, 50, 100, 0, -1.1913743000, 1.7044541910, 'Yes', 'Yes', 'Medium', 2, 3, 0, 443, 0.0000000000, 1.7586781900, 253.7000000000, 3);
INSERT INTO country_prioritization_framework VALUES (18, 'Côte d''Ivoire', NULL, NULL, NULL, 'X', 28.9202490100, NULL, NULL, -0.8000000000, -1.1000000000, 2.8000000000, 3.3000000000, NULL, -0.9100000000, 1244.0000000000, NULL, 19839750, NULL, NULL, 0.4320000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 1.9200000000, 2.0000000000, NULL, 6.6000000000, -1.2614607920, 3.2500000000, 21, NULL, NULL, NULL, NULL, 50, 100, 0, -0.9100000000, 2.2877923770, 'Yes', 'Yes', 'Medium', NULL, NULL, 0, 263, 0.0000000000, 5.9711771100, 1437.4900000000, NULL);
INSERT INTO country_prioritization_framework VALUES (19, 'Congo, the Democratic Republic of the', 'X', 'X', 'X', NULL, 91.2054341100, 45.0000000000, 18, -1.5155254060, -1.6586488260, 3.1666666670, 2.5000000000, 55.5555555600, -1.3035610180, 271.9685399000, NULL, 65705093, 44.0000000000, 2006, 0.3040000000, 95.1500000000, 2006, 100, NULL, NULL, NULL, 100, NULL, NULL, NULL, 'No', 1.3874004820, 7.2171675090, 3, 26.5000000000, -2.1175621960, 1.9200000000, 11, 2, 3, 0.2621324100, 4, 0, 33, 0, -1.3035610200, 1.3491459230, 'No', 'Yes', 'High', 2, 3, 33, 406, 0.0000000000, 35.1687551000, 5521.6600000000, 4);
INSERT INTO country_prioritization_framework VALUES (20, 'Ecuador', 'X', 'X', 'X', NULL, 56.3712134400, 63.5626100000, 31, -0.3317716300, -0.5100644170, NULL, NULL, 70.3703703700, -0.6574696290, 5424.6336110000, NULL, 15492264, 49.0000000000, 2010, 0.7240000000, 10.5900000000, 2010, 50, 50, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 1.5728964250, 2.6646480910, 2, 25.7000000000, -0.6016906120, 5.7800000000, 36, 3, 3, 0.4618076170, 3, 50, 0, 0, -0.6574696300, 4.1467524930, 'Yes', 'Yes', 'Medium', 4, 4, 33, 265, 0.0000000000, 0.2227049700, 170.9700000000, 3);
INSERT INTO country_prioritization_framework VALUES (21, 'Egypt', 'X', NULL, NULL, NULL, 45.3470479800, 44.0476190000, 13, -0.7378713300, -0.7688844530, NULL, NULL, 39.5833333300, -0.5725418000, 3187.3125910000, NULL, 80721874, 31.0000000000, 2008, 0.6620000000, 15.4300000000, 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 16.7068730800, 23.7696919900, NULL, 12.6000000000, -1.4810164190, 4.5600000000, 23, NULL, NULL, 0.4091400260, NULL, 50, 0, 0, -0.5725418000, 1.7646505230, 'No', 'No', 'Medium', NULL, NULL, 33, 267, 0.0000000000, 0.1738723400, 410.3400000000, NULL);
INSERT INTO country_prioritization_framework VALUES (22, 'Equatorial Guinea', NULL, NULL, 'X', NULL, 95.1801514500, 13.7500000000, 0, -1.8744084350, -1.6495926040, NULL, NULL, 26.6666666700, -1.5600852550, 24035.7060900000, NULL, 736296, NULL, NULL, 0.5540000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 1.3740212930, 0.0808760980, NULL, 41.1000000000, 0.2066276690, 1.8300000000, 7, NULL, NULL, 0.2271061110, NULL, 50, 0, 0, -1.5600852500, 1.5717788450, 'No', 'No', 'Low', NULL, NULL, 0, 389, 0.0000000000, 0.1439291000, 24.1900000000, NULL);
INSERT INTO country_prioritization_framework VALUES (23, 'Ethiopia', NULL, NULL, NULL, NULL, 7.3300000000, NULL, NULL, -1.2770000000, -0.4300000000, 3.5000000000, 3.2000000000, NULL, -0.6500000000, 454.0000000000, NULL, 91728849, 33.6000000000, 2011, 0.3960000000, 66.0000000000, 2011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 3.1000000000, 10.0600000000, NULL, 6.0000000000, -1.5300000000, 3.7200000000, 6, NULL, NULL, 0.3600000000, NULL, 50, 0, 0, -0.6500000000, 0.0000000000, 'No', 'No', 'Medium', NULL, NULL, 0, 400, 0.0000000000, 11.0000000000, 3261.3213300000, NULL);
INSERT INTO country_prioritization_framework VALUES (24, 'Gabon', NULL, NULL, 'X', NULL, 84.6738071300, 51.1111110000, NULL, -0.8530734670, -0.7755369490, NULL, NULL, 60.4166666700, -0.5512999610, 11430.4937500000, NULL, 1632572, 41.0000000000, 2005, 0.6830000000, 19.5900000000, 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 1.4488434820, 0.1793246920, NULL, 48.2000000000, 0.3066131410, 3.5600000000, 25, NULL, NULL, 0.4091334870, NULL, 50, 0, 0, -0.5512999600, 0.0000000000, 'No', 'Yes', 'Low', NULL, NULL, 0, 480, 0.0000000000, 0.4031544800, 75.6300000000, NULL);
INSERT INTO country_prioritization_framework VALUES (25, 'Ghana', 'X', 'X', NULL, 'X', 39.3934186800, 51.2820510000, 50, 0.4130545630, -0.0732018390, 3.8333333330, 4.1666666670, 79.1666666700, -0.0865030590, 1604.9057820000, NULL, 25366462, 43.0000000000, 2006, 0.5580000000, 51.8400000000, 2006, 100, NULL, NULL, 100, NULL, NULL, NULL, NULL, 'No', 3.1607749640, 2.7862985500, 4, 12.8000000000, 0.1002848100, 6.0200000000, 47, 4, 4, 0.5497570980, 4, 50, 100, 100, -0.0865030600, 13.9279256700, 'No', 'No', 'Low', 4, 4, 100, 331, 27.2229958000, 4.5886297800, 1815.4900000000, 4);
INSERT INTO country_prioritization_framework VALUES (26, 'Guatemala', NULL, NULL, NULL, 'X', 10.6254257900, NULL, 51, -0.3910225580, -0.7632735180, NULL, NULL, NULL, -0.6149799880, 3351.1404330000, NULL, 15082831, 56.0000000000, 2006, 0.5810000000, 26.3300000000, 2006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.9459982180, 2.5942261780, NULL, 2.0000000000, -0.6516595270, 5.8800000000, 33, NULL, NULL, 0.5254135560, NULL, 100, 66, 100, -0.6149799900, 0.0000000000, 'No', 'No', 'Medium', NULL, NULL, 0, 227, 0.0000000000, 0.8216170300, 391.8200000000, NULL);
INSERT INTO country_prioritization_framework VALUES (27, 'Guinea', 'X', 'X', 'X', NULL, 87.9058755200, 45.0000000000, NULL, -1.0833330350, -1.2712308490, 2.8333333330, 3.0000000000, 85.7142857100, -1.1086555850, 591.0189490000, NULL, 11451273, 39.0000000000, 2007, 0.3550000000, 69.5900000000, 2007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.5254595760, 1.2578287570, 3, 16.0000000000, -1.2807007050, 2.7900000000, 24, 4, 4, 0.3474181620, 3, 50, 66, 0, -1.1086555900, 17.1399877100, 'No', 'No', 'Medium', 3, 5, 66, 327, 0.0000000000, 4.1035173800, 207.9400000000, 4);
INSERT INTO country_prioritization_framework VALUES (28, 'Guyana', NULL, NULL, 'X', NULL, 57.0413695700, NULL, NULL, -0.0078446900, -0.1398064880, 3.6666666670, 3.3333333330, NULL, -0.7500752900, 3583.9621700000, NULL, 795369, 45.0000000000, 1998, 0.6360000000, 18.0000000000, 1998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.0533515330, 0.1368023740, NULL, 14.9000000000, -0.4812876040, 6.0500000000, 40, NULL, NULL, 0.5039079710, NULL, 50, 0, 0, -0.7500752900, 0.0000000000, 'No', 'No', 'Medium', NULL, NULL, 0, 210, 0.0000000000, 6.1872954000, 159.4300000000, NULL);
INSERT INTO country_prioritization_framework VALUES (29, 'Haiti', NULL, NULL, NULL, NULL, 7.3000000000, NULL, NULL, -0.7900000000, -1.6200000000, 3.3000000000, 3.2000000000, NULL, -1.2400000000, 771.0000000000, NULL, 10173775, NULL, NULL, 0.4560000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.1300000000, 1.6700000000, NULL, 0.7000000000, -0.7900000000, 3.9600000000, 5, NULL, NULL, NULL, NULL, 50, 0, 0, -1.2400000000, 0.0000000000, 'Yes', 'Yes', 'High', NULL, NULL, 0, 266, 0.0000000000, 23.0000000000, 1710.0000000000, NULL);
INSERT INTO country_prioritization_framework VALUES (30, 'India', NULL, 'X', 'X', NULL, 33.0000000000, 72.0000000000, 68, 0.3500000000, -0.1800000000, 4.0000000000, 3.5000000000, 60.0000000000, -0.5700000000, 1489.0000000000, NULL, 1236686732, 33.9000000000, 2010, 0.5540000000, 68.8000000000, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 80.4478520700, 74.9848228500, 3, 7.4000000000, -1.2458887640, 7.5200000000, 42, 2, 2, 0.4800000000, 4, 50, 0, 0, -0.5700000000, 0.0000000000, 'No', 'No', 'Medium', 3, 2, 0, 400, 0.0000000000, 0.1719313800, 3220.0000000000, 2);
INSERT INTO country_prioritization_framework VALUES (31, 'Indonesia', 'X', 'X', 'X', NULL, 41.2086631500, 65.8543420000, 62, 0.0284858140, -0.2908476940, NULL, NULL, 75.9259259300, -0.6557281660, 3557.3927360000, NULL, 246864191, 38.0000000000, 2011, 0.6290000000, 43.3295632000, 2011, 100, NULL, NULL, 100, NULL, NULL, NULL, NULL, 'Yes', 8.4037596160, 12.3927806700, 4, 9.4000000000, -0.5731691060, 6.7600000000, 35, 3, 4, 0.5016698080, 4, 0, 66, 100, -0.6557281700, 87.5324672600, 'No', 'No', 'Medium', 4, 4, 100, 393, 0.0000000000, 0.0489873200, 414.6000000000, 4);
INSERT INTO country_prioritization_framework VALUES (32, 'Iran, Islamic Republic of', NULL, 'X', 'X', NULL, 79.8844798100, 32.6190480000, NULL, -1.5737794150, -0.5414860000, NULL, NULL, 26.1111111100, -0.8168039480, 6815.5701910000, NULL, 76424443, 39.0000000000, 2005, 0.7420000000, 8.0300000000, 2005, 100, 100, 100, NULL, NULL, NULL, NULL, NULL, 'No', 0.0000000000, 22.5042529400, 3, NULL, -1.3213454070, 1.9800000000, 10, 1, 1, 0.3297197240, 1, 0, 0, 0, -0.8168039500, 0.0000000000, 'No', 'Yes', 'Low', 1, 3, 0, 155, 0.0000000000, 0.0198303900, 101.9400000000, 2);
INSERT INTO country_prioritization_framework VALUES (33, 'Iraq', 'X', 'X', 'X', NULL, 99.0239287600, 52.2222220000, 4, -1.1344417600, -1.1129365240, NULL, NULL, 57.1428571400, -1.2291151310, 6454.6196280000, NULL, 32578209, 31.0000000000, 2007, 0.5900000000, 21.4100000000, 2007, 100, 100, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 13.6545420300, 9.5931121910, 3, 78.5000000000, -1.9324913400, 4.1000000000, 13, 3, 3, 0.3621171550, 3, 0, 100, 0, -1.2291151300, 79.7775901700, 'No', 'Yes', 'High', 2, 4, 66, 11, 30.1741047000, 1.0542515800, 1904.0500000000, 4);
INSERT INTO country_prioritization_framework VALUES (34, 'Kazakhstan', 'X', 'X', 'X', NULL, 85.0373650700, 58.2936510000, 48, -1.1496385940, -0.4413462350, NULL, NULL, 62.2222222200, -0.8834446030, 11935.4312600000, NULL, 16797459, 29.0000000000, 2009, 0.7540000000, 1.1200000000, 2009, 50, 50, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 5.2400000000, 6.1732668140, 3, 38.3000000000, -0.3745263200, 2.9500000000, 20, 3, 3, 0.4434858760, 3, 50, 100, 0, -0.8834446000, 5.7550704470, 'Yes', 'Yes', 'Medium', 4, 4, 33, 327, 0.0000000000, 0.1138633400, 214.1200000000, 4);
INSERT INTO country_prioritization_framework VALUES (35, 'Kenya', NULL, NULL, NULL, 'X', 8.8784301360, NULL, 49, -0.2989373340, -0.5453598550, 4.1666666670, 4.0000000000, NULL, -1.0965401470, 864.7447928000, NULL, 43178141, 48.0000000000, 2005, 0.5190000000, 67.2100000000, 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 2.8989186790, 4.7427659270, NULL, 0.1000000000, -1.2931246460, 4.7100000000, 34, NULL, NULL, 0.4321829150, NULL, 100, 0, 100, -1.0965401500, 4.4322564020, 'No', 'No', 'Medium', NULL, NULL, 0, 410, 0.0000000000, 7.3592494400, 2474.2300000000, NULL);
INSERT INTO country_prioritization_framework VALUES (36, 'Kuwait', NULL, NULL, 'X', NULL, 92.2361349900, 42.6237160000, NULL, -0.6239116840, -0.0767573770, NULL, NULL, 27.7777777800, -0.1609473300, 51496.9271500000, '2011', 3250496, NULL, NULL, 0.7900000000, NULL, NULL, 100, 100, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.0000000000, 0.9571542990, NULL, 51.3000000000, 0.1798597940, 3.7800000000, 24, NULL, NULL, 0.4782540060, NULL, 0, 0, 0, -0.1609473300, 0.0000000000, 'No', 'No', 'Low', NULL, NULL, 0, 466, 0.0000000000, NULL, NULL, NULL);
INSERT INTO country_prioritization_framework VALUES (37, 'Kyrgyzstan', NULL, NULL, NULL, 'X', 33.4107431400, NULL, 20, -0.6388019750, -0.6586990390, 4.1666666670, 3.6666666670, NULL, -1.0902106660, 1159.6309000000, NULL, 5582100, 33.0000000000, 2011, 0.6220000000, 21.6400000000, 2011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.1700000000, 2.0514884230, NULL, 12.8000000000, -0.8891132550, 4.6900000000, 25, NULL, NULL, 0.4261632270, NULL, 100, 100, 0, -1.0902106700, 0.0000000000, 'No', 'No', 'Medium', NULL, NULL, 0, 311, 0.0000000000, 8.4398069600, 523.1700000000, NULL);
INSERT INTO country_prioritization_framework VALUES (38, 'Lebanon', NULL, NULL, NULL, 'X', 31.3242162200, NULL, 33, -0.4000000000, -0.3000000000, NULL, NULL, NULL, -0.8700000000, 9705.0000000000, NULL, 4424888, NULL, NULL, 0.7450000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 2.7900000000, 1.0000000000, NULL, 0.0000000000, -1.6480655790, 5.0500000000, 32, NULL, NULL, NULL, NULL, 50, 0, NULL, -0.8700000000, 10.1537236400, 'Yes', 'Yes', 'Medium', NULL, NULL, 100, 210, 0.0000000000, 1.0781574800, 432.2800000000, NULL);
INSERT INTO country_prioritization_framework VALUES (39, 'Liberia', 'X', 'X', NULL, NULL, 32.5260150200, 61.5384620000, 43, -0.3600012610, -1.1795661160, 3.5000000000, 2.8333333330, 83.3333333300, -0.5729202280, 421.7036610000, NULL, 4190435, 38.0000000000, 2007, 0.3880000000, 94.8800000000, 2007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.1371988960, 0.4602850400, 1, 2.3000000000, -0.4748597950, 4.9500000000, 34, 3, 4, 0.4113019960, 3, 50, 100, 100, -0.5729202300, 2.2456095380, 'No', 'No', 'Medium', 3, 3, 33, 295, 0.0000000000, 49.7797474000, 765.4900000000, 4);
INSERT INTO country_prioritization_framework VALUES (40, 'Libya', 'X', 'X', 'X', NULL, 96.9137502000, 28.7946430000, NULL, -0.9368797040, -1.4899968030, NULL, NULL, 11.1111111100, -1.3990918180, 10455.5748700000, '2009', 6154623, NULL, NULL, 0.7690000000, NULL, NULL, 100, 100, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.0000000000, 1.8123153710, 3, NULL, -1.5610355240, 5.1500000000, 21, 3, 3, 0.2934175880, 3, 0, 0, 0, -1.3990918200, 100.0000000000, 'No', 'No', 'High', 2, 4, 66, 196, 100.0000000000, NULL, 642.2200000000, 4);
INSERT INTO country_prioritization_framework VALUES (41, 'Madagascar', NULL, NULL, NULL, 'X', 18.1694369500, NULL, NULL, -0.8482270460, -1.0833588230, 3.5000000000, 3.3333333330, NULL, -0.6091922100, 447.4371289000, NULL, 22293914, 44.0000000000, 2010, 0.4830000000, 92.6200000000, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.7744662170, 2.4488042620, NULL, 3.9000000000, -0.5669482310, 3.9300000000, 28, NULL, NULL, 0.4043133940, NULL, 100, 33, 0, -0.6091922100, 0.0000000000, 'Yes', 'Yes', 'Medium', NULL, NULL, 0, 237, 0.0000000000, 4.1248892400, 408.8500000000, NULL);
INSERT INTO country_prioritization_framework VALUES (42, 'Malaysia', 'X', NULL, 'X', NULL, 20.4855918400, 45.4338620000, 39, -0.3404475750, 1.0099019620, NULL, NULL, 39.4444444400, 0.2998480670, 10380.5390300000, NULL, 29239927, 46.0000000000, 2009, 0.7690000000, 2.2700000000, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 2.9045569700, 1.4678678210, NULL, 9.8000000000, -0.0028604710, 6.4100000000, 28, NULL, NULL, 0.5199885280, NULL, 50, 0, 0, 0.2998480670, 6.9122217300, 'Yes', 'Yes', 'Low', NULL, NULL, 33, 280, 2.7222995800, 0.0105925900, 30.6400000000, NULL);
INSERT INTO country_prioritization_framework VALUES (43, 'Mali', NULL, NULL, 'X', NULL, 56.6871152200, NULL, 43, -0.5467850390, -0.9886602870, 4.1666666670, 3.5000000000, NULL, -0.7613998290, 693.9843612000, NULL, 14853572, 39.0000000000, 2006, 0.3440000000, 78.6600000000, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.8003219470, 1.6315434970, NULL, 13.2000000000, -1.9774860270, 5.1200000000, 19, NULL, NULL, 0.5226117900, NULL, 50, 100, 0, -0.7613998300, 0.0000000000, 'Yes', 'Yes', 'Medium', NULL, NULL, 0, 239, 0.0000000000, 11.9260776000, 1270.8900000000, NULL);
INSERT INTO country_prioritization_framework VALUES (44, 'Mauritania', NULL, 'X', 'X', NULL, 69.5956968500, NULL, NULL, -0.9419827540, -0.9123813320, 3.3333333330, 3.1666666670, NULL, -0.6021456970, 1106.1369470000, NULL, 3796141, 40.0000000000, 2008, 0.4670000000, 47.6900000000, 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.3260133400, 0.4169750660, 2, 58.0000000000, -1.1266924780, 4.1700000000, 23, 3, 3, 0.3554114280, 4, 50, 100, 0, -0.6021457000, 2.7302425750, 'No', 'No', 'Medium', 2, 3, 0, 242, 0.0000000000, 8.6639326800, 370.2300000000, 2);
INSERT INTO country_prioritization_framework VALUES (45, 'Mexico', 'X', 'X', 'X', NULL, 20.2622047500, 82.4561400000, 61, 0.0944783210, 0.3216948300, NULL, NULL, 83.8888888900, -0.4097370040, 9747.4563880000, NULL, 120847477, 47.0000000000, 2010, 0.7750000000, 4.5400000000, 2010, 50, 50, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 22.0467061900, 20.7855997600, 3, 9.0000000000, -0.6739598390, 6.9000000000, 37, 3, 3, 0.5419028100, 4, 50, 0, 100, -0.4097370000, 14.7728057500, 'No', 'No', 'Medium', 4, 4, 33, 362, 0.0000000000, 0.0760667200, 882.2900000000, 3);
INSERT INTO country_prioritization_framework VALUES (46, 'Mongolia', 'X', 'X', 'X', NULL, 86.4306857200, 39.1975310000, 51, 0.0195134730, -0.6322722600, 3.5000000000, 3.3333333330, 79.6296296300, -0.5205367630, 3672.9669400000, NULL, 2796484, 37.0000000000, 2008, 0.6750000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.0982908450, 0.1403857430, 2, 45.8000000000, 0.4489765980, 6.3500000000, 50, 4, 4, 0.4856247280, 4, 50, 100, 100, -0.5205367600, 7.6658317940, 'Yes', 'Yes', 'Medium', 4, 4, 33, 267, 43.3650073000, 3.8785922000, 339.8200000000, 4);
INSERT INTO country_prioritization_framework VALUES (47, 'Morocco', NULL, NULL, NULL, NULL, 17.3000000000, 60.0000000000, 38, -0.6100000000, -0.0400000000, NULL, NULL, 48.0000000000, -0.4100000000, 2902.0000000000, NULL, 32521143, NULL, NULL, 0.5910000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 2.9423136220, 8.2266775040, NULL, 4.1000000000, -0.4596661410, 4.0700000000, 27, NULL, NULL, 0.4200000000, NULL, 50, 0, 0, -0.4100000000, 0.0000000000, 'No', 'No', 'Low', NULL, NULL, 0, 285, 0.0000000000, 1.2468332900, 1237.0000000000, NULL);
INSERT INTO country_prioritization_framework VALUES (48, 'Mozambique', 'X', 'X', NULL, 'X', 74.0884205200, 25.9523810000, 47, -0.1798229220, -0.6381386340, 4.5000000000, 3.5000000000, 58.3333333300, -0.5896830480, 578.7993780000, NULL, 25203395, 46.0000000000, 2008, 0.3270000000, 81.7700000000, 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 1.1325861300, 2.7683869730, 2, 4.4000000000, 0.3452142370, 4.8800000000, 36, 3, 3, 0.4454104800, 3, 100, 100, 0, -0.5896830500, 1.2915060640, 'No', 'No', 'Medium', 4, 3, 33, 256, 0.0000000000, 16.2828475000, 2046.5000000000, 2);
INSERT INTO country_prioritization_framework VALUES (49, 'Myanmar', 'X', 'X', NULL, NULL, 56.5524074300, 4.6031746000, 0, -1.6466975170, -1.5300463520, NULL, NULL, 8.3333333330, -1.1155155980, 1144.0000000000, 'UNDP_2011', 52797319, NULL, NULL, 0.4980000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.0000000000, 2.6504678210, 2, NULL, -0.9615808960, 2.3500000000, 17, 4, 4, 0.1939951310, 4, 50, 0, 0, -1.1155156000, 13.3085397600, 'No', 'No', 'Medium', 3, 4, 33, 347, 57.9546274000, NULL, 376.1100000000, 4);
INSERT INTO country_prioritization_framework VALUES (50, 'Niger', 'X', 'X', NULL, NULL, 41.8923068300, NULL, 4, -0.3950796000, -0.7039960160, 3.8333333330, 3.1666666670, NULL, -0.6855974410, 382.8300879000, NULL, 17157042, 35.0000000000, 2008, 0.3040000000, 75.2300000000, 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.5099558930, 1.8845608520, 1, 0.5000000000, -1.1728172820, 4.1600000000, 30, 3, 2, 0.3374812800, 3, 50, 100, 0, -0.6855974400, 2.4226240350, 'Yes', 'No', 'Medium', 3, 4, 33, 211, 0.0000000000, 10.1204926000, 648.9100000000, 4);
INSERT INTO country_prioritization_framework VALUES (51, 'Nigeria', 'X', 'X', 'X', NULL, 94.7857908300, 38.0833330000, 16, -0.7274964660, -0.9977801460, 4.0000000000, 3.5000000000, 65.5555555600, -1.1327559320, 1555.4109790000, NULL, 168833776, 49.0000000000, 2010, 0.4710000000, 84.4900000000, 2010, 100, 100, 50, 100, NULL, NULL, NULL, NULL, 'No', 20.3886575100, 18.5450105400, 4, 35.0000000000, -2.0532740180, 3.7700000000, 26, 3, 3, 0.3841828880, 4, 0, 100, 0, -1.1327559300, 20.1676768400, 'No', 'Yes', 'High', 3, 4, 66, 383, 0.0000000000, 0.7379689700, 1813.0600000000, 4);
INSERT INTO country_prioritization_framework VALUES (52, 'Papua New Guinea', NULL, 'X', 'X', NULL, 71.4167424500, 33.8624340000, 56, -0.0447426760, -0.7690822990, 4.0000000000, 3.5000000000, 59.2592592600, -1.0369719200, 2184.1634610000, NULL, 7167010, 51.0000000000, 1996, 0.4660000000, 57.4000000000, 1996, 100, NULL, NULL, 100, NULL, NULL, NULL, NULL, 'No', 0.1497982910, 0.3597896590, 1, 32.5000000000, -0.6429389080, 6.3200000000, 36, 2, 2, 0.4638539830, 2, 0, 0, 0, -1.0369719200, 0.0000000000, 'Banned', 'Yes', 'High', 2, 2, 0, 505, 0.0000000000, 4.9406128800, 612.3200000000, 3);
INSERT INTO country_prioritization_framework VALUES (53, 'Peru', 'X', 'X', 'X', NULL, 70.7391891400, 82.5641030000, 57, 0.0688061810, -0.1576263580, NULL, NULL, 87.5000000000, -0.3946942590, 6568.0392920000, NULL, 29987800, 48.0000000000, 2010, 0.7410000000, 12.7400000000, 2010, 100, NULL, NULL, NULL, NULL, 100, NULL, NULL, 'No', 3.6863381750, 5.1578603370, 3, 13.5000000000, -0.8619564860, 6.4700000000, 41, 3, 3, 0.5515033780, 5, 0, 100, 100, -0.3946942600, 30.0219330700, 'No', 'No', 'Medium', 4, 4, 100, 339, 0.0000000000, 0.3445369500, 623.6500000000, 3);
INSERT INTO country_prioritization_framework VALUES (54, 'Philippines', 'X', 'X', NULL, NULL, 8.2361796930, 53.9682540000, 48, -0.0417131270, 0.0775655930, NULL, NULL, 62.9629629600, -0.5840202600, 2587.0166480000, NULL, 96706764, 43.0000000000, 2009, 0.6540000000, 41.5300000000, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 2.3940862060, 4.8547572290, 2, 3.4000000000, -1.1602180720, 6.3000000000, 37, 3, 3, 0.4715950530, 4, 50, 66, 100, -0.5840202600, 7.5698842350, 'Yes', 'No', 'Medium', 3, 4, 33, 237, 10.8891983000, -0.0855172000, -191.6400000000, 3);
INSERT INTO country_prioritization_framework VALUES (55, 'Qatar', NULL, 'X', 'X', NULL, 88.7000000000, 14.0000000000, 0, -0.7900000000, 0.9500000000, NULL, NULL, 15.0000000000, 1.1900000000, NULL, NULL, 2050514, NULL, NULL, 0.8340000000, NULL, NULL, 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 'No', 5.2565970110, 0.5187061660, 3, 28.6000000000, 1.2125791650, 3.1800000000, 18, 2, 2, NULL, 1, 0, 0, 0, 1.1900000000, 0.0000000000, 'No', 'No', 'Low', 2, 2, 0, 341, 0.0000000000, NULL, NULL, 1);
INSERT INTO country_prioritization_framework VALUES (56, 'Russian Federation', 'X', 'X', 'X', NULL, 72.8295807800, 60.4166670000, 74, -0.9645208550, -0.4256328480, NULL, NULL, 56.6666666700, -1.0146979020, 14037.0250200000, NULL, 143533000, 40.0000000000, 2009, 0.7880000000, 0.0800000000, 2009, 100, 100, 100, NULL, NULL, NULL, 100, 100, 'Yes', 52.7100000000, 52.7500918800, 4, 21.7000000000, -0.8216629850, 3.7400000000, 19, 2, 2, 0.4506267500, 2, 0, 0, 0, -1.0146979000, 0.0000000000, 'No', 'No', 'Medium', 3, 3, 33, 565, 0.0000000000, NULL, NULL, 2);
INSERT INTO country_prioritization_framework VALUES (57, 'South Sudan', 'X', 'X', NULL, NULL, 99.0000000000, 17.0000000000, NULL, -1.2643136530, -1.5945072410, NULL, NULL, 79.6296296300, -1.3351668140, 861.5722647000, NULL, 10837527, 46.0000000000, 2009, NULL, 50.2000000000, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.7249466370, 1.1904137740, 2, NULL, -1.2169355690, NULL, 20, 2, 2, 0.4529294590, 3, 50, 0, 0, -1.3351668100, 1.2301341270, 'Yes', 'Yes', 'High', 2, 3, 33, 277, 0.0000000000, 5.6768325800, 1086.8800000000, 3);
INSERT INTO country_prioritization_framework VALUES (58, 'Sao Tome and Principe', NULL, NULL, NULL, 'X', 2.7064378340, NULL, 29, 0.1281189880, -0.7166576640, 2.8333333330, 3.1666666670, NULL, -0.3931272650, 1402.0830970000, NULL, 188098, 51.0000000000, 2001, 0.5250000000, 54.2000000000, 2001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.0000000000, 0.0206610280, NULL, 0.0000000000, 0.0196812360, NULL, 47, NULL, NULL, 0.4691108640, NULL, 100, 66, 0, -0.3931272600, 0.0000000000, 'Yes', 'Yes', 'Low', NULL, NULL, 0, 305, 0.0000000000, 30.2392260000, 75.0800000000, NULL);
INSERT INTO country_prioritization_framework VALUES (59, 'Saudi Arabia', NULL, 'X', 'X', NULL, 84.4316060900, 35.0297620000, 1, -1.8008098220, 0.0258576170, NULL, NULL, 29.6296296300, -0.0619045960, 25136.2148200000, NULL, 28287855, NULL, NULL, 0.7820000000, NULL, NULL, 100, 100, 50, 100, NULL, NULL, NULL, NULL, 'Yes', 46.1720519500, 8.3297570670, 4, 58.6000000000, -0.4568403570, 1.7100000000, 7, 2, 2, 0.3747469330, 1, 0, 0, 0, -0.0619046000, 0.0000000000, 'No', 'Yes', 'Medium', 2, 2, 0, 485, 0.0000000000, NULL, NULL, 1);
INSERT INTO country_prioritization_framework VALUES (60, 'Sierra Leone', 'X', 'X', NULL, 'X', 52.2064434200, 46.5811970000, 39, -0.3591219170, -1.2099061900, 3.6666666670, 3.1666666670, 52.3809523800, -0.9360949910, 634.9227930000, NULL, 5978727, 35.0000000000, 2011, 0.3590000000, 79.5600000000, 2011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.2947228300, 0.6567143010, 2, 1.0000000000, -0.2677720810, 4.7100000000, 40, 3, 4, 0.4095200520, 3, 100, 33, 0, -0.9360949900, 1.7902173260, 'No', 'No', 'Medium', 3, 4, 33, 195, 0.0000000000, 14.5881891000, 428.7100000000, 3);
INSERT INTO country_prioritization_framework VALUES (61, 'Somalia', NULL, NULL, NULL, NULL, 1.7300000000, NULL, NULL, -2.2320000000, -2.2500000000, NULL, NULL, NULL, -1.5800000000, 112.0000000000, '2011', 10195134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', NULL, 1.1000000000, NULL, 0.0000000000, -2.8900000000, NULL, 7, NULL, NULL, NULL, NULL, 50, 0, 0, -1.5800000000, 0.0000000000, 'Yes', 'Yes', 'High', NULL, NULL, 0, 208, 0.0000000000, NULL, 998.6150300000, NULL);
INSERT INTO country_prioritization_framework VALUES (62, 'South Africa', NULL, NULL, NULL, NULL, 45.7023505000, 31.0000000000, 90, 0.5600000000, 0.3300000000, NULL, NULL, 69.0000000000, -0.1500000000, 7508.0000000000, NULL, 51189307, 63.1000000000, 2009, 0.6290000000, 31.3000000000, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 29.8300000000, 6.0000000000, NULL, 9.9000000000, -0.0042039440, 7.7900000000, 47, NULL, NULL, 0.7200000000, NULL, 50, 0, 100, -0.1500000000, 1.6439800260, 'No', 'Yes', 'Medium', NULL, NULL, 0, 364, 0.0000000000, 0.3171336400, 1274.2500000000, NULL);
INSERT INTO country_prioritization_framework VALUES (63, 'Sudan', NULL, NULL, 'X', NULL, 95.0000000000, NULL, NULL, -1.7835178900, -1.4576684290, 2.3333333330, 2.5000000000, NULL, -1.5066044260, 1580.0040170000, NULL, 37195349, 35.0000000000, 2009, 0.4140000000, 44.1400000000, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 4.5627950960, 4.0856051190, NULL, 14.4000000000, -2.2668922330, 2.3800000000, 5, NULL, NULL, 0.3039864680, NULL, 50, 0, 0, -1.5066044300, 0.0000000000, 'Yes', 'Yes', 'Medium', NULL, NULL, 0, 443, 0.0000000000, 1.7774391100, 1137.5100000000, NULL);
INSERT INTO country_prioritization_framework VALUES (64, 'Suriname', NULL, NULL, 'X', NULL, 63.0479376400, NULL, NULL, 0.2782296000, 0.0090770660, NULL, NULL, NULL, -0.3681088150, 8864.0194490000, NULL, 534541, 53.0000000000, 1999, 0.6840000000, 27.2000000000, 1999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.0886801760, 0.0919403160, NULL, 11.5000000000, 0.0806974850, 6.6500000000, 44, NULL, NULL, 0.5160959140, NULL, 50, 0, 0, -0.3681088200, 0.0000000000, 'No', 'No', 'Low', NULL, NULL, 0, 187, 0.0000000000, 2.1676656100, 94.5800000000, NULL);
INSERT INTO country_prioritization_framework VALUES (65, 'Syrian Arab Republic', NULL, NULL, 'X', NULL, 34.8818803900, NULL, NULL, -1.7887321120, -1.2218641580, NULL, NULL, NULL, -1.1720554700, 3289.0563250000, NULL, 22399254, 36.0000000000, 2004, 0.6480000000, 16.8500000000, 2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 4.7839226000, 6.5957756180, NULL, NULL, -2.6878548540, 1.6300000000, 6, NULL, NULL, 0.2628773740, NULL, 50, 0, 0, -1.1720554700, 0.0000000000, 'Yes', 'Yes', 'Extreme', NULL, NULL, 0, 344, 0.0000000000, NULL, 340.0200000000, NULL);
INSERT INTO country_prioritization_framework VALUES (66, 'Tanzania, United Republic of', 'X', 'X', NULL, 'X', 42.0000000000, 47.6190480000, 47, -0.2229164330, -0.6908711400, 4.1666666670, 3.8333333330, 43.7500000000, -0.8506347800, 608.8542574000, NULL, 47783107, 38.0000000000, 2007, 0.4760000000, 87.8700000000, 2007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 2.1932332890, 5.2485838090, 3, 6.1000000000, 0.0269374400, 5.8800000000, 38, 4, 4, 0.4462321030, 4, 100, 100, 100, -0.8506347800, 31.7602427300, 'No', 'No', 'Medium', 4, 4, 66, 309, 14.9290909000, 10.2414053000, 2445.0500000000, 4);
INSERT INTO country_prioritization_framework VALUES (67, 'Timor-Leste', 'X', NULL, 'X', NULL, 72.7081397300, 82.0000000000, 36, 0.0468328960, -1.1934793720, 3.8333333330, 2.8333333330, 77.0833333300, -0.9786588540, 1068.1414240000, NULL, 1210233, NULL, NULL, 0.5760000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.0123703350, 0.0607546690, NULL, 0.0000000000, -0.2699519410, 7.1600000000, 34, NULL, NULL, 0.4730487680, NULL, 50, 100, 0, -0.9786588500, 7.6843615580, 'No', 'No', 'Medium', NULL, NULL, 33, 210, 5.4445991600, 25.1493397000, 283.7600000000, NULL);
INSERT INTO country_prioritization_framework VALUES (68, 'Togo', NULL, NULL, NULL, 'X', 30.1796081200, NULL, NULL, -1.0185350450, -1.3249219290, 3.1666666670, 3.0000000000, NULL, -0.9929301000, 574.1195223000, NULL, 6642928, 39.0000000000, 2011, 0.4590000000, 52.6500000000, 2011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.2961051750, 0.7296713530, NULL, 2.9000000000, -0.4187619710, 3.4500000000, 27, NULL, NULL, 0.2905472200, NULL, 100, 100, 0, -0.9929301000, 0.0000000000, 'No', 'No', 'Medium', NULL, NULL, 0, 270, 0.0000000000, 15.1164701000, 557.1600000000, NULL);
INSERT INTO country_prioritization_framework VALUES (69, 'Trinidad and Tobago', NULL, NULL, 'X', NULL, 64.2301621000, 83.1101190000, 38, 0.4510880840, 0.4025914850, NULL, NULL, 64.1975308600, -0.2913702570, 17934.0594200000, NULL, 1337439, 47.0000000000, 2007, 0.7600000000, 13.5000000000, 2007, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.4489184070, 0.2300376680, NULL, 37.7000000000, 0.1084995710, 6.9900000000, 48, NULL, NULL, 0.6191137360, NULL, 50, 66, 100, -0.2913702600, 0.0000000000, 'No', 'No', 'Medium', NULL, NULL, 0, 440, 0.0000000000, NULL, NULL, NULL);
INSERT INTO country_prioritization_framework VALUES (70, 'Tunisia', 'X', 'X', NULL, NULL, 16.3816133800, NULL, 11, -0.1948360940, -0.0151670710, NULL, NULL, NULL, -0.1832760790, 4236.7936310000, NULL, 10777500, 36.0000000000, 2010, 0.7120000000, 4.2500000000, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 2.9650677510, 3.1735865720, 2, 6.6000000000, -0.7259716180, 5.6700000000, 32, 2, 2, 0.3568061050, 3, 50, 0, 0, -0.1832760800, 7.4248225390, 'No', 'No', 'Low', 4, 4, 66, 190, 52.2612101000, 1.4158833500, 657.4600000000, 3);
INSERT INTO country_prioritization_framework VALUES (71, 'Turkmenistan', NULL, 'X', 'X', NULL, 64.8576551300, 4.1666667000, NULL, -2.2097121430, -1.2934054090, NULL, NULL, 12.5000000000, -1.3438340720, 6510.6121400000, NULL, 5172931, 41.0000000000, 1998, 0.6980000000, 49.7000000000, 1998, 100, NULL, NULL, 100, NULL, NULL, NULL, NULL, 'No', 0.8800000000, 1.9011139290, 1, 43.9000000000, 0.3508181630, 1.7200000000, 6, 2, 2, 0.2513936040, 1, 0, 0, 0, -1.3438340700, 0.0000000000, 'Yes', 'Yes', 'Medium', 2, 3, 0, 258, 0.0000000000, 0.1314595200, 38.4300000000, 1);
INSERT INTO country_prioritization_framework VALUES (72, 'Uganda', 'X', 'X', NULL, 'X', 4.2448569030, NULL, 65, -0.4935088510, -0.5679924320, 4.1666666670, 4.0000000000, NULL, -0.9521855310, 547.0062461000, NULL, 36345860, 44.0000000000, 2009, 0.4560000000, 64.7400000000, 2009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 1.5435879220, 3.9922956940, 2, 0.0000000000, -0.8898641400, 5.1600000000, 28, 3, 3, 0.4311444230, 3, 100, 0, 0, -0.9521855300, 9.3682043150, 'Yes', 'No', 'Medium', 3, 4, 66, 340, 4.7708300200, 9.3918153900, 1579.9300000000, 4);
INSERT INTO country_prioritization_framework VALUES (73, 'Ukraine', 'X', NULL, NULL, NULL, 15.1364645800, NULL, 54, -0.2882468330, -0.5832828600, NULL, NULL, NULL, -1.0283932210, 3867.0199840000, NULL, 45593300, 26.0000000000, 2010, 0.7400000000, 0.0800000000, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 4.6100000000, 16.7560823200, NULL, 5.8000000000, -0.0989362350, 5.9100000000, 36, NULL, NULL, 0.5359884020, NULL, 50, 66, 100, -1.0283932200, 16.1219516800, 'No', 'No', 'Low', NULL, NULL, 33, 374, 0.0000000000, 0.4587495700, 749.7000000000, NULL);
INSERT INTO country_prioritization_framework VALUES (74, 'Venezuela, Bolivarian Republic of', NULL, NULL, 'X', NULL, 89.2350149000, 68.9126980000, 37, -0.9248729530, -1.1368132470, NULL, NULL, 56.6666666700, -1.2406671560, 12728.7271600000, NULL, 29954782, 45.0000000000, 2006, 0.7480000000, 12.9100000000, 2006, 100, 100, 50, NULL, NULL, NULL, NULL, NULL, 'No', 7.1361828030, 5.1521812870, NULL, 32.6000000000, -0.9905989690, 5.1500000000, 24, NULL, NULL, 0.4271273350, NULL, 0, 0, 0, -1.2406671600, 0.0000000000, 'No', 'No', 'Medium', NULL, NULL, 0, 480, 0.0000000000, 0.0143009600, 45.2600000000, NULL);
INSERT INTO country_prioritization_framework VALUES (75, 'Viet Nam', 'X', 'X', 'X', NULL, 13.3123417500, 39.4047620000, 19, -1.3792750550, -0.2906909490, 4.0000000000, 3.3333333330, 62.5000000000, -0.5566901870, 1595.8130260000, NULL, 88775500, 36.0000000000, 2008, 0.6170000000, 43.3600000000, 2008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 1.3556851610, 4.4566014060, 2, 12.9000000000, 0.2511722790, 2.8900000000, 17, 3, 2, 0.3749604820, 3, 50, 0, 0, -0.5566901900, 7.1178819930, 'No', 'No', 'Low', 4, 4, 33, 271, 5.4445991600, 2.5924327100, 3513.7700000000, 4);
INSERT INTO country_prioritization_framework VALUES (76, 'Yemen', 'X', NULL, 'X', NULL, 90.2207361700, 45.5357140000, 11, -1.3937249880, -1.2757829960, 2.8333333330, 3.1666666670, 57.4074074100, -1.2324279920, 1494.4328320000, NULL, 23852409, 38.0000000000, 2005, 0.4580000000, 46.6000000000, 2005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 2.3146638400, 7.0236775620, NULL, 23.1000000000, -2.4308472450, 3.1200000000, 16, NULL, NULL, 0.2710192160, NULL, 50, 100, 0, -1.2324279900, 1.7646505230, 'No', 'No', 'Medium', NULL, NULL, 33, 455, 0.0000000000, 1.5008211000, 476.1300000000, NULL);
INSERT INTO country_prioritization_framework VALUES (77, 'Zambia', 'X', 'X', 'X', NULL, 78.2602418200, 62.1088440000, 4, -0.1555815310, -0.5016706480, 3.6666666670, 3.6666666670, 70.8333333300, -0.3607546830, 1469.1211620000, NULL, 14075099, 57.0000000000, 2010, 0.4480000000, 86.6400000000, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 1.6054367860, 1.5460346000, 2, 25.6000000000, 0.6139727400, 6.2600000000, 34, 3, 4, 0.4539482860, 4, 50, 100, 0, -0.3607546800, 1.2301341270, 'Yes', 'No', 'Low', 4, 4, 33, 258, 0.0000000000, 5.5868459400, 1072.9000000000, 4);
INSERT INTO country_prioritization_framework VALUES (78, 'Zimbabwe', NULL, NULL, NULL, NULL, 35.4000000000, 23.0000000000, 20, -1.4500000000, -1.2500000000, 2.0000000000, 2.3000000000, 48.0000000000, -0.2700000000, 788.0000000000, NULL, 13724317, NULL, NULL, 0.3970000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0.8280253740, 1.5063026050, NULL, 6.9000000000, -0.7851824390, 2.6700000000, 14, NULL, NULL, 0.3600000000, NULL, 50, 0, 0, -0.2700000000, 0.0000000000, 'Yes', 'No', 'Medium', NULL, NULL, 0, 334, 0.0000000000, 8.0988758400, 718.0000000000, NULL);


--
-- TOC entry 2022 (class 0 OID 16953)
-- Dependencies: 177
-- Data for Name: priority_and_limited_engagement_countries; Type: TABLE DATA; Schema: public; Owner: ahasemann
--

INSERT INTO priority_and_limited_engagement_countries VALUES (1, 'Afghanistan', 'AFG', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (2, 'Azerbaijan', 'AZE', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (3, 'Bolivia', 'BOL', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (4, 'Burkina Faso', 'BFA', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (5, 'Colombia', 'COL', 'X', NULL);
INSERT INTO priority_and_limited_engagement_countries VALUES (6, 'Ghana', 'GHA', 'X', NULL);
INSERT INTO priority_and_limited_engagement_countries VALUES (7, 'Guinea', 'GIN', 'X', NULL);
INSERT INTO priority_and_limited_engagement_countries VALUES (8, 'Indonesia', 'IDN', 'X', NULL);
INSERT INTO priority_and_limited_engagement_countries VALUES (9, 'Iraq', 'IRQ', 'X', NULL);
INSERT INTO priority_and_limited_engagement_countries VALUES (10, 'Kenya', 'KEN', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (11, 'Kyrgyz Republic', 'KGZ', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (12, 'Liberia', 'LBR', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (13, 'Libya', 'LBY', 'X', NULL);
INSERT INTO priority_and_limited_engagement_countries VALUES (14, 'Mexico', 'MEX', 'X', NULL);
INSERT INTO priority_and_limited_engagement_countries VALUES (15, 'Mongolia', 'MNG', 'X', NULL);
INSERT INTO priority_and_limited_engagement_countries VALUES (16, 'Myanmar', 'MMR', 'X', NULL);
INSERT INTO priority_and_limited_engagement_countries VALUES (17, 'Niger', 'NER', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (18, 'Nigeria', 'NGA', 'X', NULL);
INSERT INTO priority_and_limited_engagement_countries VALUES (19, 'Peru', 'PER', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (20, 'Philippines', 'PHL', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (21, 'Sierra Leone', 'SLE', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (22, 'Tanzania', 'TZA', 'X', NULL);
INSERT INTO priority_and_limited_engagement_countries VALUES (23, 'Timor-Leste', 'TLS', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (24, 'Tunisia', 'TUN', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (25, 'Uganda', 'UGA', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (26, 'Vietnam', 'VNM', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (27, 'Yemen', 'YEM', NULL, 'X');
INSERT INTO priority_and_limited_engagement_countries VALUES (28, 'Zambia', 'ZMB', NULL, 'X');


--
-- TOC entry 2029 (class 0 OID 17136)
-- Dependencies: 184
-- Data for Name: rgi_2013_questionnaire_with_categories; Type: TABLE DATA; Schema: public; Owner: ahasemann
--

INSERT INTO rgi_2013_questionnaire_with_categories VALUES (1, 4, 1, '1.1', '1.1', '1.1.001', 'Context', 'Does the country have a clear legal definition of ownership of mineral resources?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (2, 6, 1, '1.1', '1.1', '1.1.002', 'Context', 'Who has authority to grant hydrocarbon and mineral rights or licenses?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (3, 8, 1, '1.1', '1.1', '1.1.003', 'Context', 'What licensing practices does the government commonly follow?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (4, 10, 1, '1.1', '1.1', '1.1.004', 'Context', 'What is the fiscal system for mineral resources?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (5, 12, 1, '1.1', '1.1', '1.1.005', 'Context', 'What agency has authority to regulate the hydrocarbon and mineral sector?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (6, 16, 1, '1.2', '1.2.006', '1.2.006.a', 'Information on licensing process', 'What information does the government publish on the licensing process before negotiations?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (7, 18, 1, '1.2', '1.2.006', '1.2.006.b', 'Information on licensing process', 'What information does the government publish on the licensing process after negotiations?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (8, 21, 1, '1.2', '1.2', '1.2.007', 'Contract transparency', 'Are all contracts, agreements or negotiated terms for exploration and production, regardless of the way they are granted, disclosed to the public?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (9, 24, 1, '1.2', '1.2.008', '1.2.008.a', 'Environmental and social impact assessments', 'Does legislation require that mining, gas and oil development projects prepare an environmental impact assessment prior to the award of any mineral rights or project implementation?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (10, 26, 1, '1.2', '1.2.008', '1.2.008.b', 'Environmental and social impact assessments', 'Are environmental impact assessments for oil, gas and mining projects published by the authority in charge of regulating the sector and is there a consultation process?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (11, 28, 1, '1.2', '1.2.008', '1.2.008.c', 'Environmental and social impact assessments', 'Does legislation require that mining, gas and oil development projects prepare a social impact assessment?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (12, 30, 1, '1.2', '1.2.008', '1.2.008.d', 'Environmental and social impact assessments', 'Are social impact assessments for oil, gas and mining projects published and is there a consultation process?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (13, 33, 1, '1.2', '1.2', '1.2.009', 'Access to information and legislation', 'Does the government publish detailed mineral/hydrocarbon resource legislation?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (14, 35, 1, '1.2', '1.2', '1.2.010', 'Access to information and legislation', 'This country has adopted a rule or legislation that provides for disclosure of information in the oil, gas and mineral sectors.');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (15, 39, 1, '1.3', '1.3', '1.3.011', 'Legal Framework and Practices', 'The authority in charge of awarding licenses or contracts for mineral or hydrocarbon production is independent of the state owned company (SOC) or other operating companies.');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (16, 41, 1, '1.3', '1.3', '1.3.012', 'Legal Framework and Practices', 'Is the licensing process intended to be open and competitive to all qualified companies?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (17, 43, 1, '1.3', '1.3', '1.3.013', 'Legal Framework and Practices', 'Does the licensing process or legislation impose limits to discretionary powers of the authority in charge of awarding licenses or contracts?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (18, 45, 1, '1.3', '1.3', '1.3.014', 'Legal Framework and Practices', 'Does the legislative branch have any oversight role regarding contracts and licenses in the oil, gas and mining sector?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (19, 47, 1, '1.3', '1.3', '1.3.015', 'Legal Framework and Practices', 'Is there a due process to appeal licensing decisions?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (20, 49, 1, '1.3', '1.3', '1.3.016', 'Legal Framework and Practices', 'Is there a legal or regulatory requirement to disclose all beneficial ownership in oil, gas and mining companies or projects?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (21, 54, 2, '2.1', '2.1', '2.1.017', 'Context', 'Does the government receive in-kind payments instead of financial payments from resource companies?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (22, 56, 2, '2.1', '2.1', '2.1.018', 'Context', 'If the government or state owned companies sell physical commodities (oil, gas or minerals) from in-kind payments or own production, is there information about how these commodities are marketed?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (23, 58, 2, '2.1', '2.1', '2.1.019', 'Context', 'What authority actually collects payments from resource companies?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (24, 62, 2, '2.2', '2.2A.020', '2.2A.020.a', 'Does the Ministry of Finance publish periodical information on revenue generation?', 'Reserves');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (25, 64, 2, '2.2', '2.2A.020', '2.2A.020.b', 'Does the Ministry of Finance publish periodical information on revenue generation?', 'Production volumes');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (26, 66, 2, '2.2', '2.2A.020', '2.2A.020.c', 'Does the Ministry of Finance publish periodical information on revenue generation?', 'Information on prices');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (27, 68, 2, '2.2', '2.2A.020', '2.2A.020.d', 'Does the Ministry of Finance publish periodical information on revenue generation?', 'Value of resource exports');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (28, 70, 2, '2.2', '2.2A.020', '2.2A.020.e', 'Does the Ministry of Finance publish periodical information on revenue generation?', 'Estimates of investment in exploration and development');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (29, 72, 2, '2.2', '2.2A.020', '2.2A.020.f', 'Does the Ministry of Finance publish periodical information on revenue generation?', 'Production costs');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (30, 74, 2, '2.2', '2.2A.020', '2.2A.020.g', 'Does the Ministry of Finance publish periodical information on revenue generation?', 'Names of companies operating in country');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (31, 76, 2, '2.2', '2.2A.020', '2.2A.020.h', 'Does the Ministry of Finance publish periodical information on revenue generation?', 'Production data by company and/or block');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (32, 78, 2, '2.2', '2.2A.020', '2.2A.020.i', 'Does the Ministry of Finance publish periodical information on revenue generation?', 'Cost of subsidies or social investments paid by mineral revenue');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (33, 81, 2, '2.2', '2.2A.020.j', '2.2A.020.j1', 'Does the Ministry of Finance publish information on disaggregated revenue streams?', 'Production streams value');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (34, 83, 2, '2.2', '2.2A.020.j', '2.2A.020.j2', 'Does the Ministry of Finance publish information on disaggregated revenue streams?', 'Government s share in PSC');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (35, 85, 2, '2.2', '2.2A.020.j', '2.2A.020.j3', 'Does the Ministry of Finance publish information on disaggregated revenue streams?', 'Royalties');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (36, 87, 2, '2.2', '2.2A.020.j', '2.2A.020.j4', 'Does the Ministry of Finance publish information on disaggregated revenue streams?', 'Special taxes (e.g. withholding taxes, excise taxes, excess earning taxes, charged on extractive companies)');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (37, 89, 2, '2.2', '2.2A.020.j', '2.2A.020.j5', 'Does the Ministry of Finance publish information on disaggregated revenue streams?', 'Dividends');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (38, 91, 2, '2.2', '2.2A.020.j', '2.2A.020.j6', 'Does the Ministry of Finance publish information on disaggregated revenue streams?', 'Bonuses');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (39, 93, 2, '2.2', '2.2A.020.j', '2.2A.020.j7', 'Does the Ministry of Finance publish information on disaggregated revenue streams?', 'License fees');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (40, 95, 2, '2.2', '2.2A.020.j', '2.2A.020.j8', 'Does the Ministry of Finance publish information on disaggregated revenue streams?', 'Acreage fees');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (41, 97, 2, '2.2', '2.2A.020.j', '2.2A.020.j9', 'Does the Ministry of Finance publish information on disaggregated revenue streams?', 'Other (Explain in ''comments'' box.)');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (42, 100, 2, '2.2', '2.2A', '2.2A.021', 'Quality of reports', 'Are periodical reports containing information on revenue generation published by the Ministry of Finance understandable?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (43, 102, 2, '2.2', '2.2A', '2.2A.022', 'Quality of reports', 'How often are the periodical reports containing information on revenue generation published by the Ministry of Finance?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (44, 105, 2, '2.2', '2.2B.020', '2.2B.020.a', 'Does the Ministry of the extractive sector publish information on revenue generation?', 'Reserves');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (45, 107, 2, '2.2', '2.2B.020', '2.2B.020.b', 'Does the Ministry of the extractive sector publish information on revenue generation?', 'Production volumes');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (46, 109, 2, '2.2', '2.2B.020', '2.2B.020.c', 'Does the Ministry of the extractive sector publish information on revenue generation?', 'Information on prices');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (47, 111, 2, '2.2', '2.2B.020', '2.2B.020.d', 'Does the Ministry of the extractive sector publish information on revenue generation?', 'Value of resource exports');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (48, 113, 2, '2.2', '2.2B.020', '2.2B.020.e', 'Does the Ministry of the extractive sector publish information on revenue generation?', 'Estimates of investment in exploration and development');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (49, 115, 2, '2.2', '2.2B.020', '2.2B.020.f', 'Does the Ministry of the extractive sector publish information on revenue generation?', 'Production costs');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (50, 117, 2, '2.2', '2.2B.020', '2.2B.020.g', 'Does the Ministry of the extractive sector publish information on revenue generation?', 'Names of companies operating in country');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (51, 119, 2, '2.2', '2.2B.020', '2.2B.020.h', 'Does the Ministry of the extractive sector publish information on revenue generation?', 'Production data by company and/or block');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (52, 121, 2, '2.2', '2.2B.020', '2.2B.020.i', 'Does the Ministry of the extractive sector publish information on revenue generation?', 'Cost of subsidies or social investments paid by mineral revenue');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (53, 124, 2, '2.2', '2.2B.020.j', '2.2B.020.j1', 'Does the Ministry of the extractive sector publish information on disaggregated revenue streams?', 'Production streams value');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (54, 126, 2, '2.2', '2.2B.020.j', '2.2B.020.j2', 'Does the Ministry of the extractive sector publish information on disaggregated revenue streams?', 'Government s share in PSC');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (55, 128, 2, '2.2', '2.2B.020.j', '2.2B.020.j3', 'Does the Ministry of the extractive sector publish information on disaggregated revenue streams?', 'Royalties');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (56, 130, 2, '2.2', '2.2B.020.j', '2.2B.020.j4', 'Does the Ministry of the extractive sector publish information on disaggregated revenue streams?', 'Special taxes (e.g. withholding taxes, excise taxes, excess earning taxes, charged on extractive companies)');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (57, 132, 2, '2.2', '2.2B.020.j', '2.2B.020.j5', 'Does the Ministry of the extractive sector publish information on disaggregated revenue streams?', 'Dividends');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (58, 134, 2, '2.2', '2.2B.020.j', '2.2B.020.j6', 'Does the Ministry of the extractive sector publish information on disaggregated revenue streams?', 'Bonuses');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (59, 136, 2, '2.2', '2.2B.020.j', '2.2B.020.j7', 'Does the Ministry of the extractive sector publish information on disaggregated revenue streams?', 'License fees');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (60, 138, 2, '2.2', '2.2B.020.j', '2.2B.020.j8', 'Does the Ministry of the extractive sector publish information on disaggregated revenue streams?', 'Acreage fees');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (61, 140, 2, '2.2', '2.2B.020.j', '2.2B.020.j9', 'Does the Ministry of the extractive sector publish information on disaggregated revenue streams?', 'Other (Explain in ''comments'' box.)');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (62, 143, 2, '2.2', '2.2B', '2.2B.021', 'Quality of reports', 'Are periodical reports containing information on revenue generation published by the Ministry of the  extractive sector understandable?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (63, 145, 2, '2.2', '2.2B', '2.2B.022', 'Quality of reports', 'How often are the periodical reports containing information on revenue generation published by the Ministry of the extractive sector?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (64, 148, 2, '2.2', '2.2C.020', '2.2C.020.a', 'Does a Regulatory Agency publish information on revenue generation?', 'Reserves');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (65, 150, 2, '2.2', '2.2C.020', '2.2C.020.b', 'Does a Regulatory Agency publish information on revenue generation?', 'Production volumes');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (66, 152, 2, '2.2', '2.2C.020', '2.2C.020.c', 'Does a Regulatory Agency publish information on revenue generation?', 'Information on prices');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (67, 154, 2, '2.2', '2.2C.020', '2.2C.020.d', 'Does a Regulatory Agency publish information on revenue generation?', 'Value of resource exports');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (68, 156, 2, '2.2', '2.2C.020', '2.2C.020.e', 'Does a Regulatory Agency publish information on revenue generation?', 'Estimates of investment in exploration and development');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (69, 158, 2, '2.2', '2.2C.020', '2.2C.020.f', 'Does a Regulatory Agency publish information on revenue generation?', 'Production costs');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (70, 160, 2, '2.2', '2.2C.020', '2.2C.020.g', 'Does a Regulatory Agency publish information on revenue generation?', 'Names of companies operating in country');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (71, 162, 2, '2.2', '2.2C.020', '2.2C.020.h', 'Does a Regulatory Agency publish information on revenue generation?', 'Production data by company and/or block');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (72, 164, 2, '2.2', '2.2C.020', '2.2C.020.i', 'Does a Regulatory Agency publish information on revenue generation?', 'Cost of subsidies or social investments paid by mineral revenue');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (73, 167, 2, '2.2', '2.2C.020.j', '2.2C.020.j1', 'Does a Regulatory Agency publish information on disaggregated revenue streams?', 'Production streams value');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (74, 169, 2, '2.2', '2.2C.020.j', '2.2C.020.j2', 'Does a Regulatory Agency publish information on disaggregated revenue streams?', 'Government s share in PSC');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (75, 171, 2, '2.2', '2.2C.020.j', '2.2C.020.j3', 'Does a Regulatory Agency publish information on disaggregated revenue streams?', 'Royalties');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (76, 173, 2, '2.2', '2.2C.020.j', '2.2C.020.j4', 'Does a Regulatory Agency publish information on disaggregated revenue streams?', 'Special taxes (e.g. withholding taxes, excise taxes, excess earning taxes, charged on extractive companies)');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (77, 175, 2, '2.2', '2.2C.020.j', '2.2C.020.j5', 'Does a Regulatory Agency publish information on disaggregated revenue streams?', 'Dividends');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (78, 177, 2, '2.2', '2.2C.020.j', '2.2C.020.j6', 'Does a Regulatory Agency publish information on disaggregated revenue streams?', 'Bonuses');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (79, 179, 2, '2.2', '2.2C.020.j', '2.2C.020.j7', 'Does a Regulatory Agency publish information on disaggregated revenue streams?', 'License fees');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (80, 181, 2, '2.2', '2.2C.020.j', '2.2C.020.j8', 'Does a Regulatory Agency publish information on disaggregated revenue streams?', 'Acreage fees');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (81, 183, 2, '2.2', '2.2C.020.j', '2.2C.020.j9', 'Does a Regulatory Agency publish information on disaggregated revenue streams?', 'Other (Explain in ''comments'' box.)');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (82, 186, 2, '2.2', '2.2C', '2.2C.021', 'Quality of reports', 'Are periodical reports containing information on revenue generation published by the Regulatory Agency understandable?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (83, 188, 2, '2.2', '2.2C', '2.2C.022', 'Quality of reports', 'How often are the periodical reports containing information on revenue generation published by the Regulatory Agency?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (84, 191, 2, '2.2', '2.2D.020', '2.2D.020.a', 'Does the Central Bank publish information on revenue generation?', 'Reserves');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (85, 193, 2, '2.2', '2.2D.020', '2.2D.020.b', 'Does the Central Bank publish information on revenue generation?', 'Production volumes');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (86, 195, 2, '2.2', '2.2D.020', '2.2D.020.c', 'Does the Central Bank publish information on revenue generation?', 'Information on prices');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (87, 197, 2, '2.2', '2.2D.020', '2.2D.020.d', 'Does the Central Bank publish information on revenue generation?', 'Value of resource exports');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (88, 199, 2, '2.2', '2.2D.020', '2.2D.020.e', 'Does the Central Bank publish information on revenue generation?', 'Estimates of investment in exploration and development');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (89, 201, 2, '2.2', '2.2D.020', '2.2D.020.f', 'Does the Central Bank publish information on revenue generation?', 'Production costs');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (90, 203, 2, '2.2', '2.2D.020', '2.2D.020.g', 'Does the Central Bank publish information on revenue generation?', 'Names of companies operating in country');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (91, 205, 2, '2.2', '2.2D.020', '2.2D.020.h', 'Does the Central Bank publish information on revenue generation?', 'Production data by company and/or block');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (92, 207, 2, '2.2', '2.2D.020', '2.2D.020.i', 'Does the Central Bank publish information on revenue generation?', 'Cost of subsidies or social investments paid by mineral revenue');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (93, 210, 2, '2.2', '2.2D.020.j', '2.2D.020.j1', 'Does the Central Bank publish information on disaggregated revenue streams?', 'Production streams value');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (94, 212, 2, '2.2', '2.2D.020.j', '2.2D.020.j2', 'Does the Central Bank publish information on disaggregated revenue streams?', 'Government s share in PSC');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (95, 214, 2, '2.2', '2.2D.020.j', '2.2D.020.j3', 'Does the Central Bank publish information on disaggregated revenue streams?', 'Royalties');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (96, 216, 2, '2.2', '2.2D.020.j', '2.2D.020.j4', 'Does the Central Bank publish information on disaggregated revenue streams?', 'Special taxes (e.g. withholding taxes, excise taxes, excess earning taxes, charged on extractive companies)');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (97, 218, 2, '2.2', '2.2D.020.j', '2.2D.020.j5', 'Does the Central Bank publish information on disaggregated revenue streams?', 'Dividends');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (98, 220, 2, '2.2', '2.2D.020.j', '2.2D.020.j6', 'Does the Central Bank publish information on disaggregated revenue streams?', 'Bonuses');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (99, 222, 2, '2.2', '2.2D.020.j', '2.2D.020.j7', 'Does the Central Bank publish information on disaggregated revenue streams?', 'License fees');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (100, 224, 2, '2.2', '2.2D.020.j', '2.2D.020.j8', 'Does the Central Bank publish information on disaggregated revenue streams?', 'Acreage fees');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (101, 226, 2, '2.2', '2.2D.020.j', '2.2D.020.j9', 'Does the Central Bank publish information on disaggregated revenue streams?', 'Other (Explain in ''comments'' box.)');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (102, 229, 2, '2.2', '2.2D', '2.2D.021', 'Quality of reports', 'Are periodical reports containing information on revenue generation published by the Central Bank understandable?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (103, 231, 2, '2.2', '2.2D', '2.2D.022', 'Quality of reports', 'How often are the periodical reports containing information on revenue generation published by the Central Bank?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (104, 234, 2, '2.2', '2.2E.020', '2.2E.020.a', 'Does any other government agency or entity publish information on revenue generation?', 'Reserves');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (105, 236, 2, '2.2', '2.2E.020', '2.2E.020.b', 'Does any other government agency or entity publish information on revenue generation?', 'Production volumes');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (106, 238, 2, '2.2', '2.2E.020', '2.2E.020.c', 'Does any other government agency or entity publish information on revenue generation?', 'Information on prices');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (107, 240, 2, '2.2', '2.2E.020', '2.2E.020.d', 'Does any other government agency or entity publish information on revenue generation?', 'Value of resource exports');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (108, 242, 2, '2.2', '2.2E.020', '2.2E.020.e', 'Does any other government agency or entity publish information on revenue generation?', 'Estimates of investment in exploration and development');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (109, 244, 2, '2.2', '2.2E.020', '2.2E.020.f', 'Does any other government agency or entity publish information on revenue generation?', 'Production costs');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (110, 246, 2, '2.2', '2.2E.020', '2.2E.020.g', 'Does any other government agency or entity publish information on revenue generation?', 'Names of companies operating in country');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (111, 248, 2, '2.2', '2.2E.020', '2.2E.020.h', 'Does any other government agency or entity publish information on revenue generation?', 'Production data by company and/or block');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (112, 250, 2, '2.2', '2.2E.020', '2.2E.020.i', 'Does any other government agency or entity publish information on revenue generation?', 'Cost of subsidies or social investments paid by mineral revenue');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (113, 253, 2, '2.2', '2.2E.020.j', '2.2E.020.j1', 'Does any other government agency or entity publish information on disaggregated revenue streams?', 'Production streams value');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (114, 255, 2, '2.2', '2.2E.020.j', '2.2E.020.j2', 'Does any other government agency or entity publish information on disaggregated revenue streams?', 'Government s share in PSC');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (115, 257, 2, '2.2', '2.2E.020.j', '2.2E.020.j3', 'Does any other government agency or entity publish information on disaggregated revenue streams?', 'Royalties');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (116, 259, 2, '2.2', '2.2E.020.j', '2.2E.020.j4', 'Does any other government agency or entity publish information on disaggregated revenue streams?', 'Special taxes (e.g. withholding taxes, excise taxes, excess earning taxes, charged on extractive companies)');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (117, 261, 2, '2.2', '2.2E.020.j', '2.2E.020.j5', 'Does any other government agency or entity publish information on disaggregated revenue streams?', 'Dividends');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (118, 263, 2, '2.2', '2.2E.020.j', '2.2E.020.j6', 'Does any other government agency or entity publish information on disaggregated revenue streams?', 'Bonuses');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (119, 265, 2, '2.2', '2.2E.020.j', '2.2E.020.j7', 'Does any other government agency or entity publish information on disaggregated revenue streams?', 'License fees');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (120, 267, 2, '2.2', '2.2E.020.j', '2.2E.020.j8', 'Does any other government agency or entity publish information on disaggregated revenue streams?', 'Acreage fees');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (121, 269, 2, '2.2', '2.2E.020.j', '2.2E.020.j9', 'Does any other government agency or entity publish information on disaggregated revenue streams?', 'Other (Explain in ''comments'' box.)');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (122, 272, 2, '2.2', '2.2E', '2.2E.021', 'Quality of reports', 'Are periodical reports containing information on revenue generation published by any other government agency or entity understandable?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (123, 274, 2, '2.2', '2.2E', '2.2E.022', 'Quality of reports', 'How often are the periodical reports containing information on revenue generation published by the any other governmental agency or entity?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (124, 277, 2, '2.2', '2.2', '2.2.023', 'Public sector balance', 'Does the government include the SOC financial balance (its assets and liabilities) within the public sector balance or overall balance of general government in reports to the legislature?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (125, 279, 2, '2.2', '2.2', '2.2.024', 'Public sector balance', 'Does the government include projections of transactions, accounts of actual spending by the natural resource funds, and their assets and liabilities, within the public sector balance or overall balance of general government in reports to the legislature?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (126, 281, 2, '2.2', '2.2', '2.2.025', 'Public sector balance', 'Does the government provide information on the non resource fiscal balance in its budget proposal?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (127, 285, 2, '2.3', '2.3', '2.3.026', 'Legal Framework and Practices', 'In the legal framework, what government agencies have authority to collect taxes and payments from resource companies?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (128, 287, 2, '2.3', '2.3', '2.3.027', 'Legal Framework and Practices', 'Are all resource related revenues, including those collected by state owned companies, regulatory agencies, ministries, special funds or by the tax authority placed in the national treasury?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (129, 289, 2, '2.3', '2.3', '2.3.028', 'Legal Framework and Practices', 'Are government officials with a role in the oversight of the oil, gas or mining sector required to disclose information about their financial interest in any extractive activity or projects?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (130, 291, 2, '2.3', '2.3', '2.3.029', 'Legal Framework and Practices', 'Is there independent external validation of internal controls of agencies in charge of receiving payments from resource companies with the objective of providing assurances of integrity of public funds and sound financial management?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (131, 293, 2, '2.3', '2.3', '2.3.030', 'Legal Framework and Practices', 'Does the national audit office (or similar independent organization) report regularly to the legislature on its findings, including an objective analysis of agencies in charge of managing resource revenues, and are these reports published?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (132, 295, 2, '2.3', '2.3', '2.3.031', 'Legal Framework and Practices', 'Does a Parliamentary committee scrutinize  reports on resource related revenues and, if so, when does this occur?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (133, 297, 2, '2.3', '2.3', '2.3.032', 'Legal Framework and Practices', 'Is this country an EITI candidate or compliant country?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (134, 302, 3, '3.1', '3.1.1', '3.1.1.033', 'Context', 'Is there a state-owned company? If so, what is its role in the extractive sector?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (135, 304, 3, '3.1', '3.1.1', '3.1.1.034', 'Context', 'How is government ownership of resource companies structured in this country?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (136, 306, 3, '3.1', '3.1.1', '3.1.1.035', 'Context', 'Is there more than one state-owned company (SOC) operating in the extractive sector?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (137, 308, 3, '3.1', '3.1.1', '3.1.1.036', 'Context', 'Do the roles and responsibilities of the SOC include provision of subsidies or social expenditures (quasi-fiscal activities)?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (138, 311, 3, '3.1', '3.1.2', '3.1.2.037', 'Comprehensive reports', 'Does the SOC publish comprehensive reports with information about its operations and subsidiaries?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (139, 314, 3, '3.1', '3.1.2.038', '3.1.2.038.a', 'Does the SOC publish information on revenue generation?', 'Reserves');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (140, 316, 3, '3.1', '3.1.2.038', '3.1.2.038.b', 'Does the SOC publish information on revenue generation?', 'Production volumes');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (141, 318, 3, '3.1', '3.1.2.038', '3.1.2.038.c', 'Does the SOC publish information on revenue generation?', 'Information on prices');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (142, 320, 3, '3.1', '3.1.2.038', '3.1.2.038.d', 'Does the SOC publish information on revenue generation?', 'Value of resource exports');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (143, 322, 3, '3.1', '3.1.2.038', '3.1.2.038.e', 'Does the SOC publish information on revenue generation?', 'Estimates of investment in exploration and development');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (144, 324, 3, '3.1', '3.1.2.038', '3.1.2.038.f', 'Does the SOC publish information on revenue generation?', 'Production costs');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (145, 326, 3, '3.1', '3.1.2.038', '3.1.2.038.g', 'Does the SOC publish information on revenue generation?', 'Names of companies operating in country');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (146, 328, 3, '3.1', '3.1.2.038', '3.1.2.038.h', 'Does the SOC publish information on revenue generation?', 'Production data by company and/or block');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (147, 330, 3, '3.1', '3.1.2.038', '3.1.2.038.i', 'Does the SOC publish information on revenue generation?', 'Quasi fiscal activities');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (148, 333, 3, '3.1', '3.1.2.038.j', '3.1.2.038.j1', 'Disaggregated Revenue Streams', 'Production streams value');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (149, 335, 3, '3.1', '3.1.2.038.j', '3.1.2.038.j2', 'Disaggregated Revenue Streams', 'Government s share in PSC');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (150, 337, 3, '3.1', '3.1.2.038.j', '3.1.2.038.j3', 'Disaggregated Revenue Streams', 'Royalties');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (151, 339, 3, '3.1', '3.1.2.038.j', '3.1.2.038.j4', 'Disaggregated Revenue Streams', 'Special taxes');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (152, 341, 3, '3.1', '3.1.2.038.j', '3.1.2.038.j5', 'Disaggregated Revenue Streams', 'Dividends');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (153, 343, 3, '3.1', '3.1.2.038.j', '3.1.2.038.j6', 'Disaggregated Revenue Streams', 'Bonuses');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (154, 345, 3, '3.1', '3.1.2.038.j', '3.1.2.038.j7', 'Disaggregated Revenue Streams', 'License fees');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (155, 347, 3, '3.1', '3.1.2.038.j', '3.1.2.038.j8', 'Disaggregated Revenue Streams', 'Acreage fees');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (156, 349, 3, '3.1', '3.1.2.038.j', '3.1.2.038.j9', 'Disaggregated Revenue Streams', 'Other (Describe below)');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (157, 352, 3, '3.1', '3.1.2', '3.1.2.039', 'Quality of reports', 'Are the reports published by the state owned company understandable?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (158, 354, 3, '3.1', '3.1.2', '3.1.2.040', 'Quality of reports', 'How often are the reports or statistical databases containing information on revenue generation published by the state owned company?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (159, 356, 3, '3.1', '3.1.2', '3.1.2.041', 'Quality of reports', 'If the SOC is involved with quasi fiscal activities, does it publish information about them?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (160, 358, 3, '3.1', '3.1.2', '3.1.2.042', 'Quality of reports', 'If there are joint ventures, does the SOC (or government) publish information on its share of costs and revenues deriving from its equity participation in joint ventures?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (161, 361, 3, '3.1', '3.1.2.043', '3.1.2.043.a', 'Audited reports', 'Is the SOC subject to annual audits conducted by an independent external auditor to ensure that the financial statements represent the financial position and performance of the company?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (162, 363, 3, '3.1', '3.1.2.043', '3.1.2.043.b', 'Audited reports', 'Are SOC audited reports published?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (163, 366, 3, '3.1', '3.1.3', '3.1.3.044', 'Legal Framework and Practice', 'Does the SOC have a legal obligation to publish financial reports?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (164, 368, 3, '3.1', '3.1.3', '3.1.3.045', 'Legal Framework and Practice', 'Does the SOC follow internationally recognized accounting standards?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (165, 370, 3, '3.1', '3.1.3', '3.1.3.046', 'Legal Framework and Practice', 'Do SOC audits include consolidated accounts that cover all of the SOC subsidiaries?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (166, 372, 3, '3.1', '3.1.3', '3.1.3.047', 'Legal Framework and Practice', 'Are officials of the SOC required to disclose information about their financial interest in any oil, gas or mining projects?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (167, 374, 3, '3.1', '3.1.3', '3.1.3.048', 'Legal Framework and Practice', 'Does the SOC publish information on the composition of its Board of Directors?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (168, 376, 3, '3.1', '3.1.3', '3.1.3.049', 'Legal Framework and Practice', 'Does the SOC publish information about the rules governing decision making by the Board of Directors?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (169, 380, 3, '3.2', '3.2.1', '3.2.1.050', 'Context', 'Has the government created a special fund or natural resource fund that concentrates revenue directly from oil, gas or mineral extraction?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (170, 382, 3, '3.2', '3.2.1', '3.2.1.051', 'Context', 'What authority is responsible for the natural resource fund?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (171, 385, 3, '3.2', '3.2.2', '3.2.2.052', 'Disclosure', 'Are the rules for the fund''s deposits and withdrawals published, including the formula(s) for deposits and withdrawals?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (172, 387, 3, '3.2', '3.2.2', '3.2.2.053', 'Disclosure', 'Does the fund management or authority in charge of the fund publish comprehensive information on its assets, transactions and investments?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (173, 389, 3, '3.2', '3.2.2', '3.2.2.054', 'Disclosure', 'Are the reports containing information on the fund''s assets and transactions understandable?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (174, 391, 3, '3.2', '3.2.2', '3.2.2.055', 'Disclosure', 'How often are financial reports published by the fund management or authority in charge?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (175, 394, 3, '3.2', '3.2.2.056', '3.2.2.056a', 'Audited reports', 'Are the fund s financial reports audited?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (176, 396, 3, '3.2', '3.2.2.056', '3.2.2.056b', 'Audited reports', 'Are the audited financial reports published?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (177, 399, 3, '3.2', '3.2.3', '3.2.3.057', 'Legal Framework and Practice', 'Are the rules governing deposits into the fund defined by legislation?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (178, 401, 3, '3.2', '3.2.3', '3.2.3.058', 'Legal Framework and Practice', 'In practice, does the government follow the rules governing deposits to the natural resource fund?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (179, 403, 3, '3.2', '3.2.3', '3.2.3.059', 'Legal Framework and Practice', 'Are the rules governing withdrawal or disbursement from the fund defined by legislation?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (180, 405, 3, '3.2', '3.2.3', '3.2.3.060', 'Legal Framework and Practice', 'In practice, does the government follow the rules governing withdrawal or spending from natural resource fund?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (181, 407, 3, '3.2', '3.2.3', '3.2.3.061', 'Legal Framework and Practice', 'Are withdrawals or spending from the fund reserves approved by the legislature as part of the budget process?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (182, 409, 3, '3.2', '3.2.3', '3.2.3.062', 'Legal Framework and Practice', 'Are officials of the natural resource fund required to disclose information about their financial interest in any oil, gas or mining projects?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (183, 413, 3, '3.3', '3.3.1', '3.3.1.063', 'Context', 'Do central governments transfer resources to subnational authorities based on extraction of mineral resources?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (184, 415, 3, '3.3', '3.3.1', '3.3.1.064', 'Context', 'Are conditions imposed on subnational government as part of revenue sharing regime?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (185, 418, 3, '3.3', '3.3.2', '3.3.2.065', 'Disclosure', 'Are the rules for revenue transfers from central to sub national governments published, including the formula(s) for revenue sharing?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (186, 420, 3, '3.3', '3.3.2', '3.3.2.066', 'Disclosure', 'Does the central government publish comprehensive information on transfers of resource related revenues to sub-national governments?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (187, 422, 3, '3.3', '3.3.2', '3.3.2.067', 'Disclosure', 'Are the reports containing information on transfers of resource related revenues to sub-national governments understandable?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (188, 424, 3, '3.3', '3.3.2', '3.3.2.068', 'Disclosure', 'How often does the central government publish information on transfers of resource related revenues to sub-national governments?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (189, 426, 3, '3.3', '3.3.2', '3.3.2.069', 'Disclosure', 'Do sub-national governments publish information on transfers received from central governments?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (190, 429, 3, '3.3', '3.3.3', '3.3.3.070', 'Legal Framework and Practice', 'Are arrangements (including formulas and responsible institutions) for resource revenue sharing between central and sub-national governments defined by legislation?');
INSERT INTO rgi_2013_questionnaire_with_categories VALUES (191, 431, 3, '3.3', '3.3.3', '3.3.3.071', 'Legal Framework and Practice', 'In practice, does the government follow the rules established by resource revenue sharing legislation?');


--
-- TOC entry 2027 (class 0 OID 17097)
-- Dependencies: 182
-- Data for Name: rgi_raw_data_web_column_a_and_i_to_bn_transposed; Type: TABLE DATA; Schema: public; Owner: ahasemann
--

INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (1, 'Afghanistan', 33.3333, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL, 66.6667, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, NULL, 66.6667, 0.0000, 0.0000, NULL, 33.3333, 0.0000, 0.0000, NULL, 100.0000, 0.0000, 100.0000, NULL, 66.6667, 66.6667, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 66.6667, 66.6667, 66.6667, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 100.0000, 0.0000, 100.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 100.0000, 33.3333, 0.0000, 66.6667, 33.3333, 100.0000, 66.6667, 100.0000, 0.0000, 0.0000, 66.6667, 100.0000, 66.6667, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.1858, 0.9569, 24.4681, 8.0569, 10.7784, 4.7847, 0.4739);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (2, 'Algeria', 0.0000, 100.0000, 0.0000, 100.0000, 66.6667, 100.0000, 100.0000, 66.6667, 33.3333, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, 33.3333, 0.0000, 33.3333, 33.3333, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 33.3333, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 100.0000, 0.0000, NULL, NULL, 66.6667, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, NULL, NULL, 33.3333, 33.3333, NULL, 33.3333, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 66.6667, 100.0000, 33.3333, 0.0000, 0.0000, 100.0000, 66.6667, 33.3333, NULL, NULL, 66.6667, 33.3333, 66.6667, 33.3333, NULL, NULL, NULL, NULL, 0.0000, 66.6667, 33.3333, 100.0000, 33.3333, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 33.3333, 66.6667, 39.3443, 37.7990, 6.3830, 18.4834, 25.7485, 33.9713, 27.0142);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (3, 'Angola', 0.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 66.6667, 100.0000, 33.3333, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, NULL, NULL, 66.6667, 66.6667, 0.0000, 0.0000, 100.0000, 100.0000, 33.3333, 100.0000, NULL, NULL, 66.6667, 66.6667, 100.0000, 100.0000, 0.0000, 33.3333, 100.0000, 33.3333, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, 0.0000, 66.6667, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 33.3333, 0.0000, 66.6667, 0.0000, 33.3333, NULL, NULL, NULL, NULL, 0.0000, 100.0000, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 33.3333, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 66.6667, 66.6667, 66.6667, 66.6667, NULL, 0.0000, 33.3333, 0.0000, NULL, 0.0000, 0.0000, 66.6667, 0.0000, NULL, 100.0000, 100.0000, 0.0000, 66.6667, 66.6667, 66.6667, 66.6667, 66.6667, 66.6667, 66.6667, 0.0000, 100.0000, 0.0000, 66.6667, 66.6667, 66.6667, 66.6667, 66.6667, NULL, 66.6667, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 66.6667, 66.6667, 100.0000, 66.6667, 0.0000, 0.0000, 100.0000, 33.3333, 66.6667, 100.0000, 100.0000, 100.0000, NULL, NULL, 66.6667, 33.3333, 100.0000, 66.6667, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 8.7432, 3.8278, 26.5957, 14.6919, 22.1557, 12.4402, 9.0047);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (4, 'Australia(WesternAustralia)', 100.0000, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, NULL, 100.0000, NULL, 0.0000, NULL, 0.0000, NULL, 100.0000, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 66.6667, 100.0000, 66.6667, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, 66.6667, 33.3333, 100.0000, 33.3333, 100.0000, 33.3333, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 66.6667, 33.3333, 100.0000, 96.1749, 96.1722, NULL, 95.2607, 97.0060, 96.1722, 95.2607);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (5, 'Azerbaijan', 66.6667, 66.6667, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 66.6667, 66.6667, 0.0000, 33.3333, 0.0000, 100.0000, 0.0000, 100.0000, NULL, 0.0000, 33.3333, 33.3333, 100.0000, 33.3333, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 100.0000, 100.0000, NULL, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 100.0000, NULL, NULL, 0.0000, 0.0000, 66.6667, NULL, 66.6667, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, NULL, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 66.6667, NULL, NULL, NULL, 0.0000, 66.6667, NULL, 33.3333, 33.3333, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 100.0000, NULL, NULL, 100.0000, 66.6667, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 33.3333, 100.0000, 100.0000, 100.0000, 66.6667, 0.0000, 0.0000, NULL, NULL, NULL, 22.4044, 9.0909, 45.7447, 12.3223, 19.7605, 22.0096, 21.8009);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (6, 'Bahrain', 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 66.6667, 100.0000, 0.0000, 100.0000, 100.0000, NULL, 33.3333, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, 0.0000, 100.0000, 100.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 100.0000, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 0.0000, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 0.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 66.6667, 33.3333, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, NULL, NULL, NULL, 0.0000, 33.3333, 0.0000, 100.0000, 100.0000, 100.0000, 33.3333, 100.0000, NULL, NULL, 100.0000, 33.3333, NULL, NULL, 33.3333, 33.3333, 100.0000, 33.3333, 33.3333, 0.0000, NULL, NULL, 0.0000, 0.0000, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, 75.4098, 63.6364, NULL, 25.1185, 27.5449, 69.8565, 64.4550);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (7, 'Bolivia', 66.6667, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, 100.0000, 100.0000, NULL, NULL, 100.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 100.0000, 0.0000, NULL, 33.3333, 0.0000, 0.0000, NULL, 66.6667, 66.6667, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 66.6667, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 33.3333, 0.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, NULL, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 66.6667, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, NULL, NULL, 0.0000, 100.0000, 100.0000, 66.6667, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 33.3333, 100.0000, 36.0656, 38.2775, 18.0851, 47.3934, 52.6946, 39.2344, 13.2701);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (8, 'Botswana', 0.0000, 100.0000, 0.0000, 100.0000, 66.6667, 100.0000, 0.0000, 66.6667, 33.3333, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 33.3333, 33.3333, 100.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 33.3333, 0.0000, 100.0000, NULL, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 100.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 33.3333, 0.0000, NULL, NULL, 33.3333, 0.0000, 0.0000, 66.6667, 66.6667, 66.6667, 0.0000, 0.0000, 0.0000, 66.6667, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 66.6667, 0.0000, 100.0000, 0.0000, 0.0000, 33.3333, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 33.3333, 66.6667, 100.0000, 100.0000, 66.6667, 33.3333, 66.6667, 33.3333, NULL, NULL, NULL, NULL, 100.0000, 66.6667, 33.3333, 66.6667, 0.0000, NULL, 100.0000, 0.0000, 33.3333, 33.3333, 66.6667, 100.0000, 66.6667, 66.6667, 0.0000, 100.0000, 0.0000, 0.0000, 100.0000, 83.0601, 79.9043, 59.5745, 59.7156, 79.6407, 67.4641, 67.7725);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (9, 'Brazil', 100.0000, 100.0000, 0.0000, 100.0000, 66.6667, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, NULL, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, NULL, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 100.0000, NULL, 100.0000, 100.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 100.0000, NULL, 100.0000, 100.0000, 0.0000, 0.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 100.0000, NULL, 100.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, NULL, 100.0000, 100.0000, 100.0000, 100.0000, NULL, 100.0000, NULL, 100.0000, 0.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 33.3333, 100.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, 60.6557, 59.8086, 91.4894, 63.5071, 72.4551, 56.9378, 55.4502);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (10, 'Cambodia', 0.0000, 66.6667, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 66.6667, 33.3333, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 66.6667, 100.0000, NULL, 66.6667, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 66.6667, 0.0000, 66.6667, 0.0000, NULL, NULL, NULL, 33.3333, 33.3333, 33.3333, 33.3333, NULL, NULL, 33.3333, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.9290, 7.6555, 21.2766, 24.6445, 40.7186, 22.4880, 12.7962);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (11, 'Cameroon', 33.3333, 66.6667, 66.6667, 0.0000, 66.6667, 100.0000, 100.0000, 66.6667, 0.0000, 33.3333, NULL, 100.0000, 100.0000, NULL, NULL, NULL, 33.3333, 33.3333, 0.0000, 100.0000, 100.0000, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 66.6667, 0.0000, 0.0000, NULL, NULL, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 33.3333, NULL, NULL, 66.6667, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 100.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 33.3333, 33.3333, 33.3333, 33.3333, 33.3333, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 33.3333, NULL, 33.3333, 100.0000, 0.0000, 66.6667, 66.6667, 0.0000, 0.0000, 0.0000, 66.6667, 66.6667, NULL, 66.6667, 66.6667, 0.0000, 66.6667, 0.0000, 0.0000, 66.6667, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 33.3333, 0.0000, 0.0000, 66.6667, 0.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 33.3333, NULL, NULL, 0.0000, 33.3333, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27.3224, 16.7464, 8.5106, 16.5877, 25.1497, 18.6603, 15.1659);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (12, 'Canada(Alberta)', 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 66.6667, NULL, 33.3333, 100.0000, NULL, 0.0000, 100.0000, NULL, 100.0000, 100.0000, 100.0000, 66.6667, NULL, NULL, NULL, 66.6667, 100.0000, 0.0000, 0.0000, 33.3333, 100.0000, 100.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, NULL, 100.0000, NULL, 0.0000, NULL, 100.0000, NULL, 0.0000, NULL, 0.0000, NULL, 100.0000, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 66.6667, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 33.3333, NULL, NULL, NULL, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 33.3333, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, 95.0820, 96.6507, NULL, 93.8389, 95.2096, 96.6507, 96.2085);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (13, 'Chile', 66.6667, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, 66.6667, 66.6667, 0.0000, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 33.3333, 0.0000, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, NULL, NULL, NULL, NULL, 100.0000, NULL, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, NULL, 66.6667, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, 100.0000, 0.0000, 100.0000, 100.0000, 66.6667, 0.0000, 66.6667, 100.0000, 66.6667, 33.3333, 100.0000, 33.3333, NULL, NULL, 100.0000, 33.3333, 0.0000, 66.6667, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, 88.5246, 90.9091, 92.5532, 81.9905, 80.2395, 83.7321, 87.6777);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (14, 'China', 33.3333, 66.6667, 0.0000, 100.0000, 66.6667, 0.0000, 0.0000, NULL, 66.6667, 66.6667, NULL, 0.0000, 100.0000, NULL, NULL, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 0.0000, 66.6667, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 66.6667, 66.6667, 100.0000, 100.0000, 100.0000, NULL, NULL, 0.0000, 66.6667, 100.0000, 66.6667, 0.0000, 0.0000, 100.0000, 33.3333, 0.0000, 66.6667, 100.0000, 66.6667, 33.3333, 66.6667, 100.0000, 33.3333, 33.3333, NULL, NULL, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33.3333, 33.3333, 0.0000, 59.5628, 32.5359, 17.0213, 5.2133, 19.1617, 59.8086, 44.5498);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (15, 'Colombia', 33.3333, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 66.6667, 33.3333, 100.0000, 0.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, 33.3333, 100.0000, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 33.3333, 33.3333, 100.0000, 100.0000, 33.3333, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 33.3333, NULL, 100.0000, 0.0000, 33.3333, 100.0000, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 33.3333, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 66.6667, 0.0000, NULL, NULL, 33.3333, NULL, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, NULL, 0.0000, 0.0000, 33.3333, 0.0000, NULL, 0.0000, 0.0000, 100.0000, 100.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 33.3333, 0.0000, NULL, 0.0000, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, 33.3333, 100.0000, 0.0000, NULL, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 33.3333, 33.3333, 0.0000, 100.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 0.0000, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 66.6667, 33.3333, 100.0000, 66.6667, 33.3333, 66.6667, 100.0000, 66.6667, 33.3333, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33.3333, 100.0000, 100.0000, 56.8306, 43.0622, 79.7872, 40.7583, 66.4671, 60.7656, 45.0237);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (16, 'Congo(DRC)', 33.3333, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, 100.0000, 100.0000, 66.6667, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 0.0000, 0.0000, NULL, 66.6667, 0.0000, NULL, NULL, 66.6667, 66.6667, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 66.6667, 66.6667, 0.0000, NULL, 66.6667, NULL, 66.6667, NULL, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 66.6667, 66.6667, 33.3333, 0.0000, 33.3333, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 33.3333, 0.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 66.6667, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 66.6667, 0.0000, 33.3333, 100.0000, 33.3333, 100.0000, 33.3333, 100.0000, 66.6667, 33.3333, NULL, NULL, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 8.7432, 2.8708, 12.7660, 9.0047, 7.7844, 1.4354, 2.3697);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (17, 'Ecuador', 100.0000, 100.0000, 0.0000, 100.0000, 66.6667, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, NULL, 0.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 66.6667, 66.6667, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 100.0000, 0.0000, 66.6667, 66.6667, 0.0000, 0.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 66.6667, 0.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 66.6667, 0.0000, NULL, NULL, NULL, NULL, 100.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 66.6667, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 100.0000, 0.0000, NULL, 100.0000, 100.0000, 0.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, 66.6667, 0.0000, 100.0000, 100.0000, 33.3333, 0.0000, 100.0000, 100.0000, 66.6667, 33.3333, 100.0000, 100.0000, NULL, NULL, 100.0000, 66.6667, 100.0000, 100.0000, 33.3333, 100.0000, 0.0000, NULL, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 66.6667, 33.3333, 100.0000, 34.9727, 20.0957, 29.7872, 37.9147, 48.5030, 29.1866, 11.8483);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (18, 'Egypt', 0.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 33.3333, 100.0000, 0.0000, NULL, 100.0000, 0.0000, NULL, NULL, NULL, 100.0000, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 66.6667, 0.0000, 0.0000, 100.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 100.0000, 0.0000, 66.6667, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 0.0000, 66.6667, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 100.0000, NULL, NULL, 0.0000, 66.6667, 0.0000, NULL, NULL, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 66.6667, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 66.6667, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 100.0000, 66.6667, 0.0000, 66.6667, 33.3333, 0.0000, 33.3333, 100.0000, 66.6667, 33.3333, 100.0000, 33.3333, NULL, NULL, NULL, NULL, 100.0000, 33.3333, 33.3333, 0.0000, NULL, NULL, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39.3443, 34.4498, 54.2553, 13.2701, 17.9641, 40.1914, 51.6588);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (19, 'EquatorialGuinea', 0.0000, 33.3333, 0.0000, 100.0000, 66.6667, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 66.6667, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 66.6667, 66.6667, 0.0000, 0.0000, 33.3333, 0.0000, NULL, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 33.3333, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 33.3333, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 33.3333, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 66.6667, 0.0000, 33.3333, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 0.0000, 66.6667, 0.0000, 0.0000, 66.6667, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 6.5574, 1.4354, 3.1915, 3.3175, 4.7904, 1.9139, 8.5308);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (20, 'Gabon', 0.0000, 66.6667, 66.6667, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, NULL, 0.0000, 100.0000, NULL, 100.0000, 0.0000, NULL, 66.6667, 33.3333, 0.0000, 0.0000, NULL, 0.0000, 66.6667, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 66.6667, 33.3333, 0.0000, NULL, NULL, 66.6667, 66.6667, 0.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 33.3333, 0.0000, 0.0000, NULL, NULL, NULL, 66.6667, 0.0000, 0.0000, NULL, 100.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 100.0000, NULL, 33.3333, 0.0000, 33.3333, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 33.3333, 33.3333, 33.3333, 33.3333, 33.3333, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 66.6667, 100.0000, 66.6667, 33.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 0.0000, NULL, NULL, NULL, 33.3333, 0.0000, NULL, 66.6667, 33.3333, 33.3333, 100.0000, 33.3333, 66.6667, 33.3333, 66.6667, 33.3333, 66.6667, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, NULL, 0.0000, 100.0000, NULL, NULL, NULL, 45.9016, 24.4019, NULL, 21.3270, 20.9581, 20.0957, 35.5450);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (21, 'Ghana', 33.3333, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 66.6667, NULL, NULL, 100.0000, NULL, NULL, NULL, 100.0000, 66.6667, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 100.0000, 0.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 66.6667, 66.6667, NULL, NULL, 100.0000, 100.0000, 0.0000, 33.3333, 33.3333, 0.0000, 66.6667, 100.0000, 0.0000, 66.6667, 66.6667, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 33.3333, NULL, 33.3333, 0.0000, 0.0000, NULL, 100.0000, 0.0000, 66.6667, NULL, 66.6667, 66.6667, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, 100.0000, NULL, 66.6667, 0.0000, NULL, 66.6667, NULL, 66.6667, 66.6667, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 66.6667, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, 66.6667, 66.6667, 100.0000, 66.6667, 66.6667, 100.0000, 66.6667, 100.0000, 66.6667, 33.3333, 66.6667, 100.0000, 66.6667, 33.3333, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 66.6667, 33.3333, 66.6667, 62.8415, 60.2871, 63.8298, 63.0332, 54.4910, 55.5024, 54.0284);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (22, 'Guinea', 66.6667, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, NULL, 66.6667, 100.0000, NULL, NULL, NULL, NULL, 100.0000, 66.6667, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 0.0000, 33.3333, 100.0000, 0.0000, 33.3333, 33.3333, NULL, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 33.3333, 0.0000, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 33.3333, NULL, 33.3333, 33.3333, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, 33.3333, NULL, 33.3333, 33.3333, 33.3333, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 33.3333, NULL, 0.0000, 100.0000, 0.0000, 33.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 100.0000, 0.0000, 0.0000, 66.6667, 66.6667, 66.6667, 33.3333, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.9290, 8.1340, NULL, 22.7488, 14.3713, 11.4833, 2.8436);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (23, 'India', 100.0000, 100.0000, 0.0000, 0.0000, 66.6667, 100.0000, 0.0000, 66.6667, 66.6667, 66.6667, NULL, 0.0000, 100.0000, NULL, NULL, NULL, 100.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 33.3333, 0.0000, 100.0000, 100.0000, 33.3333, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, NULL, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, 100.0000, NULL, 0.0000, 0.0000, 100.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, 100.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 66.6667, 0.0000, 0.0000, 100.0000, 0.0000, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 33.3333, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, 66.6667, 66.6667, NULL, 100.0000, 33.3333, 66.6667, 66.6667, 33.3333, 66.6667, 33.3333, 66.6667, 33.3333, 66.6667, 33.3333, 66.6667, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48.6339, 35.8852, 86.1702, 59.2417, 76.6467, 55.0239, 54.5024);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (24, 'Indonesia', 66.6667, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 100.0000, 0.0000, NULL, 100.0000, 100.0000, NULL, NULL, 100.0000, 33.3333, 66.6667, 0.0000, 33.3333, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, NULL, NULL, 100.0000, 0.0000, 0.0000, 100.0000, NULL, NULL, 100.0000, 0.0000, NULL, NULL, NULL, 100.0000, 0.0000, 33.3333, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, 0.0000, 0.0000, 100.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 100.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, 66.6667, NULL, 0.0000, 100.0000, NULL, 100.0000, NULL, 66.6667, 100.0000, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, 100.0000, 66.6667, 0.0000, 66.6667, NULL, NULL, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, NULL, NULL, 100.0000, 0.0000, NULL, NULL, 100.0000, 33.3333, 0.0000, 100.0000, 100.0000, NULL, 100.0000, 100.0000, 100.0000, NULL, NULL, 33.3333, NULL, 100.0000, 33.3333, NULL, NULL, 66.6667, 33.3333, 0.0000, 66.6667, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33.3333, 66.6667, 100.0000, 45.9016, 27.2727, 58.5106, 48.3412, 64.6707, 47.8469, 31.2796);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (25, 'Iran', 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 33.3333, 0.0000, 33.3333, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, NULL, 100.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 33.3333, 0.0000, 66.6667, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 66.6667, 0.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, 100.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 33.3333, NULL, 33.3333, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 33.3333, 0.0000, 100.0000, 0.0000, 100.0000, 33.3333, 0.0000, 66.6667, 0.0000, 33.3333, 100.0000, 0.0000, 66.6667, 33.3333, 100.0000, 66.6667, 33.3333, 33.3333, 0.0000, 33.3333, 33.3333, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, NULL, NULL, 0.0000, 66.6667, 100.0000, 66.6667, 0.0000, 66.6667, 33.3333, 0.0000, 0.0000, 33.3333, 33.3333, 0.0000, 34.9727, 19.6172, NULL, 6.6351, 5.9880, 36.8421, 20.3791);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (26, 'Iraq', 0.0000, NULL, 66.6667, 100.0000, 66.6667, 100.0000, 0.0000, NULL, 100.0000, 100.0000, NULL, 100.0000, 0.0000, NULL, NULL, NULL, 100.0000, 66.6667, 33.3333, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 66.6667, 0.0000, NULL, NULL, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 66.6667, 66.6667, NULL, NULL, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 66.6667, 100.0000, 0.0000, 66.6667, 66.6667, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, 0.0000, 100.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, 0.0000, 66.6667, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 100.0000, 0.0000, 66.6667, NULL, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 66.6667, 100.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 100.0000, 66.6667, 100.0000, 33.3333, 66.6667, NULL, 66.6667, 33.3333, 100.0000, 33.3333, 33.3333, 66.6667, 100.0000, 33.3333, 100.0000, 100.0000, NULL, NULL, NULL, 100.0000, 66.6667, 100.0000, 100.0000, 0.0000, NULL, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 66.6667, 33.3333, NULL, 4.9180, 4.7847, 5.3192, 17.0616, 34.1317, 9.0909, 1.8957);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (27, 'Kazakhstan', 33.3333, 100.0000, 66.6667, 100.0000, 66.6667, 100.0000, 0.0000, 100.0000, 66.6667, 0.0000, 66.6667, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 33.3333, 33.3333, 0.0000, 66.6667, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, NULL, NULL, 66.6667, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 66.6667, 66.6667, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 100.0000, 100.0000, 0.0000, NULL, 66.6667, 66.6667, 66.6667, 66.6667, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 66.6667, 66.6667, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 100.0000, 66.6667, 66.6667, 100.0000, 66.6667, 100.0000, 100.0000, NULL, NULL, 0.0000, 0.0000, 66.6667, 100.0000, 66.6667, 33.3333, 33.3333, 33.3333, 100.0000, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 33.3333, 100.0000, 33.3333, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 100.0000, 100.0000, 34.9727, 15.3110, 40.4255, 13.7441, 21.5569, 44.4976, 31.7536);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (28, 'Kuwait', 0.0000, 66.6667, 0.0000, 0.0000, 66.6667, 100.0000, 0.0000, 33.3333, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 33.3333, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 33.3333, 100.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, 33.3333, NULL, NULL, NULL, NULL, 33.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, NULL, NULL, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, 66.6667, 0.0000, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, 33.3333, 100.0000, 66.6667, 33.3333, NULL, NULL, 0.0000, 0.0000, 0.0000, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 71.0383, 66.9856, NULL, 32.2275, 32.3353, 58.8517, 65.8768);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (29, 'Liberia', 100.0000, 66.6667, 100.0000, 100.0000, 66.6667, 100.0000, 0.0000, 100.0000, 33.3333, NULL, NULL, 100.0000, NULL, NULL, NULL, 100.0000, 33.3333, 66.6667, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 0.0000, 66.6667, 66.6667, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 33.3333, NULL, 0.0000, 0.0000, 0.0000, NULL, 66.6667, 0.0000, 0.0000, NULL, 66.6667, 0.0000, 0.0000, NULL, 100.0000, 100.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 33.3333, 33.3333, NULL, 0.0000, 66.6667, 66.6667, 66.6667, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, 100.0000, NULL, NULL, NULL, 0.0000, 0.0000, 66.6667, 100.0000, NULL, 100.0000, 66.6667, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 66.6667, 0.0000, 66.6667, 66.6667, 100.0000, 100.0000, 66.6667, 100.0000, 66.6667, 33.3333, 66.6667, 33.3333, 66.6667, 66.6667, 100.0000, 33.3333, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33.3333, 33.3333, 66.6667, 50.8197, 36.3636, 43.6170, 40.2844, 42.5150, 8.1340, 17.0616);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (30, 'Libya', 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 0.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, 33.3333, 66.6667, 0.0000, 0.0000, NULL, 100.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 100.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 100.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 66.6667, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 33.3333, 0.0000, 0.0000, 66.6667, 33.3333, 0.0000, 66.6667, 100.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 33.3333, 100.0000, 33.3333, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 8.7432, 6.2201, NULL, 2.8436, 5.9880, 9.5694, 17.5355);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (31, 'Malaysia', 0.0000, 33.3333, 0.0000, 0.0000, 33.3333, 100.0000, 0.0000, 66.6667, 33.3333, 33.3333, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 33.3333, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 100.0000, NULL, NULL, 100.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, NULL, 100.0000, 100.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 33.3333, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, 0.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, 33.3333, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 33.3333, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, NULL, NULL, 100.0000, 33.3333, 100.0000, 33.3333, NULL, NULL, 0.0000, 100.0000, 100.0000, 33.3333, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 33.3333, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 67.7596, 61.2440, 42.5532, 31.2796, 58.0838, 82.2967, 65.4028);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (32, 'Mexico', 100.0000, 100.0000, 0.0000, 100.0000, NULL, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 33.3333, 33.3333, 33.3333, 100.0000, 0.0000, 66.6667, 0.0000, 66.6667, 66.6667, 0.0000, 66.6667, 33.3333, 0.0000, 100.0000, 100.0000, 66.6667, NULL, 100.0000, 100.0000, 100.0000, NULL, 100.0000, NULL, 100.0000, 100.0000, 100.0000, 66.6667, 0.0000, 100.0000, 66.6667, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, 100.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 33.3333, NULL, 0.0000, 0.0000, 100.0000, NULL, 100.0000, 100.0000, 66.6667, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 66.6667, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 100.0000, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, 100.0000, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, 100.0000, 66.6667, NULL, NULL, 66.6667, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 33.3333, 100.0000, 66.6667, 100.0000, 100.0000, 0.0000, NULL, 66.6667, 66.6667, 66.6667, 100.0000, 33.3333, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 33.3333, 33.3333, 100.0000, 100.0000, 0.0000, 100.0000, 66.6667, 45.9016, 44.4976, 60.6383, 52.1327, 70.6587, 61.7225, 33.6493);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (33, 'Mongolia', 66.6667, 66.6667, 100.0000, 100.0000, 66.6667, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, NULL, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 33.3333, 33.3333, 33.3333, 0.0000, NULL, NULL, 33.3333, 66.6667, 0.0000, 0.0000, 66.6667, 100.0000, 0.0000, 66.6667, NULL, NULL, 66.6667, 0.0000, 66.6667, 66.6667, 100.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 66.6667, 66.6667, 0.0000, 66.6667, 66.6667, 0.0000, 66.6667, 100.0000, 0.0000, 66.6667, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 66.6667, 66.6667, NULL, 66.6667, 66.6667, 0.0000, NULL, 66.6667, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, 66.6667, NULL, 66.6667, 0.0000, 66.6667, 66.6667, NULL, NULL, 0.0000, NULL, 0.0000, NULL, 66.6667, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 33.3333, 0.0000, NULL, 0.0000, 66.6667, 66.6667, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, 100.0000, 66.6667, 0.0000, 100.0000, 66.6667, 100.0000, 66.6667, 66.6667, 100.0000, NULL, NULL, 33.3333, 100.0000, 66.6667, 33.3333, 100.0000, 33.3333, 66.6667, 33.3333, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 66.6667, 34.9727, 27.7512, 77.6596, 48.8152, 62.2754, 32.0574, 41.2322);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (34, 'Morocco', 33.3333, 66.6667, 0.0000, NULL, NULL, 100.0000, 0.0000, 100.0000, 33.3333, 33.3333, NULL, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, 0.0000, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, 33.3333, NULL, 66.6667, 66.6667, 0.0000, 66.6667, 100.0000, 33.3333, 33.3333, 66.6667, 33.3333, NULL, NULL, NULL, NULL, 100.0000, 66.6667, 33.3333, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 56.8306, 53.1100, 27.6596, 28.4360, 31.1377, 48.8038, 50.2370);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (35, 'Mozambique', 0.0000, 66.6667, 100.0000, 100.0000, 66.6667, 100.0000, 0.0000, 100.0000, 33.3333, 100.0000, NULL, 100.0000, 0.0000, NULL, NULL, NULL, 33.3333, 33.3333, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 33.3333, NULL, 33.3333, 33.3333, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 0.0000, 33.3333, 66.6667, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 100.0000, 66.6667, 66.6667, 0.0000, 66.6667, 100.0000, 0.0000, 0.0000, 33.3333, 100.0000, 66.6667, 33.3333, 0.0000, 0.0000, 0.0000, 33.3333, 33.3333, 66.6667, 66.6667, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34.9727, 42.5837, 28.7234, 45.0237, 41.3174, 38.7560, 36.9668);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (36, 'Myanmar', 0.0000, 66.6667, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.1858, 0.4785, NULL, 0.9479, 2.9940, 2.3923, 3.3175);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (37, 'Nigeria', 100.0000, 66.6667, 100.0000, 100.0000, 33.3333, 100.0000, 0.0000, 66.6667, 33.3333, 0.0000, 66.6667, 0.0000, 100.0000, 0.0000, 0.0000, 100.0000, 33.3333, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 66.6667, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 66.6667, 66.6667, 66.6667, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 66.6667, 66.6667, 66.6667, 33.3333, 33.3333, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 33.3333, 33.3333, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 33.3333, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 33.3333, 33.3333, 0.0000, 66.6667, 66.6667, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 66.6667, 66.6667, 66.6667, NULL, 0.0000, 0.0000, 100.0000, 66.6667, 66.6667, 66.6667, 0.0000, 0.0000, NULL, 100.0000, 0.0000, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 22.4044, 15.7895, 23.4043, 27.0142, 26.9461, 10.5263, 10.9005);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (38, 'Norway', 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, 100.0000, NULL, NULL, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, 100.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 33.3333, 100.0000, NULL, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 33.3333, 100.0000, 66.6667, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, 97.2678, 97.1292, 95.7447, 100.0000, 100.0000, 95.6938, 99.0521);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (39, 'PapuaNewGuinea', 0.0000, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 33.3333, 100.0000, NULL, 100.0000, 100.0000, NULL, NULL, 0.0000, 66.6667, 0.0000, 33.3333, 33.3333, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 66.6667, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 100.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 66.6667, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, NULL, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 66.6667, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, NULL, NULL, 66.6667, 100.0000, 100.0000, 0.0000, NULL, NULL, 0.0000, 66.6667, 0.0000, 33.3333, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 66.6667, 100.0000, 0.0000, 0.0000, 66.6667, 100.0000, NULL, NULL, 0.0000, 0.0000, 100.0000, 66.6667, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33.3333, 33.3333, 0.0000, 16.3934, 10.0478, 73.4043, 51.6588, 65.2695, 26.3158, 18.4834);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (40, 'Peru', 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, 0.0000, NULL, NULL, NULL, 100.0000, 66.6667, 66.6667, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 0.0000, NULL, 100.0000, 0.0000, 100.0000, NULL, 100.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, 66.6667, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 66.6667, 100.0000, 66.6667, 100.0000, 66.6667, 66.6667, 100.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 66.6667, 100.0000, 100.0000, 56.8306, 50.2392, 85.1064, 49.7630, 63.4731, 47.3684, 32.2275);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (41, 'Philippines', 33.3333, 100.0000, 33.3333, 100.0000, 33.3333, 100.0000, 0.0000, 66.6667, 100.0000, 0.0000, NULL, 0.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, 66.6667, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, 33.3333, 100.0000, 100.0000, 100.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 33.3333, NULL, 100.0000, 100.0000, 100.0000, 100.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 66.6667, 100.0000, 100.0000, 0.0000, 100.0000, NULL, NULL, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 0.0000, NULL, 0.0000, 100.0000, 66.6667, NULL, NULL, 0.0000, 100.0000, NULL, 0.0000, 100.0000, NULL, NULL, NULL, NULL, 100.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, NULL, NULL, 0.0000, 0.0000, NULL, 0.0000, 33.3333, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 66.6667, 100.0000, 100.0000, 0.0000, NULL, NULL, 100.0000, 33.3333, 0.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 33.3333, 100.0000, 33.3333, 66.6667, 33.3333, 100.0000, 33.3333, 100.0000, NULL, 66.6667, 100.0000, 100.0000, 33.3333, 33.3333, 33.3333, 33.3333, 0.0000, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 33.3333, 30.0546, 22.4880, 65.9574, 46.9194, 56.2874, 51.6746, 34.5972);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (42, 'Qatar', 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 33.3333, 66.6667, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 66.6667, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 66.6667, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 66.6667, 33.3333, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 88.5246, 91.3876, NULL, 19.4313, 18.5629, 77.9904, 75.8294);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (43, 'Russia', 33.3333, 100.0000, 0.0000, 0.0000, 33.3333, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 66.6667, 33.3333, 0.0000, 66.6667, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, NULL, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, 33.3333, 0.0000, NULL, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 100.0000, NULL, NULL, 0.0000, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 33.3333, 100.0000, NULL, 100.0000, 100.0000, 100.0000, 0.0000, 33.3333, 100.0000, NULL, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, 66.6667, 0.0000, 33.3333, 33.3333, 0.0000, 66.6667, 100.0000, 0.0000, 66.6667, 33.3333, 0.0000, 0.0000, 33.3333, 33.3333, 66.6667, 33.3333, 33.3333, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 33.3333, 33.3333, 66.6667, 0.0000, 33.3333, 33.3333, 0.0000, 100.0000, 66.6667, 33.3333, 66.6667, 22.4044, 12.9187, 78.7234, 20.8531, 36.5269, 41.6268, 26.0664);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (44, 'SaudiArabia', 0.0000, 66.6667, 0.0000, NULL, 66.6667, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 33.3333, 33.3333, 0.0000, NULL, NULL, NULL, 0.0000, NULL, 100.0000, 0.0000, 100.0000, 33.3333, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 100.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 33.3333, NULL, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 33.3333, 0.0000, 33.3333, 0.0000, NULL, 0.0000, 33.3333, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 33.3333, NULL, NULL, NULL, 66.6667, 0.0000, 100.0000, 66.6667, 0.0000, 0.0000, 100.0000, 33.3333, 33.3333, 0.0000, 33.3333, 33.3333, NULL, NULL, 0.0000, 0.0000, 0.0000, 66.6667, 0.0000, 100.0000, 0.0000, NULL, 100.0000, 0.0000, 66.6667, 33.3333, 33.3333, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 69.3989, 62.2010, 7.4468, 3.7915, 4.7904, 52.6316, 60.1896);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (45, 'SierraLeone', 33.3333, 100.0000, 66.6667, 100.0000, 66.6667, 100.0000, 0.0000, 66.6667, 0.0000, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 66.6667, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 100.0000, 0.0000, 33.3333, 33.3333, 33.3333, 0.0000, 0.0000, 33.3333, NULL, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 100.0000, 0.0000, NULL, 100.0000, 0.0000, 0.0000, NULL, 100.0000, 66.6667, NULL, NULL, 33.3333, 33.3333, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 0.0000, NULL, NULL, NULL, 100.0000, 33.3333, NULL, NULL, NULL, 100.0000, 66.6667, NULL, NULL, 0.0000, 33.3333, 33.3333, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 33.3333, 0.0000, 0.0000, NULL, 0.0000, 33.3333, 66.6667, 33.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 33.3333, 0.0000, 33.3333, 33.3333, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 66.6667, 66.6667, 100.0000, 66.6667, 33.3333, 66.6667, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 66.6667, 27.3224, 25.3589, NULL, 41.7062, 37.7246, 11.0048, 18.0095);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (46, 'SouthAfrica', 100.0000, 100.0000, 0.0000, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 33.3333, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 100.0000, 0.0000, 66.6667, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, NULL, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 33.3333, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 66.6667, 66.6667, 33.3333, 100.0000, 33.3333, NULL, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 65.5738, 60.7656, 100.0000, 65.4028, 82.6347, 65.0718, 57.8199);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (47, 'SouthSudan', 33.3333, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, NULL, 100.0000, 100.0000, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 66.6667, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 66.6667, 0.0000, 66.6667, 66.6667, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 100.0000, 0.0000, NULL, NULL, 100.0000, 66.6667, 0.0000, 33.3333, 33.3333, 0.0000, 66.6667, 66.6667, 0.0000, NULL, NULL, 0.0000, 0.0000, 33.3333, 33.3333, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, 33.3333, 33.3333, NULL, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33.3333, 33.3333, 0.0000, 3.8251, 4.3062, 13.8298, 4.2654, 10.1796, 6.6986, 6.1611);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (48, 'Tanzania', 0.0000, 66.6667, 66.6667, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 66.6667, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 33.3333, 66.6667, 0.0000, 66.6667, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 100.0000, NULL, 100.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 100.0000, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, 33.3333, 33.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 33.3333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 33.3333, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 100.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 66.6667, 33.3333, 0.0000, 66.6667, 100.0000, 100.0000, 66.6667, 100.0000, 66.6667, 33.3333, 66.6667, 33.3333, 100.0000, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45.9016, 37.3206, 47.8723, 46.4455, 45.5090, 37.7990, 36.4929);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (49, 'Timor-Leste', 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, NULL, 100.0000, 100.0000, NULL, 100.0000, NULL, 66.6667, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 66.6667, 100.0000, NULL, 100.0000, 100.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 66.6667, NULL, 66.6667, 66.6667, 100.0000, NULL, NULL, NULL, 100.0000, NULL, 0.0000, 0.0000, 100.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, 100.0000, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 66.6667, 0.0000, NULL, 0.0000, NULL, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, 100.0000, 66.6667, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, NULL, NULL, NULL, 100.0000, 0.0000, 100.0000, 33.3333, 0.0000, 100.0000, 66.6667, 100.0000, 0.0000, 0.0000, 66.6667, 100.0000, 66.6667, 33.3333, 66.6667, 33.3333, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, 0.0000, NULL, NULL, NULL, 22.4044, 18.1818, 35.1064, 49.2891, 75.4491, 10.0478, 10.4265);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (50, 'TrinidadandTobago', 33.3333, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 0.0000, 66.6667, 100.0000, 33.3333, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, NULL, 100.0000, 66.6667, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 66.6667, 100.0000, 100.0000, 66.6667, 66.6667, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, NULL, 66.6667, 66.6667, NULL, NULL, NULL, NULL, 100.0000, NULL, 100.0000, 100.0000, 100.0000, NULL, 0.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, NULL, NULL, 66.6667, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, NULL, 100.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, 100.0000, 0.0000, 100.0000, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, NULL, NULL, NULL, 100.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 100.0000, 0.0000, 100.0000, 100.0000, NULL, NULL, NULL, 33.3333, 66.6667, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 66.6667, 100.0000, 33.3333, 33.3333, NULL, NULL, NULL, NULL, 100.0000, 33.3333, 33.3333, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, 50.8197, 46.4115, 31.9149, 64.9289, 73.6527, 63.6364, 47.8673);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (51, 'Turkmenistan', 0.0000, 33.3333, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, 0.0000, 33.3333, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, 0.0000, NULL, 33.3333, 0.0000, NULL, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.8251, 1.9139, NULL, 1.4218, 1.7964, 3.3493, 4.2654);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (52, 'UnitedKingdom', 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, 100.0000, 33.3333, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 33.3333, 100.0000, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33.3333, NULL, NULL, 0.0000, 100.0000, NULL, 0.0000, 100.0000, 100.0000, NULL, 33.3333, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 66.6667, 66.6667, 100.0000, 66.6667, 100.0000, 100.0000, NULL, NULL, 100.0000, 33.3333, 100.0000, 33.3333, 100.0000, 33.3333, NULL, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 91.8033, 89.9522, 97.8723, 91.9431, 89.2216, 92.3445, 94.7867);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (53, 'UnitedStates(GulfofMexico)', 100.0000, 100.0000, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 66.6667, NULL, 100.0000, 100.0000, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 100.0000, NULL, NULL, 100.0000, 33.3333, 0.0000, 0.0000, NULL, NULL, 100.0000, 100.0000, NULL, NULL, 100.0000, NULL, 33.3333, 0.0000, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, NULL, NULL, NULL, 100.0000, 0.0000, 100.0000, 33.3333, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, NULL, 100.0000, NULL, NULL, NULL, NULL, NULL, 100.0000, NULL, 100.0000, NULL, 33.3333, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, NULL, NULL, 100.0000, 33.3333, NULL, NULL, 100.0000, 100.0000, 100.0000, 33.3333, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 33.3333, 100.0000, 87.4317, 85.6459, 93.6170, 87.2038, 90.4192, 89.9522, 91.4692);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (54, 'Venezuela', 33.3333, 100.0000, 0.0000, 0.0000, 33.3333, 100.0000, 0.0000, 66.6667, 33.3333, 66.6667, 33.3333, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 66.6667, 66.6667, 33.3333, 33.3333, 0.0000, 66.6667, 0.0000, 100.0000, 100.0000, 66.6667, 0.0000, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 100.0000, 33.3333, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 66.6667, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, 100.0000, 100.0000, 33.3333, NULL, 100.0000, 100.0000, 0.0000, NULL, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, NULL, 33.3333, 0.0000, 33.3333, 33.3333, 33.3333, 100.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, NULL, NULL, 0.0000, 33.3333, 0.0000, NULL, NULL, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 66.6667, 100.0000, NULL, 100.0000, 100.0000, 100.0000, 66.6667, NULL, 100.0000, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 33.3333, 100.0000, 100.0000, 0.0000, 66.6667, 66.6667, 0.0000, 66.6667, 100.0000, 0.0000, 66.6667, 100.0000, 66.6667, 33.3333, 66.6667, 33.3333, NULL, NULL, NULL, NULL, 100.0000, 66.6667, 33.3333, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 33.3333, 33.3333, 100.0000, 100.0000, 100.0000, 0.0000, 0.0000, 100.0000, 66.6667, 33.3333, 66.6667, 6.5574, 7.1770, 34.0426, 22.2749, 43.1138, 14.8325, 1.4218);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (55, 'Vietnam', 33.3333, 100.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 66.6667, 66.6667, NULL, 100.0000, 100.0000, NULL, NULL, NULL, 66.6667, 66.6667, 0.0000, 33.3333, NULL, NULL, NULL, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 66.6667, 0.0000, NULL, 33.3333, 0.0000, 33.3333, 0.0000, 100.0000, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 66.6667, 100.0000, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, 66.6667, 66.6667, 0.0000, 66.6667, 66.6667, 100.0000, NULL, NULL, 66.6667, 100.0000, 33.3333, 33.3333, 66.6667, 33.3333, NULL, NULL, 0.0000, 33.3333, 0.0000, 66.6667, 0.0000, 100.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39.3443, 33.0144, 19.1489, 8.5308, 16.7665, 44.0191, 38.8626);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (56, 'Yemen', 0.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 100.0000, NULL, 100.0000, 0.0000, NULL, NULL, 0.0000, 100.0000, 66.6667, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 33.3333, 66.6667, 0.0000, 100.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, 33.3333, 33.3333, 100.0000, 66.6667, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 100.0000, 100.0000, 0.0000, 33.3333, 0.0000, 33.3333, 0.0000, 0.0000, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 33.3333, 100.0000, 33.3333, 33.3333, 0.0000, 66.6667, 0.0000, 100.0000, 0.0000, 33.3333, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 33.3333, 0.0000, 33.3333, NULL, 0.0000, 100.0000, 0.0000, 0.0000, NULL, 0.0000, 33.3333, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 33.3333, 100.0000, 33.3333, 0.0000, 0.0000, 100.0000, 0.0000, 33.3333, 66.6667, 66.6667, 100.0000, 33.3333, 33.3333, 33.3333, 33.3333, 0.0000, 0.0000, 33.3333, 33.3333, 100.0000, 33.3333, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 100.0000, 0.0000, 0.0000, NULL, NULL, 0.0000, 33.3333, 0.0000, 33.3333, 100.0000, 100.0000, 66.6667, 33.3333, 0.0000, 66.6667, 33.3333, 66.6667, 33.3333, 66.6667, 100.0000, 66.6667, NULL, 33.3333, NULL, 100.0000, 66.6667, 33.3333, 66.6667, 33.3333, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33.3333, 33.3333, 0.0000, 10.9290, 11.0048, 25.5319, 11.8483, 13.1737, 14.3541, 14.2180);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (57, 'Zambia', 0.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, NULL, 0.0000, 100.0000, NULL, NULL, NULL, 66.6667, 33.3333, 0.0000, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, NULL, NULL, 100.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 100.0000, 66.6667, NULL, NULL, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 66.6667, 66.6667, 0.0000, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 66.6667, NULL, 66.6667, 66.6667, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 66.6667, 0.0000, 66.6667, 100.0000, 66.6667, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 66.6667, NULL, 0.0000, 33.3333, 100.0000, 66.6667, NULL, 66.6667, 100.0000, 100.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 100.0000, 0.0000, 100.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, 100.0000, 33.3333, 100.0000, 66.6667, 66.6667, 66.6667, 66.6667, 100.0000, 0.0000, 0.0000, 66.6667, 33.3333, 100.0000, 33.3333, NULL, NULL, 100.0000, 100.0000, 66.6667, 100.0000, 100.0000, 100.0000, 100.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50.8197, 33.4928, 37.2340, 38.8626, 46.1078, 23.4450, 38.3886);
INSERT INTO rgi_raw_data_web_column_a_and_i_to_bn_transposed VALUES (58, 'Zimbabwe', 66.6667, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 0.0000, 100.0000, 33.3333, 0.0000, NULL, 100.0000, 0.0000, NULL, NULL, NULL, 66.6667, 33.3333, 0.0000, 33.3333, 0.0000, 0.0000, 33.3333, 0.0000, 0.0000, 66.6667, 66.6667, NULL, NULL, 0.0000, 0.0000, 33.3333, 33.3333, 0.0000, 0.0000, 66.6667, 0.0000, NULL, NULL, 0.0000, 0.0000, 33.3333, 33.3333, 33.3333, 0.0000, 0.0000, 0.0000, 66.6667, 66.6667, 66.6667, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 33.3333, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 66.6667, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 66.6667, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 33.3333, 0.0000, 0.0000, NULL, 0.0000, 33.3333, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, 33.3333, 33.3333, 0.0000, 66.6667, 33.3333, 100.0000, 66.6667, 0.0000, 0.0000, 0.0000, 100.0000, 66.6667, NULL, NULL, 33.3333, 66.6667, 100.0000, 0.0000, 0.0000, 33.3333, 0.0000, NULL, 100.0000, 100.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16.3934, 2.3923, NULL, 7.5829, 13.1737, 3.8278, 0.9479);


--
-- TOC entry 2025 (class 0 OID 17001)
-- Dependencies: 180
-- Data for Name: rgi_raw_data_web_column_a_to_h; Type: TABLE DATA; Schema: public; Owner: ahasemann
--

INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (1, 'INLSq1', 'INLSq1', 'Institutional & Legal Setting', 'Freedom of information law', 'Adoption of freedom of information law', 1, 'NA', '1.2.010');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (2, 'INLSq2', 'INLSq2', 'Institutional & Legal Setting', 'Comprehensive sector legislation', 'Publication of mineral law', 2, 'NA', '1.2.009');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (3, 'INLSq3', 'INLSq3', 'Institutional & Legal Setting', 'EITI participation', 'EITI compliant or candidate country', 3, 'NA', '2.3.032');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (4, 'INLSc4_a', 'INLSc4', 'Institutional & Legal Setting', 'Independent licensing process', 'Licensing authority independent from SOC', 4, 'NA', '1.3.011');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (5, 'INLSc4_b', 'INLSc4', 'Institutional & Legal Setting', 'Independent licensing process', 'Open and competitive licensing process', 4, 'NA', '1.3.012');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (6, 'INLSc5_a', 'INLSc5', 'Institutional & Legal Setting', 'Environmental and social impact assessments required', 'Requirement of environmental impact assessment', 5, 'NA', '1.2.008.a');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (7, 'INLSc5_b', 'INLSc5', 'Institutional & Legal Setting', 'Environmental and social impact assessments required', 'Requirement of social impact assessments', 5, 'NA', '1.2.008.c');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (8, 'INLSc6_a', 'INLSc6', 'Institutional & Legal Setting', 'Clarity in revenue collection', 'Clear authority to collect payments', 6, 'NA', '2.3.026');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (9, 'INLSc6_b', 'INLSc6', 'Institutional & Legal Setting', 'Clarity in revenue collection', 'Clear transfer of payments into treasury', 6, 'NA', '2.3.027');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (10, 'INLSc7_a', 'INLSc7', 'Institutional & Legal Setting', 'Comprehensive public sector balance', 'Includes SOC balance', 7, 'NA', '2.2.023');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (11, 'INLSc7_b', 'INLSc7', 'Institutional & Legal Setting', 'Comprehensive public sector balance', 'Includes special fund balance', 7, 'NA', '2.2.024');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (12, 'INLSc7_c', 'INLSc7', 'Institutional & Legal Setting', 'Comprehensive public sector balance', 'Includes non-resource fiscal balance', 7, 'NA', '2.2.025');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (13, 'INLSq8', 'INLSq8', 'Institutional & Legal Setting', 'SOC financial reports required', 'Legal obligation to publish financial reports (SOC)', 8, 'NA', '3.1.3.044');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (14, 'INLSc9_a', 'INLSc9', 'Institutional & Legal Setting', 'Fund rules defined in law', 'Clear rules for deposits (NRF)', 9, 'NA', '3.2.3.057');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (15, 'INLSc9_b', 'INLSc9', 'Institutional & Legal Setting', 'Fund rules defined in law', 'Clear rules for disbursements (NRF)', 9, 'NA', '3.2.3.059');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (16, 'INLSq10', 'INLSq10', 'Institutional & Legal Setting', 'Subnational transfer rules defined in law', 'Clear rules for revenue sharing (SNT)', 10, 'NA', '3.3.3.070');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (17, 'RPRc1_a', 'RPRc1', 'Reporting Practices', 'Licensing process', 'Information before licensing', 11, 'NA', '1.2.006.a');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (18, 'RPRc1_b', 'RPRc1', 'Reporting Practices', 'Licensing process', 'Information after licensing', 11, 'NA', '1.2.006.b');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (19, 'RPRq2', 'RPRq2', 'Reporting Practices', 'Contracts', 'Publication of contracts', 12, 'NA', '1.2.007');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (20, 'RPRc3_a', 'RPRc3', 'Reporting Practices', 'Environmental and social impact assessments', 'Publication of environmental impact assessments', 13, 'NA', '1.2.008.b');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (21, 'RPRc3_b', 'RPRc3', 'Reporting Practices', 'Environmental and social impact assessments', 'Publication of social impact assessments', 13, 'NA', '1.2.008.d');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (22, 'RPRc4_cb_a', 'RPRc4_cb', 'Reporting Practices', 'Exploration data ', 'Reserves (Central Bank)', 14, 'Central Bank', '2.2D.020.a');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (23, 'RPRc4_cb_b', 'RPRc4_cb', 'Reporting Practices', 'Exploration data ', 'Investment in exploration (Central Bank)', 14, 'Central Bank', '2.2D.020.e');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (24, 'RPRc4_mes_a', 'RPRc4_mes', 'Reporting Practices', 'Exploration data ', 'Reserves (Ministry of Extractive Sector)', 14, 'Ministry of Extractive Sector', '2.2B.020.a');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (25, 'RPRc4_mes_b', 'RPRc4_mes', 'Reporting Practices', 'Exploration data ', 'Investment in exploration (Ministry of Extractive Sector)', 14, 'Ministry of Extractive Sector', '2.2B.020.e');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (26, 'RPRc4_mof_a', 'RPRc4_mof', 'Reporting Practices', 'Exploration data ', 'Reserves (Ministry of Finance)', 14, 'Ministry of Finance', '2.2A.020.a');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (27, 'RPRc4_mof_b', 'RPRc4_mof', 'Reporting Practices', 'Exploration data ', 'Investment in exploration (Ministry of Finance)', 14, 'Ministry of Finance', '2.2A.020.e');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (28, 'RPRc4_oa_a', 'RPRc4_oa', 'Reporting Practices', 'Exploration data ', 'Reserves (Other Agencies)', 14, 'Other Agencies', '2.2E.020.a');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (29, 'RPRc4_oa_b', 'RPRc4_oa', 'Reporting Practices', 'Exploration data ', 'Investment in exploration (Other Agencies)', 14, 'Other Agencies', '2.2E.020.e');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (30, 'RPRc4_ra_a', 'RPRc4_ra', 'Reporting Practices', 'Exploration data ', 'Reserves (Regulatory Agency)', 14, 'Regulatory Agency', '2.2C.020.a');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (31, 'RPRc4_ra_b', 'RPRc4_ra', 'Reporting Practices', 'Exploration data ', 'Investment in exploration (Regulatory Agency)', 14, 'Regulatory Agency', '2.2C.020.e');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (32, 'RPRc5_cb_a', 'RPRc5_cb', 'Reporting Practices', 'Production volumes ', 'Production volumes (Central Bank)', 15, 'Central Bank', '2.2D.020.b');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (33, 'RPRc5_cb_b', 'RPRc5_cb', 'Reporting Practices', 'Production volumes ', 'Production data by company and/or block (Central Bank)', 15, 'Central Bank', '2.2D.020.h');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (34, 'RPRc5_mes_a', 'RPRc5_mes', 'Reporting Practices', 'Production volumes ', 'Production volumes (Ministry of Extractive Sector)', 15, 'Ministry of Extractive Sector', '2.2B.020.b');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (35, 'RPRc5_mes_b', 'RPRc5_mes', 'Reporting Practices', 'Production volumes ', 'Production data by company and/or block (Ministry of Extractive Sector)', 15, 'Ministry of Extractive Sector', '2.2B.020.h');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (36, 'RPRc5_mof_a', 'RPRc5_mof', 'Reporting Practices', 'Production volumes ', 'Production volumes (Ministry of Finance)', 15, 'Ministry of Finance', '2.2A.020.b');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (37, 'RPRc5_mof_b', 'RPRc5_mof', 'Reporting Practices', 'Production volumes ', 'Production data by company and/or block (Ministry of Finance)', 15, 'Ministry of Finance', '2.2A.020.h');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (38, 'RPRc5_oa_a', 'RPRc5_oa', 'Reporting Practices', 'Production volumes ', 'Production volumes (Other Agencies)', 15, 'Other Agencies', '2.2E.020.b');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (39, 'RPRc5_oa_b', 'RPRc5_oa', 'Reporting Practices', 'Production volumes ', 'Production data by company and/or block (Other Agencies)', 15, 'Other Agencies', '2.2E.020.h');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (40, 'RPRc5_ra_a', 'RPRc5_ra', 'Reporting Practices', 'Production volumes ', 'Production volumes (Regulatory Agency)', 15, 'Regulatory Agency', '2.2C.020.b');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (41, 'RPRc5_ra_b', 'RPRc5_ra', 'Reporting Practices', 'Production volumes ', 'Production data by company and/or block (Regulatory Agency)', 15, 'Regulatory Agency', '2.2C.020.h');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (42, 'RPRc6_cb_a', 'RPRc6_cb', 'Reporting Practices', 'Production value ', 'Prices (Central Bank)', 16, 'Central Bank', '2.2D.020.c');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (43, 'RPRc6_cb_b', 'RPRc6_cb', 'Reporting Practices', 'Production value ', 'Value of resource exports (Central Bank)', 16, 'Central Bank', '2.2D.020.d');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (44, 'RPRc6_cb_c', 'RPRc6_cb', 'Reporting Practices', 'Production value ', 'Production costs (Central Bank)', 16, 'Central Bank', '2.2D.020.f');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (45, 'RPRc6_mes_a', 'RPRc6_mes', 'Reporting Practices', 'Production value ', 'Prices (Ministry of Extractive Sector)', 16, 'Ministry of Extractive Sector', '2.2B.020.c');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (46, 'RPRc6_mes_b', 'RPRc6_mes', 'Reporting Practices', 'Production value ', 'Value of resource exports (Ministry of Extractive Sector)', 16, 'Ministry of Extractive Sector', '2.2B.020.d');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (47, 'RPRc6_mes_c', 'RPRc6_mes', 'Reporting Practices', 'Production value ', 'Production costs (Ministry of Extractive Sector)', 16, 'Ministry of Extractive Sector', '2.2B.020.f');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (48, 'RPRc6_mof_a', 'RPRc6_mof', 'Reporting Practices', 'Production value ', 'Prices (Ministry of Finance)', 16, 'Ministry of Finance', '2.2A.020.c');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (49, 'RPRc6_mof_b', 'RPRc6_mof', 'Reporting Practices', 'Production value ', 'Value of resource exports (Ministry of Finance)', 16, 'Ministry of Finance', '2.2A.020.d');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (50, 'RPRc6_mof_c', 'RPRc6_mof', 'Reporting Practices', 'Production value ', 'Production costs (Ministry of Finance)', 16, 'Ministry of Finance', '2.2A.020.f');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (51, 'RPRc6_oa_a', 'RPRc6_oa', 'Reporting Practices', 'Production value ', 'Prices (Other Agencies)', 16, 'Other Agencies', '2.2E.020.c');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (52, 'RPRc6_oa_b', 'RPRc6_oa', 'Reporting Practices', 'Production value ', 'Value of resource exports (Other Agencies)', 16, 'Other Agencies', '2.2E.020.d');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (53, 'RPRc6_oa_c', 'RPRc6_oa', 'Reporting Practices', 'Production value ', 'Production costs (Other Agencies)', 16, 'Other Agencies', '2.2E.020.f');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (54, 'RPRc6_ra_a', 'RPRc6_ra', 'Reporting Practices', 'Production value ', 'Prices (Regulatory Agency)', 16, 'Regulatory Agency', '2.2C.020.c');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (55, 'RPRc6_ra_b', 'RPRc6_ra', 'Reporting Practices', 'Production value ', 'Value of resource exports (Regulatory Agency)', 16, 'Regulatory Agency', '2.2C.020.d');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (56, 'RPRc6_ra_c', 'RPRc6_ra', 'Reporting Practices', 'Production value ', 'Production costs (Regulatory Agency)', 16, 'Regulatory Agency', '2.2C.020.f');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (57, 'RPRc7_cb_a', 'RPRc7_cb', 'Reporting Practices', 'Primary sources of revenue ', 'Value of production streams (Central Bank)', 17, 'Central Bank', '2.2D.020.j1');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (58, 'RPRc7_cb_b', 'RPRc7_cb', 'Reporting Practices', 'Primary sources of revenue ', 'Government''s share in PSCs (Central Bank)', 17, 'Central Bank', '2.2D.020.j2');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (59, 'RPRc7_cb_c', 'RPRc7_cb', 'Reporting Practices', 'Primary sources of revenue ', 'Royalties (Central Bank)', 17, 'Central Bank', '2.2D.020.j3');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (60, 'RPRc7_cb_d', 'RPRc7_cb', 'Reporting Practices', 'Primary sources of revenue ', 'Special taxes (Central Bank)', 17, 'Central Bank', '2.2D.020.j4');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (61, 'RPRc7_mes_a', 'RPRc7_mes', 'Reporting Practices', 'Primary sources of revenue ', 'Value of production streams (Ministry of Extractive Sector)', 17, 'Ministry of Extractive Sector', '2.2B.020.j1');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (62, 'RPRc7_mes_b', 'RPRc7_mes', 'Reporting Practices', 'Primary sources of revenue ', 'Government''s share in PSCs (Ministry of Extractive Sector)', 17, 'Ministry of Extractive Sector', '2.2B.020.j2');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (63, 'RPRc7_mes_c', 'RPRc7_mes', 'Reporting Practices', 'Primary sources of revenue ', 'Royalties (Ministry of Extractive Sector)', 17, 'Ministry of Extractive Sector', '2.2B.020.j3');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (64, 'RPRc7_mes_d', 'RPRc7_mes', 'Reporting Practices', 'Primary sources of revenue ', 'Special taxes (Ministry of Extractive Sector)', 17, 'Ministry of Extractive Sector', '2.2B.020.j4');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (65, 'RPRc7_mof_a', 'RPRc7_mof', 'Reporting Practices', 'Primary sources of revenue ', 'Value of production streams (Ministry of Finance)', 17, 'Ministry of Finance', '2.2A.020.j1');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (66, 'RPRc7_mof_b', 'RPRc7_mof', 'Reporting Practices', 'Primary sources of revenue ', 'Government''s share in PSCs (Ministry of Finance)', 17, 'Ministry of Finance', '2.2A.020.j2');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (67, 'RPRc7_mof_c', 'RPRc7_mof', 'Reporting Practices', 'Primary sources of revenue ', 'Royalties (Ministry of Finance)', 17, 'Ministry of Finance', '2.2A.020.j3');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (68, 'RPRc7_mof_d', 'RPRc7_mof', 'Reporting Practices', 'Primary sources of revenue ', 'Special taxes (Ministry of Finance)', 17, 'Ministry of Finance', '2.2A.020.j4');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (69, 'RPRc7_oa_a', 'RPRc7_oa', 'Reporting Practices', 'Primary sources of revenue ', 'Value of production streams (Other Agencies)', 17, 'Other Agencies', '2.2E.020.j1');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (70, 'RPRc7_oa_b', 'RPRc7_oa', 'Reporting Practices', 'Primary sources of revenue ', 'Government''s share in PSCs (Other Agencies)', 17, 'Other Agencies', '2.2E.020.j2');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (71, 'RPRc7_oa_c', 'RPRc7_oa', 'Reporting Practices', 'Primary sources of revenue ', 'Royalties (Other Agencies)', 17, 'Other Agencies', '2.2E.020.j3');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (72, 'RPRc7_oa_d', 'RPRc7_oa', 'Reporting Practices', 'Primary sources of revenue ', 'Special taxes (Other Agencies)', 17, 'Other Agencies', '2.2E.020.j4');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (73, 'RPRc7_ra_a', 'RPRc7_ra', 'Reporting Practices', 'Primary sources of revenue ', 'Value of production streams (Regulatory Agency)', 17, 'Regulatory Agency', '2.2C.020.j1');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (74, 'RPRc7_ra_b', 'RPRc7_ra', 'Reporting Practices', 'Primary sources of revenue ', 'Government''s share in PSCs (Regulatory Agency)', 17, 'Regulatory Agency', '2.2C.020.j2');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (75, 'RPRc7_ra_c', 'RPRc7_ra', 'Reporting Practices', 'Primary sources of revenue ', 'Royalties (Regulatory Agency)', 17, 'Regulatory Agency', '2.2C.020.j3');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (76, 'RPRc7_ra_d', 'RPRc7_ra', 'Reporting Practices', 'Primary sources of revenue ', 'Special taxes (Regulatory Agency)', 17, 'Regulatory Agency', '2.2C.020.j4');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (77, 'RPRc8_cb_a', 'RPRc8_cb', 'Reporting Practices', 'Secondary sources of revenue ', 'Dividends (Central Bank)', 18, 'Central Bank', '2.2D.020.j5');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (78, 'RPRc8_cb_b', 'RPRc8_cb', 'Reporting Practices', 'Secondary sources of revenue ', 'Bonuses (Central Bank)', 18, 'Central Bank', '2.2D.020.j6');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (79, 'RPRc8_cb_c', 'RPRc8_cb', 'Reporting Practices', 'Secondary sources of revenue ', 'License fees (Central Bank)', 18, 'Central Bank', '2.2D.020.j7');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (80, 'RPRc8_cb_d', 'RPRc8_cb', 'Reporting Practices', 'Secondary sources of revenue ', 'Acreage fees (Central Bank)', 18, 'Central Bank', '2.2D.020.j8');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (81, 'RPRc8_cb_e', 'RPRc8_cb', 'Reporting Practices', 'Secondary sources of revenue ', 'Other  (Central Bank)', 18, 'Central Bank', '2.2D.020.j9');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (82, 'RPRc8_mes_a', 'RPRc8_mes', 'Reporting Practices', 'Secondary sources of revenue ', 'Dividends (Ministry of Extractive Sector)', 18, 'Ministry of Extractive Sector', '2.2B.020.j5');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (83, 'RPRc8_mes_b', 'RPRc8_mes', 'Reporting Practices', 'Secondary sources of revenue ', 'Bonuses (Ministry of Extractive Sector)', 18, 'Ministry of Extractive Sector', '2.2B.020.j6');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (84, 'RPRc8_mes_c', 'RPRc8_mes', 'Reporting Practices', 'Secondary sources of revenue ', 'License fees (Ministry of Extractive Sector)', 18, 'Ministry of Extractive Sector', '2.2B.020.j7');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (85, 'RPRc8_mes_d', 'RPRc8_mes', 'Reporting Practices', 'Secondary sources of revenue ', 'Acreage fees (Ministry of Extractive Sector)', 18, 'Ministry of Extractive Sector', '2.2B.020.j8');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (86, 'RPRc8_mes_e', 'RPRc8_mes', 'Reporting Practices', 'Secondary sources of revenue ', 'Other (Ministry of Extractive Sector) ', 18, 'Ministry of Extractive Sector', '2.2B.020.j9');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (87, 'RPRc8_mof_a', 'RPRc8_mof', 'Reporting Practices', 'Secondary sources of revenue ', 'Dividends (Ministry of Finance)', 18, 'Ministry of Finance', '2.2A.020.j5');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (88, 'RPRc8_mof_b', 'RPRc8_mof', 'Reporting Practices', 'Secondary sources of revenue ', 'Bonuses (Ministry of Finance)', 18, 'Ministry of Finance', '2.2A.020.j6');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (89, 'RPRc8_mof_c', 'RPRc8_mof', 'Reporting Practices', 'Secondary sources of revenue ', 'License fees (Ministry of Finance)', 18, 'Ministry of Finance', '2.2A.020.j7');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (90, 'RPRc8_mof_d', 'RPRc8_mof', 'Reporting Practices', 'Secondary sources of revenue ', 'Acreage fees (Ministry of Finance)', 18, 'Ministry of Finance', '2.2A.020.j8');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (91, 'RPRc8_mof_e', 'RPRc8_mof', 'Reporting Practices', 'Secondary sources of revenue ', 'Other (Ministry of Finance)', 18, 'Ministry of Finance', '2.2A.020.j9');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (92, 'RPRc8_oa_a', 'RPRc8_oa', 'Reporting Practices', 'Secondary sources of revenue ', 'Dividends (Other Agencies)', 18, 'Other Agencies', '2.2E.020.j5');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (93, 'RPRc8_oa_b', 'RPRc8_oa', 'Reporting Practices', 'Secondary sources of revenue ', 'Bonuses (Other Agencies)', 18, 'Other Agencies', '2.2E.020.j6');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (94, 'RPRc8_oa_c', 'RPRc8_oa', 'Reporting Practices', 'Secondary sources of revenue ', 'License fees (Other Agencies)', 18, 'Other Agencies', '2.2E.020.j7');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (95, 'RPRc8_oa_d', 'RPRc8_oa', 'Reporting Practices', 'Secondary sources of revenue ', 'Acreage fees (Other Agencies)', 18, 'Other Agencies', '2.2E.020.j8');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (96, 'RPRc8_oa_e', 'RPRc8_oa', 'Reporting Practices', 'Secondary sources of revenue ', 'Other (Other Agencies) ', 18, 'Other Agencies', '2.2E.020.j9');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (97, 'RPRc8_ra_a', 'RPRc8_ra', 'Reporting Practices', 'Secondary sources of revenue ', 'Dividends (Regulatory Agency)', 18, 'Regulatory Agency', '2.2C.020.j5');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (98, 'RPRc8_ra_b', 'RPRc8_ra', 'Reporting Practices', 'Secondary sources of revenue ', 'Bonuses (Regulatory Agency)', 18, 'Regulatory Agency', '2.2C.020.j6');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (99, 'RPRc8_ra_c', 'RPRc8_ra', 'Reporting Practices', 'Secondary sources of revenue ', 'License fees (Regulatory Agency)', 18, 'Regulatory Agency', '2.2C.020.j7');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (100, 'RPRc8_ra_d', 'RPRc8_ra', 'Reporting Practices', 'Secondary sources of revenue ', 'Acreage fees (Regulatory Agency)', 18, 'Regulatory Agency', '2.2C.020.j8');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (101, 'RPRc8_ra_e', 'RPRc8_ra', 'Reporting Practices', 'Secondary sources of revenue ', 'Other (Regulatory Agency)', 18, 'Regulatory Agency', '2.2C.020.j9');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (102, 'RPRq9_cb', 'RPRq9_cb', 'Reporting Practices', 'Subsidies ', 'Cost of subsidies or social investments paid by mineral revenue', 19, 'Central Bank', '2.2D.020.i');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (103, 'RPRq9_mes', 'RPRq9_mes', 'Reporting Practices', 'Subsidies ', 'Cost of subsidies or social investments paid by mineral revenue', 19, 'Ministry of Extractive Sector', '2.2B.020.i');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (104, 'RPRq9_mof', 'RPRq9_mof', 'Reporting Practices', 'Subsidies ', 'Cost of subsidies or social investments paid by mineral revenue', 19, 'Ministry of Finance', '2.2A.020.i');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (105, 'RPRq9_oa', 'RPRq9_oa', 'Reporting Practices', 'Subsidies ', 'Cost of subsidies or social investments paid by mineral revenue', 19, 'Other Agencies', '2.2E.020.i');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (106, 'RPRq9_ra', 'RPRq9_ra', 'Reporting Practices', 'Subsidies ', 'Cost of subsidies or social investments paid by mineral revenue', 19, 'Regulatory Agency', '2.2C.020.i');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (107, 'RPRq10_cb', 'RPRq10_cb', 'Reporting Practices', 'Operating company names ', 'Names of companies operating in country', 20, 'Central Bank', '2.2D.020.g');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (108, 'RPRq10_mes', 'RPRq10_mes', 'Reporting Practices', 'Operating company names ', 'Names of companies operating in country', 20, 'Ministry of Extractive Sector', '2.2B.020.g');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (109, 'RPRq10_mof', 'RPRq10_mof', 'Reporting Practices', 'Operating company names ', 'Names of companies operating in country', 20, 'Ministry of Finance', '2.2A.020.g');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (110, 'RPRq10_oa', 'RPRq10_oa', 'Reporting Practices', 'Operating company names ', 'Names of companies operating in country', 20, 'Other Agencies', '2.2E.020.g');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (111, 'RPRq10_ra', 'RPRq10_ra', 'Reporting Practices', 'Operating company names ', 'Names of companies operating in country', 20, 'Regulatory Agency', '2.2C.020.g');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (112, 'RPRc11_a', 'RPRc11', 'Reporting Practices', 'Comprehensive SOC reports', 'Include cash flow statements (SOC)', 21, 'NA', '3.1.2.037');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (113, 'RPRc11_b', 'RPRc11', 'Reporting Practices', 'Comprehensive SOC reports', 'Disclosure of joint ventures (SOC)', 21, 'NA', '3.1.2.042');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (114, 'RPRc12_a', 'RPRc12', 'Reporting Practices', 'SOC production data', 'Reserves (SOC)', 22, 'NA', '3.1.2.038.a');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (115, 'RPRc12_b', 'RPRc12', 'Reporting Practices', 'SOC production data', 'Production volumes (SOC)', 22, 'NA', '3.1.2.038.b');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (116, 'RPRc12_c', 'RPRc12', 'Reporting Practices', 'SOC production data', 'Prices (SOC)', 22, 'NA', '3.1.2.038.c');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (117, 'RPRc12_d', 'RPRc12', 'Reporting Practices', 'SOC production data', 'Value of resource exports (SOC)', 22, 'NA', '3.1.2.038.d');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (118, 'RPRc12_e', 'RPRc12', 'Reporting Practices', 'SOC production data', 'Investment in exploration (SOC)', 22, 'NA', '3.1.2.038.e');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (119, 'RPRc12_f', 'RPRc12', 'Reporting Practices', 'SOC production data', 'Production costs (SOC)', 22, 'NA', '3.1.2.038.f');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (120, 'RPRc12_g', 'RPRc12', 'Reporting Practices', 'SOC production data', 'Production data by company and/or block (SOC)', 22, 'NA', '3.1.2.038.h');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (121, 'RPRc13_a', 'RPRc13', 'Reporting Practices', 'SOC revenue data', 'Value of production streams (SOC)', 23, 'NA', '3.1.2.038.j1');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (122, 'RPRc13_b', 'RPRc13', 'Reporting Practices', 'SOC revenue data', 'Government''s share in PSCs (SOC)', 23, 'NA', '3.1.2.038.j2');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (123, 'RPRc13_c', 'RPRc13', 'Reporting Practices', 'SOC revenue data', 'Royalties (SOC)', 23, 'NA', '3.1.2.038.j3');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (124, 'RPRc13_d', 'RPRc13', 'Reporting Practices', 'SOC revenue data', 'Special taxes (SOC)', 23, 'NA', '3.1.2.038.j4');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (125, 'RPRc13_e', 'RPRc13', 'Reporting Practices', 'SOC revenue data', 'Dividends (SOC)', 23, 'NA', '3.1.2.038.j5');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (126, 'RPRc13_f', 'RPRc13', 'Reporting Practices', 'SOC revenue data', 'Bonuses (SOC)', 23, 'NA', '3.1.2.038.j6');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (127, 'RPRc13_g', 'RPRc13', 'Reporting Practices', 'SOC revenue data', 'License fees (SOC)', 23, 'NA', '3.1.2.038.j7');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (128, 'RPRc13_h', 'RPRc13', 'Reporting Practices', 'SOC revenue data', 'Acreage fees (SOC)', 23, 'NA', '3.1.2.038.j8');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (129, 'RPRc13_i', 'RPRc13', 'Reporting Practices', 'SOC revenue data', 'Other  (SOC)', 23, 'NA', '3.1.2.038.j9');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (130, 'RPRc14_a', 'RPRc14', 'Reporting Practices', 'SOC quasi fiscal activities', 'Timely data (SOC)', 24, 'NA', '3.1.2.038.i');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (131, 'RPRc14_b', 'RPRc14', 'Reporting Practices', 'SOC quasi fiscal activities', 'Disclosure of comprehensive and quantitative data (SOC)', 24, 'NA', '3.1.2.041');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (132, 'RPRc15_a', 'RPRc15', 'Reporting Practices', 'SOC board of directors', 'Board of directors - composition (SOC)', 25, 'NA', '3.1.3.048');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (133, 'RPRc15_b', 'RPRc15', 'Reporting Practices', 'SOC board of directors', 'Board of directors - decision making rules (SOC)', 25, 'NA', '3.1.3.049');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (134, 'RPRq16', 'RPRq16', 'Reporting Practices', 'Fund rules', 'Publication of rules governing fund (NRF)', 26, 'NA', '3.2.2.052');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (135, 'RPRq17', 'RPRq17', 'Reporting Practices', 'Comprehensive fund reports', 'Publication of assets, investments and transactions (NRF)', 27, 'NA', '3.2.2.053');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (136, 'RPRq18', 'RPRq18', 'Reporting Practices', 'Subnational transfer rules', 'Publication of rules governing subnational transfers (SNT)', 28, 'NA', '3.3.2.065');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (137, 'RPRq19', 'RPRq19', 'Reporting Practices', 'Comprehensive subnational transfer reports', 'Publication of subnational transfers breakdown (SNT)', 29, 'NA', '3.3.2.066');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (138, 'RPRq20', 'RPRq20', 'Reporting Practices', 'Subnational reporting of transfers', 'Subnational governments publish transfers (SNT)', 30, 'NA', '3.3.2.069');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (139, 'SFQCc1_a', 'SFQCc1', 'Safeguard & Quality Control', 'Checks on licensing process', 'Limits to licensing discretionary powers', 31, 'NA', '1.3.013');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (140, 'SFQCc1_b', 'SFQCc1', 'Safeguard & Quality Control', 'Checks on licensing process', 'Legislative oversight of licensing process', 31, 'NA', '1.3.014');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (141, 'SFQCc1_c', 'SFQCc1', 'Safeguard & Quality Control', 'Checks on licensing process', 'Appeal process available', 31, 'NA', '1.3.015');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (142, 'SFQCc2_a', 'SFQCc2', 'Safeguard & Quality Control', 'Checks on budgetary process', 'Review of revenue by national audit institution', 32, 'NA', '2.3.029');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (143, 'SFQCc2_b', 'SFQCc2', 'Safeguard & Quality Control', 'Checks on budgetary process', 'Legislature reviews audit reports', 32, 'NA', '2.3.030');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (144, 'SFQCc2_c', 'SFQCc2', 'Safeguard & Quality Control', 'Checks on budgetary process', 'Legislative oversight of resource revenue', 32, 'NA', '2.3.031');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (145, 'SFQCc3_cb_a', 'SFQCc3_cb', 'Safeguard & Quality Control', 'Quality of government reports', 'Understandable reports (Central Bank)', 33, 'Central Bank', '2.2D.021');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (146, 'SFQCc3_cb_b', 'SFQCc3_cb', 'Safeguard & Quality Control', 'Quality of government reports', 'Timely reports (Central Bank)', 33, 'Central Bank', '2.2D.022');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (147, 'SFQCc3_mes_a', 'SFQCc3_mes', 'Safeguard & Quality Control', 'Quality of government reports', 'Understandable reports (Ministry of Extractive Sector)', 33, 'Ministry of Extractive Sector', '2.2B.021');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (148, 'SFQCc3_mes_b', 'SFQCc3_mes', 'Safeguard & Quality Control', 'Quality of government reports', 'Timely reports (Ministry of Extractive Sector)', 33, 'Ministry of Extractive Sector', '2.2B.022');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (149, 'SFQCc3_mof_a', 'SFQCc3_mof', 'Safeguard & Quality Control', 'Quality of government reports', 'Understandable reports (Ministry of Finance)', 33, 'Ministry of Finance', '2.2A.021');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (150, 'SFQCc3_mof_b', 'SFQCc3_mof', 'Safeguard & Quality Control', 'Quality of government reports', 'Timely reports (Ministry of Finance)', 33, 'Ministry of Finance', '2.2A.022');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (151, 'SFQCc3_oa_a', 'SFQCc3_oa', 'Safeguard & Quality Control', 'Quality of government reports', 'Understandable reports (Other Agencies)', 33, 'Other Agencies', '2.2E.021');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (152, 'SFQCc3_oa_b', 'SFQCc3_oa', 'Safeguard & Quality Control', 'Quality of government reports', 'Timely reports (Other Agencies)', 33, 'Other Agencies', '2.2E.022');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (153, 'SFQCc3_ra_a', 'SFQCc3_ra', 'Safeguard & Quality Control', 'Quality of government reports', 'Understandable reports (Regulatory Agency)', 33, 'Regulatory Agency', '2.2C.021');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (154, 'SFQCc3_ra_b', 'SFQCc3_ra', 'Safeguard & Quality Control', 'Quality of government reports', 'Timely reports (Regulatory Agency)', 33, 'Regulatory Agency', '2.2C.022');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (155, 'SFQCq4', 'SFQCq4', 'Safeguard & Quality Control', 'Government disclosure of conflicts of interest', 'Disclosure of conflicts of interest (RG)', 34, 'NA', '2.3.028');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (156, 'SFQCc5_a', 'SFQCc5', 'Safeguard & Quality Control', 'Quality of SOC reports', 'Understandable reports (SOC)', 35, 'NA', '3.1.2.039');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (157, 'SFQCc5_b', 'SFQCc5', 'Safeguard & Quality Control', 'Quality of SOC reports', 'Timely reports (SOC)', 35, 'NA', '3.1.2.040');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (158, 'SFQCc6_a', 'SFQCc6', 'Safeguard & Quality Control', 'SOC reports audited', 'Reports are audited (SOC)', 36, 'NA', '3.1.2.043.a');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (159, 'SFQCc6_b', 'SFQCc6', 'Safeguard & Quality Control', 'SOC reports audited', 'Audited reports are published (SOC)', 36, 'NA', '3.1.2.043.b');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (160, 'SFQCc6_c', 'SFQCc6', 'Safeguard & Quality Control', 'SOC reports audited', 'Audits include subsidiaries (SOC)', 36, 'NA', '3.1.3.046');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (161, 'SFQCq7', 'SFQCq7', 'Safeguard & Quality Control', 'SOC use of international accounting standards', 'Reports follow accounting standards (SOC)', 37, 'NA', '3.1.3.045');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (162, 'SFQCq8', 'SFQCq8', 'Safeguard & Quality Control', 'SOC disclosure of conflicts of interest', 'Disclosure of conflict of interest (SOC)', 38, 'NA', '3.1.3.047');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (163, 'SFQCc9_a', 'SFQCc9', 'Safeguard & Quality Control', 'Quality of fund reports', 'Understandable reports (NRF)', 39, 'NA', '3.2.2.054');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (164, 'SFQCc9_b', 'SFQCc9', 'Safeguard & Quality Control', 'Quality of fund reports', 'Timely reports (NRF)', 39, 'NA', '3.2.2.055');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (165, 'SFQCc10_a', 'SFQCc10', 'Safeguard & Quality Control', 'Fund reports audited', 'Reports are audited (NRF)', 40, 'NA', '3.2.2.056a');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (166, 'SFQCc10_b', 'SFQCc10', 'Safeguard & Quality Control', 'Fund reports audited', 'Audited reports are published (NRF)', 40, 'NA', '3.2.2.056b');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (167, 'SFQCc11_a', 'SFQCc11', 'Safeguard & Quality Control', 'Government follows fund rules', 'Actual practice for deposits (NRF)', 41, 'NA', '3.2.3.058');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (168, 'SFQCc11_b', 'SFQCc11', 'Safeguard & Quality Control', 'Government follows fund rules', 'Actual practice for disbursements (NRF)', 41, 'NA', '3.2.3.060');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (169, 'SFQCq12', 'SFQCq12', 'Safeguard & Quality Control', 'Checks on fund spending', 'Legislative oversight of spending (NRF)', 42, 'NA', '3.2.3.061');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (170, 'SFQCq13', 'SFQCq13', 'Safeguard & Quality Control', 'Fund disclosure of conflicts of interest', 'Disclosure of conflicts of interest (NRF)', 43, 'NA', '3.2.3.062');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (171, 'SFQCc14_a', 'SFQCc14', 'Safeguard & Quality Control', 'Quality of subnational transfer reports', 'Understandable reports (SNT)', 44, 'NA', '3.3.2.067');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (172, 'SFQCc14_b', 'SFQCc14', 'Safeguard & Quality Control', 'Quality of subnational transfer reports', 'Timely reports (SNT)', 44, 'NA', '3.3.2.068');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (173, 'SFQCq15', 'SFQCq15', 'Safeguard & Quality Control', 'Government follows subnational transfer rules', 'Actual practice for revenue sharing (SNT)', 45, 'NA', '3.3.3.071');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (174, 'EEc1_a', 'EEc1', 'Enabling Environment', 'Corruption (TI Corruption Perceptions Index & WGI control of corruption)', 'TI Corruption Perceptions Index', 46, 'NA', 'NA');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (175, 'EEc1_b', 'EEc1', 'Enabling Environment', 'Corruption (TI Corruption Perceptions Index & WGI control of corruption)', 'WGI Control of Corruption', 46, 'NA', 'NA');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (176, 'EEq2', 'EEq2', 'Enabling Environment', 'Open Budget (IBP Index)', 'IBP Open Budget Index', 47, 'NA', 'NA');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (177, 'EEc3_a', 'EEc3', 'Enabling Environment', 'Accountability & democracy (EIU Democracy Index & WGI voice and accountability)', 'WGI Voice & Democratic Accountability', 48, 'NA', 'NA');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (178, 'EEc3_b', 'EEc3', 'Enabling Environment', 'Accountability & democracy (EIU Democracy Index & WGI voice and accountability)', 'EIU Democracy Index', 51, 'NA', 'NA');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (179, 'EEq4', 'EEq4', 'Enabling Environment', 'Government effectiveness (WGI)', 'WGI Government Effectiveness', 49, 'NA', 'NA');
INSERT INTO rgi_raw_data_web_column_a_to_h VALUES (180, 'EEq5', 'EEq5', 'Enabling Environment', 'Rule of law (WGI)', 'WGI Rule of Law', 50, 'NA', 'NA');


--
-- TOC entry 2023 (class 0 OID 16958)
-- Dependencies: 178
-- Data for Name: view_country_prioritization_framework_comments; Type: TABLE DATA; Schema: public; Owner: ahasemann
--



SET search_path = ahasemann, pg_catalog;

--
-- TOC entry 1884 (class 2606 OID 16835)
-- Name: country_codes_pkey; Type: CONSTRAINT; Schema: ahasemann; Owner: ahasemann; Tablespace: 
--

ALTER TABLE ONLY country_codes
    ADD CONSTRAINT country_codes_pkey PRIMARY KEY ("ID");


--
-- TOC entry 1888 (class 2606 OID 16928)
-- Name: country_prioritization_framework_pkey; Type: CONSTRAINT; Schema: ahasemann; Owner: ahasemann; Tablespace: 
--

ALTER TABLE ONLY country_prioritization_framework
    ADD CONSTRAINT country_prioritization_framework_pkey PRIMARY KEY ("ID");


--
-- TOC entry 1892 (class 2606 OID 16952)
-- Name: priority_and_limited_engagement_countries_pkey; Type: CONSTRAINT; Schema: ahasemann; Owner: ahasemann; Tablespace: 
--

ALTER TABLE ONLY priority_and_limited_engagement_countries
    ADD CONSTRAINT priority_and_limited_engagement_countries_pkey PRIMARY KEY ("ID");


--
-- TOC entry 1906 (class 2606 OID 17135)
-- Name: rgi_2013_questionnaire_with_categories_pkey; Type: CONSTRAINT; Schema: ahasemann; Owner: ahasemann; Tablespace: 
--

ALTER TABLE ONLY rgi_2013_questionnaire_with_categories
    ADD CONSTRAINT rgi_2013_questionnaire_with_categories_pkey PRIMARY KEY ("ID");


--
-- TOC entry 1902 (class 2606 OID 17096)
-- Name: rgi_raw_data_web_column_a_ and_i_to_bn_transposed_pkey; Type: CONSTRAINT; Schema: ahasemann; Owner: ahasemann; Tablespace: 
--

ALTER TABLE ONLY rgi_raw_data_web_column_a_and_i_to_bn_transposed
    ADD CONSTRAINT "rgi_raw_data_web_column_a_ and_i_to_bn_transposed_pkey" PRIMARY KEY ("ID");


--
-- TOC entry 1898 (class 2606 OID 17000)
-- Name: rgi_raw_data_web_column_a_to_h_pkey; Type: CONSTRAINT; Schema: ahasemann; Owner: ahasemann; Tablespace: 
--

ALTER TABLE ONLY rgi_raw_data_web_column_a_to_h
    ADD CONSTRAINT rgi_raw_data_web_column_a_to_h_pkey PRIMARY KEY ("ID");


SET search_path = public, pg_catalog;

--
-- TOC entry 1886 (class 2606 OID 16840)
-- Name: country_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: ahasemann; Tablespace: 
--

ALTER TABLE ONLY country_codes
    ADD CONSTRAINT country_codes_pkey PRIMARY KEY ("ID");


--
-- TOC entry 1890 (class 2606 OID 16947)
-- Name: country_prioritization_framework_pkey; Type: CONSTRAINT; Schema: public; Owner: ahasemann; Tablespace: 
--

ALTER TABLE ONLY country_prioritization_framework
    ADD CONSTRAINT country_prioritization_framework_pkey PRIMARY KEY ("ID");


--
-- TOC entry 1894 (class 2606 OID 16957)
-- Name: priority_and_limited_engagement_countries_pkey; Type: CONSTRAINT; Schema: public; Owner: ahasemann; Tablespace: 
--

ALTER TABLE ONLY priority_and_limited_engagement_countries
    ADD CONSTRAINT priority_and_limited_engagement_countries_pkey PRIMARY KEY ("ID");


--
-- TOC entry 1908 (class 2606 OID 17143)
-- Name: rgi_2013_questionnaire_with_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: ahasemann; Tablespace: 
--

ALTER TABLE ONLY rgi_2013_questionnaire_with_categories
    ADD CONSTRAINT rgi_2013_questionnaire_with_categories_pkey PRIMARY KEY ("ID");


--
-- TOC entry 1904 (class 2606 OID 17101)
-- Name: rgi_raw_data_web_column_a_ and_i_to_bn_transposed_pkey; Type: CONSTRAINT; Schema: public; Owner: ahasemann; Tablespace: 
--

ALTER TABLE ONLY rgi_raw_data_web_column_a_and_i_to_bn_transposed
    ADD CONSTRAINT "rgi_raw_data_web_column_a_ and_i_to_bn_transposed_pkey" PRIMARY KEY ("ID");


--
-- TOC entry 1900 (class 2606 OID 17008)
-- Name: rgi_raw_data_web_column_a_to_h_pkey; Type: CONSTRAINT; Schema: public; Owner: ahasemann; Tablespace: 
--

ALTER TABLE ONLY rgi_raw_data_web_column_a_to_h
    ADD CONSTRAINT rgi_raw_data_web_column_a_to_h_pkey PRIMARY KEY ("ID");


--
-- TOC entry 1896 (class 2606 OID 16965)
-- Name: view_country_prioritization_framework_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: ahasemann; Tablespace: 
--

ALTER TABLE ONLY view_country_prioritization_framework_comments
    ADD CONSTRAINT view_country_prioritization_framework_comments_pkey PRIMARY KEY ("ID");


--
-- TOC entry 2035 (class 0 OID 0)
-- Dependencies: 7
-- Name: ahasemann; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA ahasemann FROM PUBLIC;
REVOKE ALL ON SCHEMA ahasemann FROM postgres;
GRANT ALL ON SCHEMA ahasemann TO postgres;
GRANT ALL ON SCHEMA ahasemann TO ahasemann;


--
-- TOC entry 2037 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2014-09-26 17:15:42 UTC

--
-- PostgreSQL database dump complete
--

