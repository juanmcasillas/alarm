<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.5.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="VCC" urn="urn:adsk.eagle:symbol:26928/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VCC" urn="urn:adsk.eagle:component:26957/1" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="DINA4_L" urn="urn:adsk.eagle:symbol:13867/1" library_version="1">
<frame x1="0" y1="0" x2="264.16" y2="180.34" columns="4" rows="4" layer="94" border-left="no" border-top="no" border-right="no" border-bottom="no"/>
</symbol>
<symbol name="DOCFIELD" urn="urn:adsk.eagle:symbol:13864/1" library_version="1">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94">&gt;SHEET</text>
<text x="88.9" y="11.43" size="2.54" layer="94">REV:</text>
<text x="1.27" y="19.05" size="2.54" layer="94">TITLE:</text>
<text x="1.27" y="11.43" size="2.54" layer="94">Document Number:</text>
<text x="17.78" y="19.05" size="2.54" layer="94">&gt;DRAWING_NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="DINA4_L" urn="urn:adsk.eagle:component:13919/1" prefix="FRAME" uservalue="yes" library_version="1">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A4, landscape with extra doc field</description>
<gates>
<gate name="G$1" symbol="DINA4_L" x="0" y="0"/>
<gate name="G$2" symbol="DOCFIELD" x="162.56" y="0" addlevel="must"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="solpad" urn="urn:adsk.eagle:library:364">
<description>&lt;b&gt;Solder Pads/Test Points&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MCS08" urn="urn:adsk.eagle:footprint:26493/1" library_version="2">
<description>&lt;b&gt;SOLDER PAD&lt;/b&gt;&lt;p&gt;
drill 1.2 mm</description>
<wire x1="-1.397" y1="0.508" x2="-1.397" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.508" y1="-1.397" x2="1.397" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.508" y1="1.397" x2="1.397" y2="0.508" width="0.1524" layer="21"/>
<wire x1="1.397" y1="0.508" x2="1.397" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="0.508" x2="-0.508" y2="1.397" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="1.397" x2="0.508" y2="1.397" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="-1.397" x2="-1.397" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.508" y1="-1.397" x2="-0.508" y2="-1.397" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="0.381" width="0.254" layer="51"/>
<pad name="MP" x="0" y="0" drill="1.1938" diameter="2.159" shape="octagon"/>
<text x="-1.27" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0.381" size="0.0254" layer="27">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="MCS08" urn="urn:adsk.eagle:package:26515/1" type="box" library_version="2">
<description>SOLDER PAD
drill 1.2 mm</description>
<packageinstances>
<packageinstance name="MCS08"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="LSP" urn="urn:adsk.eagle:symbol:26492/1" library_version="2">
<wire x1="-1.016" y1="2.032" x2="1.016" y2="0" width="0.254" layer="94"/>
<wire x1="-1.016" y1="0" x2="1.016" y2="2.032" width="0.254" layer="94"/>
<circle x="0" y="1.016" radius="1.016" width="0.4064" layer="94"/>
<text x="-1.27" y="2.921" size="1.778" layer="95">&gt;NAME</text>
<pin name="MP" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MCS08" urn="urn:adsk.eagle:component:26516/2" prefix="LSP" library_version="2">
<description>&lt;b&gt;SOLDER PAD&lt;/b&gt;&lt;p&gt; MC S0,8, drill 1.2 mm, distributor Buerklin, 08F130</description>
<gates>
<gate name="G$1" symbol="LSP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MCS08">
<connects>
<connect gate="G$1" pin="MP" pad="MP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:26515/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-cypressindustries" urn="urn:adsk.eagle:library:138">
<description>&lt;b&gt;Connectors from Cypress Industries&lt;/b&gt;&lt;p&gt;
www.cypressindustries.com&lt;br&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="32005-601" urn="urn:adsk.eagle:footprint:6435/1" library_version="2">
<description>&lt;b&gt;MINI USB-B R/A DIP&lt;/b&gt;&lt;p&gt;
Source: http://www.cypressindustries.com/pdf/32005-601.pdf</description>
<wire x1="-5.9228" y1="3.8473" x2="2.9098" y2="3.8473" width="0.1016" layer="51"/>
<wire x1="2.9404" y1="3.7967" x2="2.9404" y2="2.5986" width="0.1016" layer="21"/>
<wire x1="2.9404" y1="2.5986" x2="1.8098" y2="2.5986" width="0.1016" layer="21"/>
<wire x1="2.9097" y1="-3.8473" x2="-5.9228" y2="-3.8473" width="0.1016" layer="51"/>
<wire x1="-5.9228" y1="-3.8473" x2="-5.9228" y2="3.8473" width="0.1016" layer="21"/>
<wire x1="2.9573" y1="-3.8217" x2="2.9573" y2="-2.6998" width="0.1016" layer="21"/>
<wire x1="2.9573" y1="-2.6998" x2="1.8098" y2="-2.6998" width="0.1016" layer="21"/>
<wire x1="-5.9182" y1="3.8416" x2="-3.8879" y2="3.8416" width="0.1016" layer="51"/>
<wire x1="-5.9182" y1="-3.8415" x2="-5.9182" y2="-3.8414" width="0.1016" layer="21"/>
<wire x1="-5.9182" y1="-3.8414" x2="-5.9182" y2="3.8416" width="0.1016" layer="21"/>
<wire x1="-1.8171" y1="2.9591" x2="-4.5685" y2="2.7514" width="0.1016" layer="21"/>
<wire x1="-4.5685" y1="2.7514" x2="-4.828" y2="2.5438" width="0.1016" layer="21" curve="68.629849"/>
<wire x1="-4.828" y1="2.5438" x2="-4.828" y2="1.9727" width="0.1016" layer="21" curve="34.099487"/>
<wire x1="-4.828" y1="1.9727" x2="-4.5685" y2="1.7651" width="0.1016" layer="21" curve="68.629849"/>
<wire x1="-4.5685" y1="1.7651" x2="-1.8171" y2="1.5055" width="0.1016" layer="21"/>
<wire x1="-1.8171" y1="1.5055" x2="-1.8171" y2="1.7132" width="0.1016" layer="21"/>
<wire x1="-1.8171" y1="1.7132" x2="-4.2051" y2="1.9727" width="0.1016" layer="21"/>
<wire x1="-4.2051" y1="1.9727" x2="-4.2051" y2="2.4919" width="0.1016" layer="21"/>
<wire x1="-4.2051" y1="2.4919" x2="-1.8171" y2="2.7514" width="0.1016" layer="21"/>
<wire x1="-1.8171" y1="2.7514" x2="-1.8171" y2="2.9591" width="0.1016" layer="21"/>
<wire x1="-4.5684" y1="1.2459" x2="-0.5192" y2="1.0383" width="0.1016" layer="21"/>
<wire x1="-0.5192" y1="1.0383" x2="-0.3116" y2="0.8306" width="0.1016" layer="21" curve="-83.771817"/>
<wire x1="-4.5685" y1="1.2459" x2="-4.7761" y2="1.0383" width="0.1016" layer="21" curve="90"/>
<wire x1="-4.7761" y1="1.0383" x2="-4.7761" y2="1.0382" width="0.1016" layer="21"/>
<wire x1="-4.7761" y1="1.0382" x2="-4.5685" y2="0.8306" width="0.1016" layer="21" curve="90"/>
<wire x1="-4.5685" y1="0.8306" x2="-1.1422" y2="0.623" width="0.1016" layer="21"/>
<wire x1="-5.9182" y1="-3.8414" x2="-3.8879" y2="-3.8414" width="0.1016" layer="51"/>
<wire x1="-1.8171" y1="-2.9589" x2="-4.5685" y2="-2.7512" width="0.1016" layer="21"/>
<wire x1="-4.5685" y1="-2.7512" x2="-4.828" y2="-2.5436" width="0.1016" layer="21" curve="-68.629849"/>
<wire x1="-4.828" y1="-2.5436" x2="-4.828" y2="-1.9725" width="0.1016" layer="21" curve="-34.099487"/>
<wire x1="-4.828" y1="-1.9725" x2="-4.5685" y2="-1.7649" width="0.1016" layer="21" curve="-68.629849"/>
<wire x1="-4.5685" y1="-1.7649" x2="-1.8171" y2="-1.5053" width="0.1016" layer="21"/>
<wire x1="-1.8171" y1="-1.5053" x2="-1.8171" y2="-1.713" width="0.1016" layer="21"/>
<wire x1="-1.8171" y1="-1.713" x2="-4.2051" y2="-1.9725" width="0.1016" layer="21"/>
<wire x1="-4.2051" y1="-1.9725" x2="-4.2051" y2="-2.4917" width="0.1016" layer="21"/>
<wire x1="-4.2051" y1="-2.4917" x2="-1.8171" y2="-2.7512" width="0.1016" layer="21"/>
<wire x1="-1.8171" y1="-2.7512" x2="-1.8171" y2="-2.9589" width="0.1016" layer="21"/>
<wire x1="-4.5684" y1="-1.2457" x2="-0.5192" y2="-1.0381" width="0.1016" layer="21"/>
<wire x1="-0.5192" y1="-1.0381" x2="-0.3116" y2="-0.8304" width="0.1016" layer="21" curve="83.722654"/>
<wire x1="-0.3116" y1="-0.8304" x2="-0.3116" y2="0.8307" width="0.1016" layer="21"/>
<wire x1="-4.5685" y1="-1.2457" x2="-4.7761" y2="-1.0381" width="0.1016" layer="21" curve="-90"/>
<wire x1="-4.7761" y1="-1.038" x2="-4.5685" y2="-0.8304" width="0.1016" layer="21" curve="-90"/>
<wire x1="-4.5685" y1="-0.8304" x2="-1.1422" y2="-0.6228" width="0.1016" layer="21"/>
<wire x1="-1.1422" y1="-0.6228" x2="-1.1422" y2="0.6232" width="0.1016" layer="21"/>
<wire x1="-5.9182" y1="-3.8414" x2="-3.8146" y2="-3.8414" width="0.1016" layer="21"/>
<wire x1="-5.9182" y1="3.8416" x2="-3.8647" y2="3.8415" width="0.1016" layer="21"/>
<wire x1="2.8842" y1="-3.8472" x2="-0.6281" y2="-3.8472" width="0.1016" layer="21"/>
<wire x1="-0.6523" y1="3.8472" x2="2.8331" y2="3.8473" width="0.1016" layer="21"/>
<wire x1="-1.725" y1="4.15" x2="-1.225" y2="3.65" width="0" layer="46" curve="-90"/>
<wire x1="-1.225" y1="3.65" x2="-1.725" y2="3.15" width="0" layer="46" curve="-90"/>
<wire x1="-1.725" y1="3.15" x2="-2.725" y2="3.15" width="0" layer="46"/>
<wire x1="-2.725" y1="3.15" x2="-3.225" y2="3.65" width="0" layer="46" curve="-90"/>
<wire x1="-3.225" y1="3.65" x2="-2.725" y2="4.15" width="0" layer="46" curve="-90"/>
<wire x1="-2.725" y1="4.15" x2="-1.725" y2="4.15" width="0" layer="46"/>
<wire x1="-1.525" y1="-3.15" x2="-1.225" y2="-3.65" width="0" layer="46" curve="-90"/>
<wire x1="-1.225" y1="-3.65" x2="-1.725" y2="-4.15" width="0" layer="46" curve="-90"/>
<wire x1="-1.725" y1="-4.15" x2="-2.725" y2="-4.15" width="0" layer="46"/>
<wire x1="-2.725" y1="-4.15" x2="-3.225" y2="-3.65" width="0" layer="46" curve="-90"/>
<wire x1="-3.225" y1="-3.65" x2="-2.725" y2="-3.15" width="0" layer="46" curve="-90"/>
<wire x1="-2.725" y1="-3.15" x2="-1.525" y2="-3.15" width="0" layer="46"/>
<wire x1="1.8098" y1="2.6048" x2="1.8098" y2="-2.6973" width="0.1016" layer="51"/>
<pad name="M1" x="-2.225" y="3.65" drill="1" diameter="1.4224" shape="long"/>
<pad name="M2" x="-2.225" y="-3.65" drill="1" diameter="1.4224" shape="long"/>
<pad name="4" x="1.625" y="-0.8" drill="0.7" diameter="1.016"/>
<pad name="3" x="2.825" y="0" drill="0.7" diameter="1.016"/>
<pad name="1" x="2.825" y="1.6" drill="0.7" diameter="1.016"/>
<pad name="5" x="2.825" y="-1.6" drill="0.7" diameter="1.016"/>
<pad name="2" x="1.625" y="0.8" drill="0.7" diameter="1.016"/>
<text x="-4.1155" y="6.4859" size="1.27" layer="25">&gt;NAME</text>
<text x="-4.3979" y="-7.8527" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="32005-601" urn="urn:adsk.eagle:package:6465/1" type="box" library_version="2">
<description>MINI USB-B R/A DIP
Source: http://www.cypressindustries.com/pdf/32005-601.pdf</description>
<packageinstances>
<packageinstance name="32005-601"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MINI-USB-5" urn="urn:adsk.eagle:symbol:6403/1" library_version="2">
<wire x1="-2.54" y1="6.35" x2="-2.54" y2="-6.35" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-6.35" x2="-1.27" y2="-7.62" width="0.254" layer="94" curve="90"/>
<wire x1="-1.27" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94"/>
<wire x1="0" y1="-7.62" x2="1.016" y2="-8.128" width="0.254" layer="94" curve="-53.130102"/>
<wire x1="1.016" y1="-8.128" x2="2.54" y2="-8.89" width="0.254" layer="94" curve="53.130102"/>
<wire x1="2.54" y1="-8.89" x2="5.08" y2="-8.89" width="0.254" layer="94"/>
<wire x1="5.08" y1="-8.89" x2="6.35" y2="-7.62" width="0.254" layer="94" curve="90"/>
<wire x1="6.35" y1="-7.62" x2="6.35" y2="7.62" width="0.254" layer="94"/>
<wire x1="-2.54" y1="6.35" x2="-1.27" y2="7.62" width="0.254" layer="94" curve="-90"/>
<wire x1="-1.27" y1="7.62" x2="0" y2="7.62" width="0.254" layer="94"/>
<wire x1="0" y1="7.62" x2="1.016" y2="8.128" width="0.254" layer="94" curve="53.130102"/>
<wire x1="1.016" y1="8.128" x2="2.54" y2="8.89" width="0.254" layer="94" curve="-53.130102"/>
<wire x1="2.54" y1="8.89" x2="5.08" y2="8.89" width="0.254" layer="94"/>
<wire x1="5.08" y1="8.89" x2="6.35" y2="7.62" width="0.254" layer="94" curve="-90"/>
<wire x1="0" y1="5.08" x2="0" y2="-5.08" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="1.27" y2="-6.35" width="0.254" layer="94"/>
<wire x1="1.27" y1="-6.35" x2="3.81" y2="-6.35" width="0.254" layer="94"/>
<wire x1="3.81" y1="-6.35" x2="3.81" y2="6.35" width="0.254" layer="94"/>
<wire x1="3.81" y1="6.35" x2="1.27" y2="6.35" width="0.254" layer="94"/>
<wire x1="1.27" y1="6.35" x2="0" y2="5.08" width="0.254" layer="94"/>
<text x="-2.54" y="11.43" size="1.778" layer="95">&gt;NAME</text>
<text x="10.16" y="-7.62" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="1" x="-5.08" y="5.08" visible="pin" direction="pas"/>
<pin name="2" x="-5.08" y="2.54" visible="pin" direction="pas"/>
<pin name="3" x="-5.08" y="0" visible="pin" direction="pas"/>
<pin name="4" x="-5.08" y="-2.54" visible="pin" direction="pas"/>
<pin name="5" x="-5.08" y="-5.08" visible="pin" direction="pas"/>
</symbol>
<symbol name="SHIELD2" urn="urn:adsk.eagle:symbol:6427/1" library_version="2">
<wire x1="-2.54" y1="1.27" x2="0" y2="1.27" width="0.254" layer="94" style="shortdash"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="1.27" width="0.1524" layer="94"/>
<text x="1.27" y="-1.27" size="1.778" layer="95">&gt;NAME</text>
<pin name="S1" x="-2.54" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="S2" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MINI-USB_SHIELD5P2-" urn="urn:adsk.eagle:component:6481/2" prefix="X" library_version="2">
<description>MINI USB-B R/A DIP&lt;/b&gt; 5pol.&lt;p&gt;
Source: www.cypressindustries.com</description>
<gates>
<gate name="G41" symbol="MINI-USB-5" x="0" y="0"/>
<gate name="S" symbol="SHIELD2" x="2.54" y="-12.7" addlevel="request"/>
</gates>
<devices>
<device name="32005-601" package="32005-601">
<connects>
<connect gate="G41" pin="1" pad="1"/>
<connect gate="G41" pin="2" pad="2"/>
<connect gate="G41" pin="3" pad="3"/>
<connect gate="G41" pin="4" pad="4"/>
<connect gate="G41" pin="5" pad="5"/>
<connect gate="S" pin="S1" pad="M1"/>
<connect gate="S" pin="S2" pad="M2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:6465/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="5" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead" urn="urn:adsk.eagle:library:325">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X01" urn="urn:adsk.eagle:footprint:22382/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" shape="octagon"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="1X01" urn="urn:adsk.eagle:package:22485/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X01"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PINHD1" urn="urn:adsk.eagle:symbol:22381/1" library_version="4">
<wire x1="-6.35" y1="-2.54" x2="1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="-6.35" y2="2.54" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="2.54" x2="-6.35" y2="-2.54" width="0.4064" layer="94"/>
<text x="-6.35" y="3.175" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X1" urn="urn:adsk.eagle:component:22540/3" prefix="JP" uservalue="yes" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="PINHD1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X01">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22485/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="64" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="P+2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="DINA4_L" device=""/>
<part name="3V3" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="EN" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="SP" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="SN" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="G34" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="G35" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="G32" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="G33" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="G25" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="G26" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="G27" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="G14" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="G12" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="GND_01" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="G13" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="SD2" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="SD3" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="GND_IN" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="V5" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="GND_02" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="G23" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="TXD" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="RXD" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="G21" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="GND_03" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="G19" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="G18" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="G5" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="G17" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="G16" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="G4" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="G22" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="G0" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="G2" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="G15" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="SD1" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="SD0" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="CLK" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="X1" library="con-cypressindustries" library_urn="urn:adsk.eagle:library:138" deviceset="MINI-USB_SHIELD5P2-" device="32005-601" package3d_urn="urn:adsk.eagle:package:6465/1"/>
<part name="220AC_PHASE" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="220AC_NEUTRAL" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="NEUTRAL" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X1" device="" package3d_urn="urn:adsk.eagle:package:22485/2"/>
<part name="PHASE" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X1" device="" package3d_urn="urn:adsk.eagle:package:22485/2"/>
<part name="VCC_12V" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="GND_12V" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="220AC_MAIN_PHASE" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X1" device="" package3d_urn="urn:adsk.eagle:package:22485/2"/>
<part name="220AC_MAIN_NEUTRAL" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X1" device="" package3d_urn="urn:adsk.eagle:package:22485/2"/>
<part name="SDA" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="SCK" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="MOSI" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="MISO" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="RQ" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="GND" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="RST" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="3V3_IN" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="RELAY$D0" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="RELAY$GND" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="RELAY$VCC" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="RELAY$NC" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="RELAY$COM" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="RELAY$NO" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="SIREN$VCC" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="SIREN$GND" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="Z1$NC" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="Z1$COM" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="Z1$VCC" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="Z1$GND" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="IN1" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X1" device="" package3d_urn="urn:adsk.eagle:package:22485/2"/>
<part name="IN2" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X1" device="" package3d_urn="urn:adsk.eagle:package:22485/2"/>
<part name="Z2$NC" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="Z2$COM" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="Z2$VCC" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="Z2$GND" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="Z3$NC" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="Z3$COM" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="Z3$VCC" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="Z3$GND" library="solpad" library_urn="urn:adsk.eagle:library:364" deviceset="MCS08" device="" package3d_urn="urn:adsk.eagle:package:26515/1"/>
<part name="OUT1" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X1" device="" package3d_urn="urn:adsk.eagle:package:22485/2"/>
<part name="OUT2" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X1" device="" package3d_urn="urn:adsk.eagle:package:22485/2"/>
<part name="CLAMP$GND" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X1" device="" package3d_urn="urn:adsk.eagle:package:22485/2"/>
</parts>
<sheets>
<sheet>
<plain>
<wire x1="68.58" y1="165.1" x2="68.58" y2="149.86" width="0.1524" layer="97"/>
<wire x1="68.58" y1="149.86" x2="38.1" y2="149.86" width="0.1524" layer="97"/>
<wire x1="38.1" y1="149.86" x2="38.1" y2="165.1" width="0.1524" layer="97"/>
<wire x1="38.1" y1="165.1" x2="68.58" y2="165.1" width="0.1524" layer="97"/>
<wire x1="96.52" y1="170.18" x2="147.32" y2="170.18" width="0.1524" layer="97"/>
<wire x1="147.32" y1="170.18" x2="147.32" y2="68.58" width="0.1524" layer="97"/>
<wire x1="147.32" y1="68.58" x2="96.52" y2="68.58" width="0.1524" layer="97"/>
<wire x1="96.52" y1="68.58" x2="96.52" y2="170.18" width="0.1524" layer="97"/>
<wire x1="35.56" y1="96.52" x2="58.42" y2="96.52" width="0.1524" layer="97"/>
<wire x1="58.42" y1="96.52" x2="58.42" y2="60.96" width="0.1524" layer="97"/>
<wire x1="58.42" y1="60.96" x2="35.56" y2="60.96" width="0.1524" layer="97"/>
<wire x1="35.56" y1="60.96" x2="35.56" y2="96.52" width="0.1524" layer="97"/>
<wire x1="170.18" y1="185.42" x2="195.58" y2="185.42" width="0.1524" layer="97"/>
<wire x1="195.58" y1="185.42" x2="195.58" y2="167.64" width="0.1524" layer="97"/>
<wire x1="195.58" y1="167.64" x2="170.18" y2="167.64" width="0.1524" layer="97"/>
<wire x1="170.18" y1="167.64" x2="170.18" y2="185.42" width="0.1524" layer="97"/>
<wire x1="7.62" y1="152.4" x2="27.94" y2="152.4" width="0.1524" layer="97"/>
<wire x1="27.94" y1="152.4" x2="27.94" y2="127" width="0.1524" layer="97"/>
<wire x1="27.94" y1="127" x2="7.62" y2="127" width="0.1524" layer="97"/>
<wire x1="7.62" y1="127" x2="7.62" y2="152.4" width="0.1524" layer="97"/>
<wire x1="38.1" y1="147.32" x2="38.1" y2="132.08" width="0.1524" layer="97"/>
<wire x1="38.1" y1="132.08" x2="68.58" y2="132.08" width="0.1524" layer="97"/>
<wire x1="68.58" y1="132.08" x2="68.58" y2="147.32" width="0.1524" layer="97"/>
<wire x1="68.58" y1="147.32" x2="38.1" y2="147.32" width="0.1524" layer="97"/>
<wire x1="38.1" y1="129.54" x2="68.58" y2="129.54" width="0.1524" layer="97"/>
<wire x1="68.58" y1="129.54" x2="68.58" y2="114.3" width="0.1524" layer="97"/>
<wire x1="68.58" y1="114.3" x2="38.1" y2="114.3" width="0.1524" layer="97"/>
<wire x1="38.1" y1="114.3" x2="38.1" y2="129.54" width="0.1524" layer="97"/>
<wire x1="99.06" y1="55.88" x2="137.16" y2="55.88" width="0.1524" layer="97"/>
<wire x1="137.16" y1="55.88" x2="137.16" y2="33.02" width="0.1524" layer="97"/>
<wire x1="137.16" y1="33.02" x2="99.06" y2="33.02" width="0.1524" layer="97"/>
<wire x1="99.06" y1="33.02" x2="99.06" y2="55.88" width="0.1524" layer="97"/>
<wire x1="40.64" y1="50.8" x2="17.78" y2="50.8" width="0.1524" layer="97"/>
<wire x1="17.78" y1="50.8" x2="17.78" y2="68.58" width="0.1524" layer="97"/>
<wire x1="17.78" y1="68.58" x2="-5.08" y2="68.58" width="0.1524" layer="97"/>
<wire x1="-5.08" y1="68.58" x2="-5.08" y2="27.94" width="0.1524" layer="97"/>
<wire x1="-5.08" y1="27.94" x2="40.64" y2="27.94" width="0.1524" layer="97"/>
<wire x1="40.64" y1="27.94" x2="40.64" y2="50.8" width="0.1524" layer="97"/>
<wire x1="213.36" y1="139.7" x2="251.46" y2="139.7" width="0.1524" layer="97"/>
<wire x1="251.46" y1="139.7" x2="251.46" y2="93.98" width="0.1524" layer="97"/>
<wire x1="251.46" y1="93.98" x2="213.36" y2="93.98" width="0.1524" layer="97"/>
<wire x1="213.36" y1="93.98" x2="213.36" y2="139.7" width="0.1524" layer="97"/>
<wire x1="210.82" y1="170.18" x2="210.82" y2="144.78" width="0.1524" layer="97"/>
<wire x1="210.82" y1="144.78" x2="254" y2="144.78" width="0.1524" layer="97"/>
<wire x1="254" y1="144.78" x2="254" y2="170.18" width="0.1524" layer="97"/>
<wire x1="254" y1="170.18" x2="210.82" y2="170.18" width="0.1524" layer="97"/>
<text x="101.6" y="35.56" size="1.778" layer="97">5V DC USB POWER SUPPLY</text>
<text x="127" y="63.5" size="1.778" layer="97">USING PROVIDED USB PORT</text>
<text x="55.88" y="93.98" size="1.778" layer="97" rot="R270">220AC MAIN</text>
<text x="-2.54" y="30.48" size="1.778" layer="97">12V DC POWER SUPPLY</text>
<text x="10.16" y="149.86" size="1.778" layer="97">12V CLAMP</text>
<text x="170.18" y="182.88" size="1.778" layer="97">SIREN BELL</text>
<text x="213.36" y="147.32" size="1.778" layer="97">RELAY</text>
<text x="248.92" y="99.06" size="1.778" layer="97" rot="R90">MF RC522 (MIFARE) 13.56MHz</text>
<text x="114.3" y="165.1" size="1.778" layer="97">ANTENNA</text>
<text x="116.84" y="119.38" size="1.778" layer="97">ESP32</text>
<text x="38.1" y="167.64" size="1.778" layer="97">PIR DETECTOR ZONES</text>
</plain>
<instances>
<instance part="P+2" gate="VCC" x="116.84" y="48.26" smashed="yes">
<attribute name="VALUE" x="114.3" y="45.72" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND2" gate="1" x="124.46" y="45.72" smashed="yes">
<attribute name="VALUE" x="121.92" y="43.18" size="1.778" layer="96"/>
</instance>
<instance part="FRAME1" gate="G$1" x="-7.62" y="25.4" smashed="yes"/>
<instance part="FRAME1" gate="G$2" x="154.94" y="25.4" smashed="yes">
<attribute name="LAST_DATE_TIME" x="167.64" y="26.67" size="2.54" layer="94"/>
<attribute name="SHEET" x="241.3" y="26.67" size="2.54" layer="94"/>
<attribute name="DRAWING_NAME" x="172.72" y="44.45" size="2.54" layer="94"/>
</instance>
<instance part="3V3" gate="G$1" x="101.6" y="165.1" smashed="yes" rot="R270">
<attribute name="NAME" x="104.521" y="163.83" size="1.778" layer="95"/>
</instance>
<instance part="EN" gate="G$1" x="101.6" y="160.02" smashed="yes" rot="R270">
<attribute name="NAME" x="104.521" y="158.75" size="1.778" layer="95"/>
</instance>
<instance part="SP" gate="G$1" x="101.6" y="154.94" smashed="yes" rot="R270">
<attribute name="NAME" x="104.521" y="153.67" size="1.778" layer="95"/>
</instance>
<instance part="SN" gate="G$1" x="101.6" y="149.86" smashed="yes" rot="R270">
<attribute name="NAME" x="104.521" y="148.59" size="1.778" layer="95"/>
</instance>
<instance part="G34" gate="G$1" x="101.6" y="144.78" smashed="yes" rot="R270">
<attribute name="NAME" x="104.521" y="143.51" size="1.778" layer="95"/>
</instance>
<instance part="G35" gate="G$1" x="101.6" y="139.7" smashed="yes" rot="R270">
<attribute name="NAME" x="104.521" y="138.43" size="1.778" layer="95"/>
</instance>
<instance part="G32" gate="G$1" x="101.6" y="134.62" smashed="yes" rot="R270">
<attribute name="NAME" x="104.521" y="133.35" size="1.778" layer="95"/>
</instance>
<instance part="G33" gate="G$1" x="101.6" y="129.54" smashed="yes" rot="R270">
<attribute name="NAME" x="104.521" y="128.27" size="1.778" layer="95"/>
</instance>
<instance part="G25" gate="G$1" x="101.6" y="124.46" smashed="yes" rot="R270">
<attribute name="NAME" x="104.521" y="123.19" size="1.778" layer="95"/>
</instance>
<instance part="G26" gate="G$1" x="101.6" y="119.38" smashed="yes" rot="R270">
<attribute name="NAME" x="104.521" y="118.11" size="1.778" layer="95"/>
</instance>
<instance part="G27" gate="G$1" x="101.6" y="114.3" smashed="yes" rot="R270">
<attribute name="NAME" x="104.521" y="113.03" size="1.778" layer="95"/>
</instance>
<instance part="G14" gate="G$1" x="101.6" y="109.22" smashed="yes" rot="R270">
<attribute name="NAME" x="104.521" y="107.95" size="1.778" layer="95"/>
</instance>
<instance part="G12" gate="G$1" x="101.6" y="104.14" smashed="yes" rot="R270">
<attribute name="NAME" x="104.521" y="102.87" size="1.778" layer="95"/>
</instance>
<instance part="GND_01" gate="G$1" x="101.6" y="99.06" smashed="yes" rot="R270">
<attribute name="NAME" x="104.521" y="97.79" size="1.778" layer="95"/>
</instance>
<instance part="G13" gate="G$1" x="101.6" y="93.98" smashed="yes" rot="R270">
<attribute name="NAME" x="104.521" y="92.71" size="1.778" layer="95"/>
</instance>
<instance part="SD2" gate="G$1" x="101.6" y="88.9" smashed="yes" rot="R270">
<attribute name="NAME" x="104.521" y="87.63" size="1.778" layer="95"/>
</instance>
<instance part="SD3" gate="G$1" x="101.6" y="83.82" smashed="yes" rot="R270">
<attribute name="NAME" x="104.521" y="82.55" size="1.778" layer="95"/>
</instance>
<instance part="GND_IN" gate="G$1" x="101.6" y="78.74" smashed="yes" rot="R270">
<attribute name="NAME" x="104.521" y="77.47" size="1.778" layer="95"/>
</instance>
<instance part="V5" gate="G$1" x="101.6" y="73.66" smashed="yes" rot="R270">
<attribute name="NAME" x="104.521" y="72.39" size="1.778" layer="95"/>
</instance>
<instance part="GND_02" gate="G$1" x="142.24" y="165.1" smashed="yes" rot="R90">
<attribute name="NAME" x="139.319" y="166.37" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="G23" gate="G$1" x="142.24" y="160.02" smashed="yes" rot="R90">
<attribute name="NAME" x="139.319" y="161.29" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="TXD" gate="G$1" x="142.24" y="149.86" smashed="yes" rot="R90">
<attribute name="NAME" x="139.319" y="151.13" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="RXD" gate="G$1" x="142.24" y="144.78" smashed="yes" rot="R90">
<attribute name="NAME" x="139.319" y="146.05" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="G21" gate="G$1" x="142.24" y="139.7" smashed="yes" rot="R90">
<attribute name="NAME" x="139.319" y="140.97" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="GND_03" gate="G$1" x="142.24" y="134.62" smashed="yes" rot="R90">
<attribute name="NAME" x="139.319" y="135.89" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="G19" gate="G$1" x="142.24" y="129.54" smashed="yes" rot="R90">
<attribute name="NAME" x="139.319" y="130.81" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="G18" gate="G$1" x="142.24" y="124.46" smashed="yes" rot="R90">
<attribute name="NAME" x="139.319" y="125.73" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="G5" gate="G$1" x="142.24" y="119.38" smashed="yes" rot="R90">
<attribute name="NAME" x="139.319" y="120.65" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="G17" gate="G$1" x="142.24" y="114.3" smashed="yes" rot="R90">
<attribute name="NAME" x="139.319" y="115.57" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="G16" gate="G$1" x="142.24" y="109.22" smashed="yes" rot="R90">
<attribute name="NAME" x="139.319" y="110.49" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="G4" gate="G$1" x="142.24" y="104.14" smashed="yes" rot="R90">
<attribute name="NAME" x="139.319" y="105.41" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="G22" gate="G$1" x="142.24" y="154.94" smashed="yes" rot="R90">
<attribute name="NAME" x="139.319" y="156.21" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="G0" gate="G$1" x="142.24" y="99.06" smashed="yes" rot="R90">
<attribute name="NAME" x="139.319" y="100.33" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="G2" gate="G$1" x="142.24" y="93.98" smashed="yes" rot="R90">
<attribute name="NAME" x="139.319" y="95.25" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="G15" gate="G$1" x="142.24" y="88.9" smashed="yes" rot="R90">
<attribute name="NAME" x="139.319" y="90.17" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="SD1" gate="G$1" x="142.24" y="83.82" smashed="yes" rot="R90">
<attribute name="NAME" x="139.319" y="85.09" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="SD0" gate="G$1" x="142.24" y="78.74" smashed="yes" rot="R90">
<attribute name="NAME" x="139.319" y="80.01" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="CLK" gate="G$1" x="142.24" y="73.66" smashed="yes" rot="R90">
<attribute name="NAME" x="139.319" y="74.93" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="X1" gate="G41" x="121.92" y="71.12" smashed="yes" rot="R90"/>
<instance part="220AC_PHASE" gate="G$1" x="38.1" y="45.72" smashed="yes" rot="R90">
<attribute name="NAME" x="35.179" y="46.99" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="220AC_NEUTRAL" gate="G$1" x="38.1" y="40.64" smashed="yes" rot="R90">
<attribute name="NAME" x="35.179" y="41.91" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="NEUTRAL" gate="G$1" x="96.52" y="40.64" smashed="yes">
<attribute name="NAME" x="87.63" y="36.195" size="1.778" layer="95"/>
<attribute name="VALUE" x="90.17" y="35.56" size="1.778" layer="96"/>
</instance>
<instance part="PHASE" gate="G$1" x="96.52" y="45.72" smashed="yes">
<attribute name="NAME" x="87.63" y="48.895" size="1.778" layer="95"/>
<attribute name="VALUE" x="90.17" y="40.64" size="1.778" layer="96"/>
</instance>
<instance part="VCC_12V" gate="G$1" x="0" y="63.5" smashed="yes" rot="R180">
<attribute name="NAME" x="1.27" y="60.579" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="GND_12V" gate="G$1" x="5.08" y="63.5" smashed="yes" rot="R180">
<attribute name="NAME" x="6.35" y="60.579" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="220AC_MAIN_PHASE" gate="G$1" x="43.18" y="73.66" smashed="yes" rot="R90">
<attribute name="NAME" x="40.005" y="67.31" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="48.26" y="67.31" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="220AC_MAIN_NEUTRAL" gate="G$1" x="50.8" y="73.66" smashed="yes" rot="R90">
<attribute name="NAME" x="47.625" y="67.31" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="55.88" y="67.31" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SDA" gate="G$1" x="218.44" y="134.62" smashed="yes" rot="R270">
<attribute name="NAME" x="221.361" y="133.35" size="1.778" layer="95"/>
</instance>
<instance part="SCK" gate="G$1" x="218.44" y="129.54" smashed="yes" rot="R270">
<attribute name="NAME" x="221.361" y="128.27" size="1.778" layer="95"/>
</instance>
<instance part="MOSI" gate="G$1" x="218.44" y="124.46" smashed="yes" rot="R270">
<attribute name="NAME" x="221.361" y="123.19" size="1.778" layer="95"/>
</instance>
<instance part="MISO" gate="G$1" x="218.44" y="119.38" smashed="yes" rot="R270">
<attribute name="NAME" x="221.361" y="118.11" size="1.778" layer="95"/>
</instance>
<instance part="RQ" gate="G$1" x="218.44" y="114.3" smashed="yes" rot="R270">
<attribute name="NAME" x="221.361" y="113.03" size="1.778" layer="95"/>
</instance>
<instance part="GND" gate="G$1" x="218.44" y="109.22" smashed="yes" rot="R270">
<attribute name="NAME" x="221.361" y="107.95" size="1.778" layer="95"/>
</instance>
<instance part="RST" gate="G$1" x="218.44" y="104.14" smashed="yes" rot="R270">
<attribute name="NAME" x="221.361" y="102.87" size="1.778" layer="95"/>
</instance>
<instance part="3V3_IN" gate="G$1" x="218.44" y="99.06" smashed="yes" rot="R270">
<attribute name="NAME" x="221.361" y="97.79" size="1.778" layer="95"/>
</instance>
<instance part="RELAY$D0" gate="G$1" x="215.9" y="162.56" smashed="yes" rot="R270">
<attribute name="NAME" x="218.821" y="163.83" size="1.778" layer="95"/>
</instance>
<instance part="RELAY$GND" gate="G$1" x="215.9" y="157.48" smashed="yes" rot="R270">
<attribute name="NAME" x="218.821" y="158.75" size="1.778" layer="95"/>
</instance>
<instance part="RELAY$VCC" gate="G$1" x="215.9" y="152.4" smashed="yes" rot="R270">
<attribute name="NAME" x="218.821" y="153.67" size="1.778" layer="95"/>
</instance>
<instance part="RELAY$NC" gate="G$1" x="238.76" y="165.1" smashed="yes" rot="R180">
<attribute name="NAME" x="237.49" y="162.179" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="RELAY$COM" gate="G$1" x="243.84" y="165.1" smashed="yes" rot="R180">
<attribute name="NAME" x="242.57" y="162.179" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="RELAY$NO" gate="G$1" x="248.92" y="165.1" smashed="yes" rot="R180">
<attribute name="NAME" x="247.65" y="162.179" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SIREN$VCC" gate="G$1" x="190.5" y="175.26" smashed="yes" rot="R90">
<attribute name="NAME" x="187.579" y="173.99" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="SIREN$GND" gate="G$1" x="190.5" y="180.34" smashed="yes" rot="R90">
<attribute name="NAME" x="187.579" y="179.07" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="Z1$NC" gate="G$1" x="63.5" y="160.02" smashed="yes" rot="R90">
<attribute name="NAME" x="65.659" y="163.83" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="Z1$COM" gate="G$1" x="63.5" y="154.94" smashed="yes" rot="R90">
<attribute name="NAME" x="65.659" y="153.67" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="Z1$VCC" gate="G$1" x="43.18" y="160.02" smashed="yes" rot="R270">
<attribute name="NAME" x="43.561" y="161.29" size="1.778" layer="95"/>
</instance>
<instance part="Z1$GND" gate="G$1" x="43.18" y="154.94" smashed="yes" rot="R270">
<attribute name="NAME" x="43.561" y="151.13" size="1.778" layer="95"/>
</instance>
<instance part="IN1" gate="G$1" x="15.24" y="142.24" smashed="yes">
<attribute name="NAME" x="8.89" y="145.415" size="1.778" layer="95"/>
<attribute name="VALUE" x="8.89" y="137.16" size="1.778" layer="96"/>
</instance>
<instance part="IN2" gate="G$1" x="15.24" y="134.62" smashed="yes">
<attribute name="NAME" x="8.89" y="130.175" size="1.778" layer="95"/>
<attribute name="VALUE" x="8.89" y="129.54" size="1.778" layer="96"/>
</instance>
<instance part="Z2$NC" gate="G$1" x="63.5" y="142.24" smashed="yes" rot="R90">
<attribute name="NAME" x="65.659" y="146.05" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="Z2$COM" gate="G$1" x="63.5" y="137.16" smashed="yes" rot="R90">
<attribute name="NAME" x="65.659" y="135.89" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="Z2$VCC" gate="G$1" x="43.18" y="142.24" smashed="yes" rot="R270">
<attribute name="NAME" x="43.561" y="143.51" size="1.778" layer="95"/>
</instance>
<instance part="Z2$GND" gate="G$1" x="43.18" y="137.16" smashed="yes" rot="R270">
<attribute name="NAME" x="43.561" y="133.35" size="1.778" layer="95"/>
</instance>
<instance part="Z3$NC" gate="G$1" x="63.5" y="124.46" smashed="yes" rot="R90">
<attribute name="NAME" x="65.659" y="128.27" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="Z3$COM" gate="G$1" x="63.5" y="119.38" smashed="yes" rot="R90">
<attribute name="NAME" x="65.659" y="118.11" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="Z3$VCC" gate="G$1" x="43.18" y="124.46" smashed="yes" rot="R270">
<attribute name="NAME" x="43.561" y="125.73" size="1.778" layer="95"/>
</instance>
<instance part="Z3$GND" gate="G$1" x="43.18" y="119.38" smashed="yes" rot="R270">
<attribute name="NAME" x="43.561" y="115.57" size="1.778" layer="95"/>
</instance>
<instance part="OUT1" gate="G$1" x="20.32" y="142.24" smashed="yes" rot="R180">
<attribute name="NAME" x="26.67" y="146.685" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="26.67" y="147.32" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="OUT2" gate="G$1" x="20.32" y="134.62" smashed="yes" rot="R180">
<attribute name="NAME" x="26.67" y="131.445" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="26.67" y="139.7" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="CLAMP$GND" gate="G$1" x="76.2" y="101.6" smashed="yes" rot="R270">
<attribute name="NAME" x="69.215" y="95.25" size="1.778" layer="95"/>
<attribute name="VALUE" x="71.12" y="107.95" size="1.778" layer="96" rot="R270"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$2" class="0">
<segment>
<pinref part="X1" gate="G41" pin="1"/>
<wire x1="116.84" y1="66.04" x2="116.84" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="X1" gate="G41" pin="4"/>
<wire x1="124.46" y1="66.04" x2="124.46" y2="48.26" width="0.1524" layer="91"/>
<pinref part="GND2" gate="1" pin="GND"/>
</segment>
</net>
<net name="BROWN" class="0">
<segment>
<pinref part="220AC_NEUTRAL" gate="G$1" pin="MP"/>
<pinref part="NEUTRAL" gate="G$1" pin="1"/>
<wire x1="40.64" y1="40.64" x2="50.8" y2="40.64" width="0.1524" layer="91"/>
<label x="58.42" y="38.1" size="1.778" layer="95"/>
<pinref part="220AC_MAIN_NEUTRAL" gate="G$1" pin="1"/>
<wire x1="50.8" y1="40.64" x2="93.98" y2="40.64" width="0.1524" layer="91"/>
<wire x1="50.8" y1="71.12" x2="50.8" y2="40.64" width="0.1524" layer="91"/>
<junction x="50.8" y="40.64"/>
<label x="55.88" y="50.8" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="BLUE" class="0">
<segment>
<pinref part="220AC_PHASE" gate="G$1" pin="MP"/>
<pinref part="PHASE" gate="G$1" pin="1"/>
<wire x1="40.64" y1="45.72" x2="43.18" y2="45.72" width="0.1524" layer="91"/>
<label x="58.42" y="43.18" size="1.778" layer="95"/>
<pinref part="220AC_MAIN_PHASE" gate="G$1" pin="1"/>
<wire x1="43.18" y1="45.72" x2="93.98" y2="45.72" width="0.1524" layer="91"/>
<wire x1="43.18" y1="71.12" x2="43.18" y2="45.72" width="0.1524" layer="91"/>
<junction x="43.18" y="45.72"/>
<label x="45.72" y="53.34" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="RED" class="0">
<segment>
<pinref part="VCC_12V" gate="G$1" pin="MP"/>
<wire x1="0" y1="66.04" x2="0" y2="142.24" width="0.1524" layer="91"/>
<wire x1="0" y1="142.24" x2="0" y2="198.12" width="0.1524" layer="91"/>
<wire x1="0" y1="198.12" x2="243.84" y2="198.12" width="0.1524" layer="91"/>
<label x="7.62" y="71.12" size="1.778" layer="95" rot="R90"/>
<label x="172.72" y="200.66" size="1.778" layer="95" rot="R180"/>
<pinref part="RELAY$COM" gate="G$1" pin="MP"/>
<wire x1="243.84" y1="167.64" x2="243.84" y2="198.12" width="0.1524" layer="91"/>
<junction x="243.84" y="198.12"/>
<pinref part="IN1" gate="G$1" pin="1"/>
<wire x1="12.7" y1="142.24" x2="0" y2="142.24" width="0.1524" layer="91"/>
<junction x="0" y="142.24"/>
</segment>
<segment>
<pinref part="RELAY$NO" gate="G$1" pin="MP"/>
<pinref part="SIREN$VCC" gate="G$1" pin="MP"/>
<wire x1="248.92" y1="167.64" x2="248.92" y2="175.26" width="0.1524" layer="91"/>
<wire x1="248.92" y1="175.26" x2="193.04" y2="175.26" width="0.1524" layer="91"/>
<label x="226.06" y="175.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="BLACK" class="0">
<segment>
<pinref part="GND_12V" gate="G$1" pin="MP"/>
<wire x1="5.08" y1="66.04" x2="5.08" y2="134.62" width="0.1524" layer="91"/>
<wire x1="5.08" y1="134.62" x2="5.08" y2="193.04" width="0.1524" layer="91"/>
<wire x1="5.08" y1="193.04" x2="200.66" y2="193.04" width="0.1524" layer="91"/>
<label x="12.7" y="71.12" size="1.778" layer="95" rot="R90"/>
<label x="172.72" y="195.58" size="1.778" layer="95" rot="R180"/>
<pinref part="SIREN$GND" gate="G$1" pin="MP"/>
<wire x1="193.04" y1="180.34" x2="200.66" y2="180.34" width="0.1524" layer="91"/>
<wire x1="200.66" y1="180.34" x2="200.66" y2="193.04" width="0.1524" layer="91"/>
<junction x="200.66" y="193.04"/>
<pinref part="IN2" gate="G$1" pin="1"/>
<wire x1="12.7" y1="134.62" x2="5.08" y2="134.62" width="0.1524" layer="91"/>
<junction x="5.08" y="134.62"/>
</segment>
</net>
<net name="V5" class="0">
<segment>
<pinref part="V5" gate="G$1" pin="MP"/>
<wire x1="99.06" y1="73.66" x2="88.9" y2="73.66" width="0.1524" layer="91"/>
<wire x1="88.9" y1="73.66" x2="88.9" y2="66.04" width="0.1524" layer="91"/>
<wire x1="88.9" y1="66.04" x2="119.38" y2="66.04" width="0.1524" layer="91"/>
<pinref part="RELAY$VCC" gate="G$1" pin="MP"/>
<wire x1="119.38" y1="66.04" x2="121.92" y2="66.04" width="0.1524" layer="91"/>
<wire x1="121.92" y1="66.04" x2="127" y2="66.04" width="0.1524" layer="91"/>
<wire x1="127" y1="66.04" x2="198.12" y2="66.04" width="0.1524" layer="91"/>
<wire x1="198.12" y1="66.04" x2="198.12" y2="152.4" width="0.1524" layer="91"/>
<wire x1="198.12" y1="152.4" x2="213.36" y2="152.4" width="0.1524" layer="91"/>
<pinref part="X1" gate="G41" pin="2"/>
<junction x="119.38" y="66.04"/>
<pinref part="X1" gate="G41" pin="3"/>
<junction x="121.92" y="66.04"/>
<pinref part="X1" gate="G41" pin="5"/>
<junction x="127" y="66.04"/>
<label x="200.66" y="152.4" size="1.778" layer="95"/>
</segment>
</net>
<net name="GND_03" class="0">
<segment>
<pinref part="RELAY$GND" gate="G$1" pin="MP"/>
<wire x1="213.36" y1="157.48" x2="195.58" y2="157.48" width="0.1524" layer="91"/>
<pinref part="GND_03" gate="G$1" pin="MP"/>
<wire x1="195.58" y1="157.48" x2="195.58" y2="134.62" width="0.1524" layer="91"/>
<wire x1="195.58" y1="134.62" x2="144.78" y2="134.62" width="0.1524" layer="91"/>
<label x="200.66" y="157.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="G15" class="0">
<segment>
<pinref part="RELAY$D0" gate="G$1" pin="MP"/>
<wire x1="213.36" y1="162.56" x2="190.5" y2="162.56" width="0.1524" layer="91"/>
<pinref part="G15" gate="G$1" pin="MP"/>
<wire x1="190.5" y1="162.56" x2="190.5" y2="88.9" width="0.1524" layer="91"/>
<wire x1="190.5" y1="88.9" x2="144.78" y2="88.9" width="0.1524" layer="91"/>
<label x="200.66" y="162.56" size="1.778" layer="95"/>
</segment>
</net>
<net name="G22" class="0">
<segment>
<pinref part="RST" gate="G$1" pin="MP"/>
<wire x1="215.9" y1="104.14" x2="177.8" y2="104.14" width="0.1524" layer="91"/>
<wire x1="177.8" y1="104.14" x2="177.8" y2="154.94" width="0.1524" layer="91"/>
<pinref part="G22" gate="G$1" pin="MP"/>
<wire x1="177.8" y1="154.94" x2="144.78" y2="154.94" width="0.1524" layer="91"/>
<label x="203.2" y="104.14" size="1.778" layer="95"/>
</segment>
</net>
<net name="G18" class="0">
<segment>
<pinref part="SCK" gate="G$1" pin="MP"/>
<wire x1="215.9" y1="129.54" x2="165.1" y2="129.54" width="0.1524" layer="91"/>
<wire x1="165.1" y1="129.54" x2="165.1" y2="124.46" width="0.1524" layer="91"/>
<pinref part="G18" gate="G$1" pin="MP"/>
<wire x1="165.1" y1="124.46" x2="144.78" y2="124.46" width="0.1524" layer="91"/>
<label x="203.2" y="129.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="G23" class="0">
<segment>
<pinref part="MOSI" gate="G$1" pin="MP"/>
<wire x1="215.9" y1="124.46" x2="170.18" y2="124.46" width="0.1524" layer="91"/>
<wire x1="170.18" y1="124.46" x2="170.18" y2="121.92" width="0.1524" layer="91"/>
<wire x1="170.18" y1="121.92" x2="160.02" y2="121.92" width="0.1524" layer="91"/>
<wire x1="160.02" y1="121.92" x2="160.02" y2="160.02" width="0.1524" layer="91"/>
<pinref part="G23" gate="G$1" pin="MP"/>
<wire x1="160.02" y1="160.02" x2="144.78" y2="160.02" width="0.1524" layer="91"/>
<label x="203.2" y="124.46" size="1.778" layer="95"/>
</segment>
</net>
<net name="G19" class="0">
<segment>
<pinref part="MISO" gate="G$1" pin="MP"/>
<wire x1="215.9" y1="119.38" x2="157.48" y2="119.38" width="0.1524" layer="91"/>
<wire x1="157.48" y1="119.38" x2="157.48" y2="129.54" width="0.1524" layer="91"/>
<pinref part="G19" gate="G$1" pin="MP"/>
<wire x1="157.48" y1="129.54" x2="144.78" y2="129.54" width="0.1524" layer="91"/>
<label x="203.2" y="119.38" size="1.778" layer="95"/>
</segment>
</net>
<net name="G21" class="0">
<segment>
<pinref part="SDA" gate="G$1" pin="MP"/>
<wire x1="215.9" y1="134.62" x2="200.66" y2="134.62" width="0.1524" layer="91"/>
<wire x1="200.66" y1="134.62" x2="200.66" y2="139.7" width="0.1524" layer="91"/>
<wire x1="200.66" y1="139.7" x2="144.78" y2="139.7" width="0.1524" layer="91"/>
<pinref part="G21" gate="G$1" pin="MP"/>
<label x="203.2" y="134.62" size="1.778" layer="95"/>
</segment>
</net>
<net name="3V3" class="0">
<segment>
<pinref part="3V3_IN" gate="G$1" pin="MP"/>
<wire x1="215.9" y1="99.06" x2="152.4" y2="99.06" width="0.1524" layer="91"/>
<wire x1="152.4" y1="99.06" x2="152.4" y2="175.26" width="0.1524" layer="91"/>
<wire x1="152.4" y1="175.26" x2="91.44" y2="175.26" width="0.1524" layer="91"/>
<wire x1="91.44" y1="175.26" x2="91.44" y2="165.1" width="0.1524" layer="91"/>
<pinref part="3V3" gate="G$1" pin="MP"/>
<wire x1="91.44" y1="165.1" x2="99.06" y2="165.1" width="0.1524" layer="91"/>
<label x="203.2" y="99.06" size="1.778" layer="95"/>
</segment>
</net>
<net name="GND_02" class="0">
<segment>
<pinref part="GND" gate="G$1" pin="MP"/>
<wire x1="215.9" y1="109.22" x2="154.94" y2="109.22" width="0.1524" layer="91"/>
<wire x1="154.94" y1="109.22" x2="154.94" y2="165.1" width="0.1524" layer="91"/>
<pinref part="GND_02" gate="G$1" pin="MP"/>
<wire x1="154.94" y1="165.1" x2="144.78" y2="165.1" width="0.1524" layer="91"/>
<label x="203.2" y="109.22" size="1.778" layer="95"/>
</segment>
</net>
<net name="RED2" class="0">
<segment>
<pinref part="Z1$VCC" gate="G$1" pin="MP"/>
<wire x1="40.64" y1="160.02" x2="35.56" y2="160.02" width="0.1524" layer="91"/>
<wire x1="35.56" y1="160.02" x2="35.56" y2="142.24" width="0.1524" layer="91"/>
<pinref part="OUT1" gate="G$1" pin="1"/>
<wire x1="35.56" y1="142.24" x2="22.86" y2="142.24" width="0.1524" layer="91"/>
<pinref part="Z2$VCC" gate="G$1" pin="MP"/>
<wire x1="40.64" y1="142.24" x2="35.56" y2="142.24" width="0.1524" layer="91"/>
<junction x="35.56" y="142.24"/>
<pinref part="Z3$VCC" gate="G$1" pin="MP"/>
<wire x1="40.64" y1="124.46" x2="35.56" y2="124.46" width="0.1524" layer="91"/>
<wire x1="35.56" y1="124.46" x2="35.56" y2="142.24" width="0.1524" layer="91"/>
<label x="35.56" y="154.94" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="WHITE2" class="0">
<segment>
<pinref part="Z3$GND" gate="G$1" pin="MP"/>
<wire x1="40.64" y1="119.38" x2="33.02" y2="119.38" width="0.1524" layer="91"/>
<wire x1="33.02" y1="119.38" x2="33.02" y2="134.62" width="0.1524" layer="91"/>
<pinref part="OUT2" gate="G$1" pin="1"/>
<wire x1="33.02" y1="134.62" x2="22.86" y2="134.62" width="0.1524" layer="91"/>
<pinref part="Z1$GND" gate="G$1" pin="MP"/>
<wire x1="40.64" y1="154.94" x2="33.02" y2="154.94" width="0.1524" layer="91"/>
<wire x1="33.02" y1="154.94" x2="33.02" y2="137.16" width="0.1524" layer="91"/>
<junction x="33.02" y="134.62"/>
<pinref part="Z2$GND" gate="G$1" pin="MP"/>
<wire x1="33.02" y1="137.16" x2="33.02" y2="134.62" width="0.1524" layer="91"/>
<wire x1="40.64" y1="137.16" x2="33.02" y2="137.16" width="0.1524" layer="91"/>
<junction x="33.02" y="137.16"/>
<label x="33.02" y="119.38" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="GND_01" class="0">
<segment>
<pinref part="Z3$COM" gate="G$1" pin="MP"/>
<wire x1="66.04" y1="119.38" x2="76.2" y2="119.38" width="0.1524" layer="91"/>
<pinref part="CLAMP$GND" gate="G$1" pin="1"/>
<wire x1="76.2" y1="119.38" x2="76.2" y2="104.14" width="0.1524" layer="91"/>
<pinref part="Z2$COM" gate="G$1" pin="MP"/>
<wire x1="66.04" y1="137.16" x2="76.2" y2="137.16" width="0.1524" layer="91"/>
<wire x1="76.2" y1="137.16" x2="76.2" y2="119.38" width="0.1524" layer="91"/>
<junction x="76.2" y="119.38"/>
<pinref part="Z1$COM" gate="G$1" pin="MP"/>
<wire x1="66.04" y1="154.94" x2="76.2" y2="154.94" width="0.1524" layer="91"/>
<wire x1="76.2" y1="154.94" x2="76.2" y2="137.16" width="0.1524" layer="91"/>
<junction x="76.2" y="137.16"/>
<pinref part="GND_01" gate="G$1" pin="MP"/>
<wire x1="99.06" y1="99.06" x2="76.2" y2="99.06" width="0.1524" layer="91"/>
<wire x1="76.2" y1="99.06" x2="76.2" y2="104.14" width="0.1524" layer="91"/>
<label x="53.34" y="111.76" size="1.778" layer="95"/>
<label x="86.36" y="99.06" size="1.778" layer="95"/>
</segment>
</net>
<net name="G14" class="0">
<segment>
<pinref part="Z1$NC" gate="G$1" pin="MP"/>
<wire x1="66.04" y1="160.02" x2="78.74" y2="160.02" width="0.1524" layer="91"/>
<wire x1="78.74" y1="160.02" x2="78.74" y2="109.22" width="0.1524" layer="91"/>
<pinref part="G14" gate="G$1" pin="MP"/>
<wire x1="78.74" y1="109.22" x2="99.06" y2="109.22" width="0.1524" layer="91"/>
<label x="71.12" y="160.02" size="1.778" layer="95"/>
</segment>
</net>
<net name="G16" class="0">
<segment>
<pinref part="G16" gate="G$1" pin="MP"/>
<wire x1="144.78" y1="109.22" x2="149.86" y2="109.22" width="0.1524" layer="91"/>
<wire x1="149.86" y1="109.22" x2="149.86" y2="182.88" width="0.1524" layer="91"/>
<wire x1="149.86" y1="182.88" x2="88.9" y2="182.88" width="0.1524" layer="91"/>
<wire x1="88.9" y1="182.88" x2="88.9" y2="142.24" width="0.1524" layer="91"/>
<pinref part="Z2$NC" gate="G$1" pin="MP"/>
<wire x1="88.9" y1="142.24" x2="66.04" y2="142.24" width="0.1524" layer="91"/>
<label x="71.12" y="142.24" size="1.778" layer="95"/>
</segment>
</net>
<net name="G17" class="0">
<segment>
<pinref part="G17" gate="G$1" pin="MP"/>
<wire x1="144.78" y1="114.3" x2="162.56" y2="114.3" width="0.1524" layer="91"/>
<wire x1="162.56" y1="114.3" x2="162.56" y2="187.96" width="0.1524" layer="91"/>
<wire x1="162.56" y1="187.96" x2="86.36" y2="187.96" width="0.1524" layer="91"/>
<wire x1="86.36" y1="187.96" x2="86.36" y2="124.46" width="0.1524" layer="91"/>
<pinref part="Z3$NC" gate="G$1" pin="MP"/>
<wire x1="86.36" y1="124.46" x2="66.04" y2="124.46" width="0.1524" layer="91"/>
<label x="71.12" y="124.46" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
