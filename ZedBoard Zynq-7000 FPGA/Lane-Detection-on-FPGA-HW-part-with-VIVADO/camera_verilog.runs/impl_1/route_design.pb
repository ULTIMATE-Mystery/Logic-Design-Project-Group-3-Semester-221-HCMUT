
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
?Clock Placer Checks: Poor placement for routing between an IO pin and BUFG. 
Resolution: Poor placement of an IO pin and a BUFG has resulted in the router using a non-dedicated path between the two.  There are several things that could trigger this DRC, each of which can cause unpredictable clock insertion delays that result in poor timing.  This DRC could be caused by any of the following: (a) a clock port was placed on a pin that is not a CCIO-pin (b)the BUFG has not been placed in the same half of the device or SLR as the CCIO-pin (c) a single ended clock has been placed on the N-Side of a differential pair CCIO-pin.
 This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	%s (IBUF.O) is locked to %s
	%s (BUFG.I) is provisionally placed by clockplacer on %s
%s*DRC2X
 "B
ov7670_pclk_IBUF_inst	ov7670_pclk_IBUF_inst2default:default2default:default2@
 "*
	IOB_X0Y43
	IOB_X0Y432default:default2default:default2b
 "L
ov7670_pclk_IBUF_BUFG_inst	ov7670_pclk_IBUF_BUFG_inst2default:default2default:default2H
 "2
BUFGCTRL_X0Y0
BUFGCTRL_X0Y02default:default2default:default2;
 #DRC|Implementation|Placement|Clocks2default:default8ZPLCK-12h px? 
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 1 Warnings2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
B
-Phase 1 Build RT Design | Checksum: bc05bb93
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:31 ; elapsed = 00:00:28 . Memory (MB): peak = 1475.332 ; gain = 0.0002default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
{
\No timing constraints were detected. The router will operate in resource-optimization mode.
64*routeZ35-64h px? 
{

Phase %s%s
101*constraints2
2.1 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.1 Fix Topology Constraints | Checksum: bc05bb93
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:32 ; elapsed = 00:00:28 . Memory (MB): peak = 1475.332 ; gain = 0.0002default:defaulth px? 
t

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.2 Pre Route Cleanup | Checksum: bc05bb93
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:32 ; elapsed = 00:00:28 . Memory (MB): peak = 1475.332 ; gain = 0.0002default:defaulth px? 
I
4Phase 2 Router Initialization | Checksum: 116b9128c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:32 ; elapsed = 00:00:28 . Memory (MB): peak = 1475.332 ; gain = 0.0002default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
C
.Phase 3 Initial Routing | Checksum: 14f6f2d15
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:34 ; elapsed = 00:00:30 . Memory (MB): peak = 1475.332 ; gain = 0.0002default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
G
2Phase 4.1 Global Iteration 0 | Checksum: bd78a596
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:35 ; elapsed = 00:00:30 . Memory (MB): peak = 1475.332 ; gain = 0.0002default:defaulth px? 
E
0Phase 4 Rip-up And Reroute | Checksum: bd78a596
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:35 ; elapsed = 00:00:30 . Memory (MB): peak = 1475.332 ; gain = 0.0002default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
N
9Phase 5 Delay and Skew Optimization | Checksum: bd78a596
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:35 ; elapsed = 00:00:30 . Memory (MB): peak = 1475.332 ; gain = 0.0002default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
B
-Phase 6.1 Hold Fix Iter | Checksum: bd78a596
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:35 ; elapsed = 00:00:30 . Memory (MB): peak = 1475.332 ; gain = 0.0002default:defaulth px? 
@
+Phase 6 Post Hold Fix | Checksum: bd78a596
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:35 ; elapsed = 00:00:30 . Memory (MB): peak = 1475.332 ; gain = 0.0002default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
A
,Phase 7 Route finalize | Checksum: bd78a596
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:35 ; elapsed = 00:00:30 . Memory (MB): peak = 1475.332 ; gain = 0.0002default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
H
3Phase 8 Verifying routed nets | Checksum: bd78a596
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:35 ; elapsed = 00:00:30 . Memory (MB): peak = 1475.332 ; gain = 0.0002default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
D
/Phase 9 Depositing Routes | Checksum: c34757df
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:35 ; elapsed = 00:00:30 . Memory (MB): peak = 1475.332 ; gain = 0.0002default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:35 ; elapsed = 00:00:30 . Memory (MB): peak = 1475.332 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
592default:default2
142default:default2
92default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:00:372default:default2
00:00:312default:default2
1475.3322default:default2
0.0002default:defaultZ17-268h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:012default:default2 
00:00:00.4012default:default2
1475.3322default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?C:/Users/akif2/Desktop/depo/Lisans Dersleri/bitirme/bitirme_camera/camera_verilog1/camera_verilog.runs/impl_1/camera_top_module_routed.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
?Executing : report_drc -file camera_top_module_drc_routed.rpt -pb camera_top_module_drc_routed.pb -rpx camera_top_module_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
{report_drc -file camera_top_module_drc_routed.rpt -pb camera_top_module_drc_routed.pb -rpx camera_top_module_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
?C:/Users/akif2/Desktop/depo/Lisans Dersleri/bitirme/bitirme_camera/camera_verilog1/camera_verilog.runs/impl_1/camera_top_module_drc_routed.rpt?C:/Users/akif2/Desktop/depo/Lisans Dersleri/bitirme/bitirme_camera/camera_verilog1/camera_verilog.runs/impl_1/camera_top_module_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file camera_top_module_methodology_drc_routed.rpt -pb camera_top_module_methodology_drc_routed.pb -rpx camera_top_module_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file camera_top_module_methodology_drc_routed.rpt -pb camera_top_module_methodology_drc_routed.pb -rpx camera_top_module_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
?C:/Users/akif2/Desktop/depo/Lisans Dersleri/bitirme/bitirme_camera/camera_verilog1/camera_verilog.runs/impl_1/camera_top_module_methodology_drc_routed.rpt?C:/Users/akif2/Desktop/depo/Lisans Dersleri/bitirme/bitirme_camera/camera_verilog1/camera_verilog.runs/impl_1/camera_top_module_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_power -file camera_top_module_power_routed.rpt -pb camera_top_module_power_summary_routed.pb -rpx camera_top_module_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file camera_top_module_power_routed.rpt -pb camera_top_module_power_summary_routed.pb -rpx camera_top_module_power_routed.rpx2default:defaultZ4-113h px? 
P
/No user defined clocks was found in the design!216*powerZ33-232h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
712default:default2
152default:default2
92default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
%s4*runtcl2?
oExecuting : report_route_status -file camera_top_module_route_status.rpt -pb camera_top_module_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file camera_top_module_timing_summary_routed.rpt -rpx camera_top_module_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
iThere are no user specified timing constraints. Timing constraints are needed for proper timing analysis.200*timingZ38-313h px? 
?
%s4*runtcl2n
ZExecuting : report_incremental_reuse -file camera_top_module_incremental_reuse_routed.rpt
2default:defaulth px? 
x
TNo incremental reuse to report, no incremental placement and routing data was found.278*	vivadotclZ4-545h px? 
?
%s4*runtcl2n
ZExecuting : report_clock_utilization -file camera_top_module_clock_utilization_routed.rpt
2default:defaulth px? 


End Record