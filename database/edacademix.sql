-- ===========================================================================
-- EdAcademix database (structure + catalogue and IELTS test content)
-- Sanitized for publication: all user, admin, certificate, offer-letter, contact,
-- test-result and answer rows were removed. Tables are kept (empty).
-- Import into an empty database named `edacademix` (see database/README.md).
-- ===========================================================================

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2025 at 11:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edacademix`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `PasswordHash` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data of table `admin` intentionally removed (personal / test data).

-- --------------------------------------------------------

--
-- Table structure for table `admissionrequirements`
--

CREATE TABLE `admissionrequirements` (
  `requirement_id` int(11) NOT NULL,
  `university_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `field_id` int(11) DEFAULT NULL,
  `academic_qualification` text DEFAULT NULL,
  `language_requirement` text DEFAULT NULL,
  `entrance_exam` text DEFAULT NULL,
  `other_requirements` text DEFAULT NULL,
  `application_deadline` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admissionrequirements`
--

INSERT INTO `admissionrequirements` (`requirement_id`, `university_id`, `program_id`, `field_id`, `academic_qualification`, `language_requirement`, `entrance_exam`, `other_requirements`, `application_deadline`) VALUES
(1, 1, 1, 1, 'Equivalent secondary education qualifications recognized by ANU.', 'IELTS: Overall score of 6.0, with no band less than 6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency, Curriculum vitae (CV) and personal statement (if applicable), Letters of recommendation (depending on the program), Additional documents as specified by the specific program or department', 'Semester 1 (February intake): Applications typically open in August and close in December, Semester 2 (July intake): Applications open in March and close in May.'),
(2, 1, 1, 2, 'Equivalent secondary education qualifications recognized by ANU.', 'IELTS: Overall score of 6.0, with no band less than 6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency, Curriculum vitae (CV) and personal statement (if applicable), Letters of recommendation (depending on the program), Additional documents as specified by the specific program or department', 'Semester 1 (February intake): Applications typically open in August and close in December, Semester 2 (July intake): Applications open in March and close in May.'),
(3, 1, 2, 1, 'A recognized Bachelor degree or equivalent in a related field, Some programs may require specific undergraduate studies or a certain academic performance (e.g., a credit average or higher).', 'IELTS: Overall score of 6.5, with no band less than 6.0', 'MBA Program: Requires a GMAT score (typically a minimum score of 600).', 'Academic transcripts and certificates, Proof of English language proficiency, Curriculum vitae (CV) and personal statement, Letters of recommendation (for some programs), GMAT/GRE scores (if required for the program), Additional documents as specified by the specific program or department.', 'Semester 1 (February intake): Applications generally open in August and close in December, Semester 2 (July intake): Applications open in March and close in May.'),
(4, 1, 2, 2, 'A recognized Bachelor degree or equivalent in a related field, Some programs may require specific undergraduate studies or a certain academic performance (e.g., a credit average or higher).', 'IELTS: Overall score of 6.5, with no band less than 6.0', 'MBA Program: Requires a GMAT score (typically a minimum score of 600).', 'Academic transcripts and certificates, Proof of English language proficiency, Curriculum vitae (CV) and personal statement, Letters of recommendation (for some programs), GMAT/GRE scores (if required for the program), Additional documents as specified by the specific program or department.', 'Semester 1 (February intake): Applications generally open in August and close in December, Semester 2 (July intake): Applications open in March and close in May.'),
(5, 1, 2, 3, 'A recognized Bachelor degree or equivalent in a related field, Some programs may require specific undergraduate studies or a certain academic performance (e.g., a credit average or higher).', 'IELTS: Overall score of 6.5, with no band less than 6.0', 'MBA Program: Requires a GMAT score (typically a minimum score of 600).', 'Academic transcripts and certificates, Proof of English language proficiency, Curriculum vitae (CV) and personal statement, Letters of recommendation (for some programs), GMAT/GRE scores (if required for the program), Additional documents as specified by the specific program or department.', 'Semester 1 (February intake): Applications generally open in August and close in December, Semester 2 (July intake): Applications open in March and close in May.'),
(6, 1, 3, 1, 'A Masters degree or a Bachelors degree with honours (typically 1st or 2nd class upper) in a relevant field, Applicants must demonstrate a strong academic record and prior research experience.', 'IELTS: Overall score of 6.5, with no band less than 6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency, Research proposal (with detailed plans and objectives for the research), Curriculum vitae (CV), Two or three letters of recommendation (typically from academic mentors), Additional documents may be required by specific programs or departments.', 'Applications are accepted year-round, with the official intakes in March and September.'),
(7, 1, 3, 2, 'A Masters degree or a Bachelors degree with honours (typically 1st or 2nd class upper) in a relevant field, Applicants must demonstrate a strong academic record and prior research experience.', 'IELTS: Overall score of 6.5, with no band less than 6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency, Research proposal (with detailed plans and objectives for the research), Curriculum vitae (CV), Two or three letters of recommendation (typically from academic mentors), Additional documents may be required by specific programs or departments.', 'Applications are accepted year-round, with the official intakes in March and September.'),
(8, 1, 3, 3, 'A Masters degree or a Bachelors degree with honours (typically 1st or 2nd class upper) in a relevant field, Applicants must demonstrate a strong academic record and prior research experience.', 'IELTS: Overall score of 6.5, with no band less than 6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency, Research proposal (with detailed plans and objectives for the research), Curriculum vitae (CV), Two or three letters of recommendation (typically from academic mentors), Additional documents may be required by specific programs or departments.', 'Applications are accepted year-round, with the official intakes in March and September.'),
(9, 2, 1, 1, 'Completion of high school or an equivalent qualification', 'IELTS: Overall score of 6.5, with no band less than 6.0', 'Some programs may require additional entrance exams or an interview.', 'Academic transcripts, Proof of English proficiency, CV and motivation letter (if applicable), Additional documents for international students, including visa-related paperwork.', 'Semester 1 (March intake): Applications typically open in August and close in December, Semester 2 (July intake): Applications open in March and close in May.'),
(10, 2, 1, 2, 'Completion of high school or an equivalent qualification', 'IELTS: Overall score of 6.5, with no band less than 6.0', 'Some programs may require additional entrance exams or an interview.', 'Academic transcripts, Proof of English proficiency, CV and motivation letter (if applicable), Additional documents for international students, including visa-related paperwork.', 'Semester 1 (March intake): Applications typically open in August and close in December, Semester 2 (July intake): Applications open in March and close in May.'),
(11, 2, 1, 3, 'Completion of high school or an equivalent qualification', 'IELTS: Overall score of 6.5, with no band less than 6.0', 'Some programs may require additional entrance exams or an interview.', 'Academic transcripts, Proof of English proficiency, CV and motivation letter (if applicable), Additional documents for international students, including visa-related paperwork.', 'Semester 1 (March intake): Applications typically open in August and close in December, Semester 2 (July intake): Applications open in March and close in May.'),
(12, 2, 2, 1, 'A recognized undergraduate degree or equivalent, typically with a credit (60–70%) average.', ' IELTS: Overall score of 6.5, with no band less than 6.0', 'Some programs, such as the MBA or other business-focused master’s degrees, may require a GMAT or GRE score.', 'Academic transcripts and certificates, Proof of English language proficiency, A curriculum vitae (CV) and personal statement, Letters of recommendation (depending on the program), For business-related programs, GMAT or GRE scores (if applicable).', 'Semester 1 (March intake): Applications typically open in August and close in November, Semester 2 (July intake): Applications open in March and close in May.'),
(13, 2, 2, 2, 'A recognized undergraduate degree or equivalent, typically with a credit (60–70%) average.', ' IELTS: Overall score of 6.5, with no band less than 6.0', 'Some programs, such as the MBA or other business-focused master’s degrees, may require a GMAT or GRE score.', 'Academic transcripts and certificates, Proof of English language proficiency, A curriculum vitae (CV) and personal statement, Letters of recommendation (depending on the program), For business-related programs, GMAT or GRE scores (if applicable).', 'Semester 1 (March intake): Applications typically open in August and close in November, Semester 2 (July intake): Applications open in March and close in May.'),
(14, 2, 2, 3, 'A recognized undergraduate degree or equivalent, typically with a credit (60–70%) average.', ' IELTS: Overall score of 6.5, with no band less than 6.0', 'Some programs, such as the MBA or other business-focused master’s degrees, may require a GMAT or GRE score.', 'Academic transcripts and certificates, Proof of English language proficiency, A curriculum vitae (CV) and personal statement, Letters of recommendation (depending on the program), For business-related programs, GMAT or GRE scores (if applicable).', 'Semester 1 (March intake): Applications typically open in August and close in November, Semester 2 (July intake): Applications open in March and close in May.'),
(15, 2, 3, 1, 'A recognized Masters degree or equivalent, or a strong Bachelors degree with honours (typically 1st or 2nd class upper) in a related field.', 'IELTS: Overall score of 6.5, with no band less than 6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency, Research proposal (detailed plan of the proposed research), CV and references (typically two or three academic references).', 'Applications are accepted year-round, with intake typically in March and July.'),
(16, 2, 3, 2, 'A recognized Masters degree or equivalent, or a strong Bachelors degree with honours (typically 1st or 2nd class upper) in a related field.', 'IELTS: Overall score of 6.5, with no band less than 6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency, Research proposal (detailed plan of the proposed research), CV and references (typically two or three academic references).', 'Applications are accepted year-round, with intake typically in March and July.'),
(17, 2, 3, 3, 'A recognized Masters degree or equivalent, or a strong Bachelors degree with honours (typically 1st or 2nd class upper) in a related field.', 'IELTS: Overall score of 6.5, with no band less than 6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency, Research proposal (detailed plan of the proposed research), CV and references (typically two or three academic references).', 'Applications are accepted year-round, with intake typically in March and July.'),
(18, 3, 1, 1, 'For international students, this includes qualifications such as the International Baccalaureate (IB) or other country-specific secondary education systems.', ' IELTS: Overall score of 6.5, with no band less than 6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency, Curriculum vitae (CV) and personal statement, Letters of recommendation (if required by the program), Additional documents as specified by the specific program or department.', 'Semester 1 (March intake): Applications typically open in August and close in December, Semester 2 (July intake): Applications open in March and close in May.'),
(19, 3, 1, 2, 'For international students, this includes qualifications such as the International Baccalaureate (IB) or other country-specific secondary education systems.', ' IELTS: Overall score of 6.5, with no band less than 6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency, Curriculum vitae (CV) and personal statement, Letters of recommendation (if required by the program), Additional documents as specified by the specific program or department.', 'Semester 1 (March intake): Applications typically open in August and close in December, Semester 2 (July intake): Applications open in March and close in May.'),
(20, 3, 1, 3, 'For international students, this includes qualifications such as the International Baccalaureate (IB) or other country-specific secondary education systems.', ' IELTS: Overall score of 6.5, with no band less than 6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency, Curriculum vitae (CV) and personal statement, Letters of recommendation (if required by the program), Additional documents as specified by the specific program or department.', 'Semester 1 (March intake): Applications typically open in August and close in December, Semester 2 (July intake): Applications open in March and close in May.'),
(21, 3, 2, 1, 'A recognized Bachelor’s degree or equivalent in a related field, For some programs, specific undergraduate studies or work experience may be required.', 'IELTS: Overall score of 6.5, with no band less than 6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency, Curriculum vitae (CV) and personal statement, Letters of recommendation (required for some programs), GMAT/GRE scores (for some programs like MBA and specific engineering programs), Additional documents as specified by the specific program.', 'Semester 1 (March intake): Applications typically open in August and close in December, Semester 2 (July intake): Applications open in March and close in May.'),
(22, 3, 2, 2, 'A recognized Bachelor’s degree or equivalent in a related field, For some programs, specific undergraduate studies or work experience may be required.', 'IELTS: Overall score of 6.5, with no band less than 6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency, Curriculum vitae (CV) and personal statement, Letters of recommendation (required for some programs), GMAT/GRE scores (for some programs like MBA and specific engineering programs), Additional documents as specified by the specific program, MBA applicants typically need 3+ years of work experience.', 'Semester 1 (March intake): Applications typically open in August and close in December, Semester 2 (July intake): Applications open in March and close in May.'),
(23, 3, 2, 3, 'A recognized Bachelor’s degree or equivalent in a related field, For some programs, specific undergraduate studies or work experience may be required.', 'IELTS: Overall score of 6.5, with no band less than 6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency, Curriculum vitae (CV) and personal statement, Letters of recommendation (required for some programs), GMAT/GRE scores (for some programs like MBA and specific engineering programs), Additional documents as specified by the specific program.', 'Semester 1 (March intake): Applications typically open in August and close in December, Semester 2 (July intake): Applications open in March and close in May.'),
(24, 3, 3, 1, 'A recognized Master’s degree or a Bachelor’s degree with honours (typically 1st or 2nd class upper) in a relevant field.', 'IELTS: Overall score of 6.5, with no band less than 6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency, Research proposal (including objectives and methodology), Curriculum vitae (CV), Letters of recommendation (generally two or three academic references).', 'Semester 1 (March intake): Applications typically open in August and close in December, Semester 2 (July intake): Applications open in March and close in May.'),
(25, 3, 3, 2, 'A recognized Master’s degree or a Bachelor’s degree with honours (typically 1st or 2nd class upper) in a relevant field.', 'IELTS: Overall score of 6.5, with no band less than 6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency, Research proposal (including objectives and methodology), Curriculum vitae (CV), Letters of recommendation (generally two or three academic references).', 'Semester 1 (March intake): Applications typically open in August and close in December, Semester 2 (July intake): Applications open in March and close in May.'),
(26, 3, 3, 3, 'A recognized Master’s degree or a Bachelor’s degree with honours (typically 1st or 2nd class upper) in a relevant field.', 'IELTS: Overall score of 6.5, with no band less than 6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency, Research proposal (including objectives and methodology), Curriculum vitae (CV), Letters of recommendation (generally two or three academic references).', 'Semester 1 (March intake): Applications typically open in August and close in December, Semester 2 (July intake): Applications open in March and close in May.'),
(27, 4, 1, 1, 'For international students, equivalent secondary education qualifications are considered.', 'IELTS: Overall score of 6.5, with no band less than 6.0', 'Ensures an interview through mail.', 'Academic transcripts and certificates, Proof of English language proficiency, Curriculum vitae (CV), Letters of recommendation.', 'Semester 1 (February intake): Applications typically open in August and close in November, Semester 2 (July intake): Applications open in March and close in May.'),
(28, 4, 1, 2, 'For international students, equivalent secondary education qualifications are considered.', 'IELTS: Overall score of 6.5, with no band less than 6.0', 'Ensures an interview through mail.', 'Academic transcripts and certificates, Proof of English language proficiency, Curriculum vitae (CV), Letters of recommendation.', 'Semester 1 (February intake): Applications typically open in August and close in November, Semester 2 (July intake): Applications open in March and close in May.'),
(29, 4, 1, 3, 'For international students, equivalent secondary education qualifications are considered.', 'IELTS: Overall score of 6.5, with no band less than 6.0', 'Ensures an interview through mail.', 'Academic transcripts and certificates, Proof of English language proficiency, Curriculum vitae (CV), Letters of recommendation.', 'Semester 1 (February intake): Applications typically open in August and close in November, Semester 2 (July intake): Applications open in March and close in May.'),
(30, 4, 2, 1, 'A recognized Bachelor’s degree or equivalent in a related field.', ' IELTS: Overall score of 6.5, with no band less than 6.0', 'Ensures an interview through mail.', 'Academic transcripts and certificates, Proof of English language proficiency, Curriculum vitae (CV), Personal statement or letter of motivation, Letters of recommendation.', 'Semester 1 (February intake): Applications typically open in August and close in November, Semester 2 (July intake): Applications open in March and close in May.'),
(31, 4, 2, 2, 'A recognized Bachelor’s degree or equivalent in a related field.', ' IELTS: Overall score of 6.5, with no band less than 6.0', 'Ensures an interview through mail.', 'Academic transcripts and certificates, Proof of English language proficiency, Curriculum vitae (CV), Personal statement or letter of motivation, Letters of recommendation, Master of Business Administration (MBA), where at least 2–3 years of professional experience may be needed.', 'Semester 1 (February intake): Applications typically open in August and close in November, Semester 2 (July intake): Applications open in March and close in May.'),
(32, 4, 2, 3, 'A recognized Bachelor’s degree or equivalent in a related field.', ' IELTS: Overall score of 6.5, with no band less than 6.0', 'Ensures an interview through mail.', 'Academic transcripts and certificates, Proof of English language proficiency, Curriculum vitae (CV), Personal statement or letter of motivation, Letters of recommendation.', 'Semester 1 (February intake): Applications typically open in August and close in November, Semester 2 (July intake): Applications open in March and close in May.'),
(33, 4, 3, 1, 'A recognized Master’s degree or Bachelor’s degree with honours (typically 1st or 2nd class upper) in a relevant field.', 'IELTS: Overall score of 6.5, with no band less than 6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency, Research proposal (including objectives, research questions, and methodology), Curriculum vitae (CV), Letters of recommendation (usually 2–3 academic references).', 'Semester 1 (March intake): Applications typically open in August and close in December, Semester 2 (July intake): Applications open in March and close in May.'),
(34, 4, 3, 2, 'A recognized Master’s degree or Bachelor’s degree with honours (typically 1st or 2nd class upper) in a relevant field.', 'IELTS: Overall score of 6.5, with no band less than 6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency, Research proposal (including objectives, research questions, and methodology), Curriculum vitae (CV), Letters of recommendation (usually 2–3 academic references).', 'Semester 1 (March intake): Applications typically open in August and close in December, Semester 2 (July intake): Applications open in March and close in May.'),
(35, 4, 3, 3, 'A recognized Master’s degree or Bachelor’s degree with honours (typically 1st or 2nd class upper) in a relevant field.', 'IELTS: Overall score of 6.5, with no band less than 6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency, Research proposal (including objectives, research questions, and methodology), Curriculum vitae (CV), Letters of recommendation (usually 2–3 academic references).', 'Semester 1 (March intake): Applications typically open in August and close in December, Semester 2 (July intake): Applications open in March and close in May.'),
(36, 5, 1, 1, 'For international students, equivalent secondary education qualifications, such as the International Baccalaureate (IB), Advanced Placement (AP) exams, or other recognized qualifications are accepted.', 'IELTS Academic: Overall score of 6.5, with no component below 6.0', 'Ensures an interview through mail.', ' Academic transcripts, Personal statement explaining academic interests and motivation for the chosen course, Letters of recommendation (typically 1–2 from teachers or counselors), A-levels or equivalent qualifications results.', 'January 15 for most undergraduate programs at Imperial College London.'),
(37, 5, 1, 2, 'For international students, equivalent secondary education qualifications, such as the International Baccalaureate (IB), Advanced Placement (AP) exams, or other recognized qualifications are accepted.', 'IELTS Academic: Overall score of 6.5, with no component below 6.0', 'Ensures an interview through mail.', ' Academic transcripts, Personal statement explaining academic interests and motivation for the chosen course, Letters of recommendation (typically 1–2 from teachers or counselors), A-levels or equivalent qualifications results.', 'January 15 for most undergraduate programs at Imperial College London.'),
(38, 5, 1, 3, 'For international students, equivalent secondary education qualifications, such as the International Baccalaureate (IB), Advanced Placement (AP) exams, or other recognized qualifications are accepted.', 'IELTS Academic: Overall score of 6.5, with no component below 6.0', 'Ensures an interview through mail.', ' Academic transcripts, Personal statement explaining academic interests and motivation for the chosen course, Letters of recommendation (typically 1–2 from teachers or counselors), A-levels or equivalent qualifications results.', 'October 15.'),
(39, 5, 2, 1, 'A strong undergraduate degree (usually a 2:1 or higher, equivalent to a UK degree) in a relevant field from a recognized institution.', ' IELTS: Overall score of 6.5–7.0, with no component below 6.0', 'Not Required', 'Academic transcripts and certificates, Curriculum vitae (CV) outlining relevant academic and professional experience, Statement of purpose (SOP) or personal statement, detailing motivation for the program and career aspirations, Letters of recommendation (typically 2–3 from academic or professional referees), Test scores (e.g., GRE, GMAT) if required by the program.', 'Typically between December and March for the following academic year.'),
(40, 5, 2, 2, 'A strong undergraduate degree (usually a 2:1 or higher, equivalent to a UK degree) in a relevant field from a recognized institution.', ' IELTS: Overall score of 6.5–7.0, with no component below 6.0', 'Not Required', 'Academic transcripts and certificates, Curriculum vitae (CV) outlining relevant academic and professional experience, Statement of purpose (SOP) or personal statement, detailing motivation for the program and career aspirations, Letters of recommendation (typically 2–3 from academic or professional referees), Test scores (e.g., GRE, GMAT) if required by the program.', 'Typically between December and March for the following academic year.'),
(41, 5, 2, 3, 'A strong undergraduate degree (usually a 2:1 or higher, equivalent to a UK degree) in a relevant field from a recognized institution.', ' IELTS: Overall score of 6.5–7.0, with no component below 6.0', 'Not Required', 'Academic transcripts and certificates, Curriculum vitae (CV) outlining relevant academic and professional experience, Statement of purpose (SOP) or personal statement, detailing motivation for the program and career aspirations, Letters of recommendation (typically 2–3 from academic or professional referees), Test scores (e.g., GRE, GMAT) if required by the program.', 'Typically between December and March for the following academic year.'),
(42, 5, 3, 1, 'A strong academic background with at least a 2:1 or higher undergraduate degree (equivalent to a UK degree) in a relevant field, A Masters degree is often required, especially for competitive programs.', ' IELTS: Overall score of 6.5–7.0, with no component below 6.0', 'Not Required', 'Academic transcripts and certificates, Research proposal, Curriculum vitae (CV), detailing academic and research experience, Personal statement, outlining motivations for the program and long-term career goals, Letters of recommendation (typically 2–3 from academic or professional referees), Writing samples or publications (if required by the program), Test scores (GRE, GMAT) may be required for certain programs.', 'Varies by program. Most deadlines fall between December and March.'),
(43, 5, 3, 2, 'A strong academic background with at least a 2:1 or higher undergraduate degree (equivalent to a UK degree) in a relevant field, A Masters degree is often required, especially for competitive programs.', ' IELTS: Overall score of 6.5–7.0, with no component below 6.0', 'Not Required', 'Academic transcripts and certificates, Research proposal, Curriculum vitae (CV), detailing academic and research experience, Personal statement, outlining motivations for the program and long-term career goals, Letters of recommendation (typically 2–3 from academic or professional referees), Writing samples or publications (if required by the program), Test scores (GRE, GMAT) may be required for certain programs.', 'Varies by program. Most deadlines fall between December and March.'),
(44, 5, 3, 3, 'A strong academic background with at least a 2:1 or higher undergraduate degree (equivalent to a UK degree) in a relevant field, A Masters degree is often required, especially for competitive programs.', ' IELTS: Overall score of 6.5–7.0, with no component below 6.0', 'Not Required', 'Academic transcripts and certificates, Research proposal, Curriculum vitae (CV), detailing academic and research experience, Personal statement, outlining motivations for the program and long-term career goals, Letters of recommendation (typically 2–3 from academic or professional referees), Writing samples or publications (if required by the program), Test scores (GRE, GMAT) may be required for certain programs.', 'Varies by program. Most deadlines fall between December and March.'),
(45, 6, 1, 1, 'For international students, equivalent secondary education qualifications, such as the International Baccalaureate (IB), Advanced Placement (AP) exams, or other recognized qualifications are accepted.', 'IELTS: Overall score of 7.5, with no component below 7.0', 'Not Required', 'Academic transcripts, Personal statement explaining academic interests and motivation for the chosen course, Letters of recommendation (from teachers or counselors), A-levels or equivalent qualifications results, Specific program requirements (e.g., written work, portfolio).', 'October 15 for all undergraduate applications to Cambridge.'),
(46, 6, 1, 2, 'For international students, equivalent secondary education qualifications, such as the International Baccalaureate (IB), Advanced Placement (AP) exams, or other recognized qualifications are accepted.', 'IELTS: Overall score of 7.5, with no component below 7.0', 'Not Required', 'Academic transcripts, Personal statement explaining academic interests and motivation for the chosen course, Letters of recommendation (from teachers or counselors), A-levels or equivalent qualifications results, Specific program requirements (e.g., written work, portfolio).', 'October 15 for all undergraduate applications to Cambridge.'),
(47, 6, 2, 1, 'A strong academic record, typically a first-class or upper second-class undergraduate degree (equivalent to a 3.5 GPA or higher on a 4.0 scale), or a relevant professional qualification.', ' IELTS: Overall score of 7.5, with no component below 7.0', 'Not Required', 'Academic transcripts, Curriculum vitae (CV) detailing relevant work experience and academic achievements, Statement of purpose explaining the candidate’s academic background, motivation, and how the chosen program aligns with career goals, Letters of recommendation (typically 2–3 from academic or professional referees), Writing sample or portfolio (for specific programs such as humanities, arts, or design), Relevant test scores (e.g., GRE, GMAT) if required by the program.', 'Michaelmas Term (October intake): Typically in December or January for the \r\nfollowing year’s intake, Lent Term (February intake): Typically in April for the following year’s intake.'),
(48, 6, 2, 2, 'A strong academic record, typically a first-class or upper second-class undergraduate degree (equivalent to a 3.5 GPA or higher on a 4.0 scale), or a relevant professional qualification.', ' IELTS: Overall score of 7.5, with no component below 7.0', 'Not Required', 'Academic transcripts, Curriculum vitae (CV) detailing relevant work experience and academic achievements, Statement of purpose explaining the candidate’s academic background, motivation, and how the chosen program aligns with career goals, Letters of recommendation (typically 2–3 from academic or professional referees), Writing sample or portfolio (for specific programs such as humanities, arts, or design), Relevant test scores (e.g., GRE, GMAT) if required by the program.', 'Michaelmas Term (October intake): Typically in December or January for the following year’s intake, Lent Term (February intake): Typically in April for the following year’s intake.'),
(49, 6, 3, 1, 'A strong academic record, typically a first-class or upper second-class undergraduate degree (equivalent to a 3.5 GPA on a 4.0 scale) or a Masters degree in a relevant field.', 'IELTS: Overall score of 7.5, with no component below 7.0', 'Not Required', 'Academic transcripts and certificates, Research proposal, Statement of purpose detailing the candidate’s academic background, research interests, and career aspirations, Letters of recommendation (typically 2–3 from academic or professional referees), Curriculum vitae (CV) detailing relevant academic and research experience, Test scores (GRE/GMAT, if required), Writing samples or publications (if required by the program).', 'Deadlines typically fall between December and January for the following academic year, Specific deadlines may vary depending on the department and program.'),
(50, 6, 3, 2, 'A strong academic record, typically a first-class or upper second-class undergraduate degree (equivalent to a 3.5 GPA on a 4.0 scale) or a Masters degree in a relevant field.', 'IELTS: Overall score of 7.5, with no component below 7.0', 'Not Required', 'Academic transcripts and certificates, Research proposal, Statement of purpose detailing the candidate’s academic background, research interests, and career aspirations, Letters of recommendation (typically 2–3 from academic or professional referees), Curriculum vitae (CV) detailing relevant academic and research experience, Test scores (GRE/GMAT, if required), Writing samples or publications (if required by the program).', 'Deadlines typically fall between December and January for the following academic year, Specific deadlines may vary depending on the department and program.'),
(51, 7, 1, 1, 'Successful completion of secondary education equivalent to UK A-levels or the International Baccalaureate (IB).', 'IELTS: Overall score of 6.5–7.0, with no component below 6.0', 'Not Required', 'Academic transcripts, Personal statement explaining academic interests and motivation for the chosen program, Letters of recommendation (typically 1–2 from teachers or counselors), A-levels or equivalent qualifications results.', 'January 15 for most undergraduate programs.'),
(52, 7, 1, 2, 'Successful completion of secondary education equivalent to UK A-levels or the International Baccalaureate (IB).', 'IELTS: Overall score of 6.5–7.0, with no component below 6.0', 'Not Required', 'Academic transcripts, Personal statement explaining academic interests and motivation for the chosen program, Letters of recommendation (typically 1–2 from teachers or counselors), A-levels or equivalent qualifications results.', 'January 15 for most undergraduate programs.'),
(53, 7, 1, 3, 'Successful completion of secondary education equivalent to UK A-levels or the International Baccalaureate (IB).', 'IELTS: Overall score of 6.5–7.0, with no component below 6.0', 'Not Required', 'Academic transcripts, Personal statement explaining academic interests and motivation for the chosen program, Letters of recommendation (typically 1–2 from teachers or counselors), A-levels or equivalent qualifications results.', ' October 15'),
(54, 7, 2, 1, 'A strong undergraduate degree (usually a 2:1 or equivalent, equivalent to a UK degree) in a relevant field.', 'IELTS: Overall score of 6.5–7.0, with no component below 6.0', 'Not Required', 'Academic transcripts and certificates, Curriculum vitae (CV), outlining academic, professional, and research experience, Personal statement or statement of purpose, detailing reasons for choosing the program and career aspirations, Letters of recommendation (typically 2–3 from academic or professional referees).', 'Varies by program, but generally fall between January and July for the September intake.'),
(55, 7, 2, 2, 'A strong undergraduate degree (usually a 2:1 or equivalent, equivalent to a UK degree) in a relevant field.', 'IELTS: Overall score of 6.5–7.0, with no component below 6.0', 'Not Required', 'Academic transcripts and certificates, Curriculum vitae (CV), outlining academic, professional, and research experience, Personal statement or statement of purpose, detailing reasons for choosing the program and career aspirations, Letters of recommendation (typically 2–3 from academic or professional referees).', 'Varies by program, but generally fall between January and July for the September intake.'),
(56, 7, 2, 3, 'A strong undergraduate degree (usually a 2:1 or equivalent, equivalent to a UK degree) in a relevant field.', 'IELTS: Overall score of 6.5–7.0, with no component below 6.0', 'Not Required', 'Academic transcripts and certificates, Curriculum vitae (CV), outlining academic, professional, and research experience, Personal statement or statement of purpose, detailing reasons for choosing the program and career aspirations, Letters of recommendation (typically 2–3 from academic or professional referees).', 'Varies by program, but generally fall between January and July for the September intake.'),
(57, 7, 3, 1, 'A strong academic background, typically with a Masters degree or equivalent in a relevant field, Some programs may accept students directly from an undergraduate degree, particularly those with research experience.', ' IELTS: Overall score of 6.5–7.0, with no component below 6.0', 'Not Required', 'Academic transcripts and certificates, Curriculum vitae (CV), detailing academic, research, and relevant experience, Research proposal, Personal statement or statement of research interests, Letters of recommendation (typically 2–3 from academic or professional referees), Writing samples or publications (if required by the program).', 'Varies by program, typically between December and March for September intake.'),
(58, 7, 3, 2, 'A strong academic background, typically with a Masters degree or equivalent in a relevant field, Some programs may accept students directly from an undergraduate degree, particularly those with research experience.', ' IELTS: Overall score of 6.5–7.0, with no component below 6.0', 'Not Required', 'Academic transcripts and certificates, Curriculum vitae (CV), detailing academic, research, and relevant experience, Research proposal, Personal statement or statement of research interests, Letters of recommendation (typically 2–3 from academic or professional referees), Writing samples or publications (if required by the program).', 'Varies by program, typically between December and March for September intake.'),
(59, 7, 3, 3, 'A strong academic background, typically with a Masters degree or equivalent in a relevant field, Some programs may accept students directly from an undergraduate degree, particularly those with research experience.', ' IELTS: Overall score of 6.5–7.0, with no component below 6.0', 'Not Required', 'Academic transcripts and certificates, Curriculum vitae (CV), detailing academic, research, and relevant experience, Research proposal, Personal statement or statement of research interests, Letters of recommendation (typically 2–3 from academic or professional referees), Writing samples or publications (if required by the program).', 'Varies by program, typically between December and March for September intake.'),
(60, 8, 1, 1, 'For international students, qualifications such as the International Baccalaureate (IB), AP exams, or other equivalents are accepted.', 'IELTS: Overall score of 7.5, with no component less than 7.0', 'Not Required', 'Academic transcripts, Personal statement explaining interest and motivation for the chosen subject, Letters of recommendation (from teachers or counselors), Subject-specific test scores (e.g., MAT, TSA).', 'October 16 for all undergraduate applications to Oxford.'),
(61, 8, 1, 2, 'For international students, qualifications such as the International Baccalaureate (IB), AP exams, or other equivalents are accepted.', 'IELTS: Overall score of 7.5, with no component less than 7.0', 'Not Required', 'Academic transcripts, Personal statement explaining interest and motivation for the chosen subject, Letters of recommendation (from teachers or counselors), Subject-specific test scores (e.g., MAT, TSA).', 'October 16 for all undergraduate applications to Oxford.'),
(62, 8, 1, 3, 'For international students, qualifications such as the International Baccalaureate (IB), AP exams, or other equivalents are accepted.', 'IELTS: Overall score of 7.5, with no component less than 7.0', 'Not Required', 'Academic transcripts, Personal statement explaining interest and motivation for the chosen subject, Letters of recommendation (from teachers or counselors), Subject-specific test scores (e.g., MAT, TSA).', 'October 16 for all undergraduate applications to Oxford.'),
(63, 8, 2, 1, 'A first-class or strong upper second-class undergraduate degree (equivalent to 3.5 GPA on a 4.0 scale or higher).', ' IELTS: Overall score of 7.5, with no component below 7.0', 'Not Required', 'Academic transcripts, Statement of purpose detailing academic interests, career goals, and program alignment, Letters of recommendation (typically 2–3), CV or résumé highlighting academic and professional achievements, Test scores (if applicable, such as GRE or GMAT), Writing samples or portfolio (for specific programs).', 'Varies by program but typically falls in December or January for most courses starting in October.'),
(64, 8, 2, 2, 'A first-class or strong upper second-class undergraduate degree (equivalent to 3.5 GPA on a 4.0 scale or higher).', ' IELTS: Overall score of 7.5, with no component below 7.0', 'Not Required', 'Academic transcripts, Statement of purpose detailing academic interests, career goals, and program alignment, Letters of recommendation (typically 2–3), CV or résumé highlighting academic and professional achievements, Test scores (if applicable, such as GRE or GMAT), Writing samples or portfolio (for specific programs).', 'Varies by program but typically falls in December or January for most courses starting in October.'),
(65, 8, 2, 3, 'A first-class or strong upper second-class undergraduate degree (equivalent to 3.5 GPA on a 4.0 scale or higher).', ' IELTS: Overall score of 7.5, with no component below 7.0', 'Not Required', 'Academic transcripts, Statement of purpose detailing academic interests, career goals, and program alignment, Letters of recommendation (typically 2–3), CV or résumé highlighting academic and professional achievements, Test scores (if applicable, such as GRE or GMAT), Writing samples or portfolio (for specific programs).', 'Varies by program but typically falls in December or January for most courses starting in October.'),
(66, 8, 3, 1, 'A strong academic record, typically a first-class or upper second-class undergraduate degree (equivalent to 3.5 GPA on a 4.0 scale) or a relevant Masters degree.', 'IELTS: Overall score of 7.5, with no component below 7.0', 'Not Required', 'Academic transcripts and certificates, Research proposal outlining the intended project, Statement of purpose explaining the candidate’s research interests, career goals, and why Oxford is the right fit, Letters of recommendation (typically 2–3, from academic or professional referees), Curriculum vitae (CV) with research experience and academic accomplishments, Test scores (e.g., GRE or GMAT, if required).', 'Varies by program, but the majority of PhD programs have deadlines in December or January for the following academic year.'),
(67, 8, 3, 2, 'A strong academic record, typically a first-class or upper second-class undergraduate degree (equivalent to 3.5 GPA on a 4.0 scale) or a relevant Masters degree.', 'IELTS: Overall score of 7.5, with no component below 7.0', 'Not Required', 'Academic transcripts and certificates, Research proposal outlining the intended project, Statement of purpose explaining the candidate’s research interests, career goals, and why Oxford is the right fit, Letters of recommendation (typically 2–3, from academic or professional referees), Curriculum vitae (CV) with research experience and academic accomplishments, Test scores (e.g., GRE or GMAT, if required).', 'Varies by program, but the majority of PhD programs have deadlines in December or January for the following academic year.'),
(68, 8, 3, 3, 'A strong academic record, typically a first-class or upper second-class undergraduate degree (equivalent to 3.5 GPA on a 4.0 scale) or a relevant Masters degree.', 'IELTS: Overall score of 7.5, with no component below 7.0', 'Not Required', 'Academic transcripts and certificates, Research proposal outlining the intended project, Statement of purpose explaining the candidate’s research interests, career goals, and why Oxford is the right fit, Letters of recommendation (typically 2–3, from academic or professional referees), Curriculum vitae (CV) with research experience and academic accomplishments, Test scores (e.g., GRE or GMAT, if required).', 'Varies by program, but the majority of PhD programs have deadlines in December or January for the following academic year.'),
(69, 9, 1, 3, 'A recognized university entrance qualification (equivalent to the German Abitur), High school coursework in Biology, Chemistry, and Physics is highly recommended.', 'DSH-2, TestDaF (4x4), Goethe Certificate C2, or equivalent.', 'Ensures an interview through mail.', 'Academic transcripts, Proof of German proficiency, CV and motivation letter (if applicable).', 'Winter Semester: July 15 (applications via hochschulstart.de for medicine and dentistry).'),
(70, 9, 2, 3, 'A recognized bachelor’s degree in a relevant field such as medicine, biology, biochemistry, public health, or related disciplines.', 'IELTS: Minimum 6.5', 'Not Required', 'Certified copies of academic transcripts, CV and motivation letter, Letters of recommendation (2–3, depending on the program), Proof of language proficiency.', 'Winter Semester: May 15 – July 15.'),
(71, 9, 3, 3, 'A recognized master’s degree or equivalent in a relevant field (medicine, biology, public health, neuroscience, etc.).', 'IELTS: Minimum 6.5', 'Not Required', 'CV and academic transcripts, Letters of recommendation, Research proposal or statement of interest, Proof of language proficiency.', 'Some accept applications year-round, while structured programs may have specific deadlines.'),
(72, 10, 1, 2, 'A recognized university entrance qualification (equivalent to the German Abitur).', ' DSH: At least DSH-2, TestDaF: Minimum of 4 points in each section.', 'Not Required', 'Certified copies of academic records, Proof of language proficiency, Passport and a CV.', 'Winter Semester: July 15, Summer Semester: January 15'),
(73, 10, 1, 3, 'A recognized university entrance qualification (equivalent to the German Abitur).', ' DSH: At least DSH-2, TestDaF: Minimum of 4 points in each section.', 'Not Required', 'Certified copies of academic records, Proof of language proficiency, Passport and a CV.', 'Winter Semester: July 15, Summer Semester: January 15'),
(74, 10, 2, 1, 'A bachelor’s degree (or equivalent) recognized in Germany.', 'DSH-2 (Deutsche Sprachprüfung für den Hochschulzugang) or equivalent.', 'Ensures an interview through mail.', 'Certified copies of academic transcripts, Proof of language proficiency, Motivation letter (if required), Passport copy and CV.', 'Winter Semester: June 15 (varies for some programs), Summer Semester: November 15 (varies for some programs).'),
(75, 10, 2, 2, 'A bachelor’s degree (or equivalent) recognized in Germany.', 'DSH-2 (Deutsche Sprachprüfung für den Hochschulzugang) or equivalent.', 'Ensures an interview through mail.', 'Certified copies of academic transcripts, Proof of language proficiency, Motivation letter (if required), Passport copy and CV.', 'Winter Semester: June 15 (varies for some programs), Summer Semester: November 15 (varies for some programs).'),
(76, 10, 2, 3, 'A bachelor’s degree (or equivalent) recognized in Germany.', 'DSH-2 (Deutsche Sprachprüfung für den Hochschulzugang) or equivalent.', 'Ensures an interview through mail.', 'Certified copies of academic transcripts, Proof of language proficiency, Motivation letter (if required), Passport copy and CV.', 'Winter Semester: June 15 (varies for some programs), Summer Semester: November 15 (varies for some programs).'),
(77, 10, 3, 1, 'A master’s degree or equivalent qualification in a relevant field of study.', ' DSH: 2', 'Not Required', 'A research proposal is often required for an individual doctorate, Curriculum Vitae (CV), letters of recommendation, and motivation letter may also be required.', 'Applications for PhD programs are accepted throughout the year.'),
(78, 10, 3, 2, 'A master’s degree or equivalent qualification in a relevant field of study.', ' DSH: 2', 'Not Required', 'A research proposal is often required for an individual doctorate, Curriculum Vitae (CV), letters of recommendation, and motivation letter may also be required.', 'Applications for PhD programs are accepted throughout the year.'),
(79, 10, 3, 3, 'A master’s degree or equivalent qualification in a relevant field of study.', ' DSH: 2', 'Not Required', 'A research proposal is often required for an individual doctorate, Curriculum Vitae (CV), letters of recommendation, and motivation letter may also be required.', 'Applications for PhD programs are accepted throughout the year.'),
(80, 11, 1, 2, 'High School Diploma: Applicants must possess a high school diploma equivalent to the German Abitur.', 'IELTS: Score of at least 6.5', 'Not Required', 'Academic Transcripts: Certified copies of all relevant academic records, Language Proficiency Certificates: Official proof of language skills as per program requirements, Supporting Documents: This may include a Statement of Purpose (SOP), letters of recommendation, and a copy of a valid passport.', 'Winter Semester: Applications are generally accepted from May 1 to July 15, Summer Semester: Applications are typically open from November 1 to January 15');
INSERT INTO `admissionrequirements` (`requirement_id`, `university_id`, `program_id`, `field_id`, `academic_qualification`, `language_requirement`, `entrance_exam`, `other_requirements`, `application_deadline`) VALUES
(81, 11, 1, 3, 'High School Diploma: Applicants must possess a high school diploma equivalent to the German Abitur.', 'IELTS: Score of at least 6.5', 'Interview test', 'Academic Transcripts: Certified copies of all relevant academic records, Language Proficiency Certificates: Official proof of language skills as per program requirements, Supporting Documents: This may include a Statement of Purpose (SOP), letters of recommendation, and a copy of a valid passport.', 'Winter Semester: Applications are generally accepted from May 1 to July 15, Summer Semester: Applications are typically open from November 1 to January 15'),
(82, 11, 2, 1, 'Applicants must hold a recognized undergraduate degree (e.g., Bachelors) in a relevant field of study.', 'IELTS: Score of at least 6.5', 'Ensures an interview through mail.', 'Academic Transcripts: Certified copies of all relevant academic records, Official proof of language skills as per program requirements, An updated CV detailing academic and professional experience, Motivation Letter.', 'Winter Semester: Applications are generally accepted until July 15, Summer Semester: Applications are typically open until January 15'),
(83, 11, 2, 2, 'Applicants must hold a recognized undergraduate degree (e.g., Bachelors) in a relevant field of study.', 'IELTS: Score of at least 6.5', 'Ensures an interview through mail.', 'Academic Transcripts: Certified copies of all relevant academic records, Official proof of language skills as per program requirements, An updated CV detailing academic and professional experience, Motivation Letter.', 'Winter Semester: Applications are generally accepted until July 15, Summer Semester: Applications are typically open until January 15'),
(84, 11, 2, 3, 'Applicants must hold a recognized undergraduate degree (e.g., Bachelors) in a relevant field of study.', 'IELTS: Score of at least 6.5', 'Ensures an interview through mail.', 'Academic Transcripts: Certified copies of all relevant academic records, Official proof of language skills as per program requirements, An updated CV detailing academic and professional experience, Motivation Letter.', 'Winter Semester: Applications are generally accepted until July 15, Summer Semester: Applications are typically open until January 15'),
(85, 11, 3, 1, 'Applicants must hold a recognized masters degree or equivalent in a relevant field. In certain disciplines, exceptional candidates with a bachelors degree may be considered under specific conditions.', 'IELTS: Score of at least 5.0 to 6.5', 'Not Required', 'Academic transcripts and certificates, Proof of language proficiency, Curriculum Vitae (CV), Research proposal, Letters of recommendation,Supervisor agreement.', 'It is essential to consult the specific field of study for exact dates.'),
(86, 11, 3, 2, 'Applicants must hold a recognized masters degree or equivalent in a relevant field. In certain disciplines, exceptional candidates with a bachelors degree may be considered under specific conditions.', 'IELTS: Score of at least 5.0 to 6.5', 'Not Required', 'Academic transcripts and certificates, Proof of language proficiency, Curriculum Vitae (CV), Research proposal, Letters of recommendation,Supervisor agreement.', 'It is essential to consult the specific field of study for exact dates.'),
(87, 11, 3, 3, 'Applicants must hold a recognized masters degree or equivalent in a relevant field. In certain disciplines, exceptional candidates with a bachelors degree may be considered under specific conditions.', 'IELTS: Score of at least 5.0 to 6.5', 'Not Required', 'Academic transcripts and certificates, Proof of language proficiency, Curriculum Vitae (CV), Research proposal, Letters of recommendation,Supervisor agreement.', 'It is essential to consult the specific field of study for exact dates.'),
(88, 12, 1, 1, 'A recognized university entrance qualification (equivalent to the German Abitur).', 'IELTS: Minimum 6.5', 'TUM Assessment Test', 'Certified copies of academic records, Proof of language proficiency, CV and motivation letter (if required).', 'Winter Semester: July 15, Summer Semester: January 15'),
(89, 12, 1, 2, 'A recognized university entrance qualification (equivalent to the German Abitur).', 'IELTS: Minimum 6.5', 'TUM Assessment Test', 'Certified copies of academic records, Proof of language proficiency, CV and motivation letter (if required).', 'Winter Semester: July 15, Summer Semester: January 15'),
(90, 12, 1, 3, 'A recognized university entrance qualification (equivalent to the German Abitur).', 'IELTS: Minimum 6.5', 'TUM Assessment Test', 'Certified copies of academic records, Proof of language proficiency, CV and motivation letter (if required).', 'Winter Semester: July 15, Summer Semester: January 15'),
(91, 12, 2, 1, 'A bachelor’s degree (or equivalent) in a relevant field from a recognized institution.', 'IELTS: Minimum 6.5', 'Aptitude assessment', 'Certified copies of academic transcripts, Statement of purpose (SOP) or motivation letter, Letters of recommendation (varies by program), Proof of language proficiency.', 'Winter Semester: May 31 or July 15, Summer Semester: November 30 or January 15'),
(92, 12, 2, 2, 'A bachelor’s degree (or equivalent) in a relevant field from a recognized institution.', 'IELTS: Minimum 6.5', 'Aptitude assessment', 'Certified copies of academic transcripts, Statement of purpose (SOP) or motivation letter, Letters of recommendation (varies by program), Proof of language proficiency.', 'Winter Semester: May 31 or July 15, Summer Semester: November 30 or January 15'),
(93, 12, 2, 3, 'A bachelor’s degree (or equivalent) in a relevant field from a recognized institution.', 'IELTS: Minimum 6.5', 'Aptitude assessment', 'Certified copies of academic transcripts, Statement of purpose (SOP) or motivation letter, Letters of recommendation (varies by program), Proof of language proficiency.', 'Winter Semester: May 31 or July 15, Summer Semester: November 30 or January 15'),
(94, 12, 3, 1, 'A master’s degree or equivalent qualification in a relevant field from a recognized institution.', 'IELTS: Minimum 6.5', 'Not Required', 'Research proposal or project description, CV and academic transcripts, Letters of recommendation, Proof of language proficiency.', 'Applications for all programs are typically accepted year-round.'),
(95, 12, 3, 2, 'A master’s degree or equivalent qualification in a relevant field from a recognized institution.', 'IELTS: Minimum 6.5', 'Not Required', 'Research proposal or project description, CV and academic transcripts, Letters of recommendation, Proof of language proficiency.', 'Applications for all programs are typically accepted year-round.'),
(96, 12, 3, 3, 'A master’s degree or equivalent qualification in a relevant field from a recognized institution.', 'IELTS: Minimum 6.5', 'Not Required', 'Research proposal or project description, CV and academic transcripts, Letters of recommendation, Proof of language proficiency.', 'Applications for all programs are typically accepted year-round.'),
(97, 13, 1, 1, 'For international students, the secondary education qualification must be equivalent to an Italian “Maturità.”', 'IELTS: Overall score of 6.0–6.5, with no band lower than 5.5', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency (for English-taught programs), Curriculum vitae (CV), Motivation letter (if required).', 'Semester 1 (Fall intake): Applications typically open in April and close in July, Semester 2 (Spring intake): Applications open in October and close in December.'),
(98, 13, 1, 2, 'For international students, the secondary education qualification must be equivalent to an Italian “Maturità.”', 'IELTS: Overall score of 6.0–6.5, with no band lower than 5.5', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency (for English-taught programs), Curriculum vitae (CV), Motivation letter (if required).', 'Semester 1 (Fall intake): Applications typically open in April and close in July, Semester 2 (Spring intake): Applications open in October and close in December.'),
(99, 13, 1, 3, 'For international students, the secondary education qualification must be equivalent to an Italian “Maturità.”', 'IELTS: Overall score of 6.0–6.5, with no band lower than 5.5', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency (for English-taught programs), Curriculum vitae (CV), Motivation letter (if required).', 'Semester 1 (Fall intake): Applications typically open in April and close in July, Semester 2 (Spring intake): Applications open in October and close in December.'),
(100, 13, 2, 1, 'For international students, the undergraduate degree must be equivalent to an Italian “Laurea Triennale.”', 'IELTS: Overall score of 6.5–7.0, with no band lower than 6.0', 'Not Required', 'Academic transcripts and certificates (Bachelor’s degree or equivalent), Proof of English language proficiency (for English-taught programs), Curriculum vitae (CV), Letters of recommendation (usually two or three), Motivation letter or statement of purpose.', 'Semester 1 (Fall intake): Applications typically open in March and close in July, Semester 2 (Spring intake): Applications open in October and close in December.'),
(101, 13, 2, 2, 'For international students, the undergraduate degree must be equivalent to an Italian “Laurea Triennale.”', 'IELTS: Overall score of 6.5–7.0, with no band lower than 6.0', 'Not Required', 'Academic transcripts and certificates (Bachelor’s degree or equivalent), Proof of English language proficiency (for English-taught programs), Curriculum vitae (CV), Letters of recommendation (usually two or three), Motivation letter or statement of purpose.', 'Semester 1 (Fall intake): Applications typically open in March and close in July, Semester 2 (Spring intake): Applications open in October and close in December.'),
(102, 13, 2, 3, 'For international students, the undergraduate degree must be equivalent to an Italian “Laurea Triennale.”', 'IELTS: Overall score of 6.5–7.0, with no band lower than 6.0', 'Not Required', 'Academic transcripts and certificates (Bachelor’s degree or equivalent), Proof of English language proficiency (for English-taught programs), Curriculum vitae (CV), Letters of recommendation (usually two or three), Motivation letter or statement of purpose.', 'Semester 1 (Fall intake): Applications typically open in March and close in July, Semester 2 (Spring intake): Applications open in October and close in December.'),
(103, 13, 3, 1, 'For international students, the master’s degree must be equivalent to an Italian “Laurea Magistrale.”', 'IELTS: Overall score of 7.0 or higher.', 'Not Required', 'Academic transcripts and certificates (Master’s degree or equivalent), Proof of English language proficiency (for English-taught programs), Research proposal or statement of interest, Curriculum vitae (CV), Letters of recommendation (typically two or three).', 'Applications typically open in March and close in May.'),
(104, 13, 3, 3, 'For international students, the master’s degree must be equivalent to an Italian “Laurea Magistrale.”', 'IELTS: Overall score of 7.0 or higher.', 'Not Required', 'Academic transcripts and certificates (Master’s degree or equivalent), Proof of English language proficiency (for English-taught programs), Research proposal or statement of interest, Curriculum vitae (CV), Letters of recommendation (typically two or three).', 'Applications typically open in March and close in May.'),
(105, 14, 1, 1, 'For international students, the secondary education qualification must be equivalent to the Italian \"Maturità\"', 'IELTS: Overall score of 6.0–6.5, with no band lower than 5.5', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency (for English-taught programs), Curriculum vitae (CV).', 'Semester 1 (Fall intake): Applications typically open in April and close in July, Semester 2 (Spring intake): Applications open in October and close in December.'),
(106, 14, 1, 2, 'For international students, the secondary education qualification must be equivalent to the Italian \"Maturità\"', 'IELTS: Overall score of 6.0–6.5, with no band lower than 5.5', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency (for English-taught programs), Curriculum vitae (CV).', 'Semester 1 (Fall intake): Applications typically open in April and close in July, Semester 2 (Spring intake): Applications open in October and close in December.'),
(107, 14, 1, 3, 'For international students, the secondary education qualification must be equivalent to the Italian \"Maturità\"', 'IELTS: Overall score of 6.0–6.5, with no band lower than 5.5', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency (for English-taught programs), Curriculum vitae (CV).', 'Semester 1 (Fall intake): Applications typically open in April and close in July, Semester 2 (Spring intake): Applications open in October and close in December.'),
(108, 14, 2, 1, 'For international students, the undergraduate qualification must be equivalent to an Italian \"Laurea Triennale.\"', ' IELTS: Overall score of 6.5–7.0, with no band lower than 6.0', 'Not Required', 'Academic transcripts and certificates (Bachelor’s degree or equivalent), Proof of English language proficiency (if applicable), Curriculum vitae (CV), Letters of recommendation (typically two or three), Motivation letter or statement of purpose.', 'Semester 1 (Fall intake): Applications typically open in April and close in July, Semester 2 (Spring intake): Applications open in October and close in December.'),
(109, 14, 2, 2, 'For international students, the undergraduate qualification must be equivalent to an Italian \"Laurea Triennale.\"', ' IELTS: Overall score of 6.5–7.0, with no band lower than 6.0', 'Not Required', 'Academic transcripts and certificates (Bachelor’s degree or equivalent), Proof of English language proficiency (if applicable), Curriculum vitae (CV), Letters of recommendation (typically two or three), Motivation letter or statement of purpose.', 'Semester 1 (Fall intake): Applications typically open in April and close in July, Semester 2 (Spring intake): Applications open in October and close in December.'),
(110, 14, 2, 3, 'For international students, the undergraduate qualification must be equivalent to an Italian \"Laurea Triennale.\"', ' IELTS: Overall score of 6.5–7.0, with no band lower than 6.0', 'Not Required', 'Academic transcripts and certificates (Bachelor’s degree or equivalent), Proof of English language proficiency (if applicable), Curriculum vitae (CV), Letters of recommendation (typically two or three), Motivation letter or statement of purpose.', 'Semester 1 (Fall intake): Applications typically open in April and close in July, Semester 2 (Spring intake): Applications open in October and close in December.'),
(111, 14, 3, 2, 'For international students, the master’s degree must be equivalent to an Italian “Laurea Magistrale.”', 'IELTS: Overall score of 7.0 or higher.', 'Not Required', 'Academic transcripts and certificates (Master’s degree or equivalent), Proof of English language proficiency (if applicable), Research proposal or statement of interest, Curriculum vitae (CV), Letters of recommendation (typically two or three).', 'Applications typically open in February and close in May.'),
(112, 14, 3, 3, 'For international students, the master’s degree must be equivalent to an Italian “Laurea Magistrale.”', 'IELTS: Overall score of 7.0 or higher.', 'Not Required', 'Academic transcripts and certificates (Master’s degree or equivalent), Proof of English language proficiency (if applicable), Research proposal or statement of interest, Curriculum vitae (CV), Letters of recommendation (typically two or three).', 'Applications typically open in February and close in May.'),
(113, 15, 1, 1, 'For international students, the qualification must be equivalent to an Italian high school diploma.', 'IELTS: Overall score of 6.0–6.5, with no band lower than 5.5–6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency (for English-taught programs), Curriculum vitae (CV), Letters of recommendation (if applicable).', 'Semester 1 (Fall intake): Applications typically open in March and close in July, Semester 2 (Spring intake): Applications open in October and close in November.'),
(114, 15, 1, 2, 'For international students, the qualification must be equivalent to an Italian high school diploma.', 'IELTS: Overall score of 6.0–6.5, with no band lower than 5.5–6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency (for English-taught programs), Curriculum vitae (CV), Letters of recommendation (if applicable).', 'Semester 1 (Fall intake): Applications typically open in March and close in July, Semester 2 (Spring intake): Applications open in October and close in November.'),
(115, 15, 2, 1, 'For international students, a bachelor’s degree equivalent to an Italian \"Laurea Triennale\" is required.', 'IELTS: Overall score of 6.5–7.0, with no band lower than 6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency (for English-taught programs), Curriculum vitae (CV), Letters of recommendation, Statement of purpose or motivation letter.', 'Semester 1 (Fall intake): Applications typically open in March and close in July, Semester 2 (Spring intake): Applications open in October and close in November.'),
(116, 15, 2, 2, 'For international students, a bachelor’s degree equivalent to an Italian \"Laurea Triennale\" is required.', 'IELTS: Overall score of 6.5–7.0, with no band lower than 6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency (for English-taught programs), Curriculum vitae (CV), Letters of recommendation, Statement of purpose or motivation letter.', 'Semester 1 (Fall intake): Applications typically open in March and close in July, Semester 2 (Spring intake): Applications open in October and close in November.'),
(117, 15, 2, 3, 'For international students, a bachelor’s degree equivalent to an Italian \"Laurea Triennale\" is required.', 'IELTS: Overall score of 6.5–7.0, with no band lower than 6.0', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency (for English-taught programs), Curriculum vitae (CV), Letters of recommendation, Statement of purpose or motivation letter.', 'Semester 1 (Fall intake): Applications typically open in March and close in July, Semester 2 (Spring intake): Applications open in October and close in November.'),
(118, 15, 3, 2, 'For international students, the degree must be equivalent to an Italian \"Laurea Magistrale\" or \"Master’s degree.\"', 'IELTS: Overall score of 7.0–7.5, with no band lower than 6.5', 'Not Required', 'Academic transcripts and certificates (Master’s degree or equivalent), Proof of English language proficiency (if applicable), Research proposal or statement of interest, Curriculum vitae (CV).', 'Applications typically open in February and close in May.'),
(119, 15, 3, 3, 'For international students, the degree must be equivalent to an Italian \"Laurea Magistrale\" or \"Master’s degree.\"', 'IELTS: Overall score of 7.0–7.5, with no band lower than 6.5', 'Not Required', 'Academic transcripts and certificates (Master’s degree or equivalent), Proof of English language proficiency (if applicable), Research proposal or statement of interest, Curriculum vitae (CV).', 'Applications typically open in February and close in May.'),
(120, 16, 1, 1, 'For international students, the secondary education qualification must be equivalent to an Italian “Maturità.”', 'IELTS: Overall score of 6.0–6.5, with no band lower than 5.5', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency (for English-taught programs), Curriculum vitae (CV).', 'Semester 1 (Fall intake): Applications typically open in February and close in July, Semester 2 (Spring intake): Applications open in October and close in December.'),
(121, 16, 1, 2, 'For international students, the secondary education qualification must be equivalent to an Italian “Maturità.”', 'IELTS: Overall score of 6.0–6.5, with no band lower than 5.5', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency (for English-taught programs), Curriculum vitae (CV).', 'Semester 1 (Fall intake): Applications typically open in February and close in July, Semester 2 (Spring intake): Applications open in October and close in December.'),
(122, 16, 1, 3, 'For international students, the secondary education qualification must be equivalent to an Italian “Maturità.”', 'IELTS: Overall score of 6.0–6.5, with no band lower than 5.5', 'Not Required', 'Academic transcripts and certificates, Proof of English language proficiency (for English-taught programs), Curriculum vitae (CV).', 'Semester 1 (Fall intake): Applications typically open in February and close in July, Semester 2 (Spring intake): Applications open in October and close in December.'),
(123, 16, 2, 1, 'For international students, the undergraduate degree must be equivalent to an Italian “Laurea Triennale.”', 'IELTS: Overall score of 6.5–7.0, with no band lower than 6.0', 'Not Required', 'Academic transcripts and certificates (Bachelor’s degree or equivalent), Proof of English language proficiency (for English-taught programs), Curriculum vitae (CV), Letters of recommendation (typically two or three), Motivation letter or statement of purpose.', 'Semester 1 (Fall intake): Applications typically open in February and close in July, Semester 2 (Spring intake): Applications open in October and close in December.'),
(124, 16, 2, 2, 'For international students, the undergraduate degree must be equivalent to an Italian “Laurea Triennale.”', 'IELTS: Overall score of 6.5–7.0, with no band lower than 6.0', 'Not Required', 'Academic transcripts and certificates (Bachelor’s degree or equivalent), Proof of English language proficiency (for English-taught programs), Curriculum vitae (CV), Letters of recommendation (typically two or three), Motivation letter or statement of purpose.', 'Semester 1 (Fall intake): Applications typically open in February and close in July, Semester 2 (Spring intake): Applications open in October and close in December.'),
(125, 16, 2, 3, 'For international students, the undergraduate degree must be equivalent to an Italian “Laurea Triennale.”', 'IELTS: Overall score of 6.5–7.0, with no band lower than 6.0', 'Not Required', 'Academic transcripts and certificates (Bachelor’s degree or equivalent), Proof of English language proficiency (for English-taught programs), Curriculum vitae (CV), Letters of recommendation (typically two or three), Motivation letter or statement of purpose.', 'Semester 1 (Fall intake): Applications typically open in February and close in July, Semester 2 (Spring intake): Applications open in October and close in December.'),
(126, 16, 3, 1, 'For international students, the masters degree must be equivalent to an Italian “Laurea Magistrale.”', 'IELTS: Overall score of 7.0 or higher.', 'Not Required', 'Academic transcripts and certificates (Master’s degree or equivalent), Proof of English language proficiency (for English-taught programs), Research proposal or statement of interest, Curriculum vitae (CV), Letters of recommendation (typically two or three).', 'Applications typically open in January and close in April.'),
(127, 16, 3, 2, 'For international students, the masters degree must be equivalent to an Italian “Laurea Magistrale.”', 'IELTS: Overall score of 7.0 or higher.', 'Not Required', 'Academic transcripts and certificates (Master’s degree or equivalent), Proof of English language proficiency (for English-taught programs), Research proposal or statement of interest, Curriculum vitae (CV), Letters of recommendation (typically two or three).', 'Applications typically open in January and close in April.'),
(128, 16, 3, 3, 'For international students, the masters degree must be equivalent to an Italian “Laurea Magistrale.”', 'IELTS: Overall score of 7.0 or higher.', 'Not Required', 'Academic transcripts and certificates (Master’s degree or equivalent), Proof of English language proficiency (for English-taught programs), Research proposal or statement of interest, Curriculum vitae (CV), Letters of recommendation (typically two or three).', 'Applications typically open in January and close in April.'),
(129, 17, 1, 1, 'For international students, an equivalent secondary education qualification is considered.', 'IELTS: Minimum overall band score of 7.0', 'Ensures an interview through mail.', 'Official transcripts from all secondary schools attended, Proof of English language proficiency (if applicable), Letters of recommendation (typically two), Personal statement or essay (specific to Caltech’s requirements), Standardized test scores.', ' Early Action: November 1 (decision in December), Regular Decision: January 3 (decision in April).'),
(130, 17, 1, 2, 'For international students, an equivalent secondary education qualification is considered.', 'IELTS: Minimum overall band score of 7.0', 'Ensures an interview through mail.', 'Official transcripts from all secondary schools attended, Proof of English language proficiency (if applicable), Letters of recommendation (typically two), Personal statement or essay (specific to Caltech’s requirements), Standardized test scores.', ' Early Action: November 1 (decision in December), Regular Decision: January 3 (decision in April).'),
(131, 17, 2, 1, 'A completed undergraduate degree from an accredited institution or its equivalent.', 'IELTS: Minimum overall band score of 7.0', 'Ensures an interview through mail.', 'Official transcripts from all post-secondary institutions attended, Letters of recommendation (typically three), Statement of purpose outlining the applicant with goals, research interests, and reasons for choosing Caltech, Curriculum Vitae (CV) or resume, Standardized test scores (e.g., GRE) may be required by some programs but are often optional for certain fields, Writing samples or research proposals may be requested for some departments.', 'General deadline: December 15 – January 15'),
(132, 17, 2, 2, 'A completed undergraduate degree from an accredited institution or its equivalent.', 'IELTS: Minimum overall band score of 7.0', 'Ensures an interview through mail.', 'Official transcripts from all post-secondary institutions attended, Letters of recommendation (typically three), Statement of purpose outlining the applicant with goals, research interests, and reasons for choosing Caltech, Curriculum Vitae (CV) or resume, Standardized test scores (e.g., GRE) may be required by some programs but are often optional for certain fields, Writing samples or research proposals may be requested for some departments.', 'General deadline: December 15 – January 15'),
(133, 17, 2, 3, 'A completed undergraduate degree from an accredited institution or its equivalent.', 'IELTS: Minimum overall band score of 7.0', 'Ensures an interview through mail.', 'Official transcripts from all post-secondary institutions attended, Letters of recommendation (typically three), Statement of purpose outlining the applicant with goals, research interests, and reasons for choosing Caltech, Curriculum Vitae (CV) or resume, Standardized test scores (e.g., GRE) may be required by some programs but are often optional for certain fields, Writing samples or research proposals may be requested for some departments.', 'General deadline: December 15 – January 15'),
(134, 17, 3, 3, 'A completed undergraduate degree from an accredited institution or its equivalent.', 'IELTS: Minimum overall band score of 7.0', 'Ensures an interview through mail.', 'Official transcripts from all post-secondary institutions attended, Letters of recommendation (typically three), Statement of purpose outlining the applicant with research interests, career goals, and motivation to study at Caltech, Curriculum Vitae (CV) or resume, Writing samples, research proposals, or previous publications may be requested for certain departments, Standardized test scores.', 'General deadline: December 15 – January 15'),
(135, 18, 1, 1, 'For international students, the equivalent secondary education qualifications will be considered.', ' IELTS: Minimum overall band score of 7.5', 'Not Required', 'Official transcripts from all secondary schools attended, Proof of English language proficiency (for non-native speakers), Letters of recommendation (typically two), Personal essays as per the application requirements, Standardized test scores (e.g., SAT or ACT, if applicable).', ' Early Action: November 1 (decision in December), Regular Decision: January 1 (decision in March).'),
(136, 18, 2, 1, 'A completed undergraduate degree from an accredited institution or its equivalent.', 'IELTS: Minimum overall band score of 7.5', 'Interview Test', 'Official transcripts from all post-secondary institutions attended, Letters of recommendation (typically three, depending on the program), Personal statement or statement of purpose, Standardized test scores (e.g., GRE, GMAT, or other tests may be required by some programs), Resume or curriculum vitae (CV).', '* General application deadline: December 1 – January 15'),
(137, 18, 2, 2, 'A completed undergraduate degree from an accredited institution or its equivalent.', 'IELTS: Minimum overall band score of 7.5', 'Interview Test', 'Official transcripts from all post-secondary institutions attended, Letters of recommendation (typically three, depending on the program), Personal statement or statement of purpose, Standardized test scores (e.g., GRE, GMAT, or other tests may be required by some programs), Resume or curriculum vitae (CV).', '* General application deadline: December 1 – January 15'),
(138, 18, 2, 3, 'A completed undergraduate degree from an accredited institution or its equivalent.', 'IELTS: Minimum overall band score of 7.5', 'Interview Test', 'Official transcripts from all post-secondary institutions attended, Letters of recommendation (typically three, depending on the program), Personal statement or statement of purpose, Standardized test scores (e.g., GRE, GMAT, or other tests may be required by some programs), Resume or curriculum vitae (CV).', '* General application deadline: December 1 – January 15'),
(139, 18, 3, 1, 'A completed undergraduate degree or its equivalent, with a strong academic record.', 'IELTS: Minimum overall band score of 7.5', 'Not Required', 'Official transcripts from all post-secondary institutions attended, Letters of recommendation (typically three, but some programs may require more), Statement of purpose or research proposal, Curriculum Vitae (CV) or resume, Writing samples or research papers (if required by the program), Standardized test scores (e.g., GRE).', 'General deadline: December 1 – January 15'),
(140, 18, 3, 2, 'A completed undergraduate degree or its equivalent, with a strong academic record.', 'IELTS: Minimum overall band score of 7.5', 'Not Required', 'Official transcripts from all post-secondary institutions attended, Letters of recommendation (typically three, but some programs may require more), Statement of purpose or research proposal, Curriculum Vitae (CV) or resume, Writing samples or research papers (if required by the program), Standardized test scores (e.g., GRE).', 'General deadline: December 1 – January 15'),
(141, 18, 3, 3, 'A completed undergraduate degree or its equivalent, with a strong academic record.', 'IELTS: Minimum overall band score of 7.5', 'Not Required', 'Official transcripts from all post-secondary institutions attended, Letters of recommendation (typically three, but some programs may require more), Statement of purpose or research proposal, Curriculum Vitae (CV) or resume, Writing samples or research papers (if required by the program), Standardized test scores (e.g., GRE).', 'General deadline: December 1 – January 15'),
(142, 19, 1, 1, 'High School Diploma or equivalent.', 'IELTS: Overall score of 7.0 or higher.', 'Interview test', 'Academic transcripts, Letters of recommendation (2 from teachers, 1 from a counselor), Personal essay.', 'Early Action: November 1, Regular Decision: January 5'),
(143, 19, 1, 3, 'High School Diploma or equivalent.', 'IELTS: Overall score of 7.0 or higher.', 'Interview test', 'Academic transcripts, Letters of recommendation (2 from teachers, 1 from a counselor), Personal essay.', 'Early Action: November 1, Regular Decision: January 5'),
(144, 19, 2, 1, 'A Bachelor’s degree or equivalent from a recognized institution.', 'IELTS: Overall score of 7.0 or higher.', 'Not Required', 'Academic transcripts, Statement of purpose, Letters of recommendation (typically 3), CV or résumé, Test scores (GRE/GMAT, TOEFL/IELTS).', 'Typically between November and January for Fall intake.'),
(145, 19, 2, 2, 'A Bachelor’s degree or equivalent from a recognized institution.', 'IELTS: Overall score of 7.0 or higher.', 'Not Required', 'Academic transcripts, Statement of purpose, Letters of recommendation (typically 3), CV or résumé, Test scores (GRE/GMAT, TOEFL/IELTS).', 'Typically between November and January for Fall intake.'),
(146, 19, 2, 3, 'A Bachelor’s degree or equivalent from a recognized institution.', 'IELTS: Overall score of 7.0 or higher.', 'Not Required', 'Academic transcripts, Statement of purpose, Letters of recommendation (typically 3), CV or résumé, Test scores (GRE/GMAT, TOEFL/IELTS).', 'Typically between November and January for Fall intake.'),
(147, 19, 3, 1, 'A Bachelor’s or Master’s degree (depending on the program) from a recognized institution.', 'IELTS: Overall score of 7.5 or higher.', 'Not Required', 'Academic transcripts, Statement of purpose/research proposal, Letters of recommendation (typically 3), CV or résumé highlighting research experience, Test scores (GRE/GMAT, TOEFL/IELTS).', 'Typically fall between November and December for Fall intake.'),
(148, 19, 3, 2, 'A Bachelor’s or Master’s degree (depending on the program) from a recognized institution.', 'IELTS: Overall score of 7.5 or higher.', 'Not Required', 'Academic transcripts, Statement of purpose/research proposal, Letters of recommendation (typically 3), CV or résumé highlighting research experience, Test scores (GRE/GMAT, TOEFL/IELTS).', 'Typically fall between November and December for Fall intake.'),
(149, 19, 3, 3, 'A Bachelor’s or Master’s degree (depending on the program) from a recognized institution.', 'IELTS: Overall score of 7.5 or higher.', 'Not Required', 'Academic transcripts, Statement of purpose/research proposal, Letters of recommendation (typically 3), CV or résumé highlighting research experience, Test scores (GRE/GMAT, TOEFL/IELTS).', 'Typically fall between November and December for Fall intake.'),
(150, 20, 1, 1, 'Completion of high school or equivalent with strong academic performance.', 'IELTS: Overall score of 7.0 or higher.', 'Not Required', 'Academic transcripts, Two letters of recommendation (one from a teacher, one from a counselor), Personal essay.', 'Restrictive Early Action: November 1, Regular Decision: January 5'),
(151, 20, 2, 1, 'A bachelor’s degree or equivalent from a recognized institution.', 'IELTS: Overall score of 7.0 or higher.', 'Ensures an interview through mail.', 'Academic transcripts, Statement of purpose, Letters of recommendation (typically 2–3), CV or résumé, Test scores (GRE/GMAT, TOEFL/IELTS).', 'Between November and January for Fall intake.'),
(152, 20, 2, 2, 'A bachelor’s degree or equivalent from a recognized institution.', 'IELTS: Overall score of 7.0 or higher.', 'Ensures an interview through mail.', 'Academic transcripts, Statement of purpose, Letters of recommendation (typically 2–3), CV or résumé, Test scores (GRE/GMAT, TOEFL/IELTS).', 'Between November and January for Fall intake.'),
(153, 20, 2, 3, 'A bachelor’s degree or equivalent from a recognized institution.', 'IELTS: Overall score of 7.0 or higher.', 'Ensures an interview through mail.', 'Academic transcripts, Statement of purpose, Letters of recommendation (typically 2–3), CV or résumé, Test scores (GRE/GMAT, TOEFL/IELTS).', 'Between November and January for Fall intake.'),
(154, 20, 3, 1, 'A bachelor’s or master’s degree from a recognized institution.', 'IELTS: Overall score of 7.0 or higher.', 'Interview test', 'Academic transcripts, Statement of purpose/research proposal, Letters of recommendation (typically 3), CV or résumé highlighting research experience, Test scores (GRE/GMAT, TOEFL/IELTS), Publications or writing samples.', 'Between November and December for Fall intake.'),
(155, 20, 3, 2, 'A bachelor’s or master’s degree from a recognized institution.', 'IELTS: Overall score of 7.0 or higher.', 'Interview test', 'Academic transcripts, Statement of purpose/research proposal, Letters of recommendation (typically 3), CV or résumé highlighting research experience, Test scores (GRE/GMAT, TOEFL/IELTS), Publications or writing samples.', 'Between November and December for Fall intake.'),
(156, 20, 3, 3, 'A bachelor’s or master’s degree from a recognized institution.', 'IELTS: Overall score of 7.0 or higher.', 'Interview test', 'Academic transcripts, Statement of purpose/research proposal, Letters of recommendation (typically 3), CV or résumé highlighting research experience, Test scores (GRE/GMAT, TOEFL/IELTS), Publications or writing samples.', 'Between November and December for Fall intake.');

-- --------------------------------------------------------

--
-- Table structure for table `bandscorecriteria`
--

CREATE TABLE `bandscorecriteria` (
  `CriteriaID` int(11) NOT NULL,
  `TestType` enum('Reading','Writing','Listening','Speaking') NOT NULL,
  `CriteriaDescription` text NOT NULL,
  `MaxScore` decimal(3,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificate_info`
--

CREATE TABLE `certificate_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `overall_band_score` decimal(3,1) NOT NULL,
  `test_date` date NOT NULL,
  `submitted_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data of table `certificate_info` intentionally removed (personal / test data).

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countrydetails`
--

CREATE TABLE `countrydetails` (
  `details_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `overview` text NOT NULL,
  `currency` text NOT NULL,
  `location` text NOT NULL,
  `social_status` text NOT NULL,
  `educational_status` text NOT NULL,
  `cultural_status` text NOT NULL,
  `living_style` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countrydetails`
--

INSERT INTO `countrydetails` (`details_id`, `country_id`, `overview`, `currency`, `location`, `social_status`, `educational_status`, `cultural_status`, `living_style`) VALUES
(1, 1, 'Australia combines quality education with high living standards, safety, and student-friendly policies. It ss ideal for students seeking a dynamic academic environment with clear pathways to employment and residency.', 'The official currency is the Australian Dollar (AUD). The exchange rate is stable, and international transactions are widely supported. Most cities offer competitive cost structures for international students compared to other English-speaking countries.', 'Located in the Southern Hemisphere, Australia is surrounded by the Pacific and Indian Oceans. Its major cities—Sydney, Melbourne, Brisbane, and Perth—are coastal, well-connected, and offer excellent urban infrastructure.', 'Australia is consistently ranked among the most livable countries in the world. It is known for its welcoming, tolerant, and laid-back society. Social inclusion and multiculturalism are strongly promoted, making it easy for international students to feel at home.', 'Australia is a global leader in education, particularly in science, technology, engineering, medicine, and business. Universities like University of Melbourne, Australian National University (ANU), and University of Sydney consistently rank in the QS Top 100. The country uses an internationally recognized qualification framework (AQF), and offers generous scholarships and post-study work opportunities.', 'Culturally rich with Aboriginal heritage, Australia also thrives on internationalism. It’s a melting pot of cultures, cuisines, and languages. From cricket to indie music, students find endless ways to connect and explore.', 'Student life in Australia is balanced and healthy. Campuses offer advanced facilities and student unions organize various activities. Work-life balance is emphasized. International students are allowed to work 24 hours per week (from 2023 onward), helping them support living expenses while gaining experience.'),
(2, 2, 'England offers academically rich programs and a multicultural society. Its universities produce some of the most employable graduates in the world. The country blends tradition, innovation, and opportunity.', 'The national currency is the Pound Sterling (GBP)—one of the strongest currencies globally. Students should expect a higher cost of living in major cities like London, but there are more affordable cities like Nottingham or Sheffield.', 'Located in northwestern Europe, England is part of the United Kingdom. It is well connected via rail, sea, and air. Major cities include London, Manchester, Birmingham, and Leeds.', 'England offers a highly developed, classically structured society with deep traditions but also modern, liberal values. Students can enjoy both conservative heritage and progressive urban culture.', 'Known for world-class universities, England is a prime destination for global education. Universities such as Oxford, Cambridge, UCL, and Imperial College offer cutting-edge research facilities, especially in law, medicine, and sciences. Programs are often shorter—Bachelor’s in 3 years, Master’s in 1 year—making it time- and cost-efficient.', 'A cultural superpower, England is famous for literature (Shakespeare, JK Rowling), music (The Beatles, Adele), theatre, and festivals. Students can enjoy a rich calendar of academic and recreational events.', 'Life for students is structured yet flexible. Cities have excellent public transport, libraries, cafés, and museums. Part-time work (up to 20 hours/week) is allowed during term, and post-study work is permitted under the Graduate Route Visa (2 years).'),
(3, 3, 'Germany offers top-quality education with low costs and high employability. Its blend of strong academics, affordable living, and vibrant culture make it one of the best destinations for international students.', 'Germany uses the Euro (EUR). It is cost-effective compared to other Western countries, especially due to free tuition in public universities.', 'Germany is in Central Europe, bordered by nine countries, which makes weekend travel easy and cheap. Major cities include Berlin, Munich, Frankfurt, and Hamburg.', 'A socially advanced, egalitarian country, Germany values structure, discipline, and social welfare. It is among the safest and most efficient countries in Europe.', 'Germany is a leader in Engineering, Computer Science, Physics, and Economics. Public universities like TU Munich, Heidelberg University, and RWTH Aachen offer high-quality education with zero or very low tuition fees, even for international students. English-taught programs are widely available at the postgraduate level.', 'Germany is a hub for classical music, philosophy (Kant, Nietzsche), and modern arts. Students are encouraged to engage in cultural exchange programs and international events.', 'Students in Germany enjoy a well-structured lifestyle. Public transport is excellent, and cities are bike-friendly. Students can work 20 hours per week during term time. The monthly cost of living is approximately €850 to €1,100, including accommodation, food, and transport.'),
(4, 4, 'Italy is ideal for students who value history, art, and affordable education. It offers a lifestyle rich in culture and education, paired with globally recognized degrees and scholarship options.', 'Italy uses the Euro (EUR). It is generally more affordable than Northern or Western Europe, particularly in smaller cities and towns.', 'Located in Southern Europe, Italy is surrounded by the Mediterranean Sea. Cities like Rome, Florence, Milan, and Venice are hubs of both history and modern life.', 'Italy has a relaxed and family-oriented social structure. Social life revolves around food, community, and tradition. People are welcoming and warm toward international visitors.', 'Italy is one of the oldest education centers in the world. Universities like Sapienza University of Rome, Politecnico di Milano, and University of Bologna are known for arts, design, fashion, architecture, and history. Programs are increasingly offered in English.', 'Italy is the birthplace of the Renaissance. Its contributions to art, architecture, cuisine, literature, and fashion are globally celebrated. Students have access to UNESCO heritage sites and endless cultural experiences.', 'Students live a very social and lifestyle-driven life. Meals are often communal, and city centers are walkable. The cost of living ranges from €700 to €1,000/month, depending on the city. Part-time work is allowed with a valid student visa.'),
(5, 5, 'The USA offers unparalleled educational diversity, advanced infrastructure, and robust job markets. For students seeking world-class opportunities and a global career path, it iss an unmatched destination.', 'The official currency is the United States Dollar (USD). Though the cost of living varies by state, financial aid, scholarships, and assistantships help balance the high tuition.', 'Located in North America, the USA spans 50 states and multiple time zones. Major cities for education include New York, Los Angeles, Boston, Chicago, and San Francisco.', 'The USA is known for its individualism, innovation, and cultural diversity. Social freedom, gender equality, and freedom of expression are valued. Students often form international networks during their studies.', 'The U.S. dominates global university rankings with institutions like Harvard, MIT, Stanford, and UC Berkeley. Flexible curricula, strong research funding, and top facilities make it a favorite for ambitious students.', 'America is a cultural mosaic—music, sports, fashion, tech, and entertainment all thrive here. From Broadway to Silicon Valley, students can experience unmatched cultural diversity.', 'Student life is vibrant and varied. On-campus housing, student clubs, and events ensure engagement. Public transport is efficient in cities. Students can work 20 hours/week on-campus, and post-study work options exist under the OPT and H-1B visa routes.');

-- --------------------------------------------------------

--
-- Table structure for table `countrylist`
--

CREATE TABLE `countrylist` (
  `country_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countrylist`
--

INSERT INTO `countrylist` (`country_id`, `name`) VALUES
(1, 'Australia'),
(2, 'England'),
(3, 'Germany'),
(4, 'Italy'),
(5, 'United States of America');

-- --------------------------------------------------------

--
-- Table structure for table `fieldofstudy`
--

CREATE TABLE `fieldofstudy` (
  `field_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fieldofstudy`
--

INSERT INTO `fieldofstudy` (`field_id`, `name`) VALUES
(2, 'Business Administration Fields'),
(1, 'Engineering Fields'),
(3, 'Medical Fields');

-- --------------------------------------------------------

--
-- Table structure for table `listeningaudio`
--

CREATE TABLE `listeningaudio` (
  `AudioID` int(11) NOT NULL,
  `Section` int(11) NOT NULL,
  `AudioFilePath` varchar(255) NOT NULL,
  `Transcript` text DEFAULT NULL,
  `SetNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `listeningaudio`
--

INSERT INTO `listeningaudio` (`AudioID`, `Section`, `AudioFilePath`, `Transcript`, `SetNumber`) VALUES
(1, 0, 'Audio/listening_set1.mp3', NULL, 1),
(2, 0, 'Audio/listening_set2.mp3', NULL, 2),
(3, 0, 'Audio/listening_set3.mp3', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `listeningresponses`
--

CREATE TABLE `listeningresponses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL,
  `Answer` text NOT NULL,
  `test_set` int(11) NOT NULL,
  `submitted_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offer_letter_requests`
--

CREATE TABLE `offer_letter_requests` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `marital_status` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `present_address` text NOT NULL,
  `ssc_year` year(4) NOT NULL,
  `hsc_year` year(4) NOT NULL,
  `medium_of_study` enum('English','Bangla') NOT NULL,
  `nid_card_path` varchar(255) NOT NULL,
  `ssc_certificate_path` varchar(255) NOT NULL,
  `hsc_certificate_path` varchar(255) NOT NULL,
  `passport_scan_path` varchar(255) DEFAULT NULL,
  `english_cert_path` varchar(255) NOT NULL,
  `father_nid_path` varchar(255) NOT NULL,
  `mother_nid_path` varchar(255) NOT NULL,
  `lor_path` varchar(255) NOT NULL,
  `sop_path` varchar(255) DEFAULT NULL,
  `cv_path` varchar(255) DEFAULT NULL,
  `passport_photo_path` varchar(255) NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `country_of_choice` varchar(100) NOT NULL,
  `preferred_university` varchar(255) NOT NULL,
  `program_type` enum('Undergraduate','Graduate','PhD') NOT NULL,
  `preferred_subject` varchar(255) NOT NULL,
  `intake_season` enum('autumn','winter','summer') NOT NULL,
  `intake_year` year(4) NOT NULL,
  `already_applied` enum('Yes','No') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data of table `offer_letter_requests` intentionally removed (personal / test data).

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `program_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`program_id`, `name`) VALUES
(2, 'Graduate Programs'),
(3, 'PhD Programs'),
(1, 'Undergraduate Programs');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `QuestionID` int(11) NOT NULL,
  `TestType` enum('Reading','Listening','Writing') NOT NULL,
  `Section` int(11) DEFAULT NULL,
  `QuestionText` text NOT NULL,
  `AnswerOptions` text DEFAULT NULL,
  `CorrectAnswer` text DEFAULT NULL,
  `Marks` decimal(3,1) DEFAULT 1.0,
  `SetNumber` int(11) DEFAULT NULL,
  `PassageID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`QuestionID`, `TestType`, `Section`, `QuestionText`, `AnswerOptions`, `CorrectAnswer`, `Marks`, `SetNumber`, `PassageID`) VALUES
(1, 'Listening', 1, 'What is the man\'s full name?', NULL, 'Peter Johnson', 1.0, 1, NULL),
(2, 'Listening', 1, 'What is his date of birth?', NULL, '16th May 1994', 1.0, 1, NULL),
(3, 'Listening', 1, 'What is his address?', NULL, '24 Green Street', 1.0, 1, NULL),
(4, 'Listening', 1, 'Which city does he live in?', NULL, 'Melbourne', 1.0, 1, NULL),
(5, 'Listening', 1, 'What is his postcode?', NULL, '3050', 1.0, 1, NULL),
(6, 'Listening', 1, 'What is his phone number?', NULL, '0418 657 233', 1.0, 1, NULL),
(7, 'Listening', 1, 'What type of ID does he provide?', NULL, 'Driver’s license', 1.0, 1, NULL),
(8, 'Listening', 1, 'How much is the library membership fee?', NULL, '$25', 1.0, 1, NULL),
(9, 'Listening', 1, 'How long is the membership valid for?', NULL, 'One year', 1.0, 1, NULL),
(10, 'Listening', 1, 'What is included free with membership?', NULL, 'Internet access', 1.0, 1, NULL),
(11, 'Listening', 2, 'What is the name of the museum?', NULL, 'Grand History Museum', 1.0, 1, NULL),
(12, 'Listening', 2, 'How many galleries does the museum have?', NULL, '12', 1.0, 1, NULL),
(13, 'Listening', 2, 'Which gallery is currently closed?', NULL, 'Gallery 7', 1.0, 1, NULL),
(14, 'Listening', 2, 'What time does the guided tour start?', NULL, '11:30 AM', 1.0, 1, NULL),
(15, 'Listening', 2, 'Where does the tour start from?', NULL, 'Main entrance', 1.0, 1, NULL),
(16, 'Listening', 2, 'Which exhibit is popular among children?', NULL, 'Dinosaur fossils', 1.0, 1, NULL),
(17, 'Listening', 2, 'How much is the entrance fee for adults?', NULL, '$15', 1.0, 1, NULL),
(18, 'Listening', 2, 'How much is the entrance fee for children under 12?', NULL, 'Free', 1.0, 1, NULL),
(19, 'Listening', 2, 'Which day is the museum closed?', NULL, 'Monday', 1.0, 1, NULL),
(20, 'Listening', 2, 'What facility is available near the cafe?', NULL, 'Gift shop', 1.0, 1, NULL),
(21, 'Listening', 3, 'What is the topic of their research project?', NULL, 'Renewable energy', 1.0, 1, NULL),
(22, 'Listening', 3, 'What type of energy will they focus on?', NULL, 'Solar energy', 1.0, 1, NULL),
(23, 'Listening', 3, 'Where will they conduct the survey?', NULL, 'University campus', 1.0, 1, NULL),
(24, 'Listening', 3, 'How many people do they plan to survey?', NULL, '100', 1.0, 1, NULL),
(25, 'Listening', 3, 'What will be the first question of the survey?', NULL, 'Knowledge about solar panels', 1.0, 1, NULL),
(26, 'Listening', 3, 'Who is responsible for designing the questionnaire?', NULL, 'Lisa', 1.0, 1, NULL),
(27, 'Listening', 3, 'Who will handle the data analysis?', NULL, 'Mark', 1.0, 1, NULL),
(28, 'Listening', 3, 'What is the deadline for submitting the survey results?', NULL, '10th June', 1.0, 1, NULL),
(29, 'Listening', 3, 'What software will they use for analysis?', NULL, 'SPSS', 1.0, 1, NULL),
(30, 'Listening', 3, 'When will they meet the supervisor next?', NULL, 'Thursday', 1.0, 1, NULL),
(31, 'Listening', 4, 'How many species of sea turtles are there worldwide?', NULL, '7', 1.0, 1, NULL),
(32, 'Listening', 4, 'Which species is the largest?', NULL, 'Leatherback turtle', 1.0, 1, NULL),
(33, 'Listening', 4, 'What is the main threat to sea turtles?', NULL, 'Plastic pollution', 1.0, 1, NULL),
(34, 'Listening', 4, 'Where do female turtles lay their eggs?', NULL, 'Beaches', 1.0, 1, NULL),
(35, 'Listening', 4, 'What temperature produces female hatchlings?', NULL, 'Higher temperatures', 1.0, 1, NULL),
(36, 'Listening', 4, 'What device helps track turtle movements?', NULL, 'Satellite tags', 1.0, 1, NULL),
(37, 'Listening', 4, 'What organization helps protect sea turtles?', NULL, 'WWF', 1.0, 1, NULL),
(38, 'Listening', 4, 'How long can sea turtles live?', NULL, 'Over 80 years', 1.0, 1, NULL),
(39, 'Listening', 4, 'What percentage of hatchlings survive to adulthood?', NULL, 'Less than 1%', 1.0, 1, NULL),
(40, 'Listening', 4, 'What material are artificial turtle nests made from?', NULL, 'Sand', 1.0, 1, NULL),
(41, 'Listening', 1, 'What is the customer’s full name?', NULL, 'Emily Carter', 1.0, 2, NULL),
(42, 'Listening', 1, 'What city does she want to visit?', NULL, 'Perth', 1.0, 2, NULL),
(43, 'Listening', 1, 'What type of accommodation does she request?', NULL, 'Hotel', 1.0, 2, NULL),
(44, 'Listening', 1, 'How many nights will she stay?', NULL, '4', 1.0, 2, NULL),
(45, 'Listening', 1, 'What is the date of check-in?', NULL, '12th August', 1.0, 2, NULL),
(46, 'Listening', 1, 'How many people are traveling?', NULL, '2', 1.0, 2, NULL),
(47, 'Listening', 1, 'What is the total cost of the package?', NULL, '$750', 1.0, 2, NULL),
(48, 'Listening', 1, 'What transport is included in the package?', NULL, 'Airport pickup', 1.0, 2, NULL),
(49, 'Listening', 1, 'What extra service does she request?', NULL, 'Breakfast', 1.0, 2, NULL),
(50, 'Listening', 1, 'How will she pay?', NULL, 'Credit card', 1.0, 2, NULL),
(51, 'Listening', 2, 'What is the name of the sports complex?', NULL, 'Riverside Sports Centre', 1.0, 2, NULL),
(52, 'Listening', 2, 'How many tennis courts are there?', NULL, '6', 1.0, 2, NULL),
(53, 'Listening', 2, 'What is the swimming pool temperature?', NULL, '28°C', 1.0, 2, NULL),
(54, 'Listening', 2, 'What is the joining fee for new members?', NULL, '$50', 1.0, 2, NULL),
(55, 'Listening', 2, 'What is the monthly fee for adults?', NULL, '$40', 1.0, 2, NULL),
(56, 'Listening', 2, 'Which day is the swimming pool closed?', NULL, 'Tuesday', 1.0, 2, NULL),
(57, 'Listening', 2, 'How long is a yoga class?', NULL, '45 minutes', 1.0, 2, NULL),
(58, 'Listening', 2, 'Where is the parking area located?', NULL, 'Behind the building', 1.0, 2, NULL),
(59, 'Listening', 2, 'What is provided free with membership?', NULL, 'Locker facilities', 1.0, 2, NULL),
(60, 'Listening', 2, 'Which sport requires advance booking?', NULL, 'Squash', 1.0, 2, NULL),
(61, 'Listening', 3, 'What is the assignment topic?', NULL, 'Modern architecture', 1.0, 2, NULL),
(62, 'Listening', 3, 'Which city are they researching?', NULL, 'Chicago', 1.0, 2, NULL),
(63, 'Listening', 3, 'Who will be responsible for the presentation slides?', NULL, 'Tom', 1.0, 2, NULL),
(64, 'Listening', 3, 'What building will they focus on?', NULL, 'Willis Tower', 1.0, 2, NULL),
(65, 'Listening', 3, 'What is the word limit for the report?', NULL, '2000 words', 1.0, 2, NULL),
(66, 'Listening', 3, 'When is the assignment due?', NULL, '22nd May', 1.0, 2, NULL),
(67, 'Listening', 3, 'Where will they meet for group discussions?', NULL, 'Library study room', 1.0, 2, NULL),
(68, 'Listening', 3, 'Who suggested adding a case study?', NULL, 'Maria', 1.0, 2, NULL),
(69, 'Listening', 3, 'What type of sources are required?', NULL, 'Academic journals', 1.0, 2, NULL),
(70, 'Listening', 3, 'What tool will they use for referencing?', NULL, 'EndNote', 1.0, 2, NULL),
(71, 'Listening', 4, 'Who made the first powered flight?', NULL, 'Wright brothers', 1.0, 2, NULL),
(72, 'Listening', 4, 'In what year did the first flight happen?', NULL, '1903', 1.0, 2, NULL),
(73, 'Listening', 4, 'Where did the flight take place?', NULL, 'North Carolina', 1.0, 2, NULL),
(74, 'Listening', 4, 'What was the duration of the first flight?', NULL, '12 seconds', 1.0, 2, NULL),
(75, 'Listening', 4, 'What company built the first commercial jet?', NULL, 'Boeing', 1.0, 2, NULL),
(76, 'Listening', 4, 'What is the name of the first commercial jet?', NULL, 'Boeing 707', 1.0, 2, NULL),
(77, 'Listening', 4, 'When was the first Concorde flight?', NULL, '1969', 1.0, 2, NULL),
(78, 'Listening', 4, 'What was the main reason Concorde was retired?', NULL, 'High maintenance cost', 1.0, 2, NULL),
(79, 'Listening', 4, 'What is the newest trend in aviation?', NULL, 'Electric planes', 1.0, 2, NULL),
(80, 'Listening', 4, 'Which company is leading electric plane development?', NULL, 'Airbus', 1.0, 2, NULL),
(81, 'Listening', 1, 'What language does the caller want to learn?', NULL, 'French', 1.0, 3, NULL),
(82, 'Listening', 1, 'What is the caller’s full name?', NULL, 'Andrew Wilson', 1.0, 3, NULL),
(83, 'Listening', 1, 'On which days are classes available?', NULL, 'Monday and Thursday', 1.0, 3, NULL),
(84, 'Listening', 1, 'How many students are there in each class?', NULL, '12', 1.0, 3, NULL),
(85, 'Listening', 1, 'Where are the classes held?', NULL, 'Central Library', 1.0, 3, NULL),
(86, 'Listening', 1, 'What is the cost per term?', NULL, '$320', 1.0, 3, NULL),
(87, 'Listening', 1, 'When does the next term start?', NULL, '10th September', 1.0, 3, NULL),
(88, 'Listening', 1, 'How long is each class session?', NULL, '2 hours', 1.0, 3, NULL),
(89, 'Listening', 1, 'What skill is emphasized in the beginner course?', NULL, 'Speaking', 1.0, 3, NULL),
(90, 'Listening', 1, 'What is provided free of charge?', NULL, 'Textbooks', 1.0, 3, NULL),
(91, 'Listening', 2, 'What is the name of the park?', NULL, 'Hilltop Historical Park', 1.0, 3, NULL),
(92, 'Listening', 2, 'When was the park opened?', NULL, '1985', 1.0, 3, NULL),
(93, 'Listening', 2, 'How many guided tours are available daily?', NULL, '3', 1.0, 3, NULL),
(94, 'Listening', 2, 'How much is the entrance fee for adults?', NULL, '$15', 1.0, 3, NULL),
(95, 'Listening', 2, 'Where is the museum located?', NULL, 'Near the entrance', 1.0, 3, NULL),
(96, 'Listening', 2, 'What facility is next to the museum?', NULL, 'Café', 1.0, 3, NULL),
(97, 'Listening', 2, 'What time does the park close on weekends?', NULL, '6 pm', 1.0, 3, NULL),
(98, 'Listening', 2, 'Which trail leads to the waterfall?', NULL, 'Blue Trail', 1.0, 3, NULL),
(99, 'Listening', 2, 'What should visitors be cautious about?', NULL, 'Slippery rocks', 1.0, 3, NULL),
(100, 'Listening', 2, 'What activity is prohibited in the park?', NULL, 'Camping', 1.0, 3, NULL),
(101, 'Listening', 3, 'What subject is their research project on?', NULL, 'Renewable energy', 1.0, 3, NULL),
(102, 'Listening', 3, 'What type of energy are they focusing on?', NULL, 'Solar power', 1.0, 3, NULL),
(103, 'Listening', 3, 'What is the deadline for submitting their proposal?', NULL, 'Friday', 1.0, 3, NULL),
(104, 'Listening', 3, 'What data collection method will they use?', NULL, 'Online survey', 1.0, 3, NULL),
(105, 'Listening', 3, 'How many participants do they need?', NULL, '100', 1.0, 3, NULL),
(106, 'Listening', 3, 'Who is responsible for designing the questionnaire?', NULL, 'Sarah', 1.0, 3, NULL),
(107, 'Listening', 3, 'What software will they use for data analysis?', NULL, 'SPSS', 1.0, 3, NULL),
(108, 'Listening', 3, 'What additional material must they submit?', NULL, 'Presentation slides', 1.0, 3, NULL),
(109, 'Listening', 3, 'What percentage of the final mark is the presentation worth?', NULL, '30%', 1.0, 3, NULL),
(110, 'Listening', 3, 'Where will the final presentation take place?', NULL, 'Lecture hall 3', 1.0, 3, NULL),
(111, 'Listening', 4, 'What is the main focus of the research project?', NULL, 'Coral reefs', 1.0, 3, NULL),
(112, 'Listening', 4, 'In which ocean is the research being conducted?', NULL, 'Pacific Ocean', 1.0, 3, NULL),
(113, 'Listening', 4, 'What instrument is used to measure water quality?', NULL, 'Sensors', 1.0, 3, NULL),
(114, 'Listening', 4, 'What percentage of coral reefs have declined worldwide?', NULL, '50%', 1.0, 3, NULL),
(115, 'Listening', 4, 'What is the major threat to coral reefs?', NULL, 'Climate change', 1.0, 3, NULL),
(116, 'Listening', 4, 'Which species is used as an indicator of reef health?', NULL, 'Parrotfish', 1.0, 3, NULL),
(117, 'Listening', 4, 'What is one recommended conservation strategy?', NULL, 'Marine protected areas', 1.0, 3, NULL),
(118, 'Listening', 4, 'What is the duration of the research project?', NULL, '5 years', 1.0, 3, NULL),
(119, 'Listening', 4, 'Which organization is funding the research?', NULL, 'Oceanic Research Institute', 1.0, 3, NULL),
(120, 'Listening', 4, 'What is the ultimate goal of the project?', NULL, 'Coral reef restoration', 1.0, 3, NULL),
(121, 'Reading', 1, 'Discovery of coffee in Ethiopia', 'A,B,C,D', 'A', 1.0, 1, 1),
(122, 'Reading', 1, 'Coffee houses in Europe', 'A,B,C,D', 'B', 1.0, 1, 1),
(123, 'Reading', 1, 'Coffee cultivation in South America', 'A,B,C,D', 'C', 1.0, 1, 1),
(124, 'Reading', 1, 'The third wave coffee movement', 'A,B,C,D', 'D', 1.0, 1, 1),
(125, 'Reading', 1, 'Coffee was first cultivated in Brazil.', 'True,False,Not Given', 'False', 1.0, 1, 1),
(126, 'Reading', 1, 'Coffee houses were banned at first in Europe.', 'True,False,Not Given', 'Not Given', 1.0, 1, 1),
(127, 'Reading', 1, 'Coffee houses were considered places of learning.', 'True,False,Not Given', 'True', 1.0, 1, 1),
(128, 'Reading', 1, 'Brazil produces the largest amount of coffee today.', 'True,False,Not Given', 'True', 1.0, 1, 1),
(129, 'Reading', 1, 'Coffee originated in the forests of __________.', NULL, 'Ethiopia', 1.0, 1, 1),
(130, 'Reading', 1, 'Coffee was spread to Europe via __________ traders.', NULL, 'Arabian', 1.0, 1, 1),
(131, 'Reading', 1, 'Coffee cultivation expanded to __________ America.', NULL, 'South', 1.0, 1, 1),
(132, 'Reading', 1, 'The __________ wave movement emphasizes artisanal production.', NULL, 'Third', 1.0, 1, 1),
(133, 'Reading', 1, '__________ is the top coffee-producing country.', NULL, 'Brazil', 1.0, 1, 1),
(134, 'Reading', 2, 'When did AI development start?', 'A) 1930s,B) 1950s,C) 1970s,D) 1990s', 'B', 1.0, 1, 2),
(135, 'Reading', 2, 'AI now plays a role in:', 'A) Only tech industries,B) Finance and education,C) Agriculture mainly,D) Military only', 'B', 1.0, 1, 2),
(136, 'Reading', 2, 'One major concern about AI is:', 'A) Energy usage,B) Privacy invasion,C) Lack of innovation,D) Increased wages', 'B', 1.0, 1, 2),
(137, 'Reading', 2, 'The future of AI is likely to involve:', 'A) Replacing all human workers,B) More manual labor,C) Collaboration between humans and AI,D) Shutting down AI development', 'C', 1.0, 1, 2),
(138, 'Reading', 2, 'Early history of AI', NULL, 'Early history of AI', 1.0, 1, 2),
(139, 'Reading', 2, 'Modern AI applications', NULL, 'Modern AI applications', 1.0, 1, 2),
(140, 'Reading', 2, 'Problems associated with AI', NULL, 'Problems associated with AI', 1.0, 1, 2),
(141, 'Reading', 2, 'Hopes for the future', NULL, 'Hopes for the future', 1.0, 1, 2),
(142, 'Reading', 2, 'Experts are working to create transparent, fair algorithms', 'True,False,Not Given', 'False', 1.0, 1, 2),
(143, 'Reading', 2, 'AI is primarily used only in healthcare today.', 'True,False,Not Given', 'False', 1.0, 1, 2),
(144, 'Reading', 2, 'Bias in AI algorithms is a growing issue.', 'True,False,Not Given', 'True', 1.0, 1, 2),
(145, 'Reading', 2, 'AI technology started in the 21st century.', 'True,False,Not Given', 'False', 1.0, 1, 2),
(146, 'Reading', 2, 'Some experts believe AI should be transparent.', 'True,False,Not Given', 'True', 1.0, 1, 2),
(147, 'Reading', 3, 'Eco-friendly designs help reduce __________ emissions.', NULL, 'Carbon', 1.0, 1, 3),
(148, 'Reading', 3, '__________ roofs are an example of sustainable architecture.', NULL, 'Green', 1.0, 1, 3),
(149, 'Reading', 3, 'Eco-buildings improve indoor __________ quality.', NULL, 'Air', 1.0, 1, 3),
(150, 'Reading', 3, '__________ is a certification for sustainable buildings.', NULL, 'LEED', 1.0, 1, 3),
(151, 'Reading', 3, 'Solar panels —', 'A) Reduce need for air conditioning,B) Provide renewable energy,C) Use existing resources,D) Adapt to environmental changes,E) Collect and reuse water', 'B', 1.0, 1, 3),
(152, 'Reading', 3, 'Rainwater harvesting —', 'A) Reduce need for air conditioning,B) Provide renewable energy,C) Use existing resources,D) Adapt to environmental changes,E) Collect and reuse water', 'E', 1.0, 1, 3),
(153, 'Reading', 3, 'Smart materials —', 'A) Reduce need for air conditioning,B) Provide renewable energy,C) Use existing resources,D) Adapt to environmental changes,E) Collect and reuse water', 'D', 1.0, 1, 3),
(154, 'Reading', 3, 'Natural ventilation —', 'A) Reduce need for air conditioning,B) Provide renewable energy,C) Use existing resources,D) Adapt to environmental changes,E) Collect and reuse water', 'A', 1.0, 1, 3),
(155, 'Reading', 3, 'Recycled materials —', 'A) Reduce need for air conditioning,B) Provide renewable energy,C) Use existing resources,D) Adapt to environmental changes,E) Collect and reuse water', 'C', 1.0, 1, 3),
(156, 'Reading', 3, 'Green buildings always cost more to build.', 'Yes,No,Not Given', 'Not Given', 1.0, 1, 3),
(157, 'Reading', 3, 'Eco-friendly designs can save energy costs long-term.', 'Yes,No,Not Given', 'Yes', 1.0, 1, 3),
(158, 'Reading', 3, 'Solar panels require constant maintenance.', 'Yes,No,Not Given', 'Not Given', 1.0, 1, 3),
(159, 'Reading', 3, 'Green roofs can improve biodiversity.', 'Yes,No,Not Given', 'Yes', 1.0, 1, 3),
(160, 'Reading', 3, 'Future smart buildings might use AI to save energy.', 'Yes,No,Not Given', 'Yes', 1.0, 1, 3),
(174, 'Reading', 1, 'No pedals, powered by feet', 'A) Dandy Horse, B) Safety Bicycle, C) Mass Production, D) Mountain/Folding Bikes', 'A', 1.0, 2, 4),
(175, 'Reading', 1, 'Two same-sized wheels', 'A) Dandy Horse, B) Safety Bicycle, C) Mass Production, D) Mountain/Folding Bikes', 'B', 1.0, 2, 4),
(176, 'Reading', 1, 'Made bicycles affordable', 'A) Dandy Horse, B) Safety Bicycle, C) Mass Production, D) Mountain/Folding Bikes', 'C', 1.0, 2, 4),
(177, 'Reading', 1, 'Greater stability compared to earlier models', 'A) Dandy Horse, B) Safety Bicycle, C) Mass Production, D) Mountain/Folding Bikes', 'B', 1.0, 2, 4),
(178, 'Reading', 1, 'Modern specialized designs', 'A) Dandy Horse, B) Safety Bicycle, C) Mass Production, D) Mountain/Folding Bikes', 'D', 1.0, 2, 7),
(179, 'Reading', 1, 'Early bicycles had pedals.', 'True, False, Not Given', 'False', 1.0, 2, 4),
(180, 'Reading', 1, 'Safety bicycles had large front wheels.', 'True, False, Not Given', 'False', 1.0, 2, 4),
(181, 'Reading', 1, 'Mass production reduced bicycle prices.', 'True, False, Not Given', 'True', 1.0, 2, 4),
(182, 'Reading', 1, 'Mountain bikes were popular in the 19th century.', 'True, False, Not Given', 'False', 1.0, 2, 4),
(183, 'Reading', 1, 'Folding bikes are a recent innovation.', 'True, False, Not Given', 'True', 1.0, 2, 4),
(184, 'Reading', 1, 'The early foot-propelled bicycle was called a __________.', NULL, 'Dandy Horse', 1.0, 2, 4),
(185, 'Reading', 1, 'The __________ bicycle improved stability and safety.', NULL, 'Safety', 1.0, 2, 4),
(186, 'Reading', 1, 'Mass production made bicycles more __________.', NULL, 'Affordable', 1.0, 2, 4),
(187, 'Reading', 2, 'What percentage of the Earth\'s surface is covered by oceans?', 'A) 50%, B) 60%, C) 70%, D) 80%', 'C', 1.0, 2, 5),
(188, 'Reading', 2, 'Oceans primarily help regulate climate by:', 'A) Emitting carbon dioxide, B) Absorbing solar radiation, C) Reflecting sunlight, D) Producing oxygen', 'B', 1.0, 2, 5),
(189, 'Reading', 2, 'What is one result of ocean acidification?', 'A) More fish populations, B) Stronger ocean currents, C) Threats to marine ecosystems, D) Increased rainfall', 'C', 1.0, 2, 5),
(190, 'Reading', 2, 'Disruptions to ocean currents can cause:', 'A) Decrease in sea levels, B) Intensified weather patterns, C) Less precipitation, D) Stabilized climate', 'B', 1.0, 2, 5),
(191, 'Reading', 2, 'Protecting oceans is important because they:', 'A) Create new land, B) Influence global weather systems, C) Decrease biodiversity, D) Reduce soil erosion', 'B', 1.0, 2, 5),
(192, 'Reading', 2, 'Absorption of CO2', NULL, 'Absorption of CO2', 1.0, 2, 5),
(193, 'Reading', 2, 'Heat distribution by oceans', NULL, 'Heat distribution', 1.0, 2, 5),
(194, 'Reading', 2, 'Threats to marine ecosystems', NULL, 'Threats to ecosystems', 1.0, 2, 5),
(195, 'Reading', 2, 'Importance of preserving ocean health', NULL, 'Importance of preservation', 1.0, 2, 5),
(196, 'Reading', 2, 'Role of oceans as heat reservoirs', NULL, 'Heat reservoirs', 1.0, 2, 5),
(197, 'Reading', 2, 'Oceans have started releasing heat into the atmosphere recently.', 'True, False, Not Given', 'Not Given', 1.0, 2, 5),
(198, 'Reading', 2, 'Rising temperatures are harming marine species.', 'True, False, Not Given', 'True', 1.0, 2, 5),
(199, 'Reading', 2, 'Ocean currents are completely unaffected by human activity.', 'True, False, Not Given', 'False', 1.0, 2, 5),
(200, 'Reading', 3, 'Warm colors often cause feelings of __________.', NULL, 'Excitement', 1.0, 2, 6),
(201, 'Reading', 3, 'Cool colors like blue promote __________.', NULL, 'Calmness', 1.0, 2, 6),
(202, 'Reading', 3, 'Fast food brands often use __________ to stimulate appetite.', NULL, 'Red', 1.0, 2, 6),
(203, 'Reading', 3, 'In some cultures, white is a symbol of __________.', NULL, 'Purity', 1.0, 2, 6),
(204, 'Reading', 3, 'Color preferences can relate to __________ traits.', NULL, 'Personality', 1.0, 2, 6),
(205, 'Reading', 3, 'Marketing —', 'A) Soft blue and green used, B) White associated with purity/mourning, C) Red stimulates appetite, D) Red/orange create urgency, E) Blue creates a relaxed mood', 'C', 1.0, 2, 6),
(206, 'Reading', 3, 'Healthcare —', 'A) Soft blue and green used, B) White associated with purity/mourning, C) Red stimulates appetite, D) Red/orange create urgency, E) Blue creates a relaxed mood', 'A', 1.0, 2, 6),
(207, 'Reading', 3, 'Cultural meaning —', 'A) Soft blue and green used, B) White associated with purity/mourning, C) Red stimulates appetite, D) Red/orange create urgency, E) Blue creates a relaxed mood', 'B', 1.0, 2, 6),
(208, 'Reading', 3, 'Excitement —', 'A) Soft blue and green used, B) White associated with purity/mourning, C) Red stimulates appetite, D) Red/orange create urgency, E) Blue creates a relaxed mood', 'D', 1.0, 2, 6),
(209, 'Reading', 3, 'Calmness —', 'A) Soft blue and green used, B) White associated with purity/mourning, C) Red stimulates appetite, D) Red/orange create urgency, E) Blue creates a relaxed mood', 'E', 1.0, 2, 6),
(210, 'Reading', 3, 'Blue always evokes sadness.', 'Yes, No, Not Given', 'No', 1.0, 2, 6),
(211, 'Reading', 3, 'Red increases appetite in most consumers.', 'Yes, No, Not Given', 'Yes', 1.0, 2, 6),
(212, 'Reading', 3, 'Cultural interpretations of colors are identical worldwide.', 'Yes, No, Not Given', 'No', 1.0, 2, 6),
(213, 'Reading', 3, 'Recent research links colors to personalities.', 'Yes, No, Not Given', 'Yes', 1.0, 2, 6),
(214, 'Reading', 1, 'Which type of photography is described: Required long exposure times and produced one image.', 'A) Daguerreotype, B) Roll Film, C) Color Film, D) Polaroid, E) Digital Photography', 'A', 1.0, 3, 7),
(215, 'Reading', 1, 'Which type of photography made it easier for the public to take pictures.', 'A) Daguerreotype, B) Roll Film, C) Color Film, D) Polaroid, E) Digital Photography', 'B', 1.0, 3, 7),
(216, 'Reading', 1, 'Which innovation allowed for colored photographs.', 'A) Daguerreotype, B) Roll Film, C) Color Film, D) Polaroid, E) Digital Photography', 'C', 1.0, 3, 7),
(217, 'Reading', 1, 'Which development allowed people to get photos instantly.', 'A) Daguerreotype, B) Roll Film, C) Color Film, D) Polaroid, E) Digital Photography', 'D', 1.0, 3, 7),
(218, 'Reading', 1, 'Which type allows billions of photos to be shared instantly today.', 'A) Daguerreotype, B) Roll Film, C) Color Film, D) Polaroid, E) Digital Photography', 'E', 1.0, 3, 7),
(219, 'Reading', 1, 'Daguerreotypes allowed for multiple copies to be made easily.', 'True, False, Not Given', 'False', 1.0, 3, 7),
(220, 'Reading', 1, 'Kodak helped make photography more accessible.', 'True, False, Not Given', 'True', 1.0, 3, 7),
(221, 'Reading', 1, 'Color photography existed before black-and-white.', 'True, False, Not Given', 'False', 1.0, 3, 7),
(222, 'Reading', 1, 'Digital cameras were invented before Polaroid.', 'True, False, Not Given', 'False', 1.0, 3, 7),
(223, 'Reading', 1, 'Some people still prefer traditional photography methods.', 'True, False, Not Given', 'True', 1.0, 3, 7),
(224, 'Reading', 1, 'The earliest photography method was called __________.', NULL, 'Daguerreotype', 1.0, 3, 7),
(225, 'Reading', 1, 'The company that created the first simple box camera was __________.', NULL, 'Kodak', 1.0, 3, 7),
(226, 'Reading', 1, 'Traditional film photography is valued for its __________.', NULL, 'Artistic qualities', 1.0, 3, 7),
(227, 'Reading', 2, 'What is a major threat posed by plastics to marine animals?', 'A) They clean the oceans naturally, B) Plastics are mistaken for food, C) Plastics attract fish, D) Plastics create new habitats', 'B', 1.0, 3, 8),
(228, 'Reading', 2, 'Microplastics are dangerous because they:', 'A) Dissolve quickly, B) Are too large to consume, C) Enter the food chain, D) Remain on the ocean surface only', 'C', 1.0, 3, 8),
(229, 'Reading', 2, 'What is one method to tackle plastic pollution?', 'A) Encouraging more plastic production, B) Promoting the use of single-use plastics, C) Improving waste management, D) Dumping plastics in deep sea trenches', 'C', 1.0, 3, 8),
(230, 'Reading', 2, 'Public awareness campaigns help by:', 'A) Removing plastic from oceans, B) Educating people about plastic pollution, C) Producing biodegradable plastics, D) Funding ocean cleanups directly', 'B', 1.0, 3, 8),
(231, 'Reading', 2, 'Without intervention, plastic in oceans could:', 'A) Vanish by 2050, B) Equal the weight of all marine fish, C) Improve marine ecosystems, D) Help fish populations grow', 'B', 1.0, 3, 8),
(232, 'Reading', 2, 'Which paragraph mentions: Danger of microplastics?', 'Paragraph 1, Paragraph 2, Paragraph 3, Paragraph 4', 'Paragraph 2', 1.0, 3, 8),
(233, 'Reading', 2, 'Which paragraph mentions: Current measures being taken?', 'Paragraph 1, Paragraph 2, Paragraph 3, Paragraph 4', 'Paragraph 3', 1.0, 3, 8),
(234, 'Reading', 2, 'Which paragraph mentions: Prediction for 2050?', 'Paragraph 1, Paragraph 2, Paragraph 3, Paragraph 4', 'Paragraph 4', 1.0, 3, 8),
(235, 'Reading', 2, 'Which paragraph mentions: Causes of plastic pollution?', 'Paragraph 1, Paragraph 2, Paragraph 3, Paragraph 4', 'Paragraph 1', 1.0, 3, 8),
(236, 'Reading', 2, 'Which paragraph mentions: Public campaigns?', 'Paragraph 1, Paragraph 2, Paragraph 3, Paragraph 4', 'Paragraph 3', 1.0, 3, 8),
(237, 'Reading', 2, 'Microplastics can accumulate in human bodies.', 'Yes, No, Not Given', 'Yes', 1.0, 3, 8),
(238, 'Reading', 2, 'All countries have banned single-use plastics.', 'Yes, No, Not Given', 'No', 1.0, 3, 8),
(239, 'Reading', 2, 'Plastic decomposes completely within five years.', 'Yes, No, Not Given', 'No', 1.0, 3, 8),
(240, 'Reading', 3, 'Honeybees assist in __________ by transferring pollen.', '', 'Pollination', 1.0, 3, 9),
(241, 'Reading', 3, 'The __________ dance is how bees communicate food locations.', '', 'Waggle', 1.0, 3, 9),
(242, 'Reading', 3, 'A major cause of bee population decline is __________.', '', 'Pesticide use', 1.0, 3, 9),
(243, 'Reading', 3, 'One way to help bees is by planting __________.', '', 'Wildflowers', 1.0, 3, 9),
(244, 'Reading', 3, 'Bees are crucial for __________ production.', '', 'Food', 1.0, 3, 9),
(245, 'Reading', 3, 'Match: Habitat destruction', 'A) Loss of flower-rich areas, B) Chemical sprays harming bees, C) Mysterious disappearance of bees, D) Actions to protect bees, E) Dance indicating food source', 'A', 1.0, 3, 9),
(246, 'Reading', 3, 'Match: Pesticide use', 'A) Loss of flower-rich areas, B) Chemical sprays harming bees, C) Mysterious disappearance of bees, D) Actions to protect bees, E) Dance indicating food source', 'B', 1.0, 3, 9),
(247, 'Reading', 3, 'Match: Colony collapse disorder', 'A) Loss of flower-rich areas, B) Chemical sprays harming bees, C) Mysterious disappearance of bees, D) Actions to protect bees, E) Dance indicating food source', 'C', 1.0, 3, 9),
(248, 'Reading', 3, 'Match: Conservation efforts', 'A) Loss of flower-rich areas, B) Chemical sprays harming bees, C) Mysterious disappearance of bees, D) Actions to protect bees, E) Dance indicating food source', 'D', 1.0, 3, 9),
(249, 'Reading', 3, 'Match: Bee communication', 'A) Loss of flower-rich areas, B) Chemical sprays harming bees, C) Mysterious disappearance of bees, D) Actions to protect bees, E) Dance indicating food source', 'E', 1.0, 3, 9),
(250, 'Reading', 3, 'Bees pollinate more crops than any other insect.', 'Yes, No, Not Given', 'Yes', 1.0, 3, 9),
(251, 'Reading', 3, 'Honeybee populations have increased globally.', 'Yes, No, Not Given', 'No', 1.0, 3, 9),
(252, 'Reading', 3, 'All bees use waggle dancing to communicate.', 'Yes, No, Not Given', 'Not Given', 1.0, 3, 9),
(253, 'Reading', 3, 'Reducing pesticide use helps bee conservation.', 'Yes, No, Not Given', 'Yes', 1.0, 3, 9);

-- --------------------------------------------------------

--
-- Table structure for table `reading_passages`
--

CREATE TABLE `reading_passages` (
  `PassageID` int(11) NOT NULL,
  `SetNumber` int(11) DEFAULT NULL,
  `PassageTitle` varchar(255) DEFAULT NULL,
  `PassageContent` longtext DEFAULT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reading_passages`
--

INSERT INTO `reading_passages` (`PassageID`, `SetNumber`, `PassageTitle`, `PassageContent`, `CreatedAt`) VALUES
(1, 1, 'The History of Coffee', 'Coffee is one of the world\'s most beloved beverages. It originated in the ancient coffee forests of Ethiopia. According to legend, a goat herder named Kaldi first discovered the potential of coffee beans when he noticed that his goats became energetic after eating them. Coffee spread to the Arabian Peninsula, where it became integral to social life. By the 17th century, it had reached Europe and quickly gained popularity. Coffee houses became centers of intellectual exchange. Colonial powers cultivated coffee across the Caribbean, South America, and Southeast Asia. Today, Brazil leads the world in coffee production. Recently, the third wave coffee movement has emphasized artisanal production, direct trade, and sustainability.', '2025-05-01 14:06:31'),
(2, 1, 'Advances in Artificial Intelligence', 'Artificial Intelligence (AI) is revolutionizing industries globally. Early development began in the 1950s when computers first demonstrated simple learning. Over the decades, AI capabilities expanded, with machines learning complex patterns and improving through deep learning. Today, AI plays a key role in sectors like healthcare, finance, transportation, and education. However, ethical concerns have emerged, including bias, privacy, and the displacement of jobs. Experts are working to create transparent, fair algorithms. AI\'s future may involve stronger human-machine collaboration and smarter decision-making support systems.', '2025-05-01 14:06:31'),
(3, 1, 'Eco-Friendly Building Design', 'With growing environmental concerns, eco-friendly building designs have gained importance. Sustainable architecture reduces carbon footprint by using renewable energy sources, natural ventilation, and recycled materials. Green roofs, rainwater harvesting, and solar panels are common features. In addition to environmental benefits, these buildings provide better indoor air quality and energy savings for occupants. Certification systems like LEED help to evaluate a building\'s sustainability. The future of architecture is likely to see smart materials that adapt to weather changes and technologies like AI optimizing energy consumption.', '2025-05-01 14:06:31'),
(4, 2, 'The Evolution of the Bicycle', 'The history of the bicycle is a tale of continuous innovation. Early bicycles, developed in the early 19th century, were primitive, featuring no pedals and relying on the rider\'s feet for propulsion. Known as \"dandy horses,\" these devices evolved into pedal-driven velocipedes. The late 1800s witnessed the creation of the \"safety bicycle,\" featuring two equal-sized wheels and a chain drive. This design offered greater stability compared to the earlier high-wheeled penny-farthings. Mass production techniques introduced in the 20th century made bicycles more affordable. Today, bicycles serve recreational, commuting, and competitive purposes, and designs include mountain bikes, racing bikes, and folding models.', '2025-05-01 14:08:19'),
(5, 2, 'The Role of Oceans in Climate Regulation', 'Oceans cover more than 70% of Earth\'s surface and play a vital role in regulating climate. Acting as massive heat reservoirs, oceans absorb solar radiation and redistribute heat around the globe through currents. They also absorb large amounts of atmospheric carbon dioxide, mitigating climate change. However, increased greenhouse gas emissions have led to ocean acidification and rising temperatures, threatening marine ecosystems. Scientists warn that disruptions to oceanic currents could intensify weather patterns and sea level rise. Preserving ocean health is thus critical for maintaining climate stability.', '2025-05-01 14:08:19'),
(6, 2, 'The Psychology of Color', 'Colors influence human emotions and behaviors in profound ways. Studies show that warm colors like red and orange can evoke feelings of excitement or urgency, while cool colors like blue and green promote calmness and trust. Marketers use color psychology strategically to influence consumer decisions; for instance, fast food brands often incorporate red to stimulate appetite. In healthcare environments, soft blues and greens are commonly used to create soothing atmospheres. However, cultural interpretations of color vary, with white symbolizing purity in some cultures and mourning in others. Recent research suggests that color preferences can also be linked to personality traits.', '2025-05-01 14:08:19'),
(7, 3, 'The History and Evolution of Photography', 'Photography has transformed dramatically since its invention in the early 19th century. The earliest method, known as the daguerreotype process, produced a single image on a silver-plated sheet. Although revolutionary, it required long exposure times and could not create multiple copies.\r\n\r\nBy the late 1800s, George Eastman’s development of roll film made photography more accessible to the public. His company, Kodak, introduced the first simple box camera, allowing ordinary people to capture everyday moments.\r\n\r\nThroughout the 20th century, technological innovations like color film, instant photography by Polaroid, and eventually digital imaging completely changed the landscape. Today, photography is largely digital, with smartphones and digital cameras enabling billions of images to be taken and shared instantly worldwide.\r\n\r\nDespite these advances, traditional techniques like darkroom development and film photography continue to be celebrated by enthusiasts for their artistic qualities.', '2025-05-01 14:09:42'),
(8, 3, 'The Impact of Plastic on Marine Life', 'Plastics have become one of the most serious pollutants in the oceans. Millions of tons of plastic waste enter marine environments each year, posing a threat to wildlife and ecosystems. Marine animals often mistake plastic debris for food, leading to injury or death.\r\n\r\nMicroplastics, tiny particles resulting from the breakdown of larger plastics, are particularly harmful. They can be ingested by small organisms and accumulate up the food chain, eventually impacting human health.\r\n\r\nEfforts to reduce ocean plastic pollution include banning single-use plastics, improving waste management systems, and encouraging recycling. Public awareness campaigns and international agreements also play a crucial role in addressing the crisis.\r\n\r\nWithout coordinated global action, the amount of plastic in oceans is projected to exceed the weight of all fish by 2050.', '2025-05-01 14:09:42'),
(9, 3, 'The Wonders of Honeybees', 'Honeybees play a vital role in pollinating plants, contributing to ecosystems and agriculture. Without them, many fruits, vegetables, and nuts would disappear, significantly impacting human food supplies.\r\n\r\nBees communicate through a \"waggle dance\" to inform hive members about the location of food sources. This remarkable behavior allows colonies to forage efficiently.\r\n\r\nHowever, honeybee populations have been declining due to habitat loss, pesticide use, and diseases like colony collapse disorder. Conservation efforts focus on planting wildflowers, reducing pesticide use, and creating safe habitats to ensure their survival.\r\n\r\nThe importance of bees to both nature and humanity highlights the need for urgent action to protect them.', '2025-05-01 14:09:42');

-- --------------------------------------------------------

--
-- Table structure for table `sectionvideos`
--

CREATE TABLE `sectionvideos` (
  `id` int(11) NOT NULL,
  `section` varchar(20) DEFAULT NULL,
  `video_number` int(11) DEFAULT NULL,
  `video_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sectionvideos`
--

INSERT INTO `sectionvideos` (`id`, `section`, `video_number`, `video_path`) VALUES
(1, 'listening', 1, 'Videos/listening_1.mp4'),
(2, 'listening', 2, 'Videos/listening_2.mp4'),
(3, 'listening', 3, 'Videos/listening_3.mp4'),
(4, 'listening', 4, 'Videos/listening_4.mp4'),
(5, 'listening', 5, 'Videos/listening_5.mp4'),
(6, 'listening', 6, 'Videos/listening_6.mp4'),
(7, 'listening', 7, 'Videos/listening_7.mp4'),
(8, 'writing', 1, 'Videos/writing_1.mp4'),
(9, 'writing', 2, 'Videos/writing_2.mp4'),
(10, 'writing', 3, 'Videos/writing_3.mp4'),
(11, 'writing', 4, 'Videos/writing_4.mp4'),
(12, 'writing', 5, 'Videos/writing_5.mp4'),
(13, 'writing', 6, 'Videos/writing_6.mp4'),
(14, 'writing', 7, 'Videos/writing_7.mp4'),
(15, 'writing', 8, 'Videos/writing_8.mp4'),
(16, 'writing', 9, 'Videos/writing_9.mp4'),
(17, 'writing', 10, 'Videos/writing_10.mp4'),
(18, 'writing', 11, 'Videos/writing_11.mp4'),
(19, 'writing', 12, 'Videos/writing_12.mp4'),
(20, 'writing', 13, 'Videos/writing_13.mp4'),
(21, 'writing', 14, 'Videos/writing_14.mp4'),
(22, 'reading', 1, 'Videos/reading_1.mp4'),
(23, 'reading', 2, 'Videos/reading_2.mp4'),
(24, 'reading', 3, 'Videos/reading_3.mp4'),
(25, 'reading', 4, 'Videos/reading_4.mp4'),
(26, 'reading', 5, 'Videos/reading_5.mp4'),
(27, 'reading', 6, 'Videos/reading_6.mp4'),
(28, 'reading', 7, 'Videos/reading_7.mp4'),
(29, 'reading', 8, 'Videos/reading_8.mp4'),
(30, 'reading', 9, 'Videos/reading_9.mp4'),
(31, 'reading', 10, 'Videos/reading_10.mp4'),
(32, 'speaking', 1, 'Videos/speaking_1.mp4'),
(33, 'speaking', 2, 'Videos/speaking_2.mp4'),
(34, 'speaking', 3, 'Videos/speaking_3.mp4'),
(35, 'speaking', 4, 'Videos/speaking_4.mp4'),
(36, 'speaking', 5, 'Videos/speaking_5.mp4'),
(37, 'speaking', 6, 'Videos/speaking_6.mp4'),
(38, 'speaking', 7, 'Videos/speaking_7.mp4'),
(39, 'speaking', 8, 'Videos/speaking_8.mp4'),
(40, 'speaking', 9, 'Videos/speaking_9.mp4'),
(41, 'speaking', 10, 'Videos/speaking_10.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `speakingprompts`
--

CREATE TABLE `speakingprompts` (
  `PromptID` int(11) NOT NULL,
  `Part` int(11) NOT NULL,
  `PromptText` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `speakingrecords`
--

CREATE TABLE `speakingrecords` (
  `RecordID` int(11) NOT NULL,
  `TestID` int(11) NOT NULL,
  `FilePath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `speaking_sessions`
--

CREATE TABLE `speaking_sessions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_name` varchar(255) NOT NULL,
  `started_at` datetime DEFAULT current_timestamp(),
  `ended_at` datetime DEFAULT NULL,
  `status` enum('ongoing','ended') DEFAULT 'ongoing'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `field_id` int(11) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `name`, `field_id`, `description`) VALUES
(1, 'Biomedical Engineering', 1, 'This field combines engineering principles with medical sciences to design and create equipment, devices, and software for healthcare applications that bridge the gap between medicine and technology to improve patient outcomes.'),
(2, 'Civil System', 1, 'Civil systems focus on designing, constructing, and maintaining infrastructure like roads, bridges, and water supply systems and this discipline ensures sustainable development and efficient urban planning.'),
(3, 'Computing and Software System', 1, 'This subject deals with the development of software applications and computing systems to solve complex problems, emphasizing innovation in programming, algorithms, and system design.'),
(4, 'Electrical System', 1, 'Electrical systems encompass the generation, transmission, and distribution of electrical power and it also covers modern technologies like renewable energy and smart grids.'),
(5, 'Civil', 1, 'Civil engineering deals with creating infrastructure like buildings, dams, and highways which emphasizes structural stability and environmentally friendly construction techniques.'),
(6, 'Electrical and Electronic Engineering', 1, 'This discipline blends electrical engineering fundamentals with advanced electronic systems to design circuits, communication devices, and power systems.'),
(7, 'Mechanical', 1, 'Mechanical engineering focuses on designing and manufacturing machines and tools that also spans industries like automotive, aerospace, and energy production.'),
(8, 'Software Engineering', 1, 'This field involves designing, developing, and maintaining software systems, ensuring they are reliable, scalable, and efficient.'),
(9, 'Civil Engineering', 1, 'Civil engineering specializes in constructing essential infrastructure while focusing on sustainability, safety, and innovative designs for the future.'),
(10, 'Aerospace Engineering', 1, 'Aerospace engineering delves into the design and development of aircraft, spacecraft, and related systems, pushing the boundaries of exploration and aviation.'),
(11, 'Sustainable Energy', 1, 'This subject explores renewable energy sources like solar, wind, and hydropower to create sustainable solutions for global energy needs.'),
(12, 'Artificial Intelligence', 1, 'AI focuses on creating systems that simulate human intelligence, including learning, reasoning, and decision-making for real-world applications.'),
(13, 'Renewable Energy System', 1, 'This field emphasizes the design and implementation of systems that harness renewable energy sources to reduce dependency on fossil fuels.'),
(14, 'Electronic and Communication System', 1, 'This discipline covers the development of communication technologies, including wireless networks, fiber optics, and satellite systems.'),
(15, 'Systems Engineering', 1, 'Systems engineering integrates multiple disciplines to design, manage, and optimize complex systems throughout their life cycles.'),
(16, 'Mechatronic Systems', 1, 'Mechatronics combines mechanical, electronic, and computing technologies to develop smart systems like robots and automated machinery.'),
(17, 'Robotics', 1, 'This subject explores the design, construction, and programming of robots to perform tasks in various industries, from manufacturing to healthcare.'),
(18, 'AI Development', 1, 'AI development focuses on building intelligent systems and applications, advancing automation and problem-solving capabilities across sectors.'),
(19, 'Electrical Engineering', 1, 'Electrical engineering involves designing and managing systems for electricity generation, electronics, and power distribution networks.'),
(20, 'Chemical Engineering', 1, 'This field integrates chemical science with engineering principles to develop processes for manufacturing chemicals, fuels, and pharmaceuticals.'),
(21, 'Environmental Engineering', 1, 'Environmental engineering focuses on solving issues related to pollution, waste management, and sustainable environmental practices, ensuring a cleaner and healthier planet.'),
(22, 'Biomedical', 1, 'Biomedical science combines biology and medicine to advance health solutions, focusing on disease mechanisms, diagnostics, and innovative treatments.'),
(23, 'Electrical', 1, 'Electrical engineering explores the fundamental principles of electricity, electronics, and electromagnetism to create efficient electrical systems and devices.'),
(24, 'Computer Science and Engineering', 1, 'This interdisciplinary field integrates computer science and engineering principles to design hardware and software systems that enhance technological advancements.'),
(25, 'Environmental Change and Management', 1, 'This subject explores how to manage environmental challenges, from climate change to resource depletion, with sustainable and impactful solutions.'),
(26, 'Masters in Computer Science', 1, 'A Master in Computer Science focuses on advanced computing principles, preparing students to design complex software, systems, and solutions for global challenges.'),
(27, 'Aerospace and Aerothermal Engineering', 1, 'This field involves designing aircraft and spacecraft, focusing on aerodynamics, propulsion systems, and thermodynamics for high-speed and space exploration.'),
(28, 'MPhil in Engineering', 1, 'An MPhil in Engineering allows researchers to delve into cutting-edge engineering topics, contributing to advancements in technologies across various disciplines.'),
(29, 'PhD in Bioengineering', 1, 'A PhD in Bioengineering trains students to innovate in areas like biomaterials, medical devices, and tissue engineering, advancing healthcare through technology.'),
(30, 'Computer Science', 1, 'Computer science focuses on understanding algorithms, data structures, and software systems to drive advancements in technology and digital solutions.'),
(31, 'Data Science', 1, 'Data science combines statistics, computer science, and domain expertise to analyze vast amounts of data, uncover patterns, and support data-driven decision-making.'),
(32, 'Software Systems Engineering', 1, 'This field focuses on designing software solutions that meet both functional and non-functional requirements, ensuring the software’s scalability, reliability, and maintainability.'),
(33, 'MSc in Medical Imaging and Robotics', 1, 'This advanced degree blends medical imaging technology and robotics to improve diagnostic processes and surgical precision, advancing healthcare applications.'),
(34, 'Biochemical Engineering', 1, 'Biochemical engineering applies chemical engineering principles to biological systems, creating processes for producing bio-based products like pharmaceuticals and biofuels.'),
(35, 'Mechanical and Electrical Engineering', 1, 'This interdisciplinary program merges mechanical and electrical engineering concepts to design and optimize integrated systems such as automation and robotics.'),
(36, 'Computational Science and Informatics', 1, 'Computational science applies mathematical models and algorithms to solve complex scientific problems, with applications ranging from weather forecasting to data analysis.'),
(37, 'Computational Science and Engineering', 1, 'This field blends engineering with advanced computational techniques to model and solve engineering problems, enhancing product design and system optimization.'),
(38, 'Molecular Systems Science and Engineering', 1, 'This subject explores how molecular-level phenomena can be harnessed to solve engineering challenges, from drug design to nanotechnology.'),
(39, 'Matter of Life', 1, 'Matter of Life examines the physical and chemical processes that sustain living systems, providing insights into molecular biology, biotechnology, and bioengineering.'),
(40, 'Medical Engineering', 1, 'Medical engineering combines engineering principles with medical needs to design devices and technologies that improve patient care, from diagnostics to treatment.'),
(41, 'Biosystems Engineering', 1, 'Biosystems engineering applies engineering principles to biological systems, focusing on the development of sustainable technologies for agriculture, food production, and environmental preservation.'),
(42, 'Molecular Biotechnology', 1, 'Molecular biotechnology utilizes biological molecules and techniques to develop applications in areas such as medicine, agriculture, and environmental protection, driving innovation in biotech industries.'),
(43, 'Computational Biology', 1, 'Computational biology applies algorithms and models to biological data, helping to understand complex biological systems and advancing fields like genomics and drug discovery.'),
(44, 'Electrical and Computer Engineering', 1, 'Electrical and computer engineering combines electrical engineering with computer science to design and develop systems that integrate hardware and software, enhancing communication and computing technologies.'),
(45, 'Engineering Science', 1, 'Engineering science is an interdisciplinary field that combines engineering with scientific principles to solve complex technical problems, pushing the boundaries of innovation and sustainability.'),
(46, 'Robotics, Cognition and Intelligence', 1, 'This field blends robotics with artificial intelligence and cognitive science to create intelligent systems capable of perceiving, reasoning, and learning to perform tasks autonomously.'),
(47, 'Automation Engineering', 1, 'Automation engineering focuses on designing systems and processes that minimize human intervention, improving efficiency in manufacturing, robotics, and control systems.'),
(48, 'Environmental and Land Planning Engineering', 1, 'This discipline combines environmental science with urban planning and engineering to create sustainable, functional, and ecologically balanced urban landscapes and infrastructures.'),
(49, 'Energy Engineering', 1, 'Energy engineering focuses on the development and implementation of technologies that improve the efficiency, sustainability, and production of energy from renewable and non-renewable sources.'),
(50, 'Automation and System Engineering', 1, 'Automation and system engineering integrates control systems, robotics, and optimization techniques to design automated systems for improving efficiency and reducing human intervention.'),
(51, 'Industrial Engineering', 1, 'Industrial engineering focuses on optimizing complex systems, processes, and organizations to improve efficiency, reduce waste, and increase productivity in industries ranging from manufacturing to logistics.'),
(52, 'Environmental and Infrastructure Engineering', 1, 'This field combines environmental sustainability with infrastructure development, focusing on creating eco-friendly solutions for transportation, construction, and urban planning.'),
(53, 'Control and Automation Engineering', 1, 'Control and automation engineering involves designing systems to control processes and machines, optimizing performance and reliability in industries like manufacturing, aerospace, and robotics.'),
(54, 'Information Engineering', 1, 'Information engineering combines information technology with engineering principles to design systems that manage, process, and transmit data efficiently, enhancing communication and decision-making.'),
(55, 'Civil and Environmental Engineering', 1, 'This interdisciplinary field integrates civil engineering principles with environmental science to design infrastructure that minimizes environmental impact and promotes sustainability.'),
(56, 'Electrical Science and Engineering', 1, 'Electrical science and engineering explores the principles of electricity, electromagnetism, and electronics to create innovative solutions in power generation, telecommunications, and electrical systems.'),
(57, 'Aeronautics and Astronautics', 1, 'Aeronautics and astronautics focuses on the design and development of aircraft and spacecraft, including propulsion systems, aerodynamics, and space exploration technologies.'),
(58, 'Biological Engineering', 1, 'Biological engineering applies engineering principles to biological systems, advancing the development of biotechnologies, medical devices, and sustainable processes for the healthcare and agriculture industries.'),
(59, 'Nuclear Science and Engineering', 1, 'Nuclear science and engineering deals with the study and application of nuclear processes, focusing on energy production, medical treatments, and nuclear waste management.'),
(60, 'Aerospace Computational Engineering', 1, 'Aerospace computational engineering applies computational techniques and simulations to solve complex problems in aerodynamics, propulsion, and space systems design.'),
(61, 'Bioastronautics', 1, 'Bioastronautics explores the intersection of biology and space exploration, focusing on the effects of space environments on human health and developing systems to ensure astronaut well-being during long-term missions.'),
(62, 'Robotics and Autonomous Systems', 1, 'This field combines robotics and AI to create intelligent autonomous systems capable of performing tasks without human intervention, revolutionizing industries like manufacturing, healthcare, and exploration.'),
(63, 'Energy Resources Engineering', 1, 'Energy resources engineering focuses on the extraction, conversion, and sustainable use of natural energy resources, such as oil, gas, and renewable energy, to meet global energy demands.'),
(64, 'Sustainable Design and Construction', 1, 'Sustainable design and construction integrates eco-friendly principles into the built environment, ensuring that buildings and infrastructure are energy-efficient, resource-conserving, and environmentally responsible.'),
(65, 'Structural Engineering and Geomechanics', 1, 'Structural engineering and geomechanics focuses on the design and analysis of buildings and infrastructure, with an emphasis on soil-structure interaction and the safety of structures under various conditions.'),
(66, 'PhD in Interdisciplinary', 1, 'A PhD in Interdisciplinary Studies allows students to explore multiple fields of knowledge, blending various disciplines to address complex problems and innovate across sectors like technology, healthcare, and the environment.'),
(67, 'Materials Science', 1, 'Materials science focuses on understanding the properties, structure, and behavior of materials to develop new substances and improve existing ones for use in various industries, including electronics, energy, and manufacturing.'),
(68, 'Robotics and Artificial Intelligence', 1, 'This field merges robotics and AI to create smart machines capable of learning, adapting, and performing complex tasks autonomously, driving advancements in automation, healthcare, and autonomous vehicles.'),
(69, 'Accounting', 2, 'Accounting involves recording, analyzing, and interpreting financial information to ensure transparency, accuracy, and compliance in business operations, with a focus on budgeting, taxation, and financial reporting.'),
(70, 'Economics', 2, 'Economics studies the production, distribution, and consumption of goods and services, examining how societies allocate resources, optimize efficiency, and balance supply and demand in markets.'),
(71, 'Finance', 2, 'Finance focuses on managing money, investments, and financial institutions, providing insights into asset management, risk assessment, corporate finance, and investment strategies to maximize financial performance.'),
(72, 'Management', 2, 'Management is the process of planning, organizing, leading, and controlling resources to achieve organizational goals, emphasizing leadership, decision-making, and efficient operations in diverse industries.'),
(73, 'Marketing', 2, 'Marketing involves understanding consumer behavior and creating strategies to promote products and services, leveraging advertising, branding, and market research to increase sales and build customer loyalty.'),
(74, 'Human Resource Management', 2, 'Human resource management focuses on the recruitment, training, development, and well-being of employees, ensuring that organizations have a skilled and motivated workforce to meet business objectives.'),
(75, 'PhD in Business and Economics', 2, 'A PhD in Business and Economics offers advanced research opportunities in economic theory, business strategy, and financial systems, preparing students for careers in academia, policy analysis, or corporate leadership.'),
(76, 'International Business', 2, 'International business examines the global marketplace, focusing on trade, finance, marketing, and management strategies that companies use to operate effectively across borders and cultures.'),
(77, 'Master of Business Administration', 2, 'An MBA is a professional degree designed to develop leadership, management, and decision-making skills, preparing graduates for top-tier roles in business, entrepreneurship, and consultancy.'),
(78, 'Master of Professional Accounting', 2, 'The Master of Professional Accounting program provides advanced knowledge in accounting principles, auditing, taxation, and financial analysis, preparing students for careers in accounting and finance.'),
(79, 'Bachelor of Business Administration', 2, 'A BBA offers foundational knowledge in business operations, marketing, finance, and management, equipping graduates with the skills to pursue managerial positions in diverse industries.'),
(80, 'Business Analytics', 2, 'Business analytics uses data analysis and statistical techniques to drive business decision-making, focusing on extracting valuable insights from data to improve performance and gain a competitive edge.'),
(81, 'Master of Applied Finance', 2, 'The Master of Applied Finance program provides practical and theoretical knowledge in financial markets, investment strategies, and risk management, preparing students for advanced roles in financial services and corporate finance.'),
(82, 'Bachelor of Business Management', 2, 'A Bachelor of Business Management offers students a comprehensive understanding of business operations, organizational behavior, and strategic planning, empowering them to lead and manage businesses effectively.'),
(83, 'Bachelor of Advanced Business', 2, 'This program is designed for students seeking in-depth knowledge in business leadership and strategy, focusing on advanced business concepts and practical skills required to thrive in a competitive corporate environment.'),
(84, 'PhD in Business and Management Research', 2, 'A PhD in Business and Management Research focuses on advanced research in management theory, organizational behavior, and business strategy, providing scholars with the expertise to shape the future of business practices.'),
(85, 'Economics and Management', 2, 'Economics and Management combines the study of economic theory with practical business management, focusing on decision-making, resource allocation, and the global economy has impact on business strategies.'),
(86, 'MSc in Financial Economics', 2, 'The MSc in Financial Economics bridges the gap between finance and economics, equipping students with the skills to analyze financial markets, corporate finance, and economic policies that influence business decisions.'),
(87, 'MSc in Law and Finance', 2, 'This interdisciplinary program blends legal and financial knowledge, preparing students for careers in corporate law, financial regulation, and legal advisory roles in financial institutions and corporations.'),
(88, 'Marketing Strategy', 2, 'Marketing Strategy focuses on creating and implementing effective marketing plans to drive brand growth, customer engagement, and sales performance by analyzing market trends and consumer behavior.'),
(89, 'Financial Systems', 2, 'Financial Systems study the structures, processes, and technologies used to manage financial transactions, including banking, financial markets, and payment systems, with a focus on their impact on global economies.'),
(90, 'Operations Research', 2, 'Operations Research uses mathematical modeling, statistical analysis, and optimization techniques to solve complex business problems, improving decision-making in areas like logistics, supply chain management, and production.'),
(91, 'MSc in Finance', 2, 'The MSc in Finance provides advanced knowledge of financial markets, investment strategies, and financial analysis, preparing students for careers in corporate finance, asset management, and financial consulting.'),
(92, 'MSc in Strategic Marketing', 2, 'This program emphasizes strategic planning in marketing, equipping students with the tools to analyze market dynamics, develop branding strategies, and manage marketing campaigns for long-term business success.'),
(93, 'MSc in Business Analytics', 2, 'Business Analytics focuses on applying data analysis and statistical models to solve business problems, enabling students to make data-driven decisions that optimize business operations and improve efficiency.'),
(94, 'MSc in Entrepreneurship and Innovation', 2, 'This program nurtures entrepreneurial skills and innovative thinking, preparing students to launch their own ventures or drive innovation within established companies through creative business solutions.'),
(95, 'Business and Management', 2, 'Business and Management covers a broad range of topics related to managing organizations, including leadership, strategic planning, and financial management, aimed at developing the next generation of business leaders.'),
(96, 'BSc in Management Science', 2, 'A BSc in Management Science combines business administration principles with quantitative analysis, helping students solve complex organizational problems using data-driven methods and decision-making tools.'),
(97, 'MSc in Strategic Finance', 2, 'The MSc in Strategic Finance focuses on the integration of finance theory with strategic business management, providing students with the skills to make informed financial decisions that support organizational goals.'),
(98, 'MSc in Marketing Science', 2, 'This program blends marketing theory and analytics, equipping students with the knowledge to design and execute marketing strategies based on data, customer behavior, and emerging trends in the marketplace.'),
(99, 'PhD in Management and Leadership', 2, 'A PhD in Management and Leadership provides advanced research opportunities in organizational behavior, leadership theory, and management practices, preparing students for careers in academia, consultancy, and executive roles.'),
(100, 'BSc in Business Education', 2, 'A BSc in Business Education focuses on teaching business-related subjects, preparing students for careers as business educators and trainers in schools, universities, and corporate training environments.'),
(101, 'MSc in Business Education', 2, 'This program is designed for those seeking to teach business concepts at the secondary or higher education level, equipping students with both teaching methodologies and business acumen.'),
(102, 'Doctorate in Business Research', 2, 'The Doctorate in Business Research offers advanced research opportunities in business strategy, management practices, and organizational behavior, preparing students for leadership roles in academia, consultancy, and industry.'),
(103, 'Economics and Social Science', 2, 'Economics and Social Science explores the interplay between economic theory and social issues, focusing on how economic policies impact social structures, inequality, and quality of life.'),
(104, 'Management and Economics', 2, 'Management and Economics integrates the study of economic principles with business management practices, equipping students with the skills to make informed, strategic decisions in a competitive marketplace.'),
(105, 'Management and Technology', 2, 'Management and Technology focuses on the intersection of business management and technological innovation, preparing students to lead digital transformation and manage technology-driven business strategies.'),
(106, 'Sustainable Resource Management', 2, 'Sustainable Resource Management teaches how to optimize the use of natural resources while minimizing environmental impact, preparing students for careers in environmental management, sustainability consulting, and policy-making.'),
(107, 'Doctorate in Management', 2, 'A Doctorate in Management emphasizes advanced research in business administration, leadership, and organizational theory, preparing graduates for senior academic, research, and consultancy positions.'),
(108, 'Economics and Business', 2, 'Economics and Business focuses on understanding economic principles and applying them to business settings, equipping students with the skills to navigate global markets and make strategic business decisions.'),
(109, 'Global Master in Business Administration', 2, 'This globally-focused MBA program provides students with international business knowledge and leadership skills, preparing them to manage global teams and navigate diverse markets in now-a-days interconnected world.'),
(110, 'Innovation and Organization of Culture and the Arts', 2, 'This interdisciplinary program combines innovation theory with cultural and arts management, preparing students to lead in industries like arts management, creative entrepreneurship, and cultural policy-making.'),
(111, 'Management and Entrepreneurship', 2, 'Management and Entrepreneurship focuses on developing leadership skills and innovative thinking necessary for launching and managing new businesses, while also enhancing organizational performance in existing companies.'),
(112, 'Economics and Finance', 2, 'Economics and Finance examines the relationship between economic policies, financial systems, and markets, providing students with the tools to analyze and forecast financial trends and their impact on business strategies.'),
(113, 'Management and Administration', 2, 'This program offers insights into effective organizational leadership, administrative practices, and resource management, equipping students with the skills to oversee day-to-day operations and long-term strategic goals.'),
(114, 'Economics for Development', 2, 'Economics for Development explores how economic principles can be applied to improve living standards in developing countries, focusing on poverty reduction, sustainable growth, and international development policies.'),
(115, 'Finance and Insurance', 2, 'Finance and Insurance combines the study of finance with risk management, preparing students for careers in financial services, investment banking, insurance, and risk analysis.'),
(116, 'International Economics and Business', 2, 'International Economics and Business focuses on the global economy, trade policies, and multinational business operations, equipping students with the skills to navigate international markets and manage cross-border business strategies.'),
(117, 'Economics, Markets and Finance', 2, 'This program examines the interactions between economic systems, financial markets, and business strategies, providing students with the analytical skills needed to make data-driven decisions in a complex global environment.'),
(118, 'Management and Finance', 2, 'Management and Finance focuses on the integration of financial management with strategic business leadership, equipping students with the skills to drive growth, manage financial risks, and make profitable business decisions.'),
(119, 'Economics and Statistics', 2, 'Economics and Statistics blends quantitative analysis with economic theory, enabling students to analyze data, identify trends, and forecast economic and business outcomes using statistical techniques.'),
(120, 'PhD in Business Economics', 2, 'A PhD in Business Economics focuses on the intersection of business practices and economic theory, preparing students for careers in academia, research institutions, and high-level consulting.'),
(121, 'PhD in Organizational Behavior', 2, 'This program offers advanced research into human behavior in organizations, focusing on leadership, motivation, and group dynamics to help students contribute to the development of organizational practices and policies.'),
(122, 'Quantitative and Behavioral Economics', 2, 'Combining quantitative analysis with behavioral insights, this program equips students to understand economic decision-making at the individual and group levels, focusing on both mathematical modeling and psychological influences.'),
(123, 'Bachelor of Biomedicine', 3, 'The Bachelor of Biomedicine provides foundational knowledge in biological sciences, preparing students for careers in medical research, healthcare, and biotechnology through courses in genetics, molecular biology, and immunology.'),
(124, 'Doctor of Medicine', 3, 'The Doctor of Medicine is a comprehensive program that trains students to become medical professionals, focusing on diagnosing, treating, and preventing diseases, while also developing clinical skills through practical experience.'),
(125, 'Dentistry', 3, 'This program prepares students to become dentists, focusing on the diagnosis and treatment of dental diseases, restorative dentistry, and preventive care, alongside practical training in clinical and surgical techniques.'),
(126, 'Physiotherapy', 3, 'Physiotherapy equips students with the skills to assess and treat physical injuries, movement disorders, and chronic conditions, using physical techniques such as exercise therapy, manual therapy, and rehabilitation.'),
(127, 'PhD in Medical Research and Clinical Medicine', 3, 'The PhD in Medical Research and Clinical Medicine prepares students for research-focused careers, blending clinical practice with scientific inquiry to drive advancements in medical treatments and patient care.'),
(128, 'Bachelor of Medical Science', 3, 'This undergraduate program lays the foundation for medical science, offering in-depth knowledge in biology, chemistry, anatomy, and physiology, with a focus on preparing students for careers in healthcare, research, or further medical studies.'),
(129, 'Nursing', 3, 'Nursing programs prepare students to care for patients in various healthcare settings, focusing on patient assessment, treatment, and recovery, while also emphasizing compassion, ethics, and healthcare administration.'),
(130, 'Master of Physiotherapy', 3, 'This advanced program provides specialized training in physiotherapy, including evidence-based practices for treating musculoskeletal, neurological, and cardiovascular conditions, enabling students to become expert practitioners in the field.'),
(131, 'Master of Pharmacy', 3, 'The Master of Pharmacy program provides in-depth knowledge of pharmacology, pharmaceutical chemistry, and drug delivery systems, preparing students for careers in healthcare, pharmaceuticals, and clinical settings.'),
(132, 'PhD in Medicine and Health Sciences', 3, 'This doctoral program focuses on advanced research in medical and health sciences, exploring topics like disease prevention, medical technology, and public health to contribute to the future of healthcare.'),
(133, 'Master of Public Health', 3, 'The Master of Public Health program focuses on promoting health at the community and population levels, equipping students with the skills to manage public health crises, develop policies, and improve health outcomes.'),
(134, 'PhD in Molecular and Biomedical Sciences', 3, 'This PhD program prepares students to lead cutting-edge research in molecular biology, biochemistry, and biotechnology, focusing on developing treatments for diseases at the molecular level.'),
(135, 'Medicine', 3, 'The Medicine program provides students with a comprehensive education in medical sciences, clinical skills, and patient care, preparing them for a professional career in healthcare, diagnosis, and treatment.'),
(136, 'Master of Clinical Psychology', 3, 'The Master of Clinical Psychology program prepares students for careers as clinical psychologists, offering training in psychotherapy, assessment, and counseling techniques to treat psychological disorders.'),
(137, 'MSc in Translational Health Sciences', 3, 'This program bridges the gap between laboratory research and clinical practice, preparing students to translate scientific discoveries into real-world healthcare solutions, improving patient outcomes and advancing medical treatments.'),
(138, 'MSc in Global Health Science and Epidemiology', 3, 'Focused on global health challenges, this program equips students with the tools to analyze and address public health issues worldwide, focusing on epidemiology, disease prevention, and health policy.'),
(139, 'MSc in Radiation Biology', 3, 'The MSc in Radiation Biology provides specialized training in the biological effects of radiation, with applications in healthcare, medical imaging, cancer treatment, and radiation safety.'),
(140, 'Oncology', 3, 'The Oncology program focuses on the study and treatment of cancer, preparing students to work in clinical, research, or healthcare settings to diagnose, treat, and manage cancer patients.'),
(141, 'Cardiovascular Medicine', 3, 'This program explores the science and treatment of cardiovascular diseases, focusing on heart health, diagnostic techniques, and innovative treatment options, equipping students for careers in cardiology and related fields.'),
(142, 'Medical Biosciences', 3, 'The Medical Biosciences program combines the study of biology, chemistry, and medical science to explore disease mechanisms, diagnostic techniques, and therapeutic methods, preparing students for careers in biomedical research and healthcare.'),
(143, 'Translational Medicine', 3, 'This field focuses on turning scientific research into tangible medical treatments, emphasizing the translation of laboratory findings into clinical applications that improve patient care and outcomes.'),
(144, 'MBBS', 3, 'The MBBS (Bachelor of Medicine, Bachelor of Surgery) is a foundational program for aspiring medical professionals, providing a comprehensive education in medicine, clinical skills, and patient care, leading to a career in healthcare.'),
(145, 'Biomedical Sciences', 3, 'This program covers the study of living organisms at the molecular, cellular, and physiological levels, preparing students for careers in medical research, biotechnology, and healthcare through hands-on laboratory work.'),
(146, 'MSc in Biomaterials and Tissue Engineering', 3, 'The MSc program focuses on the development and application of biomaterials and tissue engineering techniques to create artificial organs, prosthetics, and therapies to improve human health.'),
(147, 'Medical Physics and Bioengineering', 3, 'This interdisciplinary program combines physics, engineering, and medical sciences, preparing students to design medical devices, develop imaging technologies, and advance healthcare through technological innovation.'),
(148, 'Cancer Research', 3, 'This specialized program provides in-depth knowledge and research opportunities in cancer biology, treatment strategies, and clinical trials, empowering students to contribute to cancer prevention, diagnosis, and therapy.'),
(149, 'State Examination in Medicine', 3, 'The State Examination in Medicine is a final assessment for medical students, evaluating their clinical and theoretical knowledge, ultimately qualifying them to practice medicine in various healthcare settings.'),
(150, 'Veterinary Medicine', 3, 'Veterinary Medicine focuses on the health and care of animals, preparing students to diagnose and treat animal diseases, perform surgeries, and engage in animal research, with an emphasis on public health.'),
(151, 'Preclinical Studies', 3, 'This program covers the early stages of medical research, providing students with a solid understanding of laboratory work, drug testing, and animal studies that lay the groundwork for clinical trials and therapies.'),
(152, 'Immunotherapy and Oncology', 3, 'This program focuses on the integration of immunotherapy with traditional cancer treatment techniques, equipping students with specialized knowledge in cancer immunology and therapeutic strategies.'),
(153, 'Neurosciences', 3, 'Neurosciences involves the study of the brain and nervous system, exploring neural mechanisms, neurological diseases, and therapeutic interventions, preparing students for research or clinical careers in neurobiology or neurology.'),
(154, 'Medical Biotechnology', 3, 'Medical Biotechnology combines biological science with cutting-edge technology, preparing students to work on developing new biotechnological methods for diagnosing and treating diseases at the molecular level.'),
(155, 'Medical Engineering and Assistance systems', 3, 'This interdisciplinary program merges engineering and healthcare, focusing on the development of medical devices and assistive technologies to enhance patient care and improve healthcare outcomes.'),
(156, 'Doctorate in Life Sciences', 3, 'The Doctorate in Life Sciences provides an advanced academic journey into molecular biology, genetics, and bioinformatics, preparing students to lead research and development efforts in the biological sciences.'),
(157, 'Doctorate in Medicine', 3, 'This doctoral program prepares students for a career in medical research and practice, focusing on advanced knowledge in clinical medicine, patient care, and medical innovations that drive improvements in healthcare.'),
(158, 'Masters in Applied Epidemiology', 3, 'This program emphasizes the application of epidemiological methods to study and control disease outbreaks, preparing students for careers in public health research, policy, and disease prevention.'),
(159, 'PhD in Medical Neurosciences', 3, 'The PhD in Medical Neurosciences offers students the opportunity to engage in high-level research on neurological disorders, brain functions, and treatments, contributing to the advancement of neuroscience and medical therapy.'),
(160, 'Advanced Nursing Practice', 3, 'This program provides specialized training for nurses, focusing on advanced clinical skills, leadership, and research, preparing them for roles in healthcare management, education, and specialized patient care.'),
(161, 'Molecular and Cellular Medical Biotechnology', 3, 'This program combines the latest in molecular biology and biotechnology, focusing on the use of cells and biomolecules in the development of medical treatments and technologies to improve patient health.'),
(162, 'Health and Technology', 3, 'This interdisciplinary program focuses on the intersection of healthcare and technology, exploring innovations in medical devices, health informatics, and telemedicine to enhance patient care and healthcare delivery.'),
(163, 'Biomedical and Neuromotor Sciences', 3, 'This field examines the relationship between the brain, nervous system, and movement, exploring neurological disorders, rehabilitation techniques, and advancements in neuroprosthetics and motor control systems.'),
(164, 'Medicine and Surgery', 3, 'This program provides in-depth education in both medical theory and surgical practice, preparing students for careers in general medicine, surgery, and specialized fields of medical practice, with a focus on clinical skills and patient care.'),
(165, 'Clinical Specialization Programs', 3, 'These programs allow students to focus on specific medical disciplines such as cardiology, dermatology, or pediatrics, providing advanced knowledge and clinical expertise in their chosen area of specialization.'),
(166, 'Medical Science and Biotechnology', 3, 'This program blends scientific research with biotechnological innovation to address medical challenges, focusing on the development of therapies, drugs, and diagnostic tools that improve healthcare outcomes.'),
(167, 'Dental Prostheses', 3, 'This program specializes in the design and creation of dental prosthetics, equipping students with the skills to craft and fit artificial teeth and other dental devices to restore function and aesthetics to patients oral health.'),
(168, 'Medical and Surgical Sciences', 3, 'The Medical and Surgical Sciences program provides students with a solid foundation in both medical theory and surgical techniques, focusing on the treatment of illnesses and conditions that require surgical intervention.'),
(169, 'Public Health and Preventive Medicine', 3, 'This program focuses on the prevention of diseases, health promotion, and the management of public health systems and students will learn how to design and implement health policies that improve community well-bein'),
(170, 'Advanced Therapies', 3, 'This cutting-edge program explores advanced therapeutic strategies in medicine, including gene therapy, stem cell treatments, and regenerative medicine, aiming to provide students with the tools to innovate in the field of medical care.'),
(171, 'Bio-logical Engineering', 3, 'Biological Engineering integrates biological principles with engineering practices, focusing on developing technologies and solutions to problems in health, agriculture, and the environment, with applications in bio-manufacturing and medical devices.'),
(172, 'Brain and Cognitive Sciences', 3, 'This program investigates the structure and function of the brain, exploring cognition, perception, memory, and neuroplasticity, preparing students for careers in neuroscience, psychology, and artificial intelligence.'),
(173, 'Health Sciences and Technology', 3, 'Health Sciences and Technology focuses on the application of technology in healthcare, preparing students to innovate and improve health systems, medical devices, and digital health solutions to enhance patient care.'),
(174, 'PhD in Health Sciences and Technology', 3, 'This doctoral program is designed for students pursuing advanced research in health sciences and technology, focusing on developing new healthcare technologies and applying them to address global health challenges.'),
(175, 'MD Program', 3, 'The Doctor of Medicine (MD) program provides students with the knowledge and clinical experience necessary to become licensed physicians, combining medical theory, hands-on training, and patient care skills to prepare graduates for medical practice.'),
(176, 'Biological and Biomedical Sciences', 3, 'This broad program covers a wide range of biological and biomedical topics, including genetics, microbiology, and molecular biology, preparing students for careers in medical research, healthcare, and biotechnology.'),
(177, 'Biophysics', 3, 'Biophysics applies the principles of physics to understand biological systems, providing insights into cellular processes, molecular interactions, and medical applications, with potential careers in research, healthcare, and drug development.'),
(178, 'Systems Biology', 3, 'Systems Biology focuses on the study of complex biological systems through mathematical models and computational tools, offering insights into disease mechanisms and providing a platform for precision medicine and therapeutic innovation.'),
(179, 'Biomedical Informatics', 3, 'This program explores the integration of healthcare data with computational systems, focusing on the development of tools and techniques to manage, analyze, and interpret medical data to improve decision-making in patient care.'),
(180, 'Genetics', 3, 'Genetics examines the role of genes in health and disease, focusing on genetic disorders, gene therapy, and the molecular mechanisms that drive inheritance and students will gain expertise in genetic testing and counseling, with applications in healthcare and research.'),
(181, 'Biomolecular, Cellular, and Gene Therapies', 3, 'This program explores cutting-edge advancements in gene therapy, cellular treatments, and biomolecular techniques, focusing on how these therapies can be used to treat a wide range of diseases, including genetic disorders and cancers.'),
(182, 'Medical Imaging and Diagnostics', 3, 'This field focuses on the use of advanced imaging technologies such as MRI, CT scans, and ultrasound in diagnosing diseases and conditions, preparing students for careers in medical imaging, radiology, and diagnostic technologies.'),
(183, 'Wireless Medical Technologies', 3, 'This program investigates the development and application of wireless technologies in healthcare, including wearable devices, remote monitoring, and telemedicine, with the goal of improving patient care through innovative, non-invasive methods.'),
(184, 'Medical Nanoelectronics and Microsystems', 3, 'This specialized field combines nanotechnology with electronics to create tiny devices that can diagnose, monitor, and treat diseases at the cellular and molecular levels, revolutionizing medical devices and therapies.');

-- --------------------------------------------------------

--
-- Table structure for table `testresponses`
--

CREATE TABLE `testresponses` (
  `ResponseID` int(11) NOT NULL,
  `TestID` int(11) NOT NULL,
  `QuestionID` int(11) DEFAULT NULL,
  `UserResponse` text DEFAULT NULL,
  `IsCorrect` tinyint(1) DEFAULT NULL,
  `SetNumber` int(11) DEFAULT NULL,
  `TestType` enum('Listening','Reading','Writing','Speaking') DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data of table `testresponses` intentionally removed (personal / test data).

-- --------------------------------------------------------

--
-- Table structure for table `testresults`
--

CREATE TABLE `testresults` (
  `TestID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `TestType` varchar(50) NOT NULL,
  `Score` float(3,1) DEFAULT NULL,
  `DateTaken` date DEFAULT NULL,
  `TestDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data of table `testresults` intentionally removed (personal / test data).

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `TestID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `TestType` enum('Reading','Writing','Listening','Speaking') DEFAULT NULL,
  `TestDate` datetime DEFAULT current_timestamp(),
  `BandScore` decimal(3,1) DEFAULT NULL,
  `Feedback` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data of table `tests` intentionally removed (personal / test data).

-- --------------------------------------------------------

--
-- Table structure for table `tuitionfee`
--

CREATE TABLE `tuitionfee` (
  `fee_id` int(11) NOT NULL,
  `university_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `field_id` int(11) DEFAULT NULL,
  `duration` varchar(50) NOT NULL,
  `tuition_fee` decimal(10,2) NOT NULL,
  `semesters_or_trimesters_fee` decimal(10,2) DEFAULT NULL,
  `scholarship_details` text DEFAULT NULL,
  `semesters_or_trimesters` varchar(50) NOT NULL,
  `fee_category` enum('Free','Medium','High') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tuitionfee`
--

INSERT INTO `tuitionfee` (`fee_id`, `university_id`, `program_id`, `field_id`, `duration`, `tuition_fee`, `semesters_or_trimesters_fee`, `scholarship_details`, `semesters_or_trimesters`, `fee_category`) VALUES
(1, 1, 1, 1, 'Four Years', 26150.00, 0.00, 'ANU provides a range of scholarships recognizing academic achievement, athletic performance, and other criteria. Specific scholarships are available for various fields of study, including engineering and business. Prospective students are encouraged to explore the ANU scholarships page for detailed information on eligibility and application procedures.', 'Semester: Eight', 'High'),
(2, 1, 1, 2, 'Four Years', 26150.00, 0.00, 'ANU provides a range of scholarships recognizing academic achievement, athletic performance, and other criteria. Specific scholarships are available for various fields of study, including engineering and business. Prospective students are encouraged to explore the ANU scholarships page for detailed information on eligibility and application procedures.', 'Semester: Eight', 'High'),
(3, 1, 2, 1, 'Two Years', 29250.00, 0.00, 'ANU provides a range of scholarships recognizing academic achievement, athletic performance, and other criteria. Specific scholarships are available for various fields of study, including engineering and business. Prospective students are encouraged to explore the ANU scholarships page for detailed information on eligibility and application procedures.', 'Semester: Four', 'High'),
(4, 1, 2, 2, 'Two Years', 29250.00, 0.00, 'ANU provides a range of scholarships recognizing academic achievement, athletic performance, and other criteria. Specific scholarships are available for various fields of study, including engineering and business. Prospective students are encouraged to explore the ANU scholarships page for detailed information on eligibility and application procedures.', 'Semester: Four', 'High'),
(5, 1, 2, 3, 'Two Years', 29250.00, 0.00, 'ANU provides a range of scholarships recognizing academic achievement, athletic performance, and other criteria. Specific scholarships are available for various fields of study, including engineering and business. Prospective students are encouraged to explore the ANU scholarships page for detailed information on eligibility and application procedures.', 'Semester: Four', 'High'),
(6, 1, 3, 1, 'One and half Years', 29250.00, 0.00, 'ANU provides a range of scholarships recognizing academic achievement, athletic performance, and other criteria. Specific scholarships are available for various fields of study, including engineering and business. Prospective students are encouraged to explore the ANU scholarships page for detailed information on eligibility and application procedures.', 'Semester: Not Required', 'High'),
(7, 1, 3, 2, 'One and half Years', 29250.00, 0.00, 'ANU provides a range of scholarships recognizing academic achievement, athletic performance, and other criteria. Specific scholarships are available for various fields of study, including engineering and business. Prospective students are encouraged to explore the ANU scholarships page for detailed information on eligibility and application procedures.', 'Semester: Not Required', 'High'),
(8, 1, 3, 3, 'One and half Years', 29250.00, 0.00, 'ANU provides a range of scholarships recognizing academic achievement, athletic performance, and other criteria. Specific scholarships are available for various fields of study, including engineering and business. Prospective students are encouraged to explore the ANU scholarships page for detailed information on eligibility and application procedures.', 'Semester: Not Required', 'High'),
(9, 2, 1, 1, 'Four Years', 149000.00, 0.00, 'High-achieving international students pursuing undergraduate studies in various fields may be eligible for scholarships that cover tuition fees and provide other financial support. Detailed information is available on the University of Melbourne scholarships page.', 'Semester: Eight', 'High'),
(10, 2, 1, 2, 'Four Years', 149000.00, 0.00, 'High-achieving international students pursuing undergraduate studies in various fields may be eligible for scholarships that cover tuition fees and provide other financial support. Detailed information is available on the University of Melbourne scholarships page.', 'Semester: Eight', 'High'),
(11, 2, 1, 3, 'Four Years', 149000.00, 0.00, 'High-achieving international students pursuing undergraduate studies in various fields may be eligible for scholarships that cover tuition fees and provide other financial support. Detailed information is available on the University of Melbourne scholarships page.', 'Semester: Eight', 'High'),
(12, 2, 2, 1, 'Two Years', 56500.00, 0.00, 'The University offers the Melbourne Research Scholarship and Research Training Program (RTP) Scholarship to high-achieving students enrolling in graduate research degrees across all fields, including engineering, business, and medical sciences. These scholarships provide benefits such as living allowances and fee remissions.', 'Semester: Four', 'High'),
(13, 2, 2, 2, 'Two Years', 110000.00, 0.00, 'The University offers the Melbourne Research Scholarship and Research Training Program (RTP) Scholarship to high-achieving students enrolling in graduate research degrees across all fields, including engineering, business, and medical sciences. These scholarships provide benefits such as living allowances and fee remissions.', 'Semester: Four', 'High'),
(14, 2, 2, 3, 'Two Years', 52600.00, 0.00, 'The University offers the Melbourne Research Scholarship and Research Training Program (RTP) Scholarship to high-achieving students enrolling in graduate research degrees across all fields, including engineering, business, and medical sciences. These scholarships provide benefits such as living allowances and fee remissions.', 'Semester: Four', 'High'),
(15, 2, 3, 1, 'One and Half Years', 40350.00, 0.00, 'The University offers the Melbourne Research Scholarship and Research Training Program (RTP) Scholarship to high-achieving students enrolling in graduate research degrees across all fields, including engineering, business, and medical sciences. These scholarships provide benefits such as living allowances and fee remissions.', 'Semester: Not Required', 'High'),
(16, 2, 3, 2, 'One and Half Years', 40350.00, 0.00, 'The University offers the Melbourne Research Scholarship and Research Training Program (RTP) Scholarship to high-achieving students enrolling in graduate research degrees across all fields, including engineering, business, and medical sciences. These scholarships provide benefits such as living allowances and fee remissions.', 'Semester: Not Required', 'High'),
(17, 2, 3, 3, 'One and Half Years', 40350.00, 0.00, 'The University offers the Melbourne Research Scholarship and Research Training Program (RTP) Scholarship to high-achieving students enrolling in graduate research degrees across all fields, including engineering, business, and medical sciences. These scholarships provide benefits such as living allowances and fee remissions.', 'Semester: Not Required', 'High'),
(18, 3, 1, 1, 'Four Years', 143600.00, 0.00, 'These fully funded scholarships are available for Bachelor, Master, and PhD programs across various fields, including engineering, business, and medical studies. They cover tuition fees and may include stipends for living expenses. Applicants are advised to check the university has official website for specific eligibility criteria and application deadlines.', 'Semester: Eight', 'High'),
(19, 3, 1, 2, 'Four Years', 133400.00, 0.00, 'These fully funded scholarships are available for Bachelor, Master, and PhD programs across various fields, including engineering, business, and medical studies. They cover tuition fees and may include stipends for living expenses. Applicants are advised to check the university has official website for specific eligibility criteria and application deadlines.', 'Semester: Eight', 'High'),
(20, 3, 1, 3, 'Four Years', 143600.00, 0.00, 'These fully funded scholarships are available for Bachelor, Master, and PhD programs across various fields, including engineering, business, and medical studies. They cover tuition fees and may include stipends for living expenses. Applicants are advised to check the university has official website for specific eligibility criteria and application deadlines.', 'Semester: Eight', 'High'),
(21, 3, 2, 1, 'Two Years', 68500.00, 0.00, 'These fully funded scholarships are available for Bachelor, Master, and PhD programs across various fields, including engineering, business, and medical studies. They cover tuition fees and may include stipends for living expenses. Applicants are advised to check the university has official website for specific eligibility criteria and application deadlines.', 'Semester: Four', 'High'),
(22, 3, 2, 2, 'Two Years', 80900.00, 0.00, 'These fully funded scholarships are available for Bachelor, Master, and PhD programs across various fields, including engineering, business, and medical studies. They cover tuition fees and may include stipends for living expenses. Applicants are advised to check the university has official website for specific eligibility criteria and application deadlines.', 'Semester: Four', 'High'),
(23, 3, 2, 3, 'Two Years', 67200.00, 0.00, 'These fully funded scholarships are available for Bachelor, Master, and PhD programs across various fields, including engineering, business, and medical studies. They cover tuition fees and may include stipends for living expenses. Applicants are advised to check the university has official website for specific eligibility criteria and application deadlines.', 'Semester: Four', 'High'),
(24, 3, 3, 1, 'One and Half Years', 43875.00, 0.00, 'These fully funded scholarships are available for Bachelor, Master, and PhD programs across various fields, including engineering, business, and medical studies. They cover tuition fees and may include stipends for living expenses. Applicants are advised to check the university has official website for specific eligibility criteria and application deadlines.', 'Semester: Not Required', 'High'),
(25, 3, 3, 2, 'One and Half Years', 43875.00, 0.00, 'These fully funded scholarships are available for Bachelor, Master, and PhD programs across various fields, including engineering, business, and medical studies. They cover tuition fees and may include stipends for living expenses. Applicants are advised to check the university has official website for specific eligibility criteria and application deadlines.', 'Semester: Not Required', 'High'),
(26, 3, 3, 3, 'One and Half Years', 43875.00, 0.00, 'These fully funded scholarships are available for Bachelor, Master, and PhD programs across various fields, including engineering, business, and medical studies. They cover tuition fees and may include stipends for living expenses. Applicants are advised to check the university has official website for specific eligibility criteria and application deadlines.', 'Semester: Not Required', 'High'),
(27, 4, 1, 1, 'Four Years', 114600.00, 0.00, 'The University of Queensland offers a variety of scholarships for international students across different programs and fields of study, including engineering, business, and medical sciences. These scholarships aim to support high-achieving students and may cover tuition fees, living expenses, and other costs associated with studying. Prospective students should consult the university has scholarships page for detailed information on available scholarships and application processes.', 'Semester: Eight', 'High'),
(28, 4, 1, 2, 'Four Years', 109600.00, 0.00, 'The University of Queensland offers a variety of scholarships for international students across different programs and fields of study, including engineering, business, and medical sciences. These scholarships aim to support high-achieving students and may cover tuition fees, living expenses, and other costs associated with studying. Prospective students should consult the university has scholarships page for detailed information on available scholarships and application processes.', 'Semester: Eight', 'High'),
(29, 4, 1, 3, 'Four Years', 199200.00, 0.00, 'The University of Queensland offers a variety of scholarships for international students across different programs and fields of study, including engineering, business, and medical sciences. These scholarships aim to support high-achieving students and may cover tuition fees, living expenses, and other costs associated with studying. Prospective students should consult the university has scholarships page for detailed information on available scholarships and application processes.', 'Semester: Eight', 'High'),
(30, 4, 2, 1, 'Two Years', 61000.00, 0.00, 'The University of Queensland offers a variety of scholarships for international students across different programs and fields of study, including engineering, business, and medical sciences. These scholarships aim to support high-achieving students and may cover tuition fees, living expenses, and other costs associated with studying. Prospective students should consult the university has scholarships page for detailed information on available scholarships and application processes.', 'Semester: Four', 'High'),
(31, 4, 2, 2, 'Two Years', 62200.00, 0.00, 'The University of Queensland offers a variety of scholarships for international students across different programs and fields of study, including engineering, business, and medical sciences. These scholarships aim to support high-achieving students and may cover tuition fees, living expenses, and other costs associated with studying. Prospective students should consult the university has scholarships page for detailed information on available scholarships and application processes.', 'Semester: Four', 'High'),
(32, 4, 2, 3, 'Two Years', 44800.00, 0.00, 'The University of Queensland offers a variety of scholarships for international students across different programs and fields of study, including engineering, business, and medical sciences. These scholarships aim to support high-achieving students and may cover tuition fees, living expenses, and other costs associated with studying. Prospective students should consult the university has scholarships page for detailed information on available scholarships and application processes.', 'Semester: Four', 'High'),
(33, 4, 3, 1, 'One and Half Years', 42200.00, 0.00, 'The University of Queensland offers a variety of scholarships for international students across different programs and fields of study, including engineering, business, and medical sciences. These scholarships aim to support high-achieving students and may cover tuition fees, living expenses, and other costs associated with studying. Prospective students should consult the university has scholarships page for detailed information on available scholarships and application processes.', 'Semester: Not Required', 'High'),
(34, 4, 3, 2, 'One and Half Years', 42200.00, 0.00, 'The University of Queensland offers a variety of scholarships for international students across different programs and fields of study, including engineering, business, and medical sciences. These scholarships aim to support high-achieving students and may cover tuition fees, living expenses, and other costs associated with studying. Prospective students should consult the university has scholarships page for detailed information on available scholarships and application processes.', 'Semester: Not Required', 'High'),
(35, 4, 3, 3, 'One and Half Years', 42200.00, 0.00, 'The University of Queensland offers a variety of scholarships for international students across different programs and fields of study, including engineering, business, and medical sciences. These scholarships aim to support high-achieving students and may cover tuition fees, living expenses, and other costs associated with studying. Prospective students should consult the university has scholarships page for detailed information on available scholarships and application processes.', 'Semester: Not Required', 'High'),
(36, 5, 1, 1, 'Four Years', 215200.00, 0.00, 'Imperial provides scholarships based on academic excellence and financial need. Students can search for specific opportunities using the scholarships search tool. Additionally, the President has PhD Scholarships offer full funding for outstanding PhD candidates across various disciplines.', 'Semester: Eight', 'High'),
(37, 5, 1, 2, 'Four Years', 215200.00, 0.00, 'Imperial provides scholarships based on academic excellence and financial need. Students can search for specific opportunities using the scholarships search tool. Additionally, the President has PhD Scholarships offer full funding for outstanding PhD candidates across various disciplines.', 'Semester: Eight', 'High'),
(38, 5, 1, 3, 'Four Years', 215200.00, 0.00, 'Imperial provides scholarships based on academic excellence and financial need. Students can search for specific opportunities using the scholarships search tool. Additionally, the President has PhD Scholarships offer full funding for outstanding PhD candidates across various disciplines.', 'Semester: Eight', 'High'),
(39, 5, 2, 1, 'Two Years', 110000.00, 0.00, 'Imperial provides scholarships based on academic excellence and financial need. Students can search for specific opportunities using the scholarships search tool. Additionally, the President has PhD Scholarships offer full funding for outstanding PhD candidates across various disciplines.', 'Semester: Four', 'High'),
(40, 5, 2, 2, 'Two Years', 110000.00, 0.00, 'Imperial provides scholarships based on academic excellence and financial need. Students can search for specific opportunities using the scholarships search tool. Additionally, the President has PhD Scholarships offer full funding for outstanding PhD candidates across various disciplines.', 'Semester: Four', 'High'),
(41, 5, 2, 3, 'Two Years', 110000.00, 0.00, 'Imperial provides scholarships based on academic excellence and financial need. Students can search for specific opportunities using the scholarships search tool. Additionally, the President has PhD Scholarships offer full funding for outstanding PhD candidates across various disciplines.', 'Semester: Four', 'High'),
(42, 5, 3, 1, 'One and Half Years', 82500.00, 0.00, 'Imperial provides scholarships based on academic excellence and financial need. Students can search for specific opportunities using the scholarships search tool. Additionally, the President has PhD Scholarships offer full funding for outstanding PhD candidates across various disciplines.', 'Semester: Not Required', 'High'),
(43, 5, 3, 2, 'One and Half Years', 82500.00, 0.00, 'Imperial provides scholarships based on academic excellence and financial need. Students can search for specific opportunities using the scholarships search tool. Additionally, the President has PhD Scholarships offer full funding for outstanding PhD candidates across various disciplines.', 'Semester: Not Required', 'High'),
(44, 5, 3, 3, 'One and Half Years', 82500.00, 0.00, 'Imperial provides scholarships based on academic excellence and financial need. Students can search for specific opportunities using the scholarships search tool. Additionally, the President has PhD Scholarships offer full funding for outstanding PhD candidates across various disciplines.', 'Semester: Not Required', 'High'),
(45, 6, 1, 1, 'Four Years', 284000.00, 0.00, 'The Cambridge Trust offers numerous scholarships for international students at both undergraduate and graduate levels. These scholarships cover a wide range of fields, including Engineering, Business, and Medical Sciences. Prospective students can explore available scholarships through the Cambridge Trust website. Notably, Cambridge has recently invested £50 million to attract top PhD talent, aiming to fully fund around 30 PhDs annually for ten years.', 'Semester: Eight', 'High'),
(46, 6, 1, 2, 'Four Years', 284000.00, 0.00, 'The Cambridge Trust offers numerous scholarships for international students at both undergraduate and graduate levels. These scholarships cover a wide range of fields, including Engineering, Business, and Medical Sciences. Prospective students can explore available scholarships through the Cambridge Trust website. Notably, Cambridge has recently invested £50 million to attract top PhD talent, aiming to fully fund around 30 PhDs annually for ten years.', 'Semester: Eight', 'High'),
(47, 6, 2, 1, 'Two Years', 146700.00, 0.00, 'The Cambridge Trust offers numerous scholarships for international students at both undergraduate and graduate levels. These scholarships cover a wide range of fields, including Engineering, Business, and Medical Sciences. Prospective students can explore available scholarships through the Cambridge Trust website. Notably, Cambridge has recently invested £50 million to attract top PhD talent, aiming to fully fund around 30 PhDs annually for ten years.', 'Semester: Four', 'High'),
(48, 6, 2, 2, 'Two Years', 146700.00, 0.00, 'The Cambridge Trust offers numerous scholarships for international students at both undergraduate and graduate levels. These scholarships cover a wide range of fields, including Engineering, Business, and Medical Sciences. Prospective students can explore available scholarships through the Cambridge Trust website. Notably, Cambridge has recently invested £50 million to attract top PhD talent, aiming to fully fund around 30 PhDs annually for ten years.', 'Semester: Four', 'High'),
(49, 6, 3, 1, 'One and Half Years', 110025.00, 0.00, 'The Cambridge Trust offers numerous scholarships for international students at both undergraduate and graduate levels. These scholarships cover a wide range of fields, including Engineering, Business, and Medical Sciences. Prospective students can explore available scholarships through the Cambridge Trust website. Notably, Cambridge has recently invested £50 million to attract top PhD talent, aiming to fully fund around 30 PhDs annually for ten years.', 'Semester: Not Required', 'High'),
(50, 6, 3, 2, 'One and Half Years', 110025.00, 0.00, 'The Cambridge Trust offers numerous scholarships for international students at both undergraduate and graduate levels. These scholarships cover a wide range of fields, including Engineering, Business, and Medical Sciences. Prospective students can explore available scholarships through the Cambridge Trust website. Notably, Cambridge has recently invested £50 million to attract top PhD talent, aiming to fully fund around 30 PhDs annually for ten years.', 'Semester: Not Required', 'High'),
(51, 7, 1, 1, 'Four Years', 215200.00, 0.00, 'UCL offers a variety of scholarships for international students across different programs and fields of study. While specific scholarships for Engineering, Business, and Medical Sciences are available, students are encouraged to consult UCL has official website for detailed information on eligibility and application procedures.', 'Semester: Eight', 'High'),
(52, 7, 1, 2, 'Four Years', 215200.00, 0.00, 'UCL offers a variety of scholarships for international students across different programs and fields of study. While specific scholarships for Engineering, Business, and Medical Sciences are available, students are encouraged to consult UCL has official website for detailed information on eligibility and application procedures.', 'Semester: Eight', 'High'),
(53, 7, 1, 3, 'Four Years', 215200.00, 0.00, 'UCL offers a variety of scholarships for international students across different programs and fields of study. While specific scholarships for Engineering, Business, and Medical Sciences are available, students are encouraged to consult UCL has official website for detailed information on eligibility and application procedures.', 'Semester: Eight', 'High'),
(54, 7, 2, 1, 'Two Years', 110000.00, 0.00, 'UCL offers a variety of scholarships for international students across different programs and fields of study. While specific scholarships for Engineering, Business, and Medical Sciences are available, students are encouraged to consult UCL has official website for detailed information on eligibility and application procedures.', 'Semester: Four', 'High'),
(55, 7, 2, 2, 'Two Years', 110000.00, 0.00, 'UCL offers a variety of scholarships for international students across different programs and fields of study. While specific scholarships for Engineering, Business, and Medical Sciences are available, students are encouraged to consult UCL has official website for detailed information on eligibility and application procedures.', 'Semester: Four', 'High'),
(56, 7, 2, 3, 'Two Years', 110000.00, 0.00, 'UCL offers a variety of scholarships for international students across different programs and fields of study. While specific scholarships for Engineering, Business, and Medical Sciences are available, students are encouraged to consult UCL has official website for detailed information on eligibility and application procedures.', 'Semester: Four', 'High'),
(57, 7, 3, 1, 'One and Half Years', 82500.00, 0.00, 'UCL offers a variety of scholarships for international students across different programs and fields of study. While specific scholarships for Engineering, Business, and Medical Sciences are available, students are encouraged to consult UCL has official website for detailed information on eligibility and application procedures.', 'Semester: Not Required', 'High'),
(58, 7, 3, 2, 'One and Half Years', 82500.00, 0.00, 'UCL offers a variety of scholarships for international students across different programs and fields of study. While specific scholarships for Engineering, Business, and Medical Sciences are available, students are encouraged to consult UCL has official website for detailed information on eligibility and application procedures.', 'Semester: Not Required', 'High'),
(59, 7, 3, 3, 'One and Half Years', 82500.00, 0.00, 'UCL offers a variety of scholarships for international students across different programs and fields of study. While specific scholarships for Engineering, Business, and Medical Sciences are available, students are encouraged to consult UCL has official website for detailed information on eligibility and application procedures.', 'Semester: Not Required', 'High'),
(60, 8, 1, 1, 'Four Years', 216400.00, 0.00, 'Oxford provides several scholarships, such as the Clarendon Fund, which offers over 140 full scholarships every year to academically excellent graduate students from all around the world. Additionally, the Oxford Opportunity Bursaries support undergraduate students based on financial need. A comprehensive list of scholarships can be found on Oxford has A-Z of scholarships page.', 'Semester: Eight', 'High'),
(61, 8, 1, 2, 'Four Years', 216400.00, 0.00, 'Oxford provides several scholarships, such as the Clarendon Fund, which offers over 140 full scholarships every year to academically excellent graduate students from all around the world. Additionally, the Oxford Opportunity Bursaries support undergraduate students based on financial need. A comprehensive list of scholarships can be found on Oxford has A-Z of scholarships page.', 'Semester: Eight', 'High'),
(62, 8, 1, 3, 'Four Years', 216400.00, 0.00, 'Oxford provides several scholarships, such as the Clarendon Fund, which offers over 140 full scholarships every year to academically excellent graduate students from all around the world. Additionally, the Oxford Opportunity Bursaries support undergraduate students based on financial need. A comprehensive list of scholarships can be found on Oxford has A-Z of scholarships page.', 'Semester: Eight', 'High'),
(63, 8, 2, 1, 'Two Years', 122300.00, 0.00, 'Oxford provides several scholarships, such as the Clarendon Fund, which offers over 140 full scholarships every year to academically excellent graduate students from all around the world. Additionally, the Oxford Opportunity Bursaries support undergraduate students based on financial need. A comprehensive list of scholarships can be found on Oxford has A-Z of scholarships page.', 'Semester: Four', 'High'),
(64, 8, 2, 2, 'Two Years', 122300.00, 0.00, 'Oxford provides several scholarships, such as the Clarendon Fund, which offers over 140 full scholarships every year to academically excellent graduate students from all around the world. Additionally, the Oxford Opportunity Bursaries support undergraduate students based on financial need. A comprehensive list of scholarships can be found on Oxford has A-Z of scholarships page.', 'Semester: Four', 'High'),
(65, 8, 2, 3, 'Two Years', 122300.00, 0.00, 'Oxford provides several scholarships, such as the Clarendon Fund, which offers over 140 full scholarships every year to academically excellent graduate students from all around the world. Additionally, the Oxford Opportunity Bursaries support undergraduate students based on financial need. A comprehensive list of scholarships can be found on Oxford has A-Z of scholarships page.', 'Semester: Four', 'High'),
(66, 8, 3, 1, 'One and Half Years', 91725.00, 0.00, 'Oxford provides several scholarships, such as the Clarendon Fund, which offers over 140 full scholarships every year to academically excellent graduate students from all around the world. Additionally, the Oxford Opportunity Bursaries support undergraduate students based on financial need. A comprehensive list of scholarships can be found on Oxford has A-Z of scholarships page.', 'Semester: Not Required', 'High'),
(67, 8, 3, 2, 'One and Half Years', 91725.00, 0.00, 'Oxford provides several scholarships, such as the Clarendon Fund, which offers over 140 full scholarships every year to academically excellent graduate students from all around the world. Additionally, the Oxford Opportunity Bursaries support undergraduate students based on financial need. A comprehensive list of scholarships can be found on Oxford has A-Z of scholarships page.', 'Semester: Not Required', 'High'),
(68, 8, 3, 3, 'One and Half Years', 91725.00, 0.00, 'Oxford provides several scholarships, such as the Clarendon Fund, which offers over 140 full scholarships every year to academically excellent graduate students from all around the world. Additionally, the Oxford Opportunity Bursaries support undergraduate students based on financial need. A comprehensive list of scholarships can be found on Oxford has A-Z of scholarships page.', 'Semester: Not Required', 'High'),
(69, 9, 1, 3, 'Four Years', 0.00, 2600.00, 'As a leading medical university, Charité offers various funding opportunities for students pursuing medical degrees. While specific scholarships may be limited, students can explore external funding options through organizations like the German Academic Exchange Service (DAAD), which provides scholarships for international students in medical fields.', 'Semester: Eight', 'Free'),
(70, 9, 2, 3, 'Two Years', 0.00, 1300.00, 'As a leading medical university, Charité offers various funding opportunities for students pursuing medical degrees. While specific scholarships may be limited, students can explore external funding options through organizations like the German Academic Exchange Service (DAAD), which provides scholarships for international students in medical fields.', 'Semester: Four', 'Free'),
(71, 9, 3, 3, 'One and Half Years', 0.00, 975.00, 'As a leading medical university, Charité offers various funding opportunities for students pursuing medical degrees. While specific scholarships may be limited, students can explore external funding options through organizations like the German Academic Exchange Service (DAAD), which provides scholarships for international students in medical fields.', 'Semester: Not Required', 'Free'),
(72, 10, 1, 2, 'Four Years', 12400.00, 1336.00, 'Heidelberg University offers a range of scholarships for international students, including those in Engineering, Business, and Medical Sciences. The university collaborates with various organizations to provide financial support based on academic excellence and need. Prospective students are encouraged to consult the university has official website for detailed information on available scholarships and application procedures.', 'Semester: Eight', 'Medium'),
(73, 10, 1, 3, 'Four Years', 12400.00, 1336.00, 'Heidelberg University offers a range of scholarships for international students, including those in Engineering, Business, and Medical Sciences. The university collaborates with various organizations to provide financial support based on academic excellence and need. Prospective students are encouraged to consult the university has official website for detailed information on available scholarships and application procedures.', 'Semester: Eight', 'Medium'),
(74, 10, 2, 1, 'Two Years', 6180.00, 680.00, 'Heidelberg University offers a range of scholarships for international students, including those in Engineering, Business, and Medical Sciences. The university collaborates with various organizations to provide financial support based on academic excellence and need. Prospective students are encouraged to consult the university has official website for detailed information on available scholarships and application procedures.', 'Semester: Four', 'Medium'),
(75, 10, 2, 2, 'Two Years', 6180.00, 680.00, 'Heidelberg University offers a range of scholarships for international students, including those in Engineering, Business, and Medical Sciences. The university collaborates with various organizations to provide financial support based on academic excellence and need. Prospective students are encouraged to consult the university has official website for detailed information on available scholarships and application procedures.', 'Semester: Four', 'Medium'),
(76, 10, 2, 3, 'Two Years', 6180.00, 680.00, 'Heidelberg University offers a range of scholarships for international students, including those in Engineering, Business, and Medical Sciences. The university collaborates with various organizations to provide financial support based on academic excellence and need. Prospective students are encouraged to consult the university has official website for detailed information on available scholarships and application procedures.', 'Semester: Four', 'Medium'),
(77, 10, 3, 1, 'One and Half Years', 4635.00, 510.00, 'Heidelberg University offers a range of scholarships for international students, including those in Engineering, Business, and Medical Sciences. The university collaborates with various organizations to provide financial support based on academic excellence and need. Prospective students are encouraged to consult the university has official website for detailed information on available scholarships and application procedures.', 'Semester: Not Required', 'Medium'),
(78, 10, 3, 2, 'One and Half Years', 4635.00, 510.00, 'Heidelberg University offers a range of scholarships for international students, including those in Engineering, Business, and Medical Sciences. The university collaborates with various organizations to provide financial support based on academic excellence and need. Prospective students are encouraged to consult the university has official website for detailed information on available scholarships and application procedures.', 'Semester: Not Required', 'Medium'),
(79, 10, 3, 3, 'One and Half Years', 4635.00, 510.00, 'Heidelberg University offers a range of scholarships for international students, including those in Engineering, Business, and Medical Sciences. The university collaborates with various organizations to provide financial support based on academic excellence and need. Prospective students are encouraged to consult the university has official website for detailed information on available scholarships and application procedures.', 'Semester: Not Required', 'Medium'),
(80, 11, 1, 2, 'Four Years', 0.00, 1200.00, 'LMU offers several scholarships and funding opportunities for international students across various fields of study. These scholarships are designed to support students based on merit and financial need. Detailed information can be found on LMUs scholarships page.', 'Semester: Eight', 'Free'),
(81, 11, 1, 3, 'Four Years', 0.00, 1200.00, 'LMU offers several scholarships and funding opportunities for international students across various fields of study. These scholarships are designed to support students based on merit and financial need. Detailed information can be found on LMUs scholarships page.', 'Semester: Eight', 'Free'),
(82, 11, 2, 1, 'Two Years', 0.00, 600.00, 'LMU offers several scholarships and funding opportunities for international students across various fields of study. These scholarships are designed to support students based on merit and financial need. Detailed information can be found on LMUs scholarships page.', 'Semester: Four', 'Free'),
(83, 11, 2, 2, 'Two Years', 0.00, 600.00, 'LMU offers several scholarships and funding opportunities for international students across various fields of study. These scholarships are designed to support students based on merit and financial need. Detailed information can be found on LMUs scholarships page.', 'Semester: Four', 'Free'),
(84, 11, 2, 3, 'Two Years', 0.00, 600.00, 'LMU offers several scholarships and funding opportunities for international students across various fields of study. These scholarships are designed to support students based on merit and financial need. Detailed information can be found on LMUs scholarships page.', 'Semester: Four', 'Free'),
(85, 11, 3, 1, 'Three Years', 0.00, 900.00, 'LMU offers several scholarships and funding opportunities for international students across various fields of study. These scholarships are designed to support students based on merit and financial need. Detailed information can be found on LMUs scholarships page.', 'Semester: Not Required', 'Free'),
(86, 11, 3, 2, 'Three Years', 0.00, 900.00, 'LMU offers several scholarships and funding opportunities for international students across various fields of study. These scholarships are designed to support students based on merit and financial need. Detailed information can be found on LMUs scholarships page.', 'Semester: Not Required', 'Free'),
(87, 11, 3, 3, 'Three Years', 0.00, 900.00, 'LMU offers several scholarships and funding opportunities for international students across various fields of study. These scholarships are designed to support students based on merit and financial need. Detailed information can be found on LMUs scholarships page.', 'Semester: Not Required', 'Free'),
(88, 12, 1, 1, 'Four Years', 0.00, 1216.00, 'TUM provides a variety of scholarships for international students, particularly in Engineering and related fields. The university offers merit-based scholarships and collaborates with external organizations to support students financially. Prospective students should visit TUMs official website for comprehensive information on scholarship opportunities and eligibility criteria.', 'Semester: Eight', 'Free'),
(89, 12, 1, 2, 'Four Years', 0.00, 1216.00, 'TUM provides a variety of scholarships for international students, particularly in Engineering and related fields. The university offers merit-based scholarships and collaborates with external organizations to support students financially. Prospective students should visit TUMs official website for comprehensive information on scholarship opportunities and eligibility criteria.', 'Semester: Eight', 'Free'),
(90, 12, 1, 3, 'Four Years', 0.00, 1216.00, 'TUM provides a variety of scholarships for international students, particularly in Engineering and related fields. The university offers merit-based scholarships and collaborates with external organizations to support students financially. Prospective students should visit TUMs official website for comprehensive information on scholarship opportunities and eligibility criteria.', 'Semester: Eight', 'Free'),
(91, 12, 2, 1, 'Two Years', 0.00, 608.00, 'TUM provides a variety of scholarships for international students, particularly in Engineering and related fields. The university offers merit-based scholarships and collaborates with external organizations to support students financially. Prospective students should visit TUMs official website for comprehensive information on scholarship opportunities and eligibility criteria.', 'Semester: Four', 'Free'),
(92, 12, 2, 2, 'Two Years', 0.00, 608.00, 'TUM provides a variety of scholarships for international students, particularly in Engineering and related fields. The university offers merit-based scholarships and collaborates with external organizations to support students financially. Prospective students should visit TUMs official website for comprehensive information on scholarship opportunities and eligibility criteria.', 'Semester: Four', 'Free'),
(93, 12, 2, 3, 'Two Years', 0.00, 608.00, 'TUM provides a variety of scholarships for international students, particularly in Engineering and related fields. The university offers merit-based scholarships and collaborates with external organizations to support students financially. Prospective students should visit TUMs official website for comprehensive information on scholarship opportunities and eligibility criteria.', 'Semester: Four', 'Free'),
(94, 12, 3, 1, 'One and Half Years', 0.00, 456.00, 'TUM provides a variety of scholarships for international students, particularly in Engineering and related fields. The university offers merit-based scholarships and collaborates with external organizations to support students financially. Prospective students should visit TUMs official website for comprehensive information on scholarship opportunities and eligibility criteria.', 'Semester: Not Required', 'Free'),
(95, 12, 3, 2, 'One and Half Years', 0.00, 456.00, 'TUM provides a variety of scholarships for international students, particularly in Engineering and related fields. The university offers merit-based scholarships and collaborates with external organizations to support students financially. Prospective students should visit TUMs official website for comprehensive information on scholarship opportunities and eligibility criteria.', 'Semester: Not Required', 'Free'),
(96, 12, 3, 3, 'One and Half Years', 0.00, 456.00, 'TUM provides a variety of scholarships for international students, particularly in Engineering and related fields. The university offers merit-based scholarships and collaborates with external organizations to support students financially. Prospective students should visit TUMs official website for comprehensive information on scholarship opportunities and eligibility criteria.', 'Semester: Not Required', 'Free'),
(97, 13, 1, 1, 'Four Years', 18600.00, 0.00, 'Politecnico di Milano offers merit-based scholarships that can significantly reduce tuition fees for international students.', 'Semester: Eight', 'Medium'),
(98, 13, 1, 2, 'Four Years', 18600.00, 0.00, 'Politecnico di Milano offers merit-based scholarships that can significantly reduce tuition fees for international students.', 'Semester: Eight', 'Medium'),
(99, 13, 1, 3, 'Four Years', 18600.00, 0.00, 'Politecnico di Milano offers merit-based scholarships that can significantly reduce tuition fees for international students.', 'Semester: Eight', 'Medium'),
(100, 13, 2, 1, 'Two Years', 9300.00, 0.00, 'Politecnico di Milano offers merit-based scholarships that can significantly reduce tuition fees for international students.', 'Semester: Four', 'Medium'),
(101, 13, 2, 2, 'Two Years', 9300.00, 0.00, 'Politecnico di Milano offers merit-based scholarships that can significantly reduce tuition fees for international students.', 'Semester: Four', 'Medium'),
(102, 13, 2, 3, 'Two Years', 9300.00, 0.00, 'Politecnico di Milano offers merit-based scholarships that can significantly reduce tuition fees for international students.', 'Semester: Four', 'Medium'),
(103, 13, 3, 1, 'One and Half Years', 6180.00, 0.00, 'Politecnico di Milano offers merit-based scholarships that can significantly reduce tuition fees for international students.', 'Semester: Not Required', 'Medium'),
(104, 13, 3, 3, 'One and Half Years', 6180.00, 0.00, 'Politecnico di Milano offers merit-based scholarships that can significantly reduce tuition fees for international students.', 'Semester: Not Required', 'Medium'),
(105, 14, 1, 1, 'Four Years', 10300.00, 0.00, 'Sapienza provides scholarships for international students and Italian students living abroad. These scholarships are managed by the Education Welfare Unit and are designed to support students across various programs and fields of study.', 'Semester: Eight', 'High'),
(106, 14, 1, 2, 'Four Years', 10300.00, 0.00, 'Sapienza provides scholarships for international students and Italian students living abroad. These scholarships are managed by the Education Welfare Unit and are designed to support students across various programs and fields of study.', 'Semester: Eight', 'High'),
(107, 14, 1, 3, 'Four Years', 10300.00, 0.00, 'Sapienza provides scholarships for international students and Italian students living abroad. These scholarships are managed by the Education Welfare Unit and are designed to support students across various programs and fields of study.', 'Semester: Eight', 'Medium'),
(108, 14, 2, 1, 'Two Years', 6180.00, 0.00, 'Sapienza provides scholarships for international students and Italian students living abroad. These scholarships are managed by the Education Welfare Unit and are designed to support students across various programs and fields of study.', 'Semester: Four', 'Medium'),
(109, 14, 2, 2, 'Two Years', 6180.00, 0.00, 'Sapienza provides scholarships for international students and Italian students living abroad. These scholarships are managed by the Education Welfare Unit and are designed to support students across various programs and fields of study.', 'Semester: Four', 'Medium'),
(110, 14, 2, 3, 'Two Years', 6180.00, 0.00, 'Sapienza provides scholarships for international students and Italian students living abroad. These scholarships are managed by the Education Welfare Unit and are designed to support students across various programs and fields of study.', 'Semester: Four', 'Medium'),
(111, 14, 3, 2, 'One and Half Years', 4635.00, 0.00, 'Sapienza provides scholarships for international students and Italian students living abroad. These scholarships are managed by the Education Welfare Unit and are designed to support students across various programs and fields of study.', 'Semester: Not Required', 'Medium'),
(112, 14, 3, 3, 'One and Half Years', 4635.00, 0.00, 'Sapienza provides scholarships for international students and Italian students living abroad. These scholarships are managed by the Education Welfare Unit and are designed to support students across various programs and fields of study.', 'Semester: Not Required', 'Medium'),
(113, 15, 1, 1, 'Four Years', 10300.00, 0.00, ' The University of Bologna offers study grants and tuition fee waivers to deserving international students enrolling in undergraduate and graduate programs. These grants are aimed at facilitating access to higher education for students from diverse backgrounds.', 'Semester: Eight', 'Medium'),
(114, 15, 1, 2, 'Four Years', 10300.00, 0.00, ' The University of Bologna offers study grants and tuition fee waivers to deserving international students enrolling in undergraduate and graduate programs. These grants are aimed at facilitating access to higher education for students from diverse backgrounds.', 'Semester: Eight', 'Medium'),
(115, 15, 2, 1, 'Two Years', 5150.00, 0.00, ' The University of Bologna offers study grants and tuition fee waivers to deserving international students enrolling in undergraduate and graduate programs. These grants are aimed at facilitating access to higher education for students from diverse backgrounds.', 'Semester: Four', 'Medium'),
(116, 15, 2, 2, 'Two Years', 5150.00, 0.00, ' The University of Bologna offers study grants and tuition fee waivers to deserving international students enrolling in undergraduate and graduate programs. These grants are aimed at facilitating access to higher education for students from diverse backgrounds.', 'Semester: Four', 'Medium'),
(117, 15, 2, 3, 'Two Years', 5150.00, 0.00, ' The University of Bologna offers study grants and tuition fee waivers to deserving international students enrolling in undergraduate and graduate programs. These grants are aimed at facilitating access to higher education for students from diverse backgrounds.', 'Semester: Four', 'Medium'),
(118, 15, 3, 2, 'One and Half Years', 3863.00, 0.00, ' The University of Bologna offers study grants and tuition fee waivers to deserving international students enrolling in undergraduate and graduate programs. These grants are aimed at facilitating access to higher education for students from diverse backgrounds.', 'Semester: Not Required', 'Medium'),
(119, 15, 3, 3, 'One and Half Years', 3863.00, 0.00, ' The University of Bologna offers study grants and tuition fee waivers to deserving international students enrolling in undergraduate and graduate programs. These grants are aimed at facilitating access to higher education for students from diverse backgrounds.', 'Semester: Not Required', 'Medium'),
(120, 16, 1, 1, 'Four Years', 16480.00, 0.00, 'The University of Padua provides a range of scholarships to international students based on academic merit and financial need. These scholarships are available for various programs, including those in Engineering, Business, and Medical Sciences.', 'Semester: Eight', 'High'),
(121, 16, 1, 2, 'Four Years', 16480.00, 0.00, 'The University of Padua provides a range of scholarships to international students based on academic merit and financial need. These scholarships are available for various programs, including those in Engineering, Business, and Medical Sciences.', 'Semester: Eight', 'High');
INSERT INTO `tuitionfee` (`fee_id`, `university_id`, `program_id`, `field_id`, `duration`, `tuition_fee`, `semesters_or_trimesters_fee`, `scholarship_details`, `semesters_or_trimesters`, `fee_category`) VALUES
(122, 16, 1, 3, 'Four Years', 16480.00, 0.00, 'The University of Padua provides a range of scholarships to international students based on academic merit and financial need. These scholarships are available for various programs, including those in Engineering, Business, and Medical Sciences.', 'Semester: Eight', 'High'),
(123, 16, 2, 1, 'Two Years', 8240.00, 0.00, 'The University of Padua provides a range of scholarships to international students based on academic merit and financial need. These scholarships are available for various programs, including those in Engineering, Business, and Medical Sciences.', 'Semester: Four', 'Medium'),
(124, 16, 2, 2, 'Two Years', 8240.00, 0.00, 'The University of Padua provides a range of scholarships to international students based on academic merit and financial need. These scholarships are available for various programs, including those in Engineering, Business, and Medical Sciences.', 'Semester: Four', 'Medium'),
(125, 16, 2, 3, 'Two Years', 8240.00, 0.00, 'The University of Padua provides a range of scholarships to international students based on academic merit and financial need. These scholarships are available for various programs, including those in Engineering, Business, and Medical Sciences.', 'Semester: Four', 'Medium'),
(126, 16, 3, 1, 'One and Half Years', 6180.00, 0.00, 'The University of Padua provides a range of scholarships to international students based on academic merit and financial need. These scholarships are available for various programs, including those in Engineering, Business, and Medical Sciences.', 'Semester: Not Required', 'Medium'),
(127, 16, 3, 2, 'One and Half Years', 6180.00, 0.00, 'The University of Padua provides a range of scholarships to international students based on academic merit and financial need. These scholarships are available for various programs, including those in Engineering, Business, and Medical Sciences.', 'Semester: Not Required', 'Medium'),
(128, 16, 3, 3, 'One and Half Years', 6180.00, 0.00, 'The University of Padua provides a range of scholarships to international students based on academic merit and financial need. These scholarships are available for various programs, including those in Engineering, Business, and Medical Sciences.', 'Semester: Not Required', 'Medium'),
(129, 17, 1, 1, 'Four Years', 216000.00, 4000.00, 'Caltech provides limited fellowship opportunities for international students pursuing advanced degrees. These fellowships are often funded by external organizations and are available to students across various disciplines, including Engineering and the sciences.', 'Semester: Eight', 'High'),
(130, 17, 1, 2, 'Four Years', 216000.00, 4000.00, 'Caltech provides limited fellowship opportunities for international students pursuing advanced degrees. These fellowships are often funded by external organizations and are available to students across various disciplines, including Engineering and the sciences.', 'Semester: Eight', 'High'),
(131, 17, 2, 1, 'Two Years', 116000.00, 4000.00, 'Caltech provides limited fellowship opportunities for international students pursuing advanced degrees. These fellowships are often funded by external organizations and are available to students across various disciplines, including Engineering and the sciences.', 'Semester: Four', 'High'),
(132, 17, 2, 2, 'Two Years', 116000.00, 4000.00, 'Caltech provides limited fellowship opportunities for international students pursuing advanced degrees. These fellowships are often funded by external organizations and are available to students across various disciplines, including Engineering and the sciences.', 'Semester: Four', 'High'),
(133, 17, 2, 3, 'Two Years', 116000.00, 4000.00, 'Caltech provides limited fellowship opportunities for international students pursuing advanced degrees. These fellowships are often funded by external organizations and are available to students across various disciplines, including Engineering and the sciences.', 'Semester: Four', 'High'),
(134, 17, 3, 3, 'One and Half Years', 87000.00, 6000.00, 'Caltech provides limited fellowship opportunities for international students pursuing advanced degrees. These fellowships are often funded by external organizations and are available to students across various disciplines, including Engineering and the sciences.', 'Semester: Not Required', 'High'),
(135, 18, 1, 1, 'Four Years', 220000.00, 16000.00, 'Harvard offers need-based financial aid to international students at both undergraduate and graduate levels. The Harvard Financial Aid Initiative (HFAI) ensures that students from all economic backgrounds can access Harvard education. For medical programs, Harvard Medical School provides institutional scholarship funding to eligible students, covering up to eight semesters of full tuition charges.', 'Semester: Eight', 'High'),
(136, 18, 2, 1, 'Two Years', 140000.00, 10000.00, 'Harvard offers need-based financial aid to international students at both undergraduate and graduate levels. The Harvard Financial Aid Initiative (HFAI) ensures that students from all economic backgrounds can access Harvard education. For medical programs, Harvard Medical School provides institutional scholarship funding to eligible students, covering up to eight semesters of full tuition charges.', 'Semester: Four', 'High'),
(137, 18, 2, 2, 'Two Years', 170000.00, 10000.00, 'Harvard offers need-based financial aid to international students at both undergraduate and graduate levels. The Harvard Financial Aid Initiative (HFAI) ensures that students from all economic backgrounds can access Harvard education. For medical programs, Harvard Medical School provides institutional scholarship funding to eligible students, covering up to eight semesters of full tuition charges.', 'Semester: Four', 'High'),
(138, 18, 2, 3, 'Two Years', 140000.00, 10000.00, 'Harvard offers need-based financial aid to international students at both undergraduate and graduate levels. The Harvard Financial Aid Initiative (HFAI) ensures that students from all economic backgrounds can access Harvard education. For medical programs, Harvard Medical School provides institutional scholarship funding to eligible students, covering up to eight semesters of full tuition charges.', 'Semester: Four', 'High'),
(139, 18, 3, 1, 'One and Half Years', 105000.00, 7500.00, 'Harvard offers need-based financial aid to international students at both undergraduate and graduate levels. The Harvard Financial Aid Initiative (HFAI) ensures that students from all economic backgrounds can access Harvard education. For medical programs, Harvard Medical School provides institutional scholarship funding to eligible students, covering up to eight semesters of full tuition charges.', 'Semester: Not Required', 'High'),
(140, 18, 3, 2, 'One and Half Years', 105000.00, 7500.00, 'Harvard offers need-based financial aid to international students at both undergraduate and graduate levels. The Harvard Financial Aid Initiative (HFAI) ensures that students from all economic backgrounds can access Harvard education. For medical programs, Harvard Medical School provides institutional scholarship funding to eligible students, covering up to eight semesters of full tuition charges.', 'Semester: Not Required', 'High'),
(141, 18, 3, 3, 'One and Half Years', 105000.00, 7500.00, 'Harvard offers need-based financial aid to international students at both undergraduate and graduate levels. The Harvard Financial Aid Initiative (HFAI) ensures that students from all economic backgrounds can access Harvard education. For medical programs, Harvard Medical School provides institutional scholarship funding to eligible students, covering up to eight semesters of full tuition charges.', 'Semester: Not Required', 'High'),
(142, 19, 1, 1, 'Four Years', 230360.00, 1472.00, 'MIT offers need-based scholarships for international undergraduate students, ensuring that all admitted students can afford their education regardless of financial circumstances. Graduate students may receive fellowships, research assistantships, or teaching assistantships, depending on their program and field of study.', 'Semester: Eight', 'High'),
(143, 19, 1, 3, 'Four Years', 230360.00, 1472.00, 'MIT offers need-based scholarships for international undergraduate students, ensuring that all admitted students can afford their education regardless of financial circumstances. Graduate students may receive fellowships, research assistantships, or teaching assistantships, depending on their program and field of study.', 'Semester: Eight', 'High'),
(144, 19, 2, 1, 'Two Years', 115180.00, 736.00, 'MIT offers need-based scholarships for international undergraduate students, ensuring that all admitted students can afford their education regardless of financial circumstances. Graduate students may receive fellowships, research assistantships, or teaching assistantships, depending on their program and field of study.', 'Semester: Four', 'High'),
(145, 19, 2, 2, 'Two Years', 115180.00, 736.00, 'MIT offers need-based scholarships for international undergraduate students, ensuring that all admitted students can afford their education regardless of financial circumstances. Graduate students may receive fellowships, research assistantships, or teaching assistantships, depending on their program and field of study.', 'Semester: Four', 'High'),
(146, 19, 2, 3, 'Two Years', 115180.00, 736.00, 'MIT offers need-based scholarships for international undergraduate students, ensuring that all admitted students can afford their education regardless of financial circumstances. Graduate students may receive fellowships, research assistantships, or teaching assistantships, depending on their program and field of study.', 'Semester: Four', 'High'),
(147, 19, 3, 1, 'One and Half Years', 86385.00, 552.00, 'MIT offers need-based scholarships for international undergraduate students, ensuring that all admitted students can afford their education regardless of financial circumstances. Graduate students may receive fellowships, research assistantships, or teaching assistantships, depending on their program and field of study.', 'Semester: Not Required', 'High'),
(148, 19, 3, 2, 'One and Half Years', 86385.00, 552.00, 'MIT offers need-based scholarships for international undergraduate students, ensuring that all admitted students can afford their education regardless of financial circumstances. Graduate students may receive fellowships, research assistantships, or teaching assistantships, depending on their program and field of study.', 'Semester: Not Required', 'High'),
(149, 19, 3, 3, 'One and Half Years', 86385.00, 552.00, 'MIT offers need-based scholarships for international undergraduate students, ensuring that all admitted students can afford their education regardless of financial circumstances. Graduate students may receive fellowships, research assistantships, or teaching assistantships, depending on their program and field of study.', 'Semester: Not Required', 'High'),
(150, 20, 1, 1, 'Four Years', 246924.00, 8000.00, 'Stanford provides need-based financial aid for international students at the undergraduate level. Graduate students, including those in Engineering, Business, and Medical programs, may receive fellowships, teaching assistantships, or research assistantships to support their studies.', 'Semester: Eight', 'High'),
(151, 20, 2, 1, 'Two Years', 123366.00, 4000.00, 'Stanford provides need-based financial aid for international students at the undergraduate level. Graduate students, including those in Engineering, Business, and Medical programs, may receive fellowships, teaching assistantships, or research assistantships to support their studies.', 'Semester: Four', 'High'),
(152, 20, 2, 2, 'Two Years', 123366.00, 4000.00, 'Stanford provides need-based financial aid for international students at the undergraduate level. Graduate students, including those in Engineering, Business, and Medical programs, may receive fellowships, teaching assistantships, or research assistantships to support their studies.', 'Semester: Four', 'High'),
(153, 20, 2, 3, 'Two Years', 123366.00, 4000.00, 'Stanford provides need-based financial aid for international students at the undergraduate level. Graduate students, including those in Engineering, Business, and Medical programs, may receive fellowships, teaching assistantships, or research assistantships to support their studies.', 'Semester: Four', 'High'),
(154, 20, 3, 1, 'One and Half Years', 92524.00, 300.00, 'Stanford provides need-based financial aid for international students at the undergraduate level. Graduate students, including those in Engineering, Business, and Medical programs, may receive fellowships, teaching assistantships, or research assistantships to support their studies.', 'Semester: Not Required', 'High'),
(155, 20, 3, 2, 'One and Half Years', 92524.00, 300.00, 'Stanford provides need-based financial aid for international students at the undergraduate level. Graduate students, including those in Engineering, Business, and Medical programs, may receive fellowships, teaching assistantships, or research assistantships to support their studies.', 'Semester: Not Required', 'High'),
(156, 20, 3, 3, 'One and Half Years', 92524.00, 300.00, 'Stanford provides need-based financial aid for international students at the undergraduate level. Graduate students, including those in Engineering, Business, and Medical programs, may receive fellowships, teaching assistantships, or research assistantships to support their studies.', 'Semester: Not Required', 'High');

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `university_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `country_id` int(11) NOT NULL,
  `location` text NOT NULL,
  `global_rank` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`university_id`, `name`, `country_id`, `location`, `global_rank`) VALUES
(1, 'Australian National University', 1, ' Canberra, Australian Capital Territory', 'Ranking: 30 (QS-2025)'),
(2, 'University of Melbourne', 1, '  Melbourne, Victoria', 'Ranking: 13 (QS-2025)'),
(3, 'University of Sydney', 1, 'Sydney, New South Wales', 'Ranking: 18 (QS-2025)'),
(4, 'University of Queensland', 1, 'Brisbane, Queensland', 'Ranking: 40 (QS-2025)'),
(5, 'Imperial College London', 2, 'London, England', 'Ranking: 2 (QS-2025)'),
(6, 'University of Cambridge', 2, 'Cambridge, England', 'Ranking: 5 (QS-2025)'),
(7, 'University College London', 2, 'London, England', 'Ranking: 9 (QS-2025)'),
(8, 'University of Oxford', 2, 'Oxford, England', 'Ranking: 3 (QS-2025)'),
(9, 'Charité Universitätsmedizin Berlin', 3, 'Berlin, Germany', 'Ranking: 93 (QS-2025)'),
(10, 'Heidelberg University', 3, 'Heidelberg, Germany', 'Ranking: 84 (QS-2025)'),
(11, 'Ludwig Maximilian University of Munich', 3, 'Munich, Bavaria, Germany', 'Ranking: 59 (QS-2025)'),
(12, 'Technical University of Munich', 3, ' Munich, Germany', 'Ranking: 28 (QS-2025)'),
(13, 'Politecnico di Milano', 4, 'Milan, Lombardy, Italy', 'Ranking: 111 (QS-2025)'),
(14, 'Sapienza University of Rome', 4, 'Lazio, Rome, Italy', 'Ranking: 132 (QS-2025)'),
(15, 'University of Bologna', 4, 'Bologna, Emilia-Romagna, Italy', 'Ranking: 133 (QS-2025)'),
(16, 'University of Padua', 4, 'Padua, Veneto, Italy', 'Ranking: 236 (QS-2025)'),
(17, 'California Institute of Technology', 5, 'Pasadena, California, USA', 'Ranking: 10 (QS-2025)'),
(18, 'Harvard University', 5, 'Massachusetts Hall, Cambridge, USA', 'Ranking: 4 (QS-2025)'),
(19, 'Massachusetts Institute of Technology', 5, 'Cambridge, MA, USA', 'Ranking: 1 (QS-2025)'),
(20, 'Stanford University', 5, 'Stanford, California, USA', 'Ranking: 6 (QS-2025)');

-- --------------------------------------------------------

--
-- Table structure for table `universityprogramfield`
--

CREATE TABLE `universityprogramfield` (
  `upf_id` int(11) NOT NULL,
  `university_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `universityprogramfield`
--

INSERT INTO `universityprogramfield` (`upf_id`, `university_id`, `program_id`, `field_id`, `subject_id`) VALUES
(1, 1, 1, 1, 13),
(2, 1, 1, 1, 14),
(3, 1, 1, 1, 8),
(4, 1, 2, 1, 32),
(5, 1, 2, 1, 16),
(6, 1, 3, 1, 17),
(7, 1, 3, 1, 18),
(8, 1, 1, 2, 79),
(9, 1, 1, 2, 69),
(10, 1, 1, 2, 80),
(11, 1, 2, 2, 77),
(12, 1, 2, 2, 81),
(13, 1, 3, 2, 75),
(14, 1, 2, 3, 133),
(15, 1, 3, 3, 134),
(16, 2, 1, 1, 1),
(17, 2, 1, 1, 2),
(18, 2, 1, 1, 3),
(19, 2, 1, 1, 4),
(20, 2, 2, 1, 5),
(21, 2, 2, 1, 6),
(22, 2, 2, 1, 7),
(23, 2, 2, 1, 8),
(24, 2, 3, 1, 7),
(25, 2, 3, 1, 1),
(26, 2, 1, 2, 69),
(27, 2, 1, 2, 70),
(28, 2, 1, 2, 71),
(29, 2, 1, 2, 72),
(30, 2, 1, 2, 73),
(31, 2, 2, 2, 73),
(32, 2, 2, 2, 71),
(33, 2, 2, 2, 74),
(34, 2, 3, 2, 75),
(35, 2, 1, 3, 123),
(36, 2, 2, 3, 124),
(37, 2, 2, 3, 125),
(38, 2, 2, 3, 126),
(39, 2, 3, 3, 127),
(40, 3, 1, 1, 9),
(41, 3, 1, 1, 7),
(42, 3, 1, 1, 1),
(43, 3, 1, 1, 10),
(44, 3, 2, 1, 5),
(45, 3, 2, 1, 23),
(46, 3, 2, 1, 7),
(47, 3, 2, 1, 1),
(48, 3, 3, 1, 11),
(49, 3, 3, 1, 12),
(50, 3, 1, 2, 71),
(51, 3, 1, 2, 73),
(52, 3, 1, 2, 76),
(53, 3, 2, 2, 77),
(54, 3, 2, 2, 78),
(55, 3, 1, 3, 128),
(56, 3, 1, 3, 129),
(57, 3, 1, 3, 125),
(58, 3, 2, 3, 124),
(59, 3, 2, 3, 130),
(60, 3, 2, 3, 131),
(61, 3, 3, 3, 132),
(62, 4, 1, 1, 19),
(63, 4, 1, 1, 8),
(64, 4, 1, 1, 1),
(65, 4, 1, 1, 20),
(66, 4, 2, 1, 21),
(67, 4, 2, 1, 23),
(68, 4, 3, 1, 13),
(69, 4, 3, 1, 17),
(70, 4, 1, 2, 82),
(71, 4, 1, 2, 83),
(72, 4, 2, 2, 77),
(73, 4, 3, 2, 84),
(74, 4, 1, 3, 135),
(75, 4, 1, 3, 129),
(76, 4, 2, 3, 133),
(77, 4, 2, 3, 136),
(78, 4, 3, 3, 132),
(79, 5, 1, 1, 10),
(80, 5, 1, 1, 9),
(81, 5, 1, 1, 6),
(82, 5, 1, 1, 7),
(83, 5, 2, 1, 7),
(84, 5, 2, 1, 1),
(85, 5, 2, 1, 21),
(86, 5, 2, 1, 68),
(87, 5, 3, 1, 1),
(88, 5, 1, 2, 72),
(89, 5, 2, 2, 71),
(90, 5, 2, 2, 92),
(91, 5, 2, 2, 80),
(92, 5, 2, 2, 94),
(93, 5, 3, 2, 84),
(94, 5, 1, 3, 135),
(95, 5, 1, 3, 142),
(96, 5, 2, 3, 138),
(97, 5, 2, 3, 143),
(98, 5, 3, 3, 135),
(99, 5, 3, 3, 141),
(100, 6, 1, 1, 27),
(101, 6, 1, 1, 6),
(102, 6, 1, 1, 7),
(103, 6, 2, 1, 28),
(104, 6, 3, 1, 29),
(105, 6, 3, 1, 9),
(106, 6, 2, 2, 77),
(107, 6, 2, 2, 71),
(108, 6, 3, 2, 84),
(109, 7, 1, 1, 6),
(110, 7, 1, 1, 1),
(111, 7, 1, 1, 30),
(112, 7, 2, 1, 12),
(113, 7, 2, 1, 31),
(114, 7, 2, 1, 32),
(115, 7, 2, 1, 1),
(116, 7, 3, 1, 34),
(117, 7, 3, 1, 35),
(118, 7, 1, 2, 96),
(119, 7, 1, 2, 80),
(120, 7, 2, 2, 80),
(121, 7, 2, 2, 97),
(122, 7, 2, 2, 77),
(123, 7, 2, 2, 98),
(124, 7, 3, 2, 99),
(125, 7, 3, 2, 80),
(126, 7, 1, 3, 144),
(127, 7, 1, 3, 145),
(128, 7, 2, 3, 146),
(129, 7, 2, 3, 138),
(130, 7, 3, 3, 147),
(131, 7, 3, 3, 148),
(132, 8, 1, 1, 5),
(133, 8, 1, 1, 7),
(134, 8, 1, 1, 1),
(135, 8, 1, 1, 19),
(136, 8, 1, 1, 24),
(137, 8, 2, 1, 1),
(138, 8, 2, 1, 25),
(139, 8, 2, 1, 26),
(140, 8, 3, 1, 1),
(141, 8, 3, 1, 13),
(142, 8, 3, 1, 68),
(143, 8, 1, 2, 85),
(144, 8, 2, 2, 77),
(145, 8, 2, 2, 86),
(146, 8, 2, 2, 87),
(147, 8, 3, 2, 88),
(148, 8, 3, 2, 89),
(149, 8, 3, 2, 90),
(150, 8, 1, 3, 135),
(151, 8, 1, 3, 151),
(152, 8, 2, 3, 137),
(153, 8, 2, 3, 138),
(154, 8, 2, 3, 139),
(155, 8, 3, 3, 140),
(156, 8, 3, 3, 141),
(157, 9, 1, 3, 135),
(158, 9, 1, 3, 125),
(159, 9, 2, 3, 133),
(160, 9, 2, 3, 158),
(161, 9, 3, 3, 174),
(162, 9, 3, 3, 159),
(163, 10, 2, 1, 37),
(164, 10, 2, 1, 38),
(165, 10, 2, 1, 39),
(166, 10, 3, 1, 40),
(167, 10, 3, 1, 41),
(168, 10, 3, 1, 42),
(169, 10, 3, 1, 43),
(170, 10, 1, 2, 103),
(171, 10, 2, 2, 104),
(172, 10, 3, 2, 70),
(173, 10, 1, 3, 135),
(174, 10, 1, 3, 151),
(175, 10, 1, 3, 149),
(176, 10, 2, 3, 161),
(177, 10, 2, 3, 143),
(178, 10, 3, 3, 1),
(179, 10, 3, 3, 152),
(180, 10, 3, 3, 153),
(181, 11, 2, 1, 36),
(182, 11, 2, 1, 31),
(183, 11, 3, 1, 36),
(184, 11, 1, 2, 79),
(185, 11, 1, 2, 100),
(186, 11, 2, 2, 77),
(187, 11, 2, 2, 101),
(188, 11, 2, 2, 105),
(189, 11, 3, 2, 102),
(190, 11, 1, 3, 149),
(191, 11, 1, 3, 150),
(192, 11, 1, 3, 125),
(193, 11, 2, 3, 133),
(194, 11, 3, 3, 132),
(195, 12, 1, 1, 7),
(196, 12, 1, 1, 44),
(197, 12, 1, 1, 45),
(198, 12, 1, 1, 9),
(199, 12, 1, 1, 10),
(200, 12, 2, 1, 7),
(201, 12, 2, 1, 46),
(202, 12, 2, 1, 40),
(203, 12, 3, 1, 7),
(204, 12, 3, 1, 44),
(205, 12, 3, 1, 45),
(206, 12, 3, 1, 9),
(207, 12, 3, 1, 10),
(208, 12, 1, 2, 105),
(209, 12, 2, 2, 105),
(210, 12, 2, 2, 72),
(211, 12, 2, 2, 106),
(212, 12, 3, 2, 107),
(213, 12, 1, 3, 135),
(214, 12, 1, 3, 154),
(215, 12, 2, 3, 155),
(216, 12, 2, 3, 133),
(217, 12, 2, 3, 153),
(218, 12, 3, 3, 124),
(219, 12, 3, 3, 156),
(220, 13, 1, 1, 1),
(221, 13, 1, 1, 9),
(222, 13, 1, 1, 7),
(223, 13, 1, 1, 48),
(224, 13, 2, 1, 49),
(225, 13, 2, 1, 50),
(226, 13, 2, 1, 16),
(227, 13, 3, 1, 51),
(228, 13, 3, 1, 52),
(229, 13, 1, 2, 108),
(230, 13, 1, 2, 111),
(231, 13, 2, 2, 77),
(232, 13, 2, 2, 112),
(233, 13, 1, 3, 164),
(234, 13, 1, 3, 125),
(235, 13, 2, 3, 169),
(236, 13, 2, 3, 165),
(237, 13, 3, 3, 166),
(238, 14, 1, 1, 51),
(239, 14, 1, 1, 55),
(240, 14, 2, 1, 10),
(241, 14, 2, 1, 49),
(242, 14, 2, 1, 53),
(243, 14, 1, 2, 108),
(244, 14, 1, 2, 113),
(245, 14, 2, 2, 77),
(246, 14, 2, 2, 114),
(247, 14, 2, 2, 115),
(248, 14, 3, 2, 85),
(249, 14, 1, 3, 164),
(250, 14, 1, 3, 125),
(251, 14, 2, 3, 135),
(252, 14, 2, 3, 133),
(253, 14, 3, 3, 168),
(254, 14, 3, 3, 169),
(255, 15, 1, 1, 7),
(256, 15, 1, 1, 24),
(257, 15, 1, 1, 9),
(258, 15, 1, 2, 47),
(259, 15, 1, 2, 19),
(260, 15, 1, 2, 24),
(261, 15, 1, 2, 108),
(262, 15, 2, 2, 109),
(263, 15, 2, 2, 110),
(264, 15, 3, 2, 70),
(265, 15, 3, 2, 72),
(266, 15, 2, 3, 160),
(267, 15, 2, 3, 133),
(268, 15, 2, 3, 161),
(269, 15, 3, 3, 162),
(270, 15, 3, 3, 163),
(271, 16, 1, 1, 55),
(272, 16, 1, 1, 7),
(273, 16, 1, 1, 1),
(274, 16, 2, 1, 47),
(275, 16, 2, 1, 11),
(276, 16, 2, 1, 48),
(277, 16, 3, 1, 51),
(278, 16, 3, 1, 54),
(279, 16, 1, 2, 79),
(280, 16, 1, 2, 116),
(281, 16, 2, 2, 117),
(282, 16, 3, 2, 118),
(284, 16, 1, 3, 125),
(285, 16, 2, 3, 165),
(286, 16, 3, 3, 143),
(287, 16, 3, 3, 170),
(288, 17, 1, 1, 10),
(289, 17, 1, 1, 19),
(290, 17, 1, 1, 30),
(291, 17, 1, 1, 7),
(292, 17, 2, 1, 67),
(293, 17, 2, 1, 20),
(294, 17, 1, 2, 79),
(295, 17, 1, 2, 70),
(296, 17, 1, 2, 72),
(297, 17, 1, 2, 122),
(298, 17, 2, 3, 181),
(299, 17, 2, 3, 182),
(300, 17, 2, 3, 183),
(301, 17, 2, 3, 184),
(302, 17, 3, 3, 181),
(303, 17, 3, 3, 182),
(304, 17, 3, 3, 183),
(305, 17, 3, 3, 184),
(306, 18, 1, 1, 7),
(307, 18, 1, 1, 21),
(308, 18, 1, 1, 30),
(309, 18, 2, 1, 44),
(310, 18, 2, 1, 21),
(311, 18, 2, 1, 68),
(312, 18, 3, 1, 37),
(313, 18, 3, 1, 62),
(314, 18, 2, 2, 77),
(315, 18, 3, 2, 120),
(316, 18, 3, 2, 121),
(317, 18, 3, 2, 72),
(318, 18, 2, 3, 173),
(319, 18, 2, 3, 133),
(320, 18, 3, 3, 176),
(321, 18, 3, 3, 177),
(322, 18, 3, 3, 178),
(323, 18, 3, 3, 153),
(324, 19, 1, 1, 55),
(325, 19, 1, 1, 24),
(326, 19, 1, 1, 56),
(327, 19, 1, 1, 7),
(328, 19, 1, 1, 10),
(329, 19, 2, 1, 57),
(330, 19, 2, 1, 58),
(331, 19, 2, 1, 59),
(332, 19, 2, 1, 20),
(333, 19, 3, 1, 60),
(334, 19, 3, 1, 61),
(335, 19, 3, 1, 21),
(336, 19, 2, 2, 77),
(337, 19, 2, 2, 93),
(338, 19, 3, 2, 119),
(339, 19, 3, 2, 90),
(340, 19, 1, 3, 58),
(341, 19, 1, 3, 172),
(342, 19, 2, 3, 1),
(343, 19, 2, 3, 173),
(344, 19, 3, 3, 174),
(345, 20, 1, 1, 57),
(346, 20, 1, 1, 20),
(347, 20, 1, 1, 55),
(348, 20, 1, 1, 30),
(349, 20, 2, 1, 63),
(350, 20, 2, 1, 64),
(351, 20, 2, 1, 65),
(352, 20, 3, 1, 66),
(353, 20, 2, 2, 77),
(354, 20, 3, 2, 69),
(355, 20, 3, 2, 71),
(356, 20, 3, 2, 73),
(357, 20, 2, 3, 179),
(358, 20, 2, 3, 180),
(359, 20, 2, 3, 153),
(360, 20, 3, 3, 29),
(383, 16, 1, 3, 164);

-- --------------------------------------------------------

--
-- Table structure for table `userprogress`
--

CREATE TABLE `userprogress` (
  `ProgressID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Module` enum('Reading','Writing','Listening','Speaking') NOT NULL,
  `AttemptCount` int(11) DEFAULT 0,
  `AverageScore` decimal(3,1) DEFAULT 0.0,
  `LastTestDate` datetime DEFAULT NULL,
  `ImprovementSuggestions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `PasswordHash` varchar(255) NOT NULL,
  `SignUpDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data of table `users` intentionally removed (personal / test data).

-- --------------------------------------------------------

--
-- Table structure for table `writingresponses`
--

CREATE TABLE `writingresponses` (
  `ResponseID` int(11) NOT NULL,
  `TestID` int(11) NOT NULL,
  `TaskID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `ResponseText` text DEFAULT NULL,
  `Score` decimal(3,1) DEFAULT NULL,
  `Feedback` text DEFAULT NULL,
  `SubmittedAt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data of table `writingresponses` intentionally removed (personal / test data).

-- --------------------------------------------------------

--
-- Table structure for table `writingtasks`
--

CREATE TABLE `writingtasks` (
  `TaskID` int(11) NOT NULL,
  `TestType` enum('Academic','General') NOT NULL,
  `TaskType` enum('Letter Writing','Essay Writing') DEFAULT NULL,
  `Prompt` text NOT NULL,
  `SetNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `writingtasks`
--

INSERT INTO `writingtasks` (`TaskID`, `TestType`, `TaskType`, `Prompt`, `SetNumber`) VALUES
(1, '', 'Letter Writing', 'You are planning to move to a new city for work. Write a letter to a friend who lives there. In your letter:\n\n- explain why you are moving to the city\n- ask for information about job opportunities in your field\n- ask about the cost of living and lifestyle in the city\n\nWrite at least 150 words.\nTime: 20 minutes\nTone: Semi-formal', 1),
(2, '', 'Essay Writing', 'Some people think that children should not be given homework every day, while others believe that regular homework is important.\n\nDiscuss both views and give your own opinion.\n\nWrite at least 250 words.\nTime: 40 minutes\nType: Argumentative / Opinion Essay', 1),
(3, '', 'Letter Writing', 'You recently bought a product from an online store, but it arrived damaged. Write a letter to the customer service department of the store. In your letter:\n\n- describe the product and the damage\n- explain what you would like the company to do\n- express your dissatisfaction with the experience\n\nWrite at least 150 words.\nTime: 20 minutes\nTone: Formal', 2),
(4, '', 'Essay Writing', 'Some people believe that it is better to work in the same company for your entire career, while others think that changing companies is better.\n\nDiscuss both views and give your opinion.\n\nWrite at least 250 words.\nTime: 40 minutes\nType: Discussion + Opinion Essay', 2),
(5, '', 'Letter Writing', 'Your friend is coming to stay in your home while you are away on vacation. Write a letter to your friend. In your letter:\n\n- give details of your trip\n- describe how to look after the house\n- say what to do if there are any problems\n\nWrite at least 150 words.\nTime: 20 minutes\nTone: Informal', 3),
(6, '', 'Essay Writing', 'Some people say that watching TV is a waste of time, while others believe it has educational benefits.\n\nDiscuss both views and give your own opinion.\n\nWrite at least 250 words.\nTime: 40 minutes\nType: Opinion Essay', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `admissionrequirements`
--
ALTER TABLE `admissionrequirements`
  ADD PRIMARY KEY (`requirement_id`),
  ADD KEY `university_id` (`university_id`),
  ADD KEY `program_id` (`program_id`),
  ADD KEY `field_id` (`field_id`);

--
-- Indexes for table `bandscorecriteria`
--
ALTER TABLE `bandscorecriteria`
  ADD PRIMARY KEY (`CriteriaID`);

--
-- Indexes for table `certificate_info`
--
ALTER TABLE `certificate_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countrydetails`
--
ALTER TABLE `countrydetails`
  ADD PRIMARY KEY (`details_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `countrylist`
--
ALTER TABLE `countrylist`
  ADD PRIMARY KEY (`country_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `fieldofstudy`
--
ALTER TABLE `fieldofstudy`
  ADD PRIMARY KEY (`field_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `listeningaudio`
--
ALTER TABLE `listeningaudio`
  ADD PRIMARY KEY (`AudioID`);

--
-- Indexes for table `listeningresponses`
--
ALTER TABLE `listeningresponses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_letter_requests`
--
ALTER TABLE `offer_letter_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`program_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`QuestionID`);

--
-- Indexes for table `reading_passages`
--
ALTER TABLE `reading_passages`
  ADD PRIMARY KEY (`PassageID`);

--
-- Indexes for table `sectionvideos`
--
ALTER TABLE `sectionvideos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speakingprompts`
--
ALTER TABLE `speakingprompts`
  ADD PRIMARY KEY (`PromptID`);

--
-- Indexes for table `speakingrecords`
--
ALTER TABLE `speakingrecords`
  ADD PRIMARY KEY (`RecordID`),
  ADD KEY `TestID` (`TestID`);

--
-- Indexes for table `speaking_sessions`
--
ALTER TABLE `speaking_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `field_id` (`field_id`);

--
-- Indexes for table `testresponses`
--
ALTER TABLE `testresponses`
  ADD PRIMARY KEY (`ResponseID`),
  ADD KEY `TestID` (`TestID`),
  ADD KEY `QuestionID` (`QuestionID`),
  ADD KEY `fk_userid` (`UserID`);

--
-- Indexes for table `testresults`
--
ALTER TABLE `testresults`
  ADD PRIMARY KEY (`TestID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`TestID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `tuitionfee`
--
ALTER TABLE `tuitionfee`
  ADD PRIMARY KEY (`fee_id`),
  ADD KEY `university_id` (`university_id`),
  ADD KEY `program_id` (`program_id`),
  ADD KEY `field_id` (`field_id`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`university_id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `universityprogramfield`
--
ALTER TABLE `universityprogramfield`
  ADD PRIMARY KEY (`upf_id`),
  ADD KEY `university_id` (`university_id`),
  ADD KEY `program_id` (`program_id`),
  ADD KEY `field_id` (`field_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `userprogress`
--
ALTER TABLE `userprogress`
  ADD PRIMARY KEY (`ProgressID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `writingresponses`
--
ALTER TABLE `writingresponses`
  ADD PRIMARY KEY (`ResponseID`);

--
-- Indexes for table `writingtasks`
--
ALTER TABLE `writingtasks`
  ADD PRIMARY KEY (`TaskID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `admissionrequirements`
--
ALTER TABLE `admissionrequirements`
  MODIFY `requirement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `bandscorecriteria`
--
ALTER TABLE `bandscorecriteria`
  MODIFY `CriteriaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificate_info`
--
ALTER TABLE `certificate_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countrydetails`
--
ALTER TABLE `countrydetails`
  MODIFY `details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countrylist`
--
ALTER TABLE `countrylist`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fieldofstudy`
--
ALTER TABLE `fieldofstudy`
  MODIFY `field_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `listeningaudio`
--
ALTER TABLE `listeningaudio`
  MODIFY `AudioID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `listeningresponses`
--
ALTER TABLE `listeningresponses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offer_letter_requests`
--
ALTER TABLE `offer_letter_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `QuestionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `reading_passages`
--
ALTER TABLE `reading_passages`
  MODIFY `PassageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sectionvideos`
--
ALTER TABLE `sectionvideos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `speakingprompts`
--
ALTER TABLE `speakingprompts`
  MODIFY `PromptID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `speakingrecords`
--
ALTER TABLE `speakingrecords`
  MODIFY `RecordID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `speaking_sessions`
--
ALTER TABLE `speaking_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `testresponses`
--
ALTER TABLE `testresponses`
  MODIFY `ResponseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `testresults`
--
ALTER TABLE `testresults`
  MODIFY `TestID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `TestID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `tuitionfee`
--
ALTER TABLE `tuitionfee`
  MODIFY `fee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `university_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `universityprogramfield`
--
ALTER TABLE `universityprogramfield`
  MODIFY `upf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

--
-- AUTO_INCREMENT for table `userprogress`
--
ALTER TABLE `userprogress`
  MODIFY `ProgressID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `writingresponses`
--
ALTER TABLE `writingresponses`
  MODIFY `ResponseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `writingtasks`
--
ALTER TABLE `writingtasks`
  MODIFY `TaskID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admissionrequirements`
--
ALTER TABLE `admissionrequirements`
  ADD CONSTRAINT `admissionrequirements_ibfk_1` FOREIGN KEY (`university_id`) REFERENCES `university` (`university_id`),
  ADD CONSTRAINT `admissionrequirements_ibfk_2` FOREIGN KEY (`program_id`) REFERENCES `program` (`program_id`),
  ADD CONSTRAINT `admissionrequirements_ibfk_3` FOREIGN KEY (`field_id`) REFERENCES `fieldofstudy` (`field_id`);

--
-- Constraints for table `countrydetails`
--
ALTER TABLE `countrydetails`
  ADD CONSTRAINT `countrydetails_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countrylist` (`country_id`);

--
-- Constraints for table `speakingrecords`
--
ALTER TABLE `speakingrecords`
  ADD CONSTRAINT `speakingrecords_ibfk_1` FOREIGN KEY (`TestID`) REFERENCES `tests` (`TestID`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`field_id`) REFERENCES `fieldofstudy` (`field_id`);

--
-- Constraints for table `testresponses`
--
ALTER TABLE `testresponses`
  ADD CONSTRAINT `fk_userid` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE,
  ADD CONSTRAINT `testresponses_ibfk_1` FOREIGN KEY (`TestID`) REFERENCES `tests` (`TestID`),
  ADD CONSTRAINT `testresponses_ibfk_2` FOREIGN KEY (`QuestionID`) REFERENCES `questions` (`QuestionID`);

--
-- Constraints for table `testresults`
--
ALTER TABLE `testresults`
  ADD CONSTRAINT `testresults_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `tests_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `tuitionfee`
--
ALTER TABLE `tuitionfee`
  ADD CONSTRAINT `tuitionfee_ibfk_1` FOREIGN KEY (`university_id`) REFERENCES `university` (`university_id`),
  ADD CONSTRAINT `tuitionfee_ibfk_2` FOREIGN KEY (`program_id`) REFERENCES `program` (`program_id`),
  ADD CONSTRAINT `tuitionfee_ibfk_3` FOREIGN KEY (`field_id`) REFERENCES `fieldofstudy` (`field_id`);

--
-- Constraints for table `university`
--
ALTER TABLE `university`
  ADD CONSTRAINT `university_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countrylist` (`country_id`);

--
-- Constraints for table `universityprogramfield`
--
ALTER TABLE `universityprogramfield`
  ADD CONSTRAINT `universityprogramfield_ibfk_1` FOREIGN KEY (`university_id`) REFERENCES `university` (`university_id`),
  ADD CONSTRAINT `universityprogramfield_ibfk_2` FOREIGN KEY (`program_id`) REFERENCES `program` (`program_id`),
  ADD CONSTRAINT `universityprogramfield_ibfk_3` FOREIGN KEY (`field_id`) REFERENCES `fieldofstudy` (`field_id`),
  ADD CONSTRAINT `universityprogramfield_ibfk_4` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`);

--
-- Constraints for table `userprogress`
--
ALTER TABLE `userprogress`
  ADD CONSTRAINT `userprogress_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
