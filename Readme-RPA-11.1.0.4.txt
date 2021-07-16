==========================================================================
Kofax RPA 11.1.0 Fix Pack 4
Build Date: April 14 , 2021
==========================================================================

Copyright (c) 2021 Kofax. All rights reserved.
Use is subject to license terms.

Problems Resolved in This Fix Pack
==================================
FR-14995 - 1604204 Enter group security name in MC is not working.
FR-14786 - 1590560 Restrict users in Kapplets to access robots based on project permissions.
1616378 - Project synchronization failed if elements were located in root folder when using Oracle DB.
1615443 - Removed URL to deprecated KappZone.
1611892 - Process Discovery Agent could cause Outlook to become unresponsive when configuring auto-reply.
1611047 - Navigation via address bar in CEF was broken.
1610326 - Ð¡ase-sensitive collation in LogDB caused invalid column name.
1603511 - ProductSearch example robot did not work.
1601596 - Process Discovery Agent generated duplicated error log messages when it failed to get window element.
1601260 - Fixed performance degradation of Desktop Automation.
1601085 - Enter Text replaced text in CEF address bar instead of appending.
1597869 - Users could not see running robots from projects they did not have permission to access.

Problems Resolved in Previous Fix Packs
=======================================

Problems Resolved in Fix Pack 3
-------------------------------
COD-14602 - 1594376 Fixed memory issue in Synchronizer.
1594883 - Call Rest with Digest Authentication did not work with auth-int and nonce count options.
1594392 - Git synchronization failed to synchronize empty project.
1594382 - Git synchronization consumed excessive amount of memory when reading robot summary.
1594379 - Git synchronization committed new files twice.
1594377 - Git synchronization stopped without errors.
1594334 - Upgraded ActiveMQ due to security vulnerability.
1594334 - Upgraded Spring and Spring-web due to security vulnerability.
1594334 - Upgraded Spring-security due to security vulnerability.
1594334 - Upgraded Woodstox due to security vulnerability.
1594334 - Upgraded Jackson due to security vulnerability.
1594334 - Upgraded XStream due to security vulnerability.
1591972 - LDAP user groups were not available in Kapplets.
1591225 - Replaced Oracle JDK with AdoptOpenJDK.
1583300 - File spn.txt was loaded from user profile by default.
1581520 - Localized the trial installer.
1578356 - Upgraded Axios due to security vulnerability.
1578346 - Upgraded jetty due to security vulnerability.
1565680 - File spn.txt required to be located in the installation folder.
1556600 - RoboServer logged "Unable to obtain RFS information from Management Console" after every robot run when RFS was unconfigured.

Features Implemented in Fix Pack 3
----------------------------------
1588292 - Added ability to pre-emptively HTTP authenticate REST and SOAP calls.

Problems Resolved in Fix Pack 2
-------------------------------
1573558 - Analyzer did not always discover processes created with assistance.
1573138 - Could not create a new user for DB in Process Discovery group.
1571426 - Discovery type of process could be different on the same Agent data.
1570545 - Manually recorded tasks were not discovered in Process Discovery Analyzer.
1570284 - Key press area was out of screenshot area in Process Discovery Analyzer.
1570278 - Process Discovery Analyzer failed to process data for packet that exceeded max allowed packet bytes.
1567756 - Process Discovery Agent became unresponsive after starting recording events.
1567658 - Failed to replace local storage db file in Process Discovery Agent.
1567082 - White labeling of installers did not work.
1562019 - Admin user rights were not updated from LDAP.
1561765 - Design Studio could crash when executing directly to branch after looping in snippet.
1559740 - Localization issue on the Data view page in MC.
1556717 - Form data was not exposed in the tree when opening PDF documents.
1555437 - Could not run robots from previous versions after restoring backup when using KCU license.

Features Implemented in Fix Pack 2
----------------------------------
FR-13466 - 1565685/1565681/1565683 Negotiation authentication for proxies in WebKit, CEF and Call REST.

Problems Resolved in Fix Pack 1
-------------------------------
1573558 - Processes created with assistance were not always discovered.
1573160 - Webkit Load Page step required access to configuration folder.
1573138 - Could not create access for more than one database in Process Discovery groups.
1555437 - Robots restored from previous version backup could not be started when using KCU license.
1548180 - Extract Email step ignored charset part of Content-Type header.
1544472 - Default value was missing for LDAP property in Docker configurator.
1543305 - "Robot name" filter did not contain "folder" of robot.
1542629 - Management Console could not be deployed on WebSphere.
1542339 - Process Discovery Analyzer ignored application ignore list.
1542213 - Path info did not include first element of tree in Process Discovery Analyzer.
1540726 - Could not open offline help from License Information window on Japanese locale.
1540723 - Help links on Introduction page were broken for offline documentation.
1538943 - Link to third-party documentation in Start menu was broken.
1538228 - Could not restore backup in Management Console installed on Docker using restore.sh.
1537697 - Profiling did not work on Japanese setup.
1536884 - Purge RoboServers setting was reset after refresh.
1533325 - Eclipse link exception when deleting project with "Delete project if exists" option.
1530720 - Password could be retrieved when editing schedule jobs.
1524075 - Synchronizer showed logs in console only.
1368761 - Password Store client user could add password on CyberArk tab.
