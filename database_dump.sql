--
-- File generated with SQLiteStudio v3.4.21 on vi. abr. 24 23:21:52 2026
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Audit_Log
CREATE TABLE IF NOT EXISTS Audit_Log (auditLogID INTEGER PRIMARY KEY AUTOINCREMENT, editEntityType TEXT, editActionType TEXT, editTimestamp TEXT, userID INTEGER REFERENCES User (userID));

-- Table: Code_Repository
CREATE TABLE IF NOT EXISTS Code_Repository (codeRepositoryID INTEGER PRIMARY KEY AUTOINCREMENT, codeRepositoryName TEXT, "project(Codebase)(Github)" TEXT, platform TEXT, codeRepositoryDescription TEXT, primaryLanguage TEXT, teamID INTEGER REFERENCES Team (teamID), projectID INTEGER REFERENCES Project (projectID));
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (1, NULL, 'tiny.cc/x9b4t', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (2, NULL, 'bit.ly/3FgTzX', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (3, NULL, 't.ly/8YpQm', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (4, NULL, 'goo.gl/R2X7Pd', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (5, NULL, 'tinyurl.com/y7n3lxp2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (6, NULL, 'bit.do/rJ4mT', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (7, NULL, 'is.gd/Kp4XQ9', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (8, NULL, 'short.io/L2rYQ5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (9, NULL, 'tiny.cc/mQ7nX8', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (10, NULL, 'bit.ly/4Yx9TmR', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (11, NULL, 't.ly/xM7p9Q', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (12, NULL, 'goo.gl/YX34Pn', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (13, NULL, 'tinyurl.com/98tXmLp', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (14, NULL, 'bit.do/ZpL4TQ', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (15, NULL, 'is.gd/QxN7T9', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (16, NULL, 'short.io/7LpX4YQ', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (17, NULL, 'tiny.cc/QpM74X', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (18, NULL, 'bit.ly/X7pL4TQ', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (19, NULL, 't.ly/M98X7TQ', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (20, NULL, 'goo.gl/LpX7TQ9', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (21, NULL, 'tinyurl.com/YXpM749', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (22, NULL, 'bit.do/QX74MT9', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (23, NULL, 'is.gd/MX74TQ9', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (24, NULL, 'short.io/T9Q7MX4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (25, NULL, 'tiny.cc/X7T9Q4M', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (26, NULL, 'bit.ly/74QMXT9', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (27, NULL, 't.ly/QX7M94T', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (28, NULL, 'goo.gl/T9XQ74M', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (29, NULL, 'tinyurl.com/X74MT9Q', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (30, NULL, 'bit.do/TQX794M', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (31, NULL, 'is.gd/MTX974Q', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (32, NULL, 'short.io/9X74TQM', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (33, NULL, 'tiny.cc/QMTX749', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (34, NULL, 'bit.ly/X7Q9T4M', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (35, NULL, 't.ly/MTQX794', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (36, NULL, 'goo.gl/7QXMT49', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (37, NULL, 'tinyurl.com/MTX749Q', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (38, NULL, 'bit.do/X7TQ49M', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (39, NULL, 'is.gd/MTQ974X', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (40, NULL, 'short.io/T9X47QM', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (41, NULL, 'tiny.cc/Q7MTX94', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (42, NULL, 'bit.ly/MT7XQ49', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (43, NULL, 't.ly/9T7QX4M', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (44, NULL, 'goo.gl/QXMT974', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (45, NULL, 'tinyurl.com/7T9QMX4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (46, NULL, 'bit.do/X9T7Q4M', NULL, NULL, NULL, NULL, NULL);
INSERT INTO Code_Repository (codeRepositoryID, codeRepositoryName, "project(Codebase)(Github)", platform, codeRepositoryDescription, primaryLanguage, teamID, projectID) VALUES (47, NULL, 'is.gd/QMXT749', NULL, NULL, NULL, NULL, NULL);

-- Table: Contact_Channel
CREATE TABLE IF NOT EXISTS Contact_Channel (contactChannelID INTEGER PRIMARY KEY AUTOINCREMENT, slackChannel TEXT, teamID INTEGER REFERENCES Team (teamID));

-- Table: Department
CREATE TABLE IF NOT EXISTS Department (departmentID INTEGER PRIMARY KEY AUTOINCREMENT, departmentName TEXT);
INSERT INTO Department (departmentID, departmentName) VALUES (1, 'xTV_Web');
INSERT INTO Department (departmentID, departmentName) VALUES (2, 'Native TVs');
INSERT INTO Department (departmentID, departmentName) VALUES (3, 'Mobile');
INSERT INTO Department (departmentID, departmentName) VALUES (4, 'Reliability_Tool');
INSERT INTO Department (departmentID, departmentName) VALUES (5, 'Arch');
INSERT INTO Department (departmentID, departmentName) VALUES (6, 'Programme');

-- Table: Engineer
CREATE TABLE IF NOT EXISTS Engineer (engineerID INTEGER PRIMARY KEY AUTOINCREMENT, engineerName TEXT, engineerEmail TEXT, engineerExperties TEXT, userID INTEGER REFERENCES User (userID), teamID INTEGER REFERENCES Team (teamID), departmentID INTEGER REFERENCES Department (departmentID));
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (1, 'Olivia Carter', NULL, NULL, 1, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (2, 'James Bennett', NULL, NULL, 2, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (3, 'Emma Richardson', NULL, NULL, 3, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (4, 'Benjamin Hayes', NULL, NULL, 4, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (5, 'Sophia Mitchell', NULL, NULL, 5, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (6, 'William Cooper', NULL, NULL, 6, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (7, 'Isabella Ross', NULL, NULL, 7, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (8, 'Elijah Parker', NULL, NULL, 8, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (9, 'Ava Sullivan', NULL, NULL, 9, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (10, 'Noah Campbell', NULL, NULL, 10, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (11, 'Mia Henderson', NULL, NULL, 11, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (12, 'Lucas Foster', NULL, NULL, 12, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (13, 'Charlotte Murphy', NULL, NULL, 13, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (14, 'Henry Ward', NULL, NULL, 14, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (15, 'Amelia Brooks', NULL, NULL, 15, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (16, 'Alexander Perry', NULL, NULL, 16, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (17, 'Evelyn Hughes', NULL, NULL, 17, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (18, 'Daniel Scott', NULL, NULL, 18, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (19, 'Harper Lewis', NULL, NULL, 19, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (20, 'Matthew Reed', NULL, NULL, 20, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (21, 'Scarlett Edwards', NULL, NULL, 21, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (22, 'Jack Turner', NULL, NULL, 22, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (23, 'Lily Phillips', NULL, NULL, 23, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (24, 'Samuel Morgan', NULL, NULL, 24, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (25, 'Grace Patterson', NULL, NULL, 25, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (26, 'Owen Barnes', NULL, NULL, 26, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (27, 'Chloe Hall', NULL, NULL, 27, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (28, 'Nathan Fisher', NULL, NULL, 28, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (29, 'Zoey Stevens', NULL, NULL, 29, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (30, 'Caleb Bryant', NULL, NULL, 30, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (31, 'Hannah Simmons', NULL, NULL, 31, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (32, 'Isaac Jenkins', NULL, NULL, 32, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (33, 'Madison Clarke', NULL, NULL, 33, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (34, 'Gabriel Coleman', NULL, NULL, 34, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (35, 'Riley Sanders', NULL, NULL, 35, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (36, 'Leo Watson', NULL, NULL, 36, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (37, 'Victoria Price', NULL, NULL, 37, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (38, 'Julian Bell', NULL, NULL, 38, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (39, 'Layla Russell', NULL, NULL, 39, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (40, 'Ethan Griffin', NULL, NULL, 40, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (41, 'Aurora Cooper', NULL, NULL, 41, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (42, 'Dylan Spencer', NULL, NULL, 42, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (43, 'Stella Martinez', NULL, NULL, 43, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (44, 'Levi Bishop', NULL, NULL, 44, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (45, 'Eleanor Freeman', NULL, NULL, 45, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (46, 'Hudson Ford', NULL, NULL, 46, NULL, NULL);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (47, 'Sebastian Holt', NULL, NULL, 47, NULL, 1);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (48, 'Nora Chandler', NULL, NULL, 48, NULL, 1);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (49, 'Mason Briggs', NULL, NULL, 49, NULL, 2);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (50, 'Violet Ramsey', NULL, NULL, 50, NULL, 3);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (51, 'Adam Sinclair', NULL, NULL, 51, NULL, 3);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (52, 'Lucy Vaughn', NULL, NULL, 52, NULL, 4);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (53, 'Theodore Knox', NULL, NULL, 53, NULL, 5);
INSERT INTO Engineer (engineerID, engineerName, engineerEmail, engineerExperties, userID, teamID, departmentID) VALUES (54, 'Bella Monroe', NULL, NULL, 54, NULL, 6);

-- Table: Message
CREATE TABLE IF NOT EXISTS Message (messageID INTEGER PRIMARY KEY AUTOINCREMENT, messageTitle TEXT, messageType TEXT, messageContent TEXT, messageTimestump TEXT, teamID INTEGER REFERENCES Team (teamID), userID INTEGER REFERENCES User (userID));

-- Table: Project
CREATE TABLE IF NOT EXISTS Project (projectID INTEGER PRIMARY KEY AUTOINCREMENT, jiraProjectName TEXT, workstream TEXT, departmentID INTEGER REFERENCES Department (departmentID));
INSERT INTO Project (projectID, jiraProjectName, workstream, departmentID) VALUES (1, 'Client Lightning Xtv', NULL, 1);
INSERT INTO Project (projectID, jiraProjectName, workstream, departmentID) VALUES (2, 'Client Web', NULL, 1);
INSERT INTO Project (projectID, jiraProjectName, workstream, departmentID) VALUES (3, 'Client Roku TV', NULL, 2);
INSERT INTO Project (projectID, jiraProjectName, workstream, departmentID) VALUES (4, 'Client Apple TV', NULL, 3);
INSERT INTO Project (projectID, jiraProjectName, workstream, departmentID) VALUES (5, 'Client Mobile', NULL, 3);
INSERT INTO Project (projectID, jiraProjectName, workstream, departmentID) VALUES (6, 'Client Automation QA', NULL, 4);
INSERT INTO Project (projectID, jiraProjectName, workstream, departmentID) VALUES (7, 'Client Device as a Service', NULL, 4);
INSERT INTO Project (projectID, jiraProjectName, workstream, departmentID) VALUES (8, 'Client SRE', NULL, 4);
INSERT INTO Project (projectID, jiraProjectName, workstream, departmentID) VALUES (9, 'Client Apps Tooling', NULL, 4);
INSERT INTO Project (projectID, jiraProjectName, workstream, departmentID) VALUES (10, 'Client CLIP Backend for Frontend', NULL, 5);
INSERT INTO Project (projectID, jiraProjectName, workstream, departmentID) VALUES (11, 'Client Support', NULL, 6);

-- Table: Schedule_Event
CREATE TABLE IF NOT EXISTS Schedule_Event (scheduleEventID INTEGER PRIMARY KEY, scheduleEventTitle TEXT, scheduleEventDate TEXT, scheduleEventTime TEXT, scheduleEventDescription TEXT, scheduleEventPlatform TEXT);

-- Table: Team
CREATE TABLE IF NOT EXISTS Team (teamID INTEGER PRIMARY KEY AUTOINCREMENT, teamName TEXT, developmentFocusArea TEXT, jiraBoardLink TEXT, keySkillsAndTechnologies TEXT, softwareOwnedAndEvolved TEXT, versioningApproaches TEXT, wikiSearchTerms TEXT, dailyStundupTimeAndLink TEXT, agilePractices TEXT, wikiLink TEXT, numberOfConcurrentProjects TEXT, departmentID INTEGER REFERENCES Department (departmentID), managerID INTEGER REFERENCES Engineer (engineerID));
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (1, 'Code Warriors', 'Infrastructure scalability, CI/CD integration, platform resilience', 'short.ly/a7XbP3', 'AWS/GCP, Terraform, Kubernetes, CI/CD, Docker, Python, Bash', NULL, NULL, NULL, NULL, NULL, 'fake.ly/X9TQ74M', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (2, 'The Debuggers', 'Advanced debugging tools, automated error detection, root cause analysis', 'tiny.link/ZpQ4M9', 'Debugging tools (GDB, LLDB), Stack traces, Log analysis, Python, Java', NULL, NULL, NULL, NULL, NULL, 'shorter.io/MTX97Q4', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (3, 'Bit Masters', 'Security compliance, encryption techniques, data integrity', 'bitly.io/7XQM94T', 'Cryptography, Penetration Testing, Security Compliance (ISO 27001)', NULL, NULL, NULL, NULL, NULL, 'tinyjump.me/7T9QX4M', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (4, 'Agile Avengers', 'Agile transformation, workflow optimization, lean process improvement', 'shrt.me/M7QXT49', 'Agile frameworks (Scrum, SAFe, Kanban), Jira, Miro, Confluence', NULL, NULL, NULL, NULL, NULL, 'noway.cc/QX7MT94', '6+', NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (5, 'Syntax Squad', 'Automated deployment pipelines, release management, rollback strategies', 'fakeurl.net/X94TQM7', 'CI/CD, GitHub Actions, Jenkins, YAML, Kubernetes, Helm Charts', NULL, NULL, NULL, NULL, NULL, 'notreal.co/TQX79M4', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (6, 'The Codebreakers', 'Cryptographic security, authentication protocols, secure APIs', 'notreal.ly/MTQX947', 'Cybersecurity, Ethical Hacking, Encryption (AES, RSA), SSL/TLS', NULL, NULL, NULL, NULL, NULL, 'zapclick.io/MTQ79X4', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (7, 'DevOps Dynasty', 'DevOps best practices, Kubernetes orchestration, cloud automation', 'quick.li/9X7TQ4M', 'Kubernetes, Terraform, Ansible, CI/CD, AWS/GCP, Docker, Linux', NULL, NULL, NULL, NULL, NULL, 'goquick.ly/Q7X9MT4', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (8, 'Byte Force', 'Cloud infrastructure, API gateway development, serverless architecture', 'go2.cc/MT7XQ49', 'AWS Lambda, API Gateway, Microservices, GraphQL, Node.js, Go', NULL, NULL, NULL, NULL, NULL, 'bitnot.cc/X79TQ4M', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (9, 'The Cloud Architects', 'Cloud-native applications, distributed systems, multi-region deployments', 'linktr.ee/7TQX94M', 'Kubernetes, Istio, Terraform, AWS/GCP/Azure, Load Balancing', NULL, NULL, NULL, NULL, NULL, 'shrinkurl.me/T79XQ4M', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (10, 'Full Stack Ninjas', 'Frontend and backend synchronization, API integration, UX/UI consistency', 'jumpto.me/QX97MT4', 'React, Node.js, TypeScript, GraphQL, Next.js, Django, REST APIs', NULL, NULL, NULL, NULL, NULL, 'tinygo.cc/QXMT749', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (11, 'The Error Handlers', 'Log aggregation, AI-driven anomaly detection, real-time monitoring', 'tinygo.co/T9X7Q4M', 'Logging (ELK, Splunk), APM (Datadog, New Relic), Exception Handling', NULL, NULL, NULL, NULL, NULL, 'jumplink.io/X7MT9Q4', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (12, 'Stack Overflow Survivors', 'Knowledge management, engineering playbooks, documentation automation', 'click4.cc/X7TQM94', 'Technical Documentation, Knowledge Sharing, Confluence, AI Bots', NULL, NULL, NULL, NULL, NULL, 'voidjump.me/MTX97Q4', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (13, 'The Binary Beasts', 'High-performance computing, low-latency data processing, algorithm efficiency', 'shortr.io/M9X7QT4', 'C/C++, Data Structures, Parallel Computing, GPU Programming', NULL, NULL, NULL, NULL, NULL, 'shortpoint.cc/QX7T9M4', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (14, 'API Avengers', 'API security, authentication layers, API scalability', 'fake.li/QXMT749', 'API Security (OAuth, JWT), Postman, OpenAPI/Swagger, REST, gRPC', NULL, NULL, NULL, NULL, NULL, 'clktr.im/T79XQ4M', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (15, 'The Algorithm Alliance', 'Machine learning models, AI-driven analytics, data science applications', 'notreal.cc/7QX9MT4', 'Machine Learning, Data Science (Pandas, NumPy, Scikit-learn)', NULL, NULL, NULL, NULL, NULL, 'redirect4.me/7XMTQ94', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (16, 'Data Wranglers', 'Big data engineering, real-time data streaming, database optimization', 'trythis.me/TQX79M4', 'SQL, NoSQL, Big Data (Hadoop, Spark, Kafka), Python, ETL', NULL, NULL, NULL, NULL, NULL, 'quickpath.io/QXMT749', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (17, 'The Sprint Kings', 'Agile backlog management, sprint retrospectives, delivery forecasting', 'shrtn.co/M7XQT49', 'Agile methodologies, Jira, Velocity Metrics, Sprint Planning', NULL, NULL, NULL, NULL, NULL, 'short-it.co/TX7QM94', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (18, 'Exception Catchers', 'Fault tolerance, system resilience, disaster recovery planning', 'smallurl.io/Q7MTX49', 'Fault Tolerance, Failover Strategies, Incident Response, SRE', NULL, NULL, NULL, NULL, NULL, 'noway.link/X9TQ74M', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (19, 'Code Monkeys', 'Patch deployment, rollback automation, version control best practices', 'void.li/MT9X74Q', 'Git, Hotfix Management, Patch Deployment, Bash, CI/CD', NULL, NULL, NULL, NULL, NULL, 'microjump.io/MTX97Q4', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (20, 'The Compile Crew', 'Compiler optimization, static code analysis, build system improvements', 'jumpnow.co/XQT79M4', 'Build Systems (Bazel, CMake, Make), Compiler Optimization', NULL, NULL, NULL, NULL, NULL, 'tap2go.cc/Q7X9T4M', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (21, 'Git Good', 'Branching strategies, merge conflict resolution, Git best practices', 'fakeclick.me/7T9XQ4M', 'Git, GitOps, Merge Strategies, Branching Models, GitLab CI/CD', NULL, NULL, NULL, NULL, NULL, 'zaptrack.io/MTQ79X4', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (22, 'The CI/CD Squad', 'Continuous integration, automated testing, deployment pipelines', 'shortjump.io/TX7Q94M', 'Jenkins, GitHub Actions, GitOps, Terraform, AWS CodePipeline', NULL, NULL, NULL, NULL, NULL, 'notreal.link/X7MT9Q4', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (23, 'Bug Exterminators', 'Performance profiling, automated test generation, security patching', 'redirect.cc/QX79T4M', 'Test Automation (Selenium, Cypress), Load Testing (JMeter)', 'Jira, XCode', NULL, NULL, '9:45', 'Scrum', 'clickthis.io/T79XQ4M', '5 to 6', NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (24, 'The Agile Alchemists', 'Agile maturity assessments, coaching & mentorship, SAFe/LeSS frameworks', 'zaplink.io/M7XQT94', 'Agile Transformation, SAFe, Jira, Value Stream Mapping', NULL, NULL, NULL, NULL, NULL, 'fakejump.me/QX7T9M4', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (25, 'The Hotfix Heroes', 'Emergency response, rollback strategies, live system debugging', 'noway.to/TQ79MX4', 'Real-time Debugging, Rollback Automation, Patch Deployment', NULL, NULL, NULL, NULL, NULL, 'shortyfast.cc/T79XQ4M', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (26, 'Cache Me Outside', 'Caching strategies, distributed cache systems, database query optimization', 'linkdrop.cc/MTX97Q4', 'Redis, Memcached, CDN Caching, Cache Invalidation Strategies', NULL, NULL, NULL, NULL, NULL, 'shrinkfast.io/XQMT749', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (27, 'The Scrum Lords', 'Agile training, sprint planning automation, process governance', 'shrinkto.me/QX7MT49', 'Scrum Mastery, Agile Coaching, Jira, Retrospective Analysis', NULL, NULL, NULL, NULL, NULL, 'cliktrack.cc/X7MTQ94', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (28, 'The 404 Not Found', 'Error page personalization, debugging-as-a-service, incident response', 'quicktap.io/X79TQ4M', 'Incident Response, HTTP Error Handling, Observability', NULL, NULL, NULL, NULL, NULL, 'snapurl.me/TX7QM94', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (29, 'The Version Controllers', 'GitOps workflows, repository security, automated versioning', 'tapgo.co/MX74TQ9', 'Git, Repository Management, DevSecOps, GitOps', NULL, NULL, NULL, NULL, NULL, 'bitjump.io/MT9X74Q', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (30, 'DevNull Pioneers', 'Logging frameworks, observability enhancements, error handling APIs', 'notareallink.com/Q7X9T4M', 'Logging Systems, Observability (Grafana, Prometheus)', NULL, NULL, NULL, NULL, NULL, 'nowayto.cc/Q7X9T4M', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (31, 'The Code Refactors', 'Code maintainability, tech debt reduction, automated refactoring tools', 'urlfake.io/MT9X7Q4', 'Code Cleanup, Tech Debt Management, SonarQube, Refactoring', 'Jira, confluence, Slack, Microsoft packages', NULL, NULL, '10:30', 'Scrum', 'redirect.me/MTQ79X4', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (32, 'The Jenkins Juggernauts', 'CI/CD pipeline optimization, Jenkins plugin development, infrastructure as code', 'snapurl.cc/7XMT9Q4', 'CI/CD Pipelines, Jenkins Scripting, Kubernetes, YAML', NULL, NULL, NULL, NULL, NULL, 'tapitquick.io/X7MT9Q4', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (33, 'Infinite Loopers', 'Frontend performance optimization, UI/UX consistency, component reusability', 'random.ly/XQ79MT4', 'Frontend Optimization, Performance Metrics, JavaScript, CSS', NULL, NULL, NULL, NULL, NULL, 'shorttrack.cc/T79XQ4M', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (34, 'The Feature Crafters', 'Feature flagging, A/B testing automation, rapid prototyping', 'clickthis.to/MTQ79X4', 'A/B Testing, Feature Flagging, Frontend Frameworks', NULL, NULL, NULL, NULL, NULL, 'fastzap.me/QX7MT94', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (35, 'The Bit Manipulators', 'Binary data processing, encoding/decoding algorithms, compression techniques', 'noreal.co/QX97MT4', 'Bitwise Operations, Low-level Optimization, Assembly, C++', NULL, NULL, NULL, NULL, NULL, 'noturl.com/TQX79M4', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (36, 'Kernel Crushers', 'Low-level optimization, OS kernel tuning, hardware acceleration', 'fastgo.io/TQ97X4M', 'Linux Kernel Development, System Performance, Rust, C', NULL, NULL, NULL, NULL, NULL, 'voidpath.cc/X9TQ74M', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (37, 'The Git Masters', 'Git automation, monorepo strategies, repository analytics', 'shrinkme.co/MXQ79T4', 'GitOps, Repository Scaling, Git Automation', NULL, NULL, NULL, NULL, NULL, 'quickgo.io/MTX97Q4', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (38, 'The API Explorers', 'API documentation, API analytics, developer experience optimization', 'url-shorten.cc/7T9XQ4M', 'API Testing (Postman, Swagger), API Gateway Management', NULL, NULL, NULL, NULL, NULL, 'shrt-now.cc/Q7X9T4M', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (39, 'The Lambda Legends', 'Serverless architecture, event-driven development, microservice automation', 'tinyway.me/Q7XMT94', 'Serverless Computing, AWS Lambda, Node.js, Python', NULL, NULL, NULL, NULL, NULL, 'tapclick.io/MTQ79X4', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (40, 'The Encryption Squad', 'Cybersecurity research, cryptographic key management, secure data storage', 'jumpfast.io/TQX79M4', 'Cryptography (AES, RSA, SHA-256), Security Audits', NULL, NULL, NULL, NULL, NULL, 'zippyurl.co/X7MT9Q4', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (41, 'The UX Wizards', 'Accessibility, user behavior analytics, UI/UX best practices', 'micro.link/X7MT9Q4', 'UI/UX Design, Figma, Adobe XD, Usability Testing', NULL, NULL, NULL, NULL, NULL, 'bitshrink.io/T79XQ4M', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (42, 'The Hackathon Hustlers', 'Rapid prototyping, proof-of-concept development, hackathon facilitation', 'quickmove.cc/MTX97Q4', 'Rapid Prototyping, MVP Development, No-Code Tools', NULL, NULL, NULL, NULL, NULL, 'jumplink.cc/QX7MT94', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (43, 'The Frontend Phantoms', 'Frontend frameworks, web performance tuning, component libraries', 'fakejump.io/QX7T9M4', 'Frontend Frameworks (React, Vue, Angular), Performance Optimization', NULL, NULL, NULL, NULL, NULL, 'fakego.me/TQX79M4', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (44, 'The Dev Dragons', 'API integrations, SDK development, plugin architecture', 'shorty.cc/T79XQ4M', 'API Development, SDK Development, Plugin Architecture', NULL, NULL, NULL, NULL, NULL, 'shrinkfast.co/X9TQ74M', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (45, 'The Microservice Mavericks', 'Microservice governance, inter-service communication, API gateways', 'zapit.io/7XMTQ94', 'Service Mesh (Istio, Envoy), API Gateway, gRPC', NULL, NULL, NULL, NULL, NULL, 'tinyurlnow.io/MTX97Q4', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (46, 'The Quantum Coders', 'Quantum computing simulations, parallel processing, AI-assisted coding', 'bitnotreal.com/QXMT749', 'Quantum Computing, Qiskit, Parallel Computing', NULL, NULL, NULL, NULL, NULL, 'zapforward.cc/Q7X9T4M', NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (47, NULL, NULL, 'clktrack.io/TX7QM94', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Team (teamID, teamName, developmentFocusArea, jiraBoardLink, keySkillsAndTechnologies, softwareOwnedAndEvolved, versioningApproaches, wikiSearchTerms, dailyStundupTimeAndLink, agilePractices, wikiLink, numberOfConcurrentProjects, departmentID, managerID) VALUES (95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- Table: Team_Dependency
CREATE TABLE IF NOT EXISTS Team_Dependency(
    sourceTeamID INTEGER,
    targetTeamID INTEGER,
    dependencyType TEXT,
    
    PRIMARY KEY (sourceTeamID, targetTeamID)

);
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (1, 2, 'Infrastructure Support');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (2, 3, 'Bug Resolution');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (3, 14, 'Security Fixes');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (4, 17, 'Agile Coaching');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (5, 34, 'Deployment Pipeline');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (6, 40, 'Encryption Logic');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (7, 1, 'CI/CD Infrastructure');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (8, 14, 'Cloud Hosting Services');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (9, 8, 'Service Orchestration');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (9, 26, 'Service Orchestration');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (10, 38, 'Frontend Design');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (11, 2, 'Error Logging Services');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (12, 27, 'Best Practices Sharing');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (13, 15, 'Data Processing');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (14, 44, 'Secure API Development');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (15, 6, 'Advanced Algorithm Support');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (16, 35, 'User Data Insights');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (17, 24, 'Sprint Planning');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (18, 2, 'Critical Fixes');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (19, 29, 'Patch Management');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (20, 35, 'Code Base Management');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (21, 29, 'Automated Merging');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (22, 5, 'Deployment Rollback Support');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (23, 2, 'Performance Tuning');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (24, 12, 'Agile Adoption Coaching');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (25, 22, 'Emergency Fixes');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (25, 19, 'Emergency Fixes');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (26, 41, 'Distributed Caching Services');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (27, 17, 'Agile Process Coordination');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (27, 4, 'Agile Process Coordination');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (28, 27, 'Repository Management');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (29, 20, 'Branching Strategy');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (29, 28, 'Branching Strategy');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (30, 38, 'API Documentation');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (31, 23, 'Legacy Code Cleanup');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (32, 7, 'Automated Testing');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (32, 21, 'Automated Testing');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (33, 34, 'UI Responsiveness');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (34, 11, 'Design Feedback');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (34, 5, 'Design Feedback');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (35, 13, 'ETL Pipelines');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (37, 29, 'Low-Level Optimization');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (38, 10, 'Best Practices');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (39, 14, 'Secure Communication');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (40, 14, 'Serverless Functions');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (40, 38, 'Cryptographic Security');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (41, 10, 'UI Components');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (41, 34, 'UI Components');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (42, 41, 'Rapid Prototyping');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (43, 38, 'UI Enhancements');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (44, 34, 'API Integration');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (45, 31, 'Service Scaling');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (45, 39, 'High-Performance Computing');
INSERT INTO Team_Dependency (sourceTeamID, targetTeamID, dependencyType) VALUES (46, 36, 'Code Reviews');

-- Table: Team_Project
CREATE TABLE IF NOT EXISTS Team_Project(
    teamID INTEGER,
    projectID INTEGER,
    
    PRIMARY KEY(teamID, projectID)
);
INSERT INTO Team_Project (teamID, projectID) VALUES (1, 1);
INSERT INTO Team_Project (teamID, projectID) VALUES (2, 1);
INSERT INTO Team_Project (teamID, projectID) VALUES (3, 1);
INSERT INTO Team_Project (teamID, projectID) VALUES (4, 1);
INSERT INTO Team_Project (teamID, projectID) VALUES (5, 1);
INSERT INTO Team_Project (teamID, projectID) VALUES (6, 1);
INSERT INTO Team_Project (teamID, projectID) VALUES (7, NULL);
INSERT INTO Team_Project (teamID, projectID) VALUES (8, 1);
INSERT INTO Team_Project (teamID, projectID) VALUES (9, 1);
INSERT INTO Team_Project (teamID, projectID) VALUES (10, 1);
INSERT INTO Team_Project (teamID, projectID) VALUES (11, 2);
INSERT INTO Team_Project (teamID, projectID) VALUES (12, 2);
INSERT INTO Team_Project (teamID, projectID) VALUES (13, 2);
INSERT INTO Team_Project (teamID, projectID) VALUES (14, 2);
INSERT INTO Team_Project (teamID, projectID) VALUES (15, 2);
INSERT INTO Team_Project (teamID, projectID) VALUES (16, 3);
INSERT INTO Team_Project (teamID, projectID) VALUES (17, 3);
INSERT INTO Team_Project (teamID, projectID) VALUES (18, 3);
INSERT INTO Team_Project (teamID, projectID) VALUES (19, 3);
INSERT INTO Team_Project (teamID, projectID) VALUES (20, 3);
INSERT INTO Team_Project (teamID, projectID) VALUES (21, 4);
INSERT INTO Team_Project (teamID, projectID) VALUES (22, 4);
INSERT INTO Team_Project (teamID, projectID) VALUES (23, 4);
INSERT INTO Team_Project (teamID, projectID) VALUES (24, 4);
INSERT INTO Team_Project (teamID, projectID) VALUES (25, 4);
INSERT INTO Team_Project (teamID, projectID) VALUES (26, 5);
INSERT INTO Team_Project (teamID, projectID) VALUES (27, 5);
INSERT INTO Team_Project (teamID, projectID) VALUES (28, 5);
INSERT INTO Team_Project (teamID, projectID) VALUES (29, 5);
INSERT INTO Team_Project (teamID, projectID) VALUES (30, 5);
INSERT INTO Team_Project (teamID, projectID) VALUES (31, 5);
INSERT INTO Team_Project (teamID, projectID) VALUES (32, 5);
INSERT INTO Team_Project (teamID, projectID) VALUES (33, 5);
INSERT INTO Team_Project (teamID, projectID) VALUES (34, 5);
INSERT INTO Team_Project (teamID, projectID) VALUES (35, 5);
INSERT INTO Team_Project (teamID, projectID) VALUES (36, 5);
INSERT INTO Team_Project (teamID, projectID) VALUES (37, 5);
INSERT INTO Team_Project (teamID, projectID) VALUES (38, NULL);
INSERT INTO Team_Project (teamID, projectID) VALUES (39, 6);
INSERT INTO Team_Project (teamID, projectID) VALUES (40, NULL);
INSERT INTO Team_Project (teamID, projectID) VALUES (41, 7);
INSERT INTO Team_Project (teamID, projectID) VALUES (42, 8);
INSERT INTO Team_Project (teamID, projectID) VALUES (43, 9);
INSERT INTO Team_Project (teamID, projectID) VALUES (44, NULL);
INSERT INTO Team_Project (teamID, projectID) VALUES (45, 10);
INSERT INTO Team_Project (teamID, projectID) VALUES (46, 11);

-- Table: Team_Schedule_Ev
CREATE TABLE IF NOT EXISTS Team_Schedule_Ev(
    teamID INTEGER,
    scheduleEventID INTEGER,
    
    PRIMARY KEY (teamID, scheduleEventID)
);

-- Table: User
CREATE TABLE IF NOT EXISTS User (userID INTEGER PRIMARY KEY AUTOINCREMENT, userActualName TEXT, userUserName TEXT, userEmail TEXT, userPassword TEXT, userAccessPermition TEXT);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (1, 'Olivia Carter', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (2, 'James Bennett', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (3, 'Emma Richardson', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (4, 'Benjamin Hayes', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (5, 'Sophia Mitchell', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (6, 'William Cooper', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (7, 'Isabella Ross', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (8, 'Elijah Parker', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (9, 'Ava Sullivan', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (10, 'Noah Campbell', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (11, 'Mia Henderson', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (12, 'Lucas Foster', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (13, 'Charlotte Murphy', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (14, 'Henry Ward', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (15, 'Amelia Brooks', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (16, 'Alexander Perry', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (17, 'Evelyn Hughes', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (18, 'Daniel Scott', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (19, 'Harper Lewis', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (20, 'Matthew Reed', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (21, 'Scarlett Edwards', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (22, 'Jack Turner', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (23, 'Lily Phillips', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (24, 'Samuel Morgan', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (25, 'Grace Patterson', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (26, 'Owen Barnes', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (27, 'Chloe Hall', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (28, 'Nathan Fisher', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (29, 'Zoey Stevens', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (30, 'Caleb Bryant', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (31, 'Hannah Simmons', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (32, 'Isaac Jenkins', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (33, 'Madison Clarke', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (34, 'Gabriel Coleman', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (35, 'Riley Sanders', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (36, 'Leo Watson', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (37, 'Victoria Price', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (38, 'Julian Bell', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (39, 'Layla Russell', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (40, 'Ethan Griffin', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (41, 'Aurora Cooper', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (42, 'Dylan Spencer', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (43, 'Stella Martinez', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (44, 'Levi Bishop', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (45, 'Eleanor Freeman', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (46, 'Hudson Ford', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (47, 'Sebastian Holt', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (48, 'Nora Chandler', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (49, 'Mason Briggs', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (50, 'Violet Ramsey', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (51, 'Adam Sinclair', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (52, 'Lucy Vaughn', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (53, 'Theodore Knox', NULL, NULL, NULL, NULL);
INSERT INTO User (userID, userActualName, userUserName, userEmail, userPassword, userAccessPermition) VALUES (54, 'Bella Monroe', NULL, NULL, NULL, NULL);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
