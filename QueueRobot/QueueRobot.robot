<?xml version="1.0" encoding="UTF-8" ?>
<object class="Robot" serializationversion="2">
  <prologue>
    <saved-by-versions>
      <version>11.1.0.0</version>
      <version>11.1.0.4</version>
    </saved-by-versions>
    <file-type>robot</file-type>
    <referenced-types>
      <type name="Queue"/>
    </referenced-types>
    <triggers/>
    <sub-robots/>
    <device-mappings/>
    <comment/>
    <tags/>
    <referenced-snippets/>
    <typed-variables>
      <typed-variable name="queue" type-name="Queue"/>
    </typed-variables>
    <parameters/>
    <return-variables/>
    <store-in-database-variables/>
    <browser-engine>WEBKIT</browser-engine>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">queue</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">Queue</property>
        </property>
        <property name="assignments" class="AttributeAssignments">
          <property name="project" class="AttributeAssignment">
            <property name="attributeValue" class="String">QueueRobot</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" class="java.lang.Class">kapow.robot.plugin.common.domain.StringAttributeType</property>
          </property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="0">image</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference">
          <property name="simpleTypeId" class="Integer">6</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="1">json</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference">
          <property name="simpleTypeId" class="Integer">152</property>
        </property>
      </property>
    </object>
  </property>
  <property name="proxyServerConfiguration" class="ProxyServerConfiguration" serializationversion="0"/>
  <property name="httpClientType" class="HttpClientType">
    <property name="enum-name" class="String">WEBKIT</property>
  </property>
  <property name="ntlmAuthentication" class="NTLMAuthenticationType">
    <property name="enum-name" class="String">STANDARD</property>
  </property>
  <property name="usePre96DefaultWaiting" class="Boolean" id="2">false</property>
  <property name="maxWaitForTimeout" class="Integer">10000</property>
  <property name="waitRealTime" idref="2"/>
  <property name="privateHTTPCacheEnabled" class="Boolean" id="3">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="tags" class="RobotTagList"/>
  <property name="humanProcessingTime">
    <null/>
  </property>
  <property name="executionMode" class="ExecutionMode">
    <property name="enum-name" class="String">DIRECT</property>
  </property>
  <property name="avoidExternalReExecution" idref="2"/>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="4"/>
    <steps class="ArrayList">
      <object class="Group" id="5">
        <name class="String">Get Robot Input Format</name>
        <comment class="String">Do not change anything in this group.
Make changes to the parameters in the variable "queue"</comment>
        <blockBeginStep class="BlockBeginStep" id="6"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="7">
            <property name="name" class="String">Assign Json</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="Expression" serializationversion="1">
                <property name="text" class="String">&gt;&gt;{
  "robotName" : "robotName",
  "projectName" : "projectName"
}&lt;&lt;</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" idref="1"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders" id="8"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment" class="String">Do not edit this!</property>
            <property name="enabled" idref="3"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="9">
            <property name="name" class="String">Open Json</property>
            <property name="stepAction" class="OpenVariable">
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" idref="1"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="3"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="10">
            <property name="name" class="String">Set robotName</property>
            <property name="stepAction" class="SetJSONStepAction">
              <property name="newContent" class="Expression" serializationversion="1">
                <property name="text" class="String">"\""+queue.robot+"\""</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">@top:.robotName</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="3"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String" id="11">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="12">
            <property name="name" class="String">Set projectName</property>
            <property name="stepAction" class="SetJSONStepAction">
              <property name="newContent" class="Expression" serializationversion="1">
                <property name="text" class="String">"\""+queue.project+"\""</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">@top:.projectName</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="3"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element idref="11"/>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="13">
            <property name="name" class="String">REST robotInputExample</property>
            <property name="stepAction" class="CallRESTWebService2" serializationversion="1">
              <property name="urlProvider" class="Expression" serializationversion="1">
                <property name="text" class="String">queue.managementConsole+"/api/mc/tasks/robotInputExample"</property>
              </property>
              <property name="request" class="kapow.robot.plugin.common.stateprocessor.rest.PostRestRequest">
                <property name="body" class="kapow.robot.plugin.common.stateprocessor.rest.RawBodyContent">
                  <property name="data" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" idref="1"/>
                    </property>
                  </property>
                  <property name="contentType" class="kapow.robot.plugin.common.support.mimetype.MIMETypeValueStringExpression">
                    <property name="value" class="String">application/json</property>
                  </property>
                </property>
              </property>
              <property name="accept" class="kapow.robot.plugin.common.support.mimetype.AnyMIMETypeValueStringExpression">
                <property name="value" class="String">application/json</property>
              </property>
              <property name="output" class="kapow.robot.plugin.common.stateprocessor.rest.ToVariableOutputSpecification" serializationversion="1">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" idref="1"/>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="26">
                <property name="useCookies" class="Boolean">false</property>
                <property name="headerProvider" class="kapow.robot.plugin.common.support.browser2.requestheaders.ListHeaderProvider">
                  <property name="headers" class="BeanList">
                    <object class="kapow.robot.plugin.common.support.browser2.requestheaders.RequestHeader">
                      <property name="header" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                        <property name="dataConverters" class="DataConverters">
                          <element class="EvaluateExpression" serializationversion="0">
                            <property name="expression" class="String">queue.username+":"+queue.password</property>
                          </element>
                          <element class="ConvertTextToBinary"/>
                          <element class="Base64Encode"/>
                          <element class="AddText">
                            <property name="text" class="String">Authorization: Basic </property>
                          </element>
                        </property>
                      </property>
                    </object>
                  </property>
                </property>
                <property name="responseStatusCodeAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">queue.Status</property>
                </property>
                <property name="ignoreLoadErrors" class="Boolean">true</property>
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">ignoreLoadErrors</element>
                  <element class="String">useCookies</element>
                  <element class="String">responseHeadersAttributeName</element>
                  <element class="String">responseStatusCodeAttributeName</element>
                  <element class="String">headerProvider</element>
                  <element class="String">credentialsProvider</element>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment" class="String">this step uses "pre-emptive authentication" in a custom header at the bottom of the Action Pane</property>
            <property name="enabled" idref="3"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="14">
            <property name="name" class="String">Assign Json</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                <property name="dataConverters" class="DataConverters">
                  <element class="GetVariable" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" idref="1"/>
                    </property>
                  </element>
                  <element class="EvaluateExpression" serializationversion="0">
                    <property name="expression" class="String">&gt;&gt;{
  "priority" : "MEDIUM",
  "robotInfo" : {
                  "robotName" : "RobotToQueue",
                  "projectName" : "Default Project"
                },
  "robotInputConfig" :&lt;&lt;+INPUT+&gt;&gt;,
  "timeout" : 6000
}&lt;&lt;</property>
                  </element>
                </property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">json</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment" class="String">Do not edit this!</property>
            <property name="enabled" idref="3"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="15">
            <property name="name" class="String">Open Json</property>
            <property name="stepAction" class="OpenVariable">
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" idref="1"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="3"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="16">
            <property name="name" class="String">Set Input Config</property>
            <property name="stepAction" class="SetJSONStepAction">
              <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                <property name="dataConverters" class="DataConverters">
                  <element class="GetVariable" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" idref="1"/>
                    </property>
                  </element>
                  <element class="Extract2DataConverter">
                    <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                      <property name="value" class="String">.*?(\[.*\]).*</property>
                    </property>
                    <property name="specifiedDescription" class="String">Extract JSON content</property>
                  </element>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">@top:.robotInputConfig.inputObjects</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="3"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="17">
            <property name="name" class="String">Set Robot Name</property>
            <property name="stepAction" class="SetJSONStepAction">
              <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">queue.robot</property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">@top:.robotInfo.robotName</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="3"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="18">
            <property name="name" class="String">Set Project Name</property>
            <property name="stepAction" class="SetJSONStepAction">
              <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">queue.project</property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">@top:.robotInfo.projectName</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="3"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="19">
            <property name="name" class="String">Set timeout</property>
            <property name="stepAction" class="SetJSONStepAction">
              <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">queue.timeout</property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">@top:.timeout</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="3"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String" id="20">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="21">
            <property name="name" class="String">Set priority</property>
            <property name="stepAction" class="SetJSONStepAction">
              <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">queue.priority</property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">@top:.priority</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="3"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element idref="20"/>
            </property>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="22"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="6"/>
            <to idref="7"/>
          </object>
          <object class="TransitionEdge">
            <from idref="7"/>
            <to idref="9"/>
          </object>
          <object class="TransitionEdge">
            <from idref="9"/>
            <to idref="10"/>
          </object>
          <object class="TransitionEdge">
            <from idref="10"/>
            <to idref="12"/>
          </object>
          <object class="TransitionEdge">
            <from idref="12"/>
            <to idref="13"/>
          </object>
          <object class="TransitionEdge">
            <from idref="13"/>
            <to idref="14"/>
          </object>
          <object class="TransitionEdge">
            <from idref="14"/>
            <to idref="15"/>
          </object>
          <object class="TransitionEdge">
            <from idref="15"/>
            <to idref="16"/>
          </object>
          <object class="TransitionEdge">
            <from idref="16"/>
            <to idref="17"/>
          </object>
          <object class="TransitionEdge">
            <from idref="17"/>
            <to idref="18"/>
          </object>
          <object class="TransitionEdge">
            <from idref="18"/>
            <to idref="19"/>
          </object>
          <object class="TransitionEdge">
            <from idref="19"/>
            <to idref="21"/>
          </object>
          <object class="TransitionEdge">
            <from idref="21"/>
            <to idref="22"/>
          </object>
        </edges>
      </object>
      <object class="Transition" serializationversion="3" id="23">
        <property name="name" class="String">Set Robot Input - Text</property>
        <property name="stepAction" class="SetJSONStepAction">
          <property name="newContent" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
            <property name="value" class="String">"hello"</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">@top:.robotInputConfig.inputObjects[0].attributes[0].value</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">Here is where you set the input values for the Robot you want to queue</property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="24">
        <property name="name" class="String">Set Robot Input - Number</property>
        <property name="stepAction" class="SetJSONStepAction">
          <property name="newContent" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
            <property name="value" class="String">65</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">@top:.robotInputConfig.inputObjects[0].attributes[1].value</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String" id="25">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="26">
        <property name="name" class="String">Make sample Image</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
            <property name="dataConverters" class="DataConverters">
              <element class="AddText">
                <property name="text" class="String">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</property>
              </element>
              <element class="Base64Decode"/>
            </property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">image</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="27">
        <property name="name" class="String">Set Robot Input - Image</property>
        <property name="stepAction" class="SetJSONStepAction">
          <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
            <property name="dataConverters" class="DataConverters">
              <element class="GetVariable" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" idref="0"/>
                </property>
              </element>
              <element class="Base64Encode"/>
              <element class="AddText">
                <property name="text" class="String">"bytes:</property>
              </element>
              <element class="AddText">
                <property name="text" class="String">"</property>
                <property name="addTextStrategy" class="kapow.robot.plugin.common.stringprocessor.addtext.AddTextAfterStrategy"/>
                <property name="specifiedDescription" class="String">Add double quotes to end</property>
              </element>
            </property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">@top:.robotInputConfig.inputObjects[0].attributes[2].value</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="25"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="28">
        <property name="name" class="String">REST:Queue Robot</property>
        <property name="stepAction" class="CallRESTWebService2" serializationversion="1">
          <property name="urlProvider" class="Expression" serializationversion="1">
            <property name="text" class="String">queue.managementConsole+"/api/mc/tasks/queueRobot"</property>
          </property>
          <property name="request" class="kapow.robot.plugin.common.stateprocessor.rest.PostRestRequest">
            <property name="body" class="kapow.robot.plugin.common.stateprocessor.rest.RawBodyContent">
              <property name="data" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" idref="1"/>
                </property>
              </property>
              <property name="contentType" class="kapow.robot.plugin.common.support.mimetype.MIMETypeValueStringExpression">
                <property name="value" class="String">application/json</property>
              </property>
            </property>
          </property>
          <property name="accept" class="kapow.robot.plugin.common.support.mimetype.AnyMIMETypeValueStringExpression">
            <property name="value" class="String">application/json</property>
          </property>
          <property name="output" class="kapow.robot.plugin.common.stateprocessor.rest.ToVariableOutputSpecification" serializationversion="1">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" idref="1"/>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="26">
            <property name="useCookies" class="Boolean">false</property>
            <property name="headerProvider" class="kapow.robot.plugin.common.support.browser2.requestheaders.ListHeaderProvider">
              <property name="headers" class="BeanList">
                <object class="kapow.robot.plugin.common.support.browser2.requestheaders.RequestHeader">
                  <property name="header" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                    <property name="dataConverters" class="DataConverters">
                      <element class="EvaluateExpression" serializationversion="0">
                        <property name="expression" class="String">queue.username+":"+queue.password</property>
                      </element>
                      <element class="ConvertTextToBinary"/>
                      <element class="Base64Encode"/>
                      <element class="AddText">
                        <property name="text" class="String">Authorization: Basic </property>
                      </element>
                    </property>
                  </property>
                </object>
              </property>
            </property>
            <property name="ignoreLoadErrors" class="Boolean">true</property>
            <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">ignoreLoadErrors</element>
              <element class="String">useCookies</element>
              <element class="String">responseHeadersAttributeName</element>
              <element class="String">responseStatusCodeAttributeName</element>
              <element class="String">headerProvider</element>
              <element class="String">credentialsProvider</element>
            </property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Try" id="29">
        <property name="name" class="String">Success?</property>
      </object>
      <object class="Transition" serializationversion="3" id="30">
        <property name="name" class="String">Extract Ticket</property>
        <property name="stepAction" class="ExtractJSON2">
          <property name="dataConverters" class="DataConverters">
            <element class="UnquoteText"/>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">queue.ticket</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">@top:.ticket</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="End" id="31"/>
      <object class="Transition" serializationversion="3" id="32">
        <property name="name" class="String">Extract Error</property>
        <property name="stepAction" class="ExtractJSON2">
          <property name="dataConverters" class="DataConverters">
            <element class="UnquoteText"/>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">queue.Error</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">@top:.httpCode</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="33">
        <property name="name" class="String">Extract Status</property>
        <property name="stepAction" class="ExtractJSON2">
          <property name="dataConverters" class="DataConverters">
            <element class="UnquoteText"/>
          </property>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">queue.Status</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">@top:.message</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="34">
        <property name="name" class="String">Write Log</property>
        <property name="stepAction" class="WriteLog2">
          <property name="expression" class="Expression" serializationversion="1">
            <property name="text" class="String">"Failed to queue robot \""+queue.robot</property>
          </property>
        </property>
        <property name="elementFinders" idref="8"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="3"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="End" id="35"/>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="4"/>
        <to idref="5"/>
      </object>
      <object class="TransitionEdge">
        <from idref="5"/>
        <to idref="23"/>
      </object>
      <object class="TransitionEdge">
        <from idref="23"/>
        <to idref="24"/>
      </object>
      <object class="TransitionEdge">
        <from idref="24"/>
        <to idref="26"/>
      </object>
      <object class="TransitionEdge">
        <from idref="26"/>
        <to idref="27"/>
      </object>
      <object class="TransitionEdge">
        <from idref="27"/>
        <to idref="28"/>
      </object>
      <object class="TransitionEdge">
        <from idref="28"/>
        <to idref="29"/>
      </object>
      <object class="TransitionEdge">
        <from idref="29"/>
        <to idref="30"/>
      </object>
      <object class="TransitionEdge">
        <from idref="29"/>
        <to idref="32"/>
      </object>
      <object class="TransitionEdge">
        <from idref="30"/>
        <to idref="31"/>
      </object>
      <object class="TransitionEdge">
        <from idref="32"/>
        <to idref="33"/>
      </object>
      <object class="TransitionEdge">
        <from idref="33"/>
        <to idref="34"/>
      </object>
      <object class="TransitionEdge">
        <from idref="34"/>
        <to idref="35"/>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="26"/>
</object>
