╬Ш
З╪
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

└
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

н
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68╧Ш
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
`
meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean
Y
mean/Read/ReadVariableOpReadVariableOpmean*
_output_shapes
:*
dtype0
h
varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance
a
variance/Read/ReadVariableOpReadVariableOpvariance*
_output_shapes
:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0	
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
: *
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
: *
dtype0
Т
conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameconv2d_transpose/kernel
Л
+conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose/kernel*&
_output_shapes
: *
dtype0
В
conv2d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameconv2d_transpose/bias
{
)conv2d_transpose/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose/bias*
_output_shapes
:*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:	*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:	*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
М
Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d/kernel/m
Е
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
: *
dtype0
|
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv2d/bias/m
u
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes
: *
dtype0
а
Adam/conv2d_transpose/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/conv2d_transpose/kernel/m
Щ
2Adam/conv2d_transpose/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/kernel/m*&
_output_shapes
: *
dtype0
Р
Adam/conv2d_transpose/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/conv2d_transpose/bias/m
Й
0Adam/conv2d_transpose/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/bias/m*
_output_shapes
:*
dtype0
В
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:	*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:	*
dtype0
М
Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d/kernel/v
Е
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
: *
dtype0
|
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv2d/bias/v
u
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
: *
dtype0
а
Adam/conv2d_transpose/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/conv2d_transpose/kernel/v
Щ
2Adam/conv2d_transpose/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/kernel/v*&
_output_shapes
: *
dtype0
Р
Adam/conv2d_transpose/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/conv2d_transpose/bias/v
Й
0Adam/conv2d_transpose/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/bias/v*
_output_shapes
:*
dtype0
В
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:	*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:	*
dtype0
Ъ
ConstConst*&
_output_shapes
:*
dtype0*U
valueLBJ"4ч╝DЕобD╡ЦD┘?ЭD╕▒DL2ъD╚TE"╪■D0рEП8D╖ШЕAFБЄDт/кD
Ь
Const_1Const*&
_output_shapes
:*
dtype0*U
valueLBJ"4-^фH√* I═I╞ЎЖI═5ИI╬ЧI═Х┤I╟лI;╧IЬ gHиb▐BЖ/J▄╝I

NoOpNoOp
┼:
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0*■9
valueЇ9Bё9 Bъ9
о
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer_with_weights-0
layer-14
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
О
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
м
layer_with_weights-0
layer-0
 layer_with_weights-1
 layer-1
!layer_with_weights-2
!layer-2
"layer_with_weights-3
"layer-3
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses*
╡
)iter

*beta_1

+beta_2
	,decay
-learning_rate1my2mz3m{4m|5m}6m~1v2vА3vБ4vВ5vГ6vД*
C
.0
/1
02
13
24
35
46
57
68*
.
10
21
32
43
54
65*
* 
░
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

<serving_default* 
* 
* 
* 
С
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
╛
B
_keep_axis
C_reduce_axis
D_reduce_axis_mask
E_broadcast_shape
.mean
.
adapt_mean
/variance
/adapt_variance
	0count
F	keras_api
G_adapt_function*
ж

1kernel
2bias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses*
ж

3kernel
4bias
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses*
ж

5kernel
6bias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses*
C
.0
/1
02
13
24
35
46
57
68*
.
10
21
32
43
54
65*
* 
У
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
D>
VARIABLE_VALUEmean&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEvariance&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
E?
VARIABLE_VALUEcount&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEconv2d/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEconv2d_transpose/kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEconv2d_transpose/bias&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense/kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
dense/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE*

.0
/1
02*
r
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14*

_0
`1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

10
21*

10
21*
* 
У
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*
* 
* 

30
41*

30
41*
* 
У
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses*
* 
* 

50
61*

50
61*
* 
У
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses*
* 
* 

.0
/1
02*
 
0
 1
!2
"3*
* 
* 
* 
8
	ptotal
	qcount
r	variables
s	keras_api*
H
	ttotal
	ucount
v
_fn_kwargs
w	variables
x	keras_api*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

p0
q1*

r	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

t0
u1*

w	variables*
pj
VARIABLE_VALUEAdam/conv2d/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/conv2d/bias/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/conv2d_transpose/kernel/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/conv2d_transpose/bias/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense/kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEAdam/dense/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/conv2d/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEAdam/conv2d/bias/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/conv2d_transpose/kernel/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/conv2d_transpose/bias/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEAdam/dense/kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEAdam/dense/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
й
serving_default_B1Placeholder*A
_output_shapes/
-:+                           *
dtype0*6
shape-:+                           
к
serving_default_B10Placeholder*A
_output_shapes/
-:+                           *
dtype0*6
shape-:+                           
к
serving_default_B11Placeholder*A
_output_shapes/
-:+                           *
dtype0*6
shape-:+                           
к
serving_default_B12Placeholder*A
_output_shapes/
-:+                           *
dtype0*6
shape-:+                           
й
serving_default_B2Placeholder*A
_output_shapes/
-:+                           *
dtype0*6
shape-:+                           
й
serving_default_B3Placeholder*A
_output_shapes/
-:+                           *
dtype0*6
shape-:+                           
й
serving_default_B4Placeholder*A
_output_shapes/
-:+                           *
dtype0*6
shape-:+                           
й
serving_default_B5Placeholder*A
_output_shapes/
-:+                           *
dtype0*6
shape-:+                           
й
serving_default_B6Placeholder*A
_output_shapes/
-:+                           *
dtype0*6
shape-:+                           
й
serving_default_B7Placeholder*A
_output_shapes/
-:+                           *
dtype0*6
shape-:+                           
й
serving_default_B8Placeholder*A
_output_shapes/
-:+                           *
dtype0*6
shape-:+                           
к
serving_default_B8APlaceholder*A
_output_shapes/
-:+                           *
dtype0*6
shape-:+                           
й
serving_default_B9Placeholder*A
_output_shapes/
-:+                           *
dtype0*6
shape-:+                           
╨
StatefulPartitionedCallStatefulPartitionedCallserving_default_B1serving_default_B10serving_default_B11serving_default_B12serving_default_B2serving_default_B3serving_default_B4serving_default_B5serving_default_B6serving_default_B7serving_default_B8serving_default_B8Aserving_default_B9ConstConst_1conv2d/kernelconv2d/biasconv2d_transpose/kernelconv2d_transpose/biasdense/kernel
dense/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           	*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В */
f*R(
&__inference_signature_wrapper_12753265
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ь
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpmean/Read/ReadVariableOpvariance/Read/ReadVariableOpcount/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp+conv2d_transpose/kernel/Read/ReadVariableOp)conv2d_transpose/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_2/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp2Adam/conv2d_transpose/kernel/m/Read/ReadVariableOp0Adam/conv2d_transpose/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp2Adam/conv2d_transpose/kernel/v/Read/ReadVariableOp0Adam/conv2d_transpose/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOpConst_2*+
Tin$
"2 		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__traced_save_12753780
╜
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratemeanvariancecountconv2d/kernelconv2d/biasconv2d_transpose/kernelconv2d_transpose/biasdense/kernel
dense/biastotalcount_1total_1count_2Adam/conv2d/kernel/mAdam/conv2d/bias/mAdam/conv2d_transpose/kernel/mAdam/conv2d_transpose/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/conv2d_transpose/kernel/vAdam/conv2d_transpose/bias/vAdam/dense/kernel/vAdam/dense/bias/v**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference__traced_restore_12753880а·
Й
ў
.__inference_concatenate_layer_call_fn_12753282
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
identity┌
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_layer_call_and_return_conditional_losses_12752714z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*▐
_input_shapes╠
╔:+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :k g
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/0:kg
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/1:kg
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/2:kg
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/3:kg
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/4:kg
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/5:kg
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/6:kg
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/7:kg
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/8:k	g
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/9:l
h
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/10:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/11:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/12
З
Н
&__inference_signature_wrapper_12753265
b1
b10
b11
b12
b2
b3
b4
b5
b6
b7
b8
b8a
b9
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:	
	unknown_6:	
identityИвStatefulPartitionedCall▌
StatefulPartitionedCallStatefulPartitionedCallb1b10b11b12b2b3b4b5b6b7b8b8ab9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           	*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference__wrapped_model_12752362Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*О
_input_shapes№
∙:+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           ::: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
A
_output_shapes/
-:+                           

_user_specified_nameB1:fb
A
_output_shapes/
-:+                           

_user_specified_nameB10:fb
A
_output_shapes/
-:+                           

_user_specified_nameB11:fb
A
_output_shapes/
-:+                           

_user_specified_nameB12:ea
A
_output_shapes/
-:+                           

_user_specified_nameB2:ea
A
_output_shapes/
-:+                           

_user_specified_nameB3:ea
A
_output_shapes/
-:+                           

_user_specified_nameB4:ea
A
_output_shapes/
-:+                           

_user_specified_nameB5:ea
A
_output_shapes/
-:+                           

_user_specified_nameB6:e	a
A
_output_shapes/
-:+                           

_user_specified_nameB7:e
a
A
_output_shapes/
-:+                           

_user_specified_nameB8:fb
A
_output_shapes/
-:+                           

_user_specified_nameB8A:ea
A
_output_shapes/
-:+                           

_user_specified_nameB9:,(
&
_output_shapes
::,(
&
_output_shapes
:
╟
·
C__inference_dense_layer_call_and_return_conditional_losses_12752478

inputs3
!tensordot_readvariableop_resource:	-
biasadd_readvariableop_resource:	
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:	*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:c
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:П
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*A
_output_shapes/
-:+                           К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         	[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:	Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Щ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*A
_output_shapes/
-:+                           	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0Т
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           	p
SoftmaxSoftmaxBiasAdd:output:0*
T0*A
_output_shapes/
-:+                           	z
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+                           	z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
я#
Ы
N__inference_conv2d_transpose_layer_call_and_return_conditional_losses_12752404

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0▌
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+                           {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+                           Б
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                            : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
й
П
(__inference_model_layer_call_fn_12752904
b1
b10
b11
b12
b2
b3
b4
b5
b6
b7
b8
b8a
b9
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:	
	unknown_6:	
identityИвStatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallb1b10b11b12b2b3b4b5b6b7b8b8ab9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           	*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_12752852Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*О
_input_shapes№
∙:+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           ::: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
A
_output_shapes/
-:+                           

_user_specified_nameB1:fb
A
_output_shapes/
-:+                           

_user_specified_nameB10:fb
A
_output_shapes/
-:+                           

_user_specified_nameB11:fb
A
_output_shapes/
-:+                           

_user_specified_nameB12:ea
A
_output_shapes/
-:+                           

_user_specified_nameB2:ea
A
_output_shapes/
-:+                           

_user_specified_nameB3:ea
A
_output_shapes/
-:+                           

_user_specified_nameB4:ea
A
_output_shapes/
-:+                           

_user_specified_nameB5:ea
A
_output_shapes/
-:+                           

_user_specified_nameB6:e	a
A
_output_shapes/
-:+                           

_user_specified_nameB7:e
a
A
_output_shapes/
-:+                           

_user_specified_nameB8:fb
A
_output_shapes/
-:+                           

_user_specified_nameB8A:ea
A
_output_shapes/
-:+                           

_user_specified_nameB9:,(
&
_output_shapes
::,(
&
_output_shapes
:
╖u
є
$__inference__traced_restore_12753880
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: %
assignvariableop_5_mean:)
assignvariableop_6_variance:"
assignvariableop_7_count:	 :
 assignvariableop_8_conv2d_kernel: ,
assignvariableop_9_conv2d_bias: E
+assignvariableop_10_conv2d_transpose_kernel: 7
)assignvariableop_11_conv2d_transpose_bias:2
 assignvariableop_12_dense_kernel:	,
assignvariableop_13_dense_bias:	#
assignvariableop_14_total: %
assignvariableop_15_count_1: %
assignvariableop_16_total_1: %
assignvariableop_17_count_2: B
(assignvariableop_18_adam_conv2d_kernel_m: 4
&assignvariableop_19_adam_conv2d_bias_m: L
2assignvariableop_20_adam_conv2d_transpose_kernel_m: >
0assignvariableop_21_adam_conv2d_transpose_bias_m:9
'assignvariableop_22_adam_dense_kernel_m:	3
%assignvariableop_23_adam_dense_bias_m:	B
(assignvariableop_24_adam_conv2d_kernel_v: 4
&assignvariableop_25_adam_conv2d_bias_v: L
2assignvariableop_26_adam_conv2d_transpose_kernel_v: >
0assignvariableop_27_adam_conv2d_transpose_bias_v:9
'assignvariableop_28_adam_dense_kernel_v:	3
%assignvariableop_29_adam_dense_bias_v:	
identity_31ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9т
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*И
value■B√B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHо
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ║
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Р
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:Е
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ж
AssignVariableOp_5AssignVariableOpassignvariableop_5_meanIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_6AssignVariableOpassignvariableop_6_varianceIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0	*
_output_shapes
:З
AssignVariableOp_7AssignVariableOpassignvariableop_7_countIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_8AssignVariableOp assignvariableop_8_conv2d_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_9AssignVariableOpassignvariableop_9_conv2d_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_10AssignVariableOp+assignvariableop_10_conv2d_transpose_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_11AssignVariableOp)assignvariableop_11_conv2d_transpose_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_12AssignVariableOp assignvariableop_12_dense_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_13AssignVariableOpassignvariableop_13_dense_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_2Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_conv2d_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_19AssignVariableOp&assignvariableop_19_adam_conv2d_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_conv2d_transpose_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_21AssignVariableOp0assignvariableop_21_adam_conv2d_transpose_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_23AssignVariableOp%assignvariableop_23_adam_dense_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_conv2d_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_25AssignVariableOp&assignvariableop_25_adam_conv2d_bias_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_26AssignVariableOp2assignvariableop_26_adam_conv2d_transpose_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_27AssignVariableOp0assignvariableop_27_adam_conv2d_transpose_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_29AssignVariableOp%assignvariableop_29_adam_dense_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 у
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: ╨
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_31Identity_31:output:0*Q
_input_shapes@
>: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ЇУ
Ф

C__inference_model_layer_call_and_return_conditional_losses_12753137
	inputs_b1

inputs_b10

inputs_b11

inputs_b12
	inputs_b2
	inputs_b3
	inputs_b4
	inputs_b5
	inputs_b6
	inputs_b7
	inputs_b8

inputs_b8a
	inputs_b91
-fullyconvolutionalnetwork_normalization_sub_y2
.fullyconvolutionalnetwork_normalization_sqrt_xY
?fullyconvolutionalnetwork_conv2d_conv2d_readvariableop_resource: N
@fullyconvolutionalnetwork_conv2d_biasadd_readvariableop_resource: m
Sfullyconvolutionalnetwork_conv2d_transpose_conv2d_transpose_readvariableop_resource: X
Jfullyconvolutionalnetwork_conv2d_transpose_biasadd_readvariableop_resource:S
Afullyconvolutionalnetwork_dense_tensordot_readvariableop_resource:	M
?fullyconvolutionalnetwork_dense_biasadd_readvariableop_resource:	
identityИв7FullyConvolutionalNetwork/conv2d/BiasAdd/ReadVariableOpв6FullyConvolutionalNetwork/conv2d/Conv2D/ReadVariableOpвAFullyConvolutionalNetwork/conv2d_transpose/BiasAdd/ReadVariableOpвJFullyConvolutionalNetwork/conv2d_transpose/conv2d_transpose/ReadVariableOpв6FullyConvolutionalNetwork/dense/BiasAdd/ReadVariableOpв8FullyConvolutionalNetwork/dense/Tensordot/ReadVariableOpY
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :и
concatenate/concatConcatV2	inputs_b1	inputs_b2	inputs_b3	inputs_b4	inputs_b5	inputs_b6	inputs_b7	inputs_b8
inputs_b8a	inputs_b9
inputs_b10
inputs_b11
inputs_b12 concatenate/concat/axis:output:0*
N*
T0*A
_output_shapes/
-:+                           ╩
+FullyConvolutionalNetwork/normalization/subSubconcatenate/concat:output:0-fullyconvolutionalnetwork_normalization_sub_y*
T0*A
_output_shapes/
-:+                           Х
,FullyConvolutionalNetwork/normalization/SqrtSqrt.fullyconvolutionalnetwork_normalization_sqrt_x*
T0*&
_output_shapes
:v
1FullyConvolutionalNetwork/normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓3┘
/FullyConvolutionalNetwork/normalization/MaximumMaximum0FullyConvolutionalNetwork/normalization/Sqrt:y:0:FullyConvolutionalNetwork/normalization/Maximum/y:output:0*
T0*&
_output_shapes
:ь
/FullyConvolutionalNetwork/normalization/truedivRealDiv/FullyConvolutionalNetwork/normalization/sub:z:03FullyConvolutionalNetwork/normalization/Maximum:z:0*
T0*A
_output_shapes/
-:+                           ╛
6FullyConvolutionalNetwork/conv2d/Conv2D/ReadVariableOpReadVariableOp?fullyconvolutionalnetwork_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ы
'FullyConvolutionalNetwork/conv2d/Conv2DConv2D3FullyConvolutionalNetwork/normalization/truediv:z:0>FullyConvolutionalNetwork/conv2d/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            *
paddingVALID*
strides
┤
7FullyConvolutionalNetwork/conv2d/BiasAdd/ReadVariableOpReadVariableOp@fullyconvolutionalnetwork_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Є
(FullyConvolutionalNetwork/conv2d/BiasAddBiasAdd0FullyConvolutionalNetwork/conv2d/Conv2D:output:0?FullyConvolutionalNetwork/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            м
%FullyConvolutionalNetwork/conv2d/ReluRelu1FullyConvolutionalNetwork/conv2d/BiasAdd:output:0*
T0*A
_output_shapes/
-:+                            У
0FullyConvolutionalNetwork/conv2d_transpose/ShapeShape3FullyConvolutionalNetwork/conv2d/Relu:activations:0*
T0*
_output_shapes
:И
>FullyConvolutionalNetwork/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: К
@FullyConvolutionalNetwork/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:К
@FullyConvolutionalNetwork/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:и
8FullyConvolutionalNetwork/conv2d_transpose/strided_sliceStridedSlice9FullyConvolutionalNetwork/conv2d_transpose/Shape:output:0GFullyConvolutionalNetwork/conv2d_transpose/strided_slice/stack:output:0IFullyConvolutionalNetwork/conv2d_transpose/strided_slice/stack_1:output:0IFullyConvolutionalNetwork/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskК
@FullyConvolutionalNetwork/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:М
BFullyConvolutionalNetwork/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:М
BFullyConvolutionalNetwork/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
:FullyConvolutionalNetwork/conv2d_transpose/strided_slice_1StridedSlice9FullyConvolutionalNetwork/conv2d_transpose/Shape:output:0IFullyConvolutionalNetwork/conv2d_transpose/strided_slice_1/stack:output:0KFullyConvolutionalNetwork/conv2d_transpose/strided_slice_1/stack_1:output:0KFullyConvolutionalNetwork/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskК
@FullyConvolutionalNetwork/conv2d_transpose/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:М
BFullyConvolutionalNetwork/conv2d_transpose/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:М
BFullyConvolutionalNetwork/conv2d_transpose/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
:FullyConvolutionalNetwork/conv2d_transpose/strided_slice_2StridedSlice9FullyConvolutionalNetwork/conv2d_transpose/Shape:output:0IFullyConvolutionalNetwork/conv2d_transpose/strided_slice_2/stack:output:0KFullyConvolutionalNetwork/conv2d_transpose/strided_slice_2/stack_1:output:0KFullyConvolutionalNetwork/conv2d_transpose/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
0FullyConvolutionalNetwork/conv2d_transpose/mul/yConst*
_output_shapes
: *
dtype0*
value	B :╓
.FullyConvolutionalNetwork/conv2d_transpose/mulMulCFullyConvolutionalNetwork/conv2d_transpose/strided_slice_1:output:09FullyConvolutionalNetwork/conv2d_transpose/mul/y:output:0*
T0*
_output_shapes
: r
0FullyConvolutionalNetwork/conv2d_transpose/add/yConst*
_output_shapes
: *
dtype0*
value	B :╟
.FullyConvolutionalNetwork/conv2d_transpose/addAddV22FullyConvolutionalNetwork/conv2d_transpose/mul:z:09FullyConvolutionalNetwork/conv2d_transpose/add/y:output:0*
T0*
_output_shapes
: t
2FullyConvolutionalNetwork/conv2d_transpose/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :┌
0FullyConvolutionalNetwork/conv2d_transpose/mul_1MulCFullyConvolutionalNetwork/conv2d_transpose/strided_slice_2:output:0;FullyConvolutionalNetwork/conv2d_transpose/mul_1/y:output:0*
T0*
_output_shapes
: t
2FullyConvolutionalNetwork/conv2d_transpose/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :═
0FullyConvolutionalNetwork/conv2d_transpose/add_1AddV24FullyConvolutionalNetwork/conv2d_transpose/mul_1:z:0;FullyConvolutionalNetwork/conv2d_transpose/add_1/y:output:0*
T0*
_output_shapes
: t
2FullyConvolutionalNetwork/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :╨
0FullyConvolutionalNetwork/conv2d_transpose/stackPackAFullyConvolutionalNetwork/conv2d_transpose/strided_slice:output:02FullyConvolutionalNetwork/conv2d_transpose/add:z:04FullyConvolutionalNetwork/conv2d_transpose/add_1:z:0;FullyConvolutionalNetwork/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:К
@FullyConvolutionalNetwork/conv2d_transpose/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: М
BFullyConvolutionalNetwork/conv2d_transpose/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:М
BFullyConvolutionalNetwork/conv2d_transpose/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
:FullyConvolutionalNetwork/conv2d_transpose/strided_slice_3StridedSlice9FullyConvolutionalNetwork/conv2d_transpose/stack:output:0IFullyConvolutionalNetwork/conv2d_transpose/strided_slice_3/stack:output:0KFullyConvolutionalNetwork/conv2d_transpose/strided_slice_3/stack_1:output:0KFullyConvolutionalNetwork/conv2d_transpose/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskц
JFullyConvolutionalNetwork/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpSfullyconvolutionalnetwork_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0Л
;FullyConvolutionalNetwork/conv2d_transpose/conv2d_transposeConv2DBackpropInput9FullyConvolutionalNetwork/conv2d_transpose/stack:output:0RFullyConvolutionalNetwork/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:03FullyConvolutionalNetwork/conv2d/Relu:activations:0*
T0*A
_output_shapes/
-:+                           *
paddingVALID*
strides
╚
AFullyConvolutionalNetwork/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOpJfullyconvolutionalnetwork_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ъ
2FullyConvolutionalNetwork/conv2d_transpose/BiasAddBiasAddDFullyConvolutionalNetwork/conv2d_transpose/conv2d_transpose:output:0IFullyConvolutionalNetwork/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           └
/FullyConvolutionalNetwork/conv2d_transpose/ReluRelu;FullyConvolutionalNetwork/conv2d_transpose/BiasAdd:output:0*
T0*A
_output_shapes/
-:+                           ║
8FullyConvolutionalNetwork/dense/Tensordot/ReadVariableOpReadVariableOpAfullyconvolutionalnetwork_dense_tensordot_readvariableop_resource*
_output_shapes

:	*
dtype0x
.FullyConvolutionalNetwork/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:Г
.FullyConvolutionalNetwork/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          Ь
/FullyConvolutionalNetwork/dense/Tensordot/ShapeShape=FullyConvolutionalNetwork/conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:y
7FullyConvolutionalNetwork/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
2FullyConvolutionalNetwork/dense/Tensordot/GatherV2GatherV28FullyConvolutionalNetwork/dense/Tensordot/Shape:output:07FullyConvolutionalNetwork/dense/Tensordot/free:output:0@FullyConvolutionalNetwork/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9FullyConvolutionalNetwork/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
4FullyConvolutionalNetwork/dense/Tensordot/GatherV2_1GatherV28FullyConvolutionalNetwork/dense/Tensordot/Shape:output:07FullyConvolutionalNetwork/dense/Tensordot/axes:output:0BFullyConvolutionalNetwork/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/FullyConvolutionalNetwork/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ╬
.FullyConvolutionalNetwork/dense/Tensordot/ProdProd;FullyConvolutionalNetwork/dense/Tensordot/GatherV2:output:08FullyConvolutionalNetwork/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1FullyConvolutionalNetwork/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ╘
0FullyConvolutionalNetwork/dense/Tensordot/Prod_1Prod=FullyConvolutionalNetwork/dense/Tensordot/GatherV2_1:output:0:FullyConvolutionalNetwork/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5FullyConvolutionalNetwork/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
0FullyConvolutionalNetwork/dense/Tensordot/concatConcatV27FullyConvolutionalNetwork/dense/Tensordot/free:output:07FullyConvolutionalNetwork/dense/Tensordot/axes:output:0>FullyConvolutionalNetwork/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:┘
/FullyConvolutionalNetwork/dense/Tensordot/stackPack7FullyConvolutionalNetwork/dense/Tensordot/Prod:output:09FullyConvolutionalNetwork/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ж
3FullyConvolutionalNetwork/dense/Tensordot/transpose	Transpose=FullyConvolutionalNetwork/conv2d_transpose/Relu:activations:09FullyConvolutionalNetwork/dense/Tensordot/concat:output:0*
T0*A
_output_shapes/
-:+                           ъ
1FullyConvolutionalNetwork/dense/Tensordot/ReshapeReshape7FullyConvolutionalNetwork/dense/Tensordot/transpose:y:08FullyConvolutionalNetwork/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  ъ
0FullyConvolutionalNetwork/dense/Tensordot/MatMulMatMul:FullyConvolutionalNetwork/dense/Tensordot/Reshape:output:0@FullyConvolutionalNetwork/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         	{
1FullyConvolutionalNetwork/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:	y
7FullyConvolutionalNetwork/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
2FullyConvolutionalNetwork/dense/Tensordot/concat_1ConcatV2;FullyConvolutionalNetwork/dense/Tensordot/GatherV2:output:0:FullyConvolutionalNetwork/dense/Tensordot/Const_2:output:0@FullyConvolutionalNetwork/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:∙
)FullyConvolutionalNetwork/dense/TensordotReshape:FullyConvolutionalNetwork/dense/Tensordot/MatMul:product:0;FullyConvolutionalNetwork/dense/Tensordot/concat_1:output:0*
T0*A
_output_shapes/
-:+                           	▓
6FullyConvolutionalNetwork/dense/BiasAdd/ReadVariableOpReadVariableOp?fullyconvolutionalnetwork_dense_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0Є
'FullyConvolutionalNetwork/dense/BiasAddBiasAdd2FullyConvolutionalNetwork/dense/Tensordot:output:0>FullyConvolutionalNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           	░
'FullyConvolutionalNetwork/dense/SoftmaxSoftmax0FullyConvolutionalNetwork/dense/BiasAdd:output:0*
T0*A
_output_shapes/
-:+                           	Ъ
IdentityIdentity1FullyConvolutionalNetwork/dense/Softmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+                           	╛
NoOpNoOp8^FullyConvolutionalNetwork/conv2d/BiasAdd/ReadVariableOp7^FullyConvolutionalNetwork/conv2d/Conv2D/ReadVariableOpB^FullyConvolutionalNetwork/conv2d_transpose/BiasAdd/ReadVariableOpK^FullyConvolutionalNetwork/conv2d_transpose/conv2d_transpose/ReadVariableOp7^FullyConvolutionalNetwork/dense/BiasAdd/ReadVariableOp9^FullyConvolutionalNetwork/dense/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*О
_input_shapes№
∙:+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           ::: : : : : : 2r
7FullyConvolutionalNetwork/conv2d/BiasAdd/ReadVariableOp7FullyConvolutionalNetwork/conv2d/BiasAdd/ReadVariableOp2p
6FullyConvolutionalNetwork/conv2d/Conv2D/ReadVariableOp6FullyConvolutionalNetwork/conv2d/Conv2D/ReadVariableOp2Ж
AFullyConvolutionalNetwork/conv2d_transpose/BiasAdd/ReadVariableOpAFullyConvolutionalNetwork/conv2d_transpose/BiasAdd/ReadVariableOp2Ш
JFullyConvolutionalNetwork/conv2d_transpose/conv2d_transpose/ReadVariableOpJFullyConvolutionalNetwork/conv2d_transpose/conv2d_transpose/ReadVariableOp2p
6FullyConvolutionalNetwork/dense/BiasAdd/ReadVariableOp6FullyConvolutionalNetwork/dense/BiasAdd/ReadVariableOp2t
8FullyConvolutionalNetwork/dense/Tensordot/ReadVariableOp8FullyConvolutionalNetwork/dense/Tensordot/ReadVariableOp:l h
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B1:mi
A
_output_shapes/
-:+                           
$
_user_specified_name
inputs/B10:mi
A
_output_shapes/
-:+                           
$
_user_specified_name
inputs/B11:mi
A
_output_shapes/
-:+                           
$
_user_specified_name
inputs/B12:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B2:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B3:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B4:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B5:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B6:l	h
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B7:l
h
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B8:mi
A
_output_shapes/
-:+                           
$
_user_specified_name
inputs/B8A:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B9:,(
&
_output_shapes
::,(
&
_output_shapes
:
Ж"
О
C__inference_model_layer_call_and_return_conditional_losses_12752972
b1
b10
b11
b12
b2
b3
b4
b5
b6
b7
b8
b8a
b9&
"fullyconvolutionalnetwork_12752954&
"fullyconvolutionalnetwork_12752956<
"fullyconvolutionalnetwork_12752958: 0
"fullyconvolutionalnetwork_12752960: <
"fullyconvolutionalnetwork_12752962: 0
"fullyconvolutionalnetwork_12752964:4
"fullyconvolutionalnetwork_12752966:	0
"fullyconvolutionalnetwork_12752968:	
identityИв1FullyConvolutionalNetwork/StatefulPartitionedCallЩ
concatenate/PartitionedCallPartitionedCallb1b2b3b4b5b6b7b8b8ab9b10b11b12*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_layer_call_and_return_conditional_losses_12752714╫
1FullyConvolutionalNetwork/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0"fullyconvolutionalnetwork_12752954"fullyconvolutionalnetwork_12752956"fullyconvolutionalnetwork_12752958"fullyconvolutionalnetwork_12752960"fullyconvolutionalnetwork_12752962"fullyconvolutionalnetwork_12752964"fullyconvolutionalnetwork_12752966"fullyconvolutionalnetwork_12752968*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           	*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *`
f[RY
W__inference_FullyConvolutionalNetwork_layer_call_and_return_conditional_losses_12752573г
IdentityIdentity:FullyConvolutionalNetwork/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           	z
NoOpNoOp2^FullyConvolutionalNetwork/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*О
_input_shapes№
∙:+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           ::: : : : : : 2f
1FullyConvolutionalNetwork/StatefulPartitionedCall1FullyConvolutionalNetwork/StatefulPartitionedCall:e a
A
_output_shapes/
-:+                           

_user_specified_nameB1:fb
A
_output_shapes/
-:+                           

_user_specified_nameB10:fb
A
_output_shapes/
-:+                           

_user_specified_nameB11:fb
A
_output_shapes/
-:+                           

_user_specified_nameB12:ea
A
_output_shapes/
-:+                           

_user_specified_nameB2:ea
A
_output_shapes/
-:+                           

_user_specified_nameB3:ea
A
_output_shapes/
-:+                           

_user_specified_nameB4:ea
A
_output_shapes/
-:+                           

_user_specified_nameB5:ea
A
_output_shapes/
-:+                           

_user_specified_nameB6:e	a
A
_output_shapes/
-:+                           

_user_specified_nameB7:e
a
A
_output_shapes/
-:+                           

_user_specified_nameB8:fb
A
_output_shapes/
-:+                           

_user_specified_nameB8A:ea
A
_output_shapes/
-:+                           

_user_specified_nameB9:,(
&
_output_shapes
::,(
&
_output_shapes
:
╠#
┘
C__inference_model_layer_call_and_return_conditional_losses_12752734

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12&
"fullyconvolutionalnetwork_12752716&
"fullyconvolutionalnetwork_12752718<
"fullyconvolutionalnetwork_12752720: 0
"fullyconvolutionalnetwork_12752722: <
"fullyconvolutionalnetwork_12752724: 0
"fullyconvolutionalnetwork_12752726:4
"fullyconvolutionalnetwork_12752728:	0
"fullyconvolutionalnetwork_12752730:	
identityИв1FullyConvolutionalNetwork/StatefulPartitionedCallф
concatenate/PartitionedCallPartitionedCallinputsinputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12inputs_1inputs_2inputs_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_layer_call_and_return_conditional_losses_12752714╫
1FullyConvolutionalNetwork/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0"fullyconvolutionalnetwork_12752716"fullyconvolutionalnetwork_12752718"fullyconvolutionalnetwork_12752720"fullyconvolutionalnetwork_12752722"fullyconvolutionalnetwork_12752724"fullyconvolutionalnetwork_12752726"fullyconvolutionalnetwork_12752728"fullyconvolutionalnetwork_12752730*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           	*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *`
f[RY
W__inference_FullyConvolutionalNetwork_layer_call_and_return_conditional_losses_12752485г
IdentityIdentity:FullyConvolutionalNetwork/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           	z
NoOpNoOp2^FullyConvolutionalNetwork/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*О
_input_shapes№
∙:+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           ::: : : : : : 2f
1FullyConvolutionalNetwork/StatefulPartitionedCall1FullyConvolutionalNetwork/StatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:i	e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:i
e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
┼
■
W__inference_FullyConvolutionalNetwork_layer_call_and_return_conditional_losses_12752639
input_1
normalization_sub_y
normalization_sqrt_x)
conv2d_12752623: 
conv2d_12752625: 3
conv2d_transpose_12752628: '
conv2d_transpose_12752630: 
dense_12752633:	
dense_12752635:	
identityИвconv2d/StatefulPartitionedCallв(conv2d_transpose/StatefulPartitionedCallвdense/StatefulPartitionedCallВ
normalization/subSubinput_1normalization_sub_y*
T0*A
_output_shapes/
-:+                           a
normalization/SqrtSqrtnormalization_sqrt_x*
T0*&
_output_shapes
:\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓3Л
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*&
_output_shapes
:Ю
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*A
_output_shapes/
-:+                           Ю
conv2d/StatefulPartitionedCallStatefulPartitionedCallnormalization/truediv:z:0conv2d_12752623conv2d_12752625*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_12752436╘
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_transpose_12752628conv2d_transpose_12752630*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_layer_call_and_return_conditional_losses_12752404▓
dense/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0dense_12752633dense_12752635*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_12752478П
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           	▓
NoOpNoOp^conv2d/StatefulPartitionedCall)^conv2d_transpose/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:+                           ::: : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:j f
A
_output_shapes/
-:+                           
!
_user_specified_name	input_1:,(
&
_output_shapes
::,(
&
_output_shapes
:
╤[
Б
W__inference_FullyConvolutionalNetwork_layer_call_and_return_conditional_losses_12753421

inputs
normalization_sub_y
normalization_sqrt_x?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: S
9conv2d_transpose_conv2d_transpose_readvariableop_resource: >
0conv2d_transpose_biasadd_readvariableop_resource:9
'dense_tensordot_readvariableop_resource:	3
%dense_biasadd_readvariableop_resource:	
identityИвconv2d/BiasAdd/ReadVariableOpвconv2d/Conv2D/ReadVariableOpв'conv2d_transpose/BiasAdd/ReadVariableOpв0conv2d_transpose/conv2d_transpose/ReadVariableOpвdense/BiasAdd/ReadVariableOpвdense/Tensordot/ReadVariableOpБ
normalization/subSubinputsnormalization_sub_y*
T0*A
_output_shapes/
-:+                           a
normalization/SqrtSqrtnormalization_sqrt_x*
T0*&
_output_shapes
:\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓3Л
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*&
_output_shapes
:Ю
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*A
_output_shapes/
-:+                           К
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0═
conv2d/Conv2DConv2Dnormalization/truediv:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            *
paddingVALID*
strides
А
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0д
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            x
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*A
_output_shapes/
-:+                            _
conv2d_transpose/ShapeShapeconv2d/Relu:activations:0*
T0*
_output_shapes
:n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:о
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/Shape:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
&conv2d_transpose/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:о
 conv2d_transpose/strided_slice_2StridedSliceconv2d_transpose/Shape:output:0/conv2d_transpose/strided_slice_2/stack:output:01conv2d_transpose/strided_slice_2/stack_1:output:01conv2d_transpose/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
conv2d_transpose/mul/yConst*
_output_shapes
: *
dtype0*
value	B :И
conv2d_transpose/mulMul)conv2d_transpose/strided_slice_1:output:0conv2d_transpose/mul/y:output:0*
T0*
_output_shapes
: X
conv2d_transpose/add/yConst*
_output_shapes
: *
dtype0*
value	B :y
conv2d_transpose/addAddV2conv2d_transpose/mul:z:0conv2d_transpose/add/y:output:0*
T0*
_output_shapes
: Z
conv2d_transpose/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :М
conv2d_transpose/mul_1Mul)conv2d_transpose/strided_slice_2:output:0!conv2d_transpose/mul_1/y:output:0*
T0*
_output_shapes
: Z
conv2d_transpose/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv2d_transpose/add_1AddV2conv2d_transpose/mul_1:z:0!conv2d_transpose/add_1/y:output:0*
T0*
_output_shapes
: Z
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :╬
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0conv2d_transpose/add:z:0conv2d_transpose/add_1:z:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv2d_transpose/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:о
 conv2d_transpose/strided_slice_3StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_3/stack:output:01conv2d_transpose/strided_slice_3/stack_1:output:01conv2d_transpose/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask▓
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0г
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0conv2d/Relu:activations:0*
T0*A
_output_shapes/
-:+                           *
paddingVALID*
strides
Ф
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╠
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           М
conv2d_transpose/ReluRelu!conv2d_transpose/BiasAdd:output:0*
T0*A
_output_shapes/
-:+                           Ж
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:	*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:i
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          h
dense/Tensordot/ShapeShape#conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╙
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ╫
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ж
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ┤
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Л
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:╕
dense/Tensordot/transpose	Transpose#conv2d_transpose/Relu:activations:0dense/Tensordot/concat:output:0*
T0*A
_output_shapes/
-:+                           Ь
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  Ь
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         	a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:	_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:л
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*A
_output_shapes/
-:+                           	~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0д
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           	|
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*A
_output_shapes/
-:+                           	А
IdentityIdentitydense/Softmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+                           	в
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:+                           ::: : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
┼
─
<__inference_FullyConvolutionalNetwork_layer_call_fn_12752613
input_1
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:	
	unknown_6:	
identityИвStatefulPartitionedCall╓
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           	*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *`
f[RY
W__inference_FullyConvolutionalNetwork_layer_call_and_return_conditional_losses_12752573Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:+                           ::: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
A
_output_shapes/
-:+                           
!
_user_specified_name	input_1:,(
&
_output_shapes
::,(
&
_output_shapes
:
┬
├
<__inference_FullyConvolutionalNetwork_layer_call_fn_12753342

inputs
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:	
	unknown_6:	
identityИвStatefulPartitionedCall╒
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           	*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *`
f[RY
W__inference_FullyConvolutionalNetwork_layer_call_and_return_conditional_losses_12752573Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:+                           ::: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
ё
¤
D__inference_conv2d_layer_call_and_return_conditional_losses_12752436

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0м
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0П
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+                            {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+                            w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
я#
Ы
N__inference_conv2d_transpose_layer_call_and_return_conditional_losses_12753613

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B :F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0▌
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+                           {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+                           Б
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                            : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
╩
и
3__inference_conv2d_transpose_layer_call_fn_12753575

inputs!
unknown: 
	unknown_0:
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_layer_call_and_return_conditional_losses_12752404Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                            : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
ё
¤
D__inference_conv2d_layer_call_and_return_conditional_losses_12753566

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0м
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0П
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+                            {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+                            w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
ё
Р
I__inference_concatenate_layer_call_and_return_conditional_losses_12752714

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :А
concatConcatV2inputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12concat/axis:output:0*
N*
T0*A
_output_shapes/
-:+                           q
IdentityIdentityconcat:output:0*
T0*A
_output_shapes/
-:+                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*▐
_input_shapes╠
╔:+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:i	e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:i
e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
й
П
(__inference_model_layer_call_fn_12752753
b1
b10
b11
b12
b2
b3
b4
b5
b6
b7
b8
b8a
b9
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:	
	unknown_6:	
identityИвStatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallb1b10b11b12b2b3b4b5b6b7b8b8ab9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           	*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_12752734Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*О
_input_shapes№
∙:+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           ::: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
A
_output_shapes/
-:+                           

_user_specified_nameB1:fb
A
_output_shapes/
-:+                           

_user_specified_nameB10:fb
A
_output_shapes/
-:+                           

_user_specified_nameB11:fb
A
_output_shapes/
-:+                           

_user_specified_nameB12:ea
A
_output_shapes/
-:+                           

_user_specified_nameB2:ea
A
_output_shapes/
-:+                           

_user_specified_nameB3:ea
A
_output_shapes/
-:+                           

_user_specified_nameB4:ea
A
_output_shapes/
-:+                           

_user_specified_nameB5:ea
A
_output_shapes/
-:+                           

_user_specified_nameB6:e	a
A
_output_shapes/
-:+                           

_user_specified_nameB7:e
a
A
_output_shapes/
-:+                           

_user_specified_nameB8:fb
A
_output_shapes/
-:+                           

_user_specified_nameB8A:ea
A
_output_shapes/
-:+                           

_user_specified_nameB9:,(
&
_output_shapes
::,(
&
_output_shapes
:
┼
■
W__inference_FullyConvolutionalNetwork_layer_call_and_return_conditional_losses_12752665
input_1
normalization_sub_y
normalization_sqrt_x)
conv2d_12752649: 
conv2d_12752651: 3
conv2d_transpose_12752654: '
conv2d_transpose_12752656: 
dense_12752659:	
dense_12752661:	
identityИвconv2d/StatefulPartitionedCallв(conv2d_transpose/StatefulPartitionedCallвdense/StatefulPartitionedCallВ
normalization/subSubinput_1normalization_sub_y*
T0*A
_output_shapes/
-:+                           a
normalization/SqrtSqrtnormalization_sqrt_x*
T0*&
_output_shapes
:\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓3Л
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*&
_output_shapes
:Ю
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*A
_output_shapes/
-:+                           Ю
conv2d/StatefulPartitionedCallStatefulPartitionedCallnormalization/truediv:z:0conv2d_12752649conv2d_12752651*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_12752436╘
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_transpose_12752654conv2d_transpose_12752656*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_layer_call_and_return_conditional_losses_12752404▓
dense/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0dense_12752659dense_12752661*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_12752478П
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           	▓
NoOpNoOp^conv2d/StatefulPartitionedCall)^conv2d_transpose/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:+                           ::: : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:j f
A
_output_shapes/
-:+                           
!
_user_specified_name	input_1:,(
&
_output_shapes
::,(
&
_output_shapes
:
╠#
┘
C__inference_model_layer_call_and_return_conditional_losses_12752852

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12&
"fullyconvolutionalnetwork_12752834&
"fullyconvolutionalnetwork_12752836<
"fullyconvolutionalnetwork_12752838: 0
"fullyconvolutionalnetwork_12752840: <
"fullyconvolutionalnetwork_12752842: 0
"fullyconvolutionalnetwork_12752844:4
"fullyconvolutionalnetwork_12752846:	0
"fullyconvolutionalnetwork_12752848:	
identityИв1FullyConvolutionalNetwork/StatefulPartitionedCallф
concatenate/PartitionedCallPartitionedCallinputsinputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12inputs_1inputs_2inputs_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_layer_call_and_return_conditional_losses_12752714╫
1FullyConvolutionalNetwork/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0"fullyconvolutionalnetwork_12752834"fullyconvolutionalnetwork_12752836"fullyconvolutionalnetwork_12752838"fullyconvolutionalnetwork_12752840"fullyconvolutionalnetwork_12752842"fullyconvolutionalnetwork_12752844"fullyconvolutionalnetwork_12752846"fullyconvolutionalnetwork_12752848*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           	*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *`
f[RY
W__inference_FullyConvolutionalNetwork_layer_call_and_return_conditional_losses_12752573г
IdentityIdentity:FullyConvolutionalNetwork/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           	z
NoOpNoOp2^FullyConvolutionalNetwork/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*О
_input_shapes№
∙:+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           ::: : : : : : 2f
1FullyConvolutionalNetwork/StatefulPartitionedCall1FullyConvolutionalNetwork/StatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:i	e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:i
e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:ie
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
┼
─
<__inference_FullyConvolutionalNetwork_layer_call_fn_12752504
input_1
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:	
	unknown_6:	
identityИвStatefulPartitionedCall╓
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           	*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *`
f[RY
W__inference_FullyConvolutionalNetwork_layer_call_and_return_conditional_losses_12752485Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:+                           ::: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
A
_output_shapes/
-:+                           
!
_user_specified_name	input_1:,(
&
_output_shapes
::,(
&
_output_shapes
:
з>
Ц
!__inference__traced_save_12753780
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop#
savev2_mean_read_readvariableop'
#savev2_variance_read_readvariableop$
 savev2_count_read_readvariableop	,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop6
2savev2_conv2d_transpose_kernel_read_readvariableop4
0savev2_conv2d_transpose_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop$
 savev2_total_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_2_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop=
9savev2_adam_conv2d_transpose_kernel_m_read_readvariableop;
7savev2_adam_conv2d_transpose_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop=
9savev2_adam_conv2d_transpose_kernel_v_read_readvariableop;
7savev2_adam_conv2d_transpose_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop
savev2_const_2

identity_1ИвMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ▀
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*И
value■B√B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHл
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ■
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopsavev2_mean_read_readvariableop#savev2_variance_read_readvariableop savev2_count_read_readvariableop(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop2savev2_conv2d_transpose_kernel_read_readvariableop0savev2_conv2d_transpose_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop savev2_total_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_2_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop9savev2_adam_conv2d_transpose_kernel_m_read_readvariableop7savev2_adam_conv2d_transpose_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop9savev2_adam_conv2d_transpose_kernel_v_read_readvariableop7savev2_adam_conv2d_transpose_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableopsavev2_const_2"/device:CPU:0*
_output_shapes
 *-
dtypes#
!2		Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*∙
_input_shapesч
ф: : : : : : ::: : : : ::	:	: : : : : : : ::	:	: : : ::	:	: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :,	(
&
_output_shapes
: : 


_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::$ 

_output_shapes

:	: 

_output_shapes
:	:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::$ 

_output_shapes

:	: 

_output_shapes
:	:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::$ 

_output_shapes

:	: 

_output_shapes
:	:

_output_shapes
: 
м
Х
(__inference_dense_layer_call_fn_12753622

inputs
unknown:	
	unknown_0:	
identityИвStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_12752478Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
ЇУ
Ф

C__inference_model_layer_call_and_return_conditional_losses_12753230
	inputs_b1

inputs_b10

inputs_b11

inputs_b12
	inputs_b2
	inputs_b3
	inputs_b4
	inputs_b5
	inputs_b6
	inputs_b7
	inputs_b8

inputs_b8a
	inputs_b91
-fullyconvolutionalnetwork_normalization_sub_y2
.fullyconvolutionalnetwork_normalization_sqrt_xY
?fullyconvolutionalnetwork_conv2d_conv2d_readvariableop_resource: N
@fullyconvolutionalnetwork_conv2d_biasadd_readvariableop_resource: m
Sfullyconvolutionalnetwork_conv2d_transpose_conv2d_transpose_readvariableop_resource: X
Jfullyconvolutionalnetwork_conv2d_transpose_biasadd_readvariableop_resource:S
Afullyconvolutionalnetwork_dense_tensordot_readvariableop_resource:	M
?fullyconvolutionalnetwork_dense_biasadd_readvariableop_resource:	
identityИв7FullyConvolutionalNetwork/conv2d/BiasAdd/ReadVariableOpв6FullyConvolutionalNetwork/conv2d/Conv2D/ReadVariableOpвAFullyConvolutionalNetwork/conv2d_transpose/BiasAdd/ReadVariableOpвJFullyConvolutionalNetwork/conv2d_transpose/conv2d_transpose/ReadVariableOpв6FullyConvolutionalNetwork/dense/BiasAdd/ReadVariableOpв8FullyConvolutionalNetwork/dense/Tensordot/ReadVariableOpY
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :и
concatenate/concatConcatV2	inputs_b1	inputs_b2	inputs_b3	inputs_b4	inputs_b5	inputs_b6	inputs_b7	inputs_b8
inputs_b8a	inputs_b9
inputs_b10
inputs_b11
inputs_b12 concatenate/concat/axis:output:0*
N*
T0*A
_output_shapes/
-:+                           ╩
+FullyConvolutionalNetwork/normalization/subSubconcatenate/concat:output:0-fullyconvolutionalnetwork_normalization_sub_y*
T0*A
_output_shapes/
-:+                           Х
,FullyConvolutionalNetwork/normalization/SqrtSqrt.fullyconvolutionalnetwork_normalization_sqrt_x*
T0*&
_output_shapes
:v
1FullyConvolutionalNetwork/normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓3┘
/FullyConvolutionalNetwork/normalization/MaximumMaximum0FullyConvolutionalNetwork/normalization/Sqrt:y:0:FullyConvolutionalNetwork/normalization/Maximum/y:output:0*
T0*&
_output_shapes
:ь
/FullyConvolutionalNetwork/normalization/truedivRealDiv/FullyConvolutionalNetwork/normalization/sub:z:03FullyConvolutionalNetwork/normalization/Maximum:z:0*
T0*A
_output_shapes/
-:+                           ╛
6FullyConvolutionalNetwork/conv2d/Conv2D/ReadVariableOpReadVariableOp?fullyconvolutionalnetwork_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ы
'FullyConvolutionalNetwork/conv2d/Conv2DConv2D3FullyConvolutionalNetwork/normalization/truediv:z:0>FullyConvolutionalNetwork/conv2d/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            *
paddingVALID*
strides
┤
7FullyConvolutionalNetwork/conv2d/BiasAdd/ReadVariableOpReadVariableOp@fullyconvolutionalnetwork_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Є
(FullyConvolutionalNetwork/conv2d/BiasAddBiasAdd0FullyConvolutionalNetwork/conv2d/Conv2D:output:0?FullyConvolutionalNetwork/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            м
%FullyConvolutionalNetwork/conv2d/ReluRelu1FullyConvolutionalNetwork/conv2d/BiasAdd:output:0*
T0*A
_output_shapes/
-:+                            У
0FullyConvolutionalNetwork/conv2d_transpose/ShapeShape3FullyConvolutionalNetwork/conv2d/Relu:activations:0*
T0*
_output_shapes
:И
>FullyConvolutionalNetwork/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: К
@FullyConvolutionalNetwork/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:К
@FullyConvolutionalNetwork/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:и
8FullyConvolutionalNetwork/conv2d_transpose/strided_sliceStridedSlice9FullyConvolutionalNetwork/conv2d_transpose/Shape:output:0GFullyConvolutionalNetwork/conv2d_transpose/strided_slice/stack:output:0IFullyConvolutionalNetwork/conv2d_transpose/strided_slice/stack_1:output:0IFullyConvolutionalNetwork/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskК
@FullyConvolutionalNetwork/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:М
BFullyConvolutionalNetwork/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:М
BFullyConvolutionalNetwork/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
:FullyConvolutionalNetwork/conv2d_transpose/strided_slice_1StridedSlice9FullyConvolutionalNetwork/conv2d_transpose/Shape:output:0IFullyConvolutionalNetwork/conv2d_transpose/strided_slice_1/stack:output:0KFullyConvolutionalNetwork/conv2d_transpose/strided_slice_1/stack_1:output:0KFullyConvolutionalNetwork/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskК
@FullyConvolutionalNetwork/conv2d_transpose/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:М
BFullyConvolutionalNetwork/conv2d_transpose/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:М
BFullyConvolutionalNetwork/conv2d_transpose/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
:FullyConvolutionalNetwork/conv2d_transpose/strided_slice_2StridedSlice9FullyConvolutionalNetwork/conv2d_transpose/Shape:output:0IFullyConvolutionalNetwork/conv2d_transpose/strided_slice_2/stack:output:0KFullyConvolutionalNetwork/conv2d_transpose/strided_slice_2/stack_1:output:0KFullyConvolutionalNetwork/conv2d_transpose/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
0FullyConvolutionalNetwork/conv2d_transpose/mul/yConst*
_output_shapes
: *
dtype0*
value	B :╓
.FullyConvolutionalNetwork/conv2d_transpose/mulMulCFullyConvolutionalNetwork/conv2d_transpose/strided_slice_1:output:09FullyConvolutionalNetwork/conv2d_transpose/mul/y:output:0*
T0*
_output_shapes
: r
0FullyConvolutionalNetwork/conv2d_transpose/add/yConst*
_output_shapes
: *
dtype0*
value	B :╟
.FullyConvolutionalNetwork/conv2d_transpose/addAddV22FullyConvolutionalNetwork/conv2d_transpose/mul:z:09FullyConvolutionalNetwork/conv2d_transpose/add/y:output:0*
T0*
_output_shapes
: t
2FullyConvolutionalNetwork/conv2d_transpose/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :┌
0FullyConvolutionalNetwork/conv2d_transpose/mul_1MulCFullyConvolutionalNetwork/conv2d_transpose/strided_slice_2:output:0;FullyConvolutionalNetwork/conv2d_transpose/mul_1/y:output:0*
T0*
_output_shapes
: t
2FullyConvolutionalNetwork/conv2d_transpose/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :═
0FullyConvolutionalNetwork/conv2d_transpose/add_1AddV24FullyConvolutionalNetwork/conv2d_transpose/mul_1:z:0;FullyConvolutionalNetwork/conv2d_transpose/add_1/y:output:0*
T0*
_output_shapes
: t
2FullyConvolutionalNetwork/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :╨
0FullyConvolutionalNetwork/conv2d_transpose/stackPackAFullyConvolutionalNetwork/conv2d_transpose/strided_slice:output:02FullyConvolutionalNetwork/conv2d_transpose/add:z:04FullyConvolutionalNetwork/conv2d_transpose/add_1:z:0;FullyConvolutionalNetwork/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:К
@FullyConvolutionalNetwork/conv2d_transpose/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: М
BFullyConvolutionalNetwork/conv2d_transpose/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:М
BFullyConvolutionalNetwork/conv2d_transpose/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
:FullyConvolutionalNetwork/conv2d_transpose/strided_slice_3StridedSlice9FullyConvolutionalNetwork/conv2d_transpose/stack:output:0IFullyConvolutionalNetwork/conv2d_transpose/strided_slice_3/stack:output:0KFullyConvolutionalNetwork/conv2d_transpose/strided_slice_3/stack_1:output:0KFullyConvolutionalNetwork/conv2d_transpose/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskц
JFullyConvolutionalNetwork/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpSfullyconvolutionalnetwork_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0Л
;FullyConvolutionalNetwork/conv2d_transpose/conv2d_transposeConv2DBackpropInput9FullyConvolutionalNetwork/conv2d_transpose/stack:output:0RFullyConvolutionalNetwork/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:03FullyConvolutionalNetwork/conv2d/Relu:activations:0*
T0*A
_output_shapes/
-:+                           *
paddingVALID*
strides
╚
AFullyConvolutionalNetwork/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOpJfullyconvolutionalnetwork_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ъ
2FullyConvolutionalNetwork/conv2d_transpose/BiasAddBiasAddDFullyConvolutionalNetwork/conv2d_transpose/conv2d_transpose:output:0IFullyConvolutionalNetwork/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           └
/FullyConvolutionalNetwork/conv2d_transpose/ReluRelu;FullyConvolutionalNetwork/conv2d_transpose/BiasAdd:output:0*
T0*A
_output_shapes/
-:+                           ║
8FullyConvolutionalNetwork/dense/Tensordot/ReadVariableOpReadVariableOpAfullyconvolutionalnetwork_dense_tensordot_readvariableop_resource*
_output_shapes

:	*
dtype0x
.FullyConvolutionalNetwork/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:Г
.FullyConvolutionalNetwork/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          Ь
/FullyConvolutionalNetwork/dense/Tensordot/ShapeShape=FullyConvolutionalNetwork/conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:y
7FullyConvolutionalNetwork/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
2FullyConvolutionalNetwork/dense/Tensordot/GatherV2GatherV28FullyConvolutionalNetwork/dense/Tensordot/Shape:output:07FullyConvolutionalNetwork/dense/Tensordot/free:output:0@FullyConvolutionalNetwork/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9FullyConvolutionalNetwork/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
4FullyConvolutionalNetwork/dense/Tensordot/GatherV2_1GatherV28FullyConvolutionalNetwork/dense/Tensordot/Shape:output:07FullyConvolutionalNetwork/dense/Tensordot/axes:output:0BFullyConvolutionalNetwork/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/FullyConvolutionalNetwork/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ╬
.FullyConvolutionalNetwork/dense/Tensordot/ProdProd;FullyConvolutionalNetwork/dense/Tensordot/GatherV2:output:08FullyConvolutionalNetwork/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1FullyConvolutionalNetwork/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ╘
0FullyConvolutionalNetwork/dense/Tensordot/Prod_1Prod=FullyConvolutionalNetwork/dense/Tensordot/GatherV2_1:output:0:FullyConvolutionalNetwork/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5FullyConvolutionalNetwork/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
0FullyConvolutionalNetwork/dense/Tensordot/concatConcatV27FullyConvolutionalNetwork/dense/Tensordot/free:output:07FullyConvolutionalNetwork/dense/Tensordot/axes:output:0>FullyConvolutionalNetwork/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:┘
/FullyConvolutionalNetwork/dense/Tensordot/stackPack7FullyConvolutionalNetwork/dense/Tensordot/Prod:output:09FullyConvolutionalNetwork/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ж
3FullyConvolutionalNetwork/dense/Tensordot/transpose	Transpose=FullyConvolutionalNetwork/conv2d_transpose/Relu:activations:09FullyConvolutionalNetwork/dense/Tensordot/concat:output:0*
T0*A
_output_shapes/
-:+                           ъ
1FullyConvolutionalNetwork/dense/Tensordot/ReshapeReshape7FullyConvolutionalNetwork/dense/Tensordot/transpose:y:08FullyConvolutionalNetwork/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  ъ
0FullyConvolutionalNetwork/dense/Tensordot/MatMulMatMul:FullyConvolutionalNetwork/dense/Tensordot/Reshape:output:0@FullyConvolutionalNetwork/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         	{
1FullyConvolutionalNetwork/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:	y
7FullyConvolutionalNetwork/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
2FullyConvolutionalNetwork/dense/Tensordot/concat_1ConcatV2;FullyConvolutionalNetwork/dense/Tensordot/GatherV2:output:0:FullyConvolutionalNetwork/dense/Tensordot/Const_2:output:0@FullyConvolutionalNetwork/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:∙
)FullyConvolutionalNetwork/dense/TensordotReshape:FullyConvolutionalNetwork/dense/Tensordot/MatMul:product:0;FullyConvolutionalNetwork/dense/Tensordot/concat_1:output:0*
T0*A
_output_shapes/
-:+                           	▓
6FullyConvolutionalNetwork/dense/BiasAdd/ReadVariableOpReadVariableOp?fullyconvolutionalnetwork_dense_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0Є
'FullyConvolutionalNetwork/dense/BiasAddBiasAdd2FullyConvolutionalNetwork/dense/Tensordot:output:0>FullyConvolutionalNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           	░
'FullyConvolutionalNetwork/dense/SoftmaxSoftmax0FullyConvolutionalNetwork/dense/BiasAdd:output:0*
T0*A
_output_shapes/
-:+                           	Ъ
IdentityIdentity1FullyConvolutionalNetwork/dense/Softmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+                           	╛
NoOpNoOp8^FullyConvolutionalNetwork/conv2d/BiasAdd/ReadVariableOp7^FullyConvolutionalNetwork/conv2d/Conv2D/ReadVariableOpB^FullyConvolutionalNetwork/conv2d_transpose/BiasAdd/ReadVariableOpK^FullyConvolutionalNetwork/conv2d_transpose/conv2d_transpose/ReadVariableOp7^FullyConvolutionalNetwork/dense/BiasAdd/ReadVariableOp9^FullyConvolutionalNetwork/dense/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*О
_input_shapes№
∙:+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           ::: : : : : : 2r
7FullyConvolutionalNetwork/conv2d/BiasAdd/ReadVariableOp7FullyConvolutionalNetwork/conv2d/BiasAdd/ReadVariableOp2p
6FullyConvolutionalNetwork/conv2d/Conv2D/ReadVariableOp6FullyConvolutionalNetwork/conv2d/Conv2D/ReadVariableOp2Ж
AFullyConvolutionalNetwork/conv2d_transpose/BiasAdd/ReadVariableOpAFullyConvolutionalNetwork/conv2d_transpose/BiasAdd/ReadVariableOp2Ш
JFullyConvolutionalNetwork/conv2d_transpose/conv2d_transpose/ReadVariableOpJFullyConvolutionalNetwork/conv2d_transpose/conv2d_transpose/ReadVariableOp2p
6FullyConvolutionalNetwork/dense/BiasAdd/ReadVariableOp6FullyConvolutionalNetwork/dense/BiasAdd/ReadVariableOp2t
8FullyConvolutionalNetwork/dense/Tensordot/ReadVariableOp8FullyConvolutionalNetwork/dense/Tensordot/ReadVariableOp:l h
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B1:mi
A
_output_shapes/
-:+                           
$
_user_specified_name
inputs/B10:mi
A
_output_shapes/
-:+                           
$
_user_specified_name
inputs/B11:mi
A
_output_shapes/
-:+                           
$
_user_specified_name
inputs/B12:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B2:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B3:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B4:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B5:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B6:l	h
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B7:l
h
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B8:mi
A
_output_shapes/
-:+                           
$
_user_specified_name
inputs/B8A:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B9:,(
&
_output_shapes
::,(
&
_output_shapes
:
Ж"
О
C__inference_model_layer_call_and_return_conditional_losses_12752938
b1
b10
b11
b12
b2
b3
b4
b5
b6
b7
b8
b8a
b9&
"fullyconvolutionalnetwork_12752920&
"fullyconvolutionalnetwork_12752922<
"fullyconvolutionalnetwork_12752924: 0
"fullyconvolutionalnetwork_12752926: <
"fullyconvolutionalnetwork_12752928: 0
"fullyconvolutionalnetwork_12752930:4
"fullyconvolutionalnetwork_12752932:	0
"fullyconvolutionalnetwork_12752934:	
identityИв1FullyConvolutionalNetwork/StatefulPartitionedCallЩ
concatenate/PartitionedCallPartitionedCallb1b2b3b4b5b6b7b8b8ab9b10b11b12*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_concatenate_layer_call_and_return_conditional_losses_12752714╫
1FullyConvolutionalNetwork/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0"fullyconvolutionalnetwork_12752920"fullyconvolutionalnetwork_12752922"fullyconvolutionalnetwork_12752924"fullyconvolutionalnetwork_12752926"fullyconvolutionalnetwork_12752928"fullyconvolutionalnetwork_12752930"fullyconvolutionalnetwork_12752932"fullyconvolutionalnetwork_12752934*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           	*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *`
f[RY
W__inference_FullyConvolutionalNetwork_layer_call_and_return_conditional_losses_12752485г
IdentityIdentity:FullyConvolutionalNetwork/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           	z
NoOpNoOp2^FullyConvolutionalNetwork/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*О
_input_shapes№
∙:+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           ::: : : : : : 2f
1FullyConvolutionalNetwork/StatefulPartitionedCall1FullyConvolutionalNetwork/StatefulPartitionedCall:e a
A
_output_shapes/
-:+                           

_user_specified_nameB1:fb
A
_output_shapes/
-:+                           

_user_specified_nameB10:fb
A
_output_shapes/
-:+                           

_user_specified_nameB11:fb
A
_output_shapes/
-:+                           

_user_specified_nameB12:ea
A
_output_shapes/
-:+                           

_user_specified_nameB2:ea
A
_output_shapes/
-:+                           

_user_specified_nameB3:ea
A
_output_shapes/
-:+                           

_user_specified_nameB4:ea
A
_output_shapes/
-:+                           

_user_specified_nameB5:ea
A
_output_shapes/
-:+                           

_user_specified_nameB6:e	a
A
_output_shapes/
-:+                           

_user_specified_nameB7:e
a
A
_output_shapes/
-:+                           

_user_specified_nameB8:fb
A
_output_shapes/
-:+                           

_user_specified_nameB8A:ea
A
_output_shapes/
-:+                           

_user_specified_nameB9:,(
&
_output_shapes
::,(
&
_output_shapes
:
╢
Ю
)__inference_conv2d_layer_call_fn_12753555

inputs!
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_12752436Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
┬
├
<__inference_FullyConvolutionalNetwork_layer_call_fn_12753321

inputs
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:	
	unknown_6:	
identityИвStatefulPartitionedCall╒
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           	*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *`
f[RY
W__inference_FullyConvolutionalNetwork_layer_call_and_return_conditional_losses_12752485Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:+                           ::: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
║
ъ
(__inference_model_layer_call_fn_12753011
	inputs_b1

inputs_b10

inputs_b11

inputs_b12
	inputs_b2
	inputs_b3
	inputs_b4
	inputs_b5
	inputs_b6
	inputs_b7
	inputs_b8

inputs_b8a
	inputs_b9
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:	
	unknown_6:	
identityИвStatefulPartitionedCall╪
StatefulPartitionedCallStatefulPartitionedCall	inputs_b1
inputs_b10
inputs_b11
inputs_b12	inputs_b2	inputs_b3	inputs_b4	inputs_b5	inputs_b6	inputs_b7	inputs_b8
inputs_b8a	inputs_b9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           	*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_12752734Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*О
_input_shapes№
∙:+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           ::: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:l h
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B1:mi
A
_output_shapes/
-:+                           
$
_user_specified_name
inputs/B10:mi
A
_output_shapes/
-:+                           
$
_user_specified_name
inputs/B11:mi
A
_output_shapes/
-:+                           
$
_user_specified_name
inputs/B12:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B2:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B3:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B4:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B5:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B6:l	h
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B7:l
h
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B8:mi
A
_output_shapes/
-:+                           
$
_user_specified_name
inputs/B8A:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B9:,(
&
_output_shapes
::,(
&
_output_shapes
:
гЪ
э	
#__inference__wrapped_model_12752362
b1
b10
b11
b12
b2
b3
b4
b5
b6
b7
b8
b8a
b97
3model_fullyconvolutionalnetwork_normalization_sub_y8
4model_fullyconvolutionalnetwork_normalization_sqrt_x_
Emodel_fullyconvolutionalnetwork_conv2d_conv2d_readvariableop_resource: T
Fmodel_fullyconvolutionalnetwork_conv2d_biasadd_readvariableop_resource: s
Ymodel_fullyconvolutionalnetwork_conv2d_transpose_conv2d_transpose_readvariableop_resource: ^
Pmodel_fullyconvolutionalnetwork_conv2d_transpose_biasadd_readvariableop_resource:Y
Gmodel_fullyconvolutionalnetwork_dense_tensordot_readvariableop_resource:	S
Emodel_fullyconvolutionalnetwork_dense_biasadd_readvariableop_resource:	
identityИв=model/FullyConvolutionalNetwork/conv2d/BiasAdd/ReadVariableOpв<model/FullyConvolutionalNetwork/conv2d/Conv2D/ReadVariableOpвGmodel/FullyConvolutionalNetwork/conv2d_transpose/BiasAdd/ReadVariableOpвPmodel/FullyConvolutionalNetwork/conv2d_transpose/conv2d_transpose/ReadVariableOpв<model/FullyConvolutionalNetwork/dense/BiasAdd/ReadVariableOpв>model/FullyConvolutionalNetwork/dense/Tensordot/ReadVariableOp_
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :┘
model/concatenate/concatConcatV2b1b2b3b4b5b6b7b8b8ab9b10b11b12&model/concatenate/concat/axis:output:0*
N*
T0*A
_output_shapes/
-:+                           ▄
1model/FullyConvolutionalNetwork/normalization/subSub!model/concatenate/concat:output:03model_fullyconvolutionalnetwork_normalization_sub_y*
T0*A
_output_shapes/
-:+                           б
2model/FullyConvolutionalNetwork/normalization/SqrtSqrt4model_fullyconvolutionalnetwork_normalization_sqrt_x*
T0*&
_output_shapes
:|
7model/FullyConvolutionalNetwork/normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓3ы
5model/FullyConvolutionalNetwork/normalization/MaximumMaximum6model/FullyConvolutionalNetwork/normalization/Sqrt:y:0@model/FullyConvolutionalNetwork/normalization/Maximum/y:output:0*
T0*&
_output_shapes
:■
5model/FullyConvolutionalNetwork/normalization/truedivRealDiv5model/FullyConvolutionalNetwork/normalization/sub:z:09model/FullyConvolutionalNetwork/normalization/Maximum:z:0*
T0*A
_output_shapes/
-:+                           ╩
<model/FullyConvolutionalNetwork/conv2d/Conv2D/ReadVariableOpReadVariableOpEmodel_fullyconvolutionalnetwork_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0н
-model/FullyConvolutionalNetwork/conv2d/Conv2DConv2D9model/FullyConvolutionalNetwork/normalization/truediv:z:0Dmodel/FullyConvolutionalNetwork/conv2d/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            *
paddingVALID*
strides
└
=model/FullyConvolutionalNetwork/conv2d/BiasAdd/ReadVariableOpReadVariableOpFmodel_fullyconvolutionalnetwork_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Д
.model/FullyConvolutionalNetwork/conv2d/BiasAddBiasAdd6model/FullyConvolutionalNetwork/conv2d/Conv2D:output:0Emodel/FullyConvolutionalNetwork/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            ╕
+model/FullyConvolutionalNetwork/conv2d/ReluRelu7model/FullyConvolutionalNetwork/conv2d/BiasAdd:output:0*
T0*A
_output_shapes/
-:+                            Я
6model/FullyConvolutionalNetwork/conv2d_transpose/ShapeShape9model/FullyConvolutionalNetwork/conv2d/Relu:activations:0*
T0*
_output_shapes
:О
Dmodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Р
Fmodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Р
Fmodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╞
>model/FullyConvolutionalNetwork/conv2d_transpose/strided_sliceStridedSlice?model/FullyConvolutionalNetwork/conv2d_transpose/Shape:output:0Mmodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice/stack:output:0Omodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice/stack_1:output:0Omodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
Fmodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Т
Hmodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Т
Hmodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
@model/FullyConvolutionalNetwork/conv2d_transpose/strided_slice_1StridedSlice?model/FullyConvolutionalNetwork/conv2d_transpose/Shape:output:0Omodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice_1/stack:output:0Qmodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice_1/stack_1:output:0Qmodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
Fmodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:Т
Hmodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Т
Hmodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
@model/FullyConvolutionalNetwork/conv2d_transpose/strided_slice_2StridedSlice?model/FullyConvolutionalNetwork/conv2d_transpose/Shape:output:0Omodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice_2/stack:output:0Qmodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice_2/stack_1:output:0Qmodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
6model/FullyConvolutionalNetwork/conv2d_transpose/mul/yConst*
_output_shapes
: *
dtype0*
value	B :ш
4model/FullyConvolutionalNetwork/conv2d_transpose/mulMulImodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice_1:output:0?model/FullyConvolutionalNetwork/conv2d_transpose/mul/y:output:0*
T0*
_output_shapes
: x
6model/FullyConvolutionalNetwork/conv2d_transpose/add/yConst*
_output_shapes
: *
dtype0*
value	B :┘
4model/FullyConvolutionalNetwork/conv2d_transpose/addAddV28model/FullyConvolutionalNetwork/conv2d_transpose/mul:z:0?model/FullyConvolutionalNetwork/conv2d_transpose/add/y:output:0*
T0*
_output_shapes
: z
8model/FullyConvolutionalNetwork/conv2d_transpose/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :ь
6model/FullyConvolutionalNetwork/conv2d_transpose/mul_1MulImodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice_2:output:0Amodel/FullyConvolutionalNetwork/conv2d_transpose/mul_1/y:output:0*
T0*
_output_shapes
: z
8model/FullyConvolutionalNetwork/conv2d_transpose/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :▀
6model/FullyConvolutionalNetwork/conv2d_transpose/add_1AddV2:model/FullyConvolutionalNetwork/conv2d_transpose/mul_1:z:0Amodel/FullyConvolutionalNetwork/conv2d_transpose/add_1/y:output:0*
T0*
_output_shapes
: z
8model/FullyConvolutionalNetwork/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :ю
6model/FullyConvolutionalNetwork/conv2d_transpose/stackPackGmodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice:output:08model/FullyConvolutionalNetwork/conv2d_transpose/add:z:0:model/FullyConvolutionalNetwork/conv2d_transpose/add_1:z:0Amodel/FullyConvolutionalNetwork/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:Р
Fmodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: Т
Hmodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Т
Hmodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
@model/FullyConvolutionalNetwork/conv2d_transpose/strided_slice_3StridedSlice?model/FullyConvolutionalNetwork/conv2d_transpose/stack:output:0Omodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice_3/stack:output:0Qmodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice_3/stack_1:output:0Qmodel/FullyConvolutionalNetwork/conv2d_transpose/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЄ
Pmodel/FullyConvolutionalNetwork/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpYmodel_fullyconvolutionalnetwork_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0г
Amodel/FullyConvolutionalNetwork/conv2d_transpose/conv2d_transposeConv2DBackpropInput?model/FullyConvolutionalNetwork/conv2d_transpose/stack:output:0Xmodel/FullyConvolutionalNetwork/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:09model/FullyConvolutionalNetwork/conv2d/Relu:activations:0*
T0*A
_output_shapes/
-:+                           *
paddingVALID*
strides
╘
Gmodel/FullyConvolutionalNetwork/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOpPmodel_fullyconvolutionalnetwork_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0м
8model/FullyConvolutionalNetwork/conv2d_transpose/BiasAddBiasAddJmodel/FullyConvolutionalNetwork/conv2d_transpose/conv2d_transpose:output:0Omodel/FullyConvolutionalNetwork/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           ╠
5model/FullyConvolutionalNetwork/conv2d_transpose/ReluReluAmodel/FullyConvolutionalNetwork/conv2d_transpose/BiasAdd:output:0*
T0*A
_output_shapes/
-:+                           ╞
>model/FullyConvolutionalNetwork/dense/Tensordot/ReadVariableOpReadVariableOpGmodel_fullyconvolutionalnetwork_dense_tensordot_readvariableop_resource*
_output_shapes

:	*
dtype0~
4model/FullyConvolutionalNetwork/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:Й
4model/FullyConvolutionalNetwork/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          и
5model/FullyConvolutionalNetwork/dense/Tensordot/ShapeShapeCmodel/FullyConvolutionalNetwork/conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:
=model/FullyConvolutionalNetwork/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╙
8model/FullyConvolutionalNetwork/dense/Tensordot/GatherV2GatherV2>model/FullyConvolutionalNetwork/dense/Tensordot/Shape:output:0=model/FullyConvolutionalNetwork/dense/Tensordot/free:output:0Fmodel/FullyConvolutionalNetwork/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Б
?model/FullyConvolutionalNetwork/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ╫
:model/FullyConvolutionalNetwork/dense/Tensordot/GatherV2_1GatherV2>model/FullyConvolutionalNetwork/dense/Tensordot/Shape:output:0=model/FullyConvolutionalNetwork/dense/Tensordot/axes:output:0Hmodel/FullyConvolutionalNetwork/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
5model/FullyConvolutionalNetwork/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: р
4model/FullyConvolutionalNetwork/dense/Tensordot/ProdProdAmodel/FullyConvolutionalNetwork/dense/Tensordot/GatherV2:output:0>model/FullyConvolutionalNetwork/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: Б
7model/FullyConvolutionalNetwork/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ц
6model/FullyConvolutionalNetwork/dense/Tensordot/Prod_1ProdCmodel/FullyConvolutionalNetwork/dense/Tensordot/GatherV2_1:output:0@model/FullyConvolutionalNetwork/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: }
;model/FullyConvolutionalNetwork/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ┤
6model/FullyConvolutionalNetwork/dense/Tensordot/concatConcatV2=model/FullyConvolutionalNetwork/dense/Tensordot/free:output:0=model/FullyConvolutionalNetwork/dense/Tensordot/axes:output:0Dmodel/FullyConvolutionalNetwork/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ы
5model/FullyConvolutionalNetwork/dense/Tensordot/stackPack=model/FullyConvolutionalNetwork/dense/Tensordot/Prod:output:0?model/FullyConvolutionalNetwork/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ш
9model/FullyConvolutionalNetwork/dense/Tensordot/transpose	TransposeCmodel/FullyConvolutionalNetwork/conv2d_transpose/Relu:activations:0?model/FullyConvolutionalNetwork/dense/Tensordot/concat:output:0*
T0*A
_output_shapes/
-:+                           №
7model/FullyConvolutionalNetwork/dense/Tensordot/ReshapeReshape=model/FullyConvolutionalNetwork/dense/Tensordot/transpose:y:0>model/FullyConvolutionalNetwork/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  №
6model/FullyConvolutionalNetwork/dense/Tensordot/MatMulMatMul@model/FullyConvolutionalNetwork/dense/Tensordot/Reshape:output:0Fmodel/FullyConvolutionalNetwork/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         	Б
7model/FullyConvolutionalNetwork/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:	
=model/FullyConvolutionalNetwork/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
8model/FullyConvolutionalNetwork/dense/Tensordot/concat_1ConcatV2Amodel/FullyConvolutionalNetwork/dense/Tensordot/GatherV2:output:0@model/FullyConvolutionalNetwork/dense/Tensordot/Const_2:output:0Fmodel/FullyConvolutionalNetwork/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Л
/model/FullyConvolutionalNetwork/dense/TensordotReshape@model/FullyConvolutionalNetwork/dense/Tensordot/MatMul:product:0Amodel/FullyConvolutionalNetwork/dense/Tensordot/concat_1:output:0*
T0*A
_output_shapes/
-:+                           	╛
<model/FullyConvolutionalNetwork/dense/BiasAdd/ReadVariableOpReadVariableOpEmodel_fullyconvolutionalnetwork_dense_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0Д
-model/FullyConvolutionalNetwork/dense/BiasAddBiasAdd8model/FullyConvolutionalNetwork/dense/Tensordot:output:0Dmodel/FullyConvolutionalNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           	╝
-model/FullyConvolutionalNetwork/dense/SoftmaxSoftmax6model/FullyConvolutionalNetwork/dense/BiasAdd:output:0*
T0*A
_output_shapes/
-:+                           	а
IdentityIdentity7model/FullyConvolutionalNetwork/dense/Softmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+                           	т
NoOpNoOp>^model/FullyConvolutionalNetwork/conv2d/BiasAdd/ReadVariableOp=^model/FullyConvolutionalNetwork/conv2d/Conv2D/ReadVariableOpH^model/FullyConvolutionalNetwork/conv2d_transpose/BiasAdd/ReadVariableOpQ^model/FullyConvolutionalNetwork/conv2d_transpose/conv2d_transpose/ReadVariableOp=^model/FullyConvolutionalNetwork/dense/BiasAdd/ReadVariableOp?^model/FullyConvolutionalNetwork/dense/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*О
_input_shapes№
∙:+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           ::: : : : : : 2~
=model/FullyConvolutionalNetwork/conv2d/BiasAdd/ReadVariableOp=model/FullyConvolutionalNetwork/conv2d/BiasAdd/ReadVariableOp2|
<model/FullyConvolutionalNetwork/conv2d/Conv2D/ReadVariableOp<model/FullyConvolutionalNetwork/conv2d/Conv2D/ReadVariableOp2Т
Gmodel/FullyConvolutionalNetwork/conv2d_transpose/BiasAdd/ReadVariableOpGmodel/FullyConvolutionalNetwork/conv2d_transpose/BiasAdd/ReadVariableOp2д
Pmodel/FullyConvolutionalNetwork/conv2d_transpose/conv2d_transpose/ReadVariableOpPmodel/FullyConvolutionalNetwork/conv2d_transpose/conv2d_transpose/ReadVariableOp2|
<model/FullyConvolutionalNetwork/dense/BiasAdd/ReadVariableOp<model/FullyConvolutionalNetwork/dense/BiasAdd/ReadVariableOp2А
>model/FullyConvolutionalNetwork/dense/Tensordot/ReadVariableOp>model/FullyConvolutionalNetwork/dense/Tensordot/ReadVariableOp:e a
A
_output_shapes/
-:+                           

_user_specified_nameB1:fb
A
_output_shapes/
-:+                           

_user_specified_nameB10:fb
A
_output_shapes/
-:+                           

_user_specified_nameB11:fb
A
_output_shapes/
-:+                           

_user_specified_nameB12:ea
A
_output_shapes/
-:+                           

_user_specified_nameB2:ea
A
_output_shapes/
-:+                           

_user_specified_nameB3:ea
A
_output_shapes/
-:+                           

_user_specified_nameB4:ea
A
_output_shapes/
-:+                           

_user_specified_nameB5:ea
A
_output_shapes/
-:+                           

_user_specified_nameB6:e	a
A
_output_shapes/
-:+                           

_user_specified_nameB7:e
a
A
_output_shapes/
-:+                           

_user_specified_nameB8:fb
A
_output_shapes/
-:+                           

_user_specified_nameB8A:ea
A
_output_shapes/
-:+                           

_user_specified_nameB9:,(
&
_output_shapes
::,(
&
_output_shapes
:
║
ъ
(__inference_model_layer_call_fn_12753044
	inputs_b1

inputs_b10

inputs_b11

inputs_b12
	inputs_b2
	inputs_b3
	inputs_b4
	inputs_b5
	inputs_b6
	inputs_b7
	inputs_b8

inputs_b8a
	inputs_b9
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:	
	unknown_6:	
identityИвStatefulPartitionedCall╪
StatefulPartitionedCallStatefulPartitionedCall	inputs_b1
inputs_b10
inputs_b11
inputs_b12	inputs_b2	inputs_b3	inputs_b4	inputs_b5	inputs_b6	inputs_b7	inputs_b8
inputs_b8a	inputs_b9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           	*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_12752852Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*О
_input_shapes№
∙:+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           ::: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:l h
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B1:mi
A
_output_shapes/
-:+                           
$
_user_specified_name
inputs/B10:mi
A
_output_shapes/
-:+                           
$
_user_specified_name
inputs/B11:mi
A
_output_shapes/
-:+                           
$
_user_specified_name
inputs/B12:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B2:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B3:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B4:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B5:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B6:l	h
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B7:l
h
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B8:mi
A
_output_shapes/
-:+                           
$
_user_specified_name
inputs/B8A:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/B9:,(
&
_output_shapes
::,(
&
_output_shapes
:
┬
¤
W__inference_FullyConvolutionalNetwork_layer_call_and_return_conditional_losses_12752573

inputs
normalization_sub_y
normalization_sqrt_x)
conv2d_12752557: 
conv2d_12752559: 3
conv2d_transpose_12752562: '
conv2d_transpose_12752564: 
dense_12752567:	
dense_12752569:	
identityИвconv2d/StatefulPartitionedCallв(conv2d_transpose/StatefulPartitionedCallвdense/StatefulPartitionedCallБ
normalization/subSubinputsnormalization_sub_y*
T0*A
_output_shapes/
-:+                           a
normalization/SqrtSqrtnormalization_sqrt_x*
T0*&
_output_shapes
:\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓3Л
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*&
_output_shapes
:Ю
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*A
_output_shapes/
-:+                           Ю
conv2d/StatefulPartitionedCallStatefulPartitionedCallnormalization/truediv:z:0conv2d_12752557conv2d_12752559*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_12752436╘
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_transpose_12752562conv2d_transpose_12752564*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_layer_call_and_return_conditional_losses_12752404▓
dense/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0dense_12752567dense_12752569*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_12752478П
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           	▓
NoOpNoOp^conv2d/StatefulPartitionedCall)^conv2d_transpose/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:+                           ::: : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
┬
¤
W__inference_FullyConvolutionalNetwork_layer_call_and_return_conditional_losses_12752485

inputs
normalization_sub_y
normalization_sqrt_x)
conv2d_12752437: 
conv2d_12752439: 3
conv2d_transpose_12752442: '
conv2d_transpose_12752444: 
dense_12752479:	
dense_12752481:	
identityИвconv2d/StatefulPartitionedCallв(conv2d_transpose/StatefulPartitionedCallвdense/StatefulPartitionedCallБ
normalization/subSubinputsnormalization_sub_y*
T0*A
_output_shapes/
-:+                           a
normalization/SqrtSqrtnormalization_sqrt_x*
T0*&
_output_shapes
:\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓3Л
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*&
_output_shapes
:Ю
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*A
_output_shapes/
-:+                           Ю
conv2d/StatefulPartitionedCallStatefulPartitionedCallnormalization/truediv:z:0conv2d_12752437conv2d_12752439*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_layer_call_and_return_conditional_losses_12752436╘
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_transpose_12752442conv2d_transpose_12752444*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_layer_call_and_return_conditional_losses_12752404▓
dense/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0dense_12752479dense_12752481*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_12752478П
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           	▓
NoOpNoOp^conv2d/StatefulPartitionedCall)^conv2d_transpose/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:+                           ::: : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
Т
Т
I__inference_concatenate_layer_call_and_return_conditional_losses_12753300
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :В
concatConcatV2inputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12concat/axis:output:0*
N*
T0*A
_output_shapes/
-:+                           q
IdentityIdentityconcat:output:0*
T0*A
_output_shapes/
-:+                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*▐
_input_shapes╠
╔:+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :+                           :k g
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/0:kg
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/1:kg
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/2:kg
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/3:kg
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/4:kg
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/5:kg
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/6:kg
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/7:kg
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/8:k	g
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs/9:l
h
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/10:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/11:lh
A
_output_shapes/
-:+                           
#
_user_specified_name	inputs/12
Р(
╘
__inference_adapt_step_12753546
iterator

iterator_1%
add_readvariableop_resource:	 %
readvariableop_resource:'
readvariableop_2_resource:ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_2вIteratorGetNextвReadVariableOpвReadVariableOp_1вReadVariableOp_2вadd/ReadVariableOp┴
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*/
_output_shapes
:         *.
output_shapes
:         *
output_types
2s
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          Э
moments/meanMeanIteratorGetNext:components:0'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(l
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:е
moments/SquaredDifferenceSquaredDifferenceIteratorGetNext:components:0moments/StopGradient:output:0*
T0*/
_output_shapes
:         w
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ж
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(o
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 u
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 a
ShapeShapeIteratorGetNext:components:0*
T0*
_output_shapes
:*
out_type0	e
GatherV2/indicesConst*
_output_shapes
:*
dtype0*!
valueB"          O
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Я
GatherV2GatherV2Shape:output:0GatherV2/indices:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
:O
ConstConst*
_output_shapes
:*
dtype0*
valueB: P
ProdProdGatherV2:output:0Const:output:0*
T0	*
_output_shapes
: f
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype0	X
addAddV2Prod:output:0add/ReadVariableOp:value:0*
T0	*
_output_shapes
: K
CastCastProd:output:0*

DstT0*

SrcT0	*
_output_shapes
: G
Cast_1Castadd:z:0*

DstT0*

SrcT0	*
_output_shapes
: I
truedivRealDivCast:y:0
Cast_1:y:0*
T0*
_output_shapes
: J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?H
subSubsub/x:output:0truediv:z:0*
T0*
_output_shapes
: b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0P
mulMulReadVariableOp:value:0sub:z:0*
T0*
_output_shapes
:X
mul_1Mulmoments/Squeeze:output:0truediv:z:0*
T0*
_output_shapes
:G
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:d
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0V
sub_1SubReadVariableOp_1:value:0	add_1:z:0*
T0*
_output_shapes
:J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
powPow	sub_1:z:0pow/y:output:0*
T0*
_output_shapes
:f
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
:*
dtype0V
add_2AddV2ReadVariableOp_2:value:0pow:z:0*
T0*
_output_shapes
:E
mul_2Mul	add_2:z:0sub:z:0*
T0*
_output_shapes
:V
sub_2Submoments/Squeeze:output:0	add_1:z:0*
T0*
_output_shapes
:L
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @N
pow_1Pow	sub_2:z:0pow_1/y:output:0*
T0*
_output_shapes
:Z
add_3AddV2moments/Squeeze_1:output:0	pow_1:z:0*
T0*
_output_shapes
:I
mul_3Mul	add_3:z:0truediv:z:0*
T0*
_output_shapes
:I
add_4AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:П
AssignVariableOpAssignVariableOpreadvariableop_resource	add_1:z:0^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0В
AssignVariableOp_1AssignVariableOpreadvariableop_2_resource	add_4:z:0^ReadVariableOp_2*
_output_shapes
 *
dtype0Д
AssignVariableOp_2AssignVariableOpadd_readvariableop_resourceadd:z:0^add/ReadVariableOp*
_output_shapes
 *
dtype0	*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22"
IteratorGetNextIteratorGetNext2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22(
add/ReadVariableOpadd/ReadVariableOp:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator
╤[
Б
W__inference_FullyConvolutionalNetwork_layer_call_and_return_conditional_losses_12753500

inputs
normalization_sub_y
normalization_sqrt_x?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: S
9conv2d_transpose_conv2d_transpose_readvariableop_resource: >
0conv2d_transpose_biasadd_readvariableop_resource:9
'dense_tensordot_readvariableop_resource:	3
%dense_biasadd_readvariableop_resource:	
identityИвconv2d/BiasAdd/ReadVariableOpвconv2d/Conv2D/ReadVariableOpв'conv2d_transpose/BiasAdd/ReadVariableOpв0conv2d_transpose/conv2d_transpose/ReadVariableOpвdense/BiasAdd/ReadVariableOpвdense/Tensordot/ReadVariableOpБ
normalization/subSubinputsnormalization_sub_y*
T0*A
_output_shapes/
-:+                           a
normalization/SqrtSqrtnormalization_sqrt_x*
T0*&
_output_shapes
:\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Х┐╓3Л
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*&
_output_shapes
:Ю
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*A
_output_shapes/
-:+                           К
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0═
conv2d/Conv2DConv2Dnormalization/truediv:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            *
paddingVALID*
strides
А
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0д
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            x
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*A
_output_shapes/
-:+                            _
conv2d_transpose/ShapeShapeconv2d/Relu:activations:0*
T0*
_output_shapes
:n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:о
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/Shape:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
&conv2d_transpose/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:о
 conv2d_transpose/strided_slice_2StridedSliceconv2d_transpose/Shape:output:0/conv2d_transpose/strided_slice_2/stack:output:01conv2d_transpose/strided_slice_2/stack_1:output:01conv2d_transpose/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
conv2d_transpose/mul/yConst*
_output_shapes
: *
dtype0*
value	B :И
conv2d_transpose/mulMul)conv2d_transpose/strided_slice_1:output:0conv2d_transpose/mul/y:output:0*
T0*
_output_shapes
: X
conv2d_transpose/add/yConst*
_output_shapes
: *
dtype0*
value	B :y
conv2d_transpose/addAddV2conv2d_transpose/mul:z:0conv2d_transpose/add/y:output:0*
T0*
_output_shapes
: Z
conv2d_transpose/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :М
conv2d_transpose/mul_1Mul)conv2d_transpose/strided_slice_2:output:0!conv2d_transpose/mul_1/y:output:0*
T0*
_output_shapes
: Z
conv2d_transpose/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
conv2d_transpose/add_1AddV2conv2d_transpose/mul_1:z:0!conv2d_transpose/add_1/y:output:0*
T0*
_output_shapes
: Z
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B :╬
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0conv2d_transpose/add:z:0conv2d_transpose/add_1:z:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv2d_transpose/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:о
 conv2d_transpose/strided_slice_3StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_3/stack:output:01conv2d_transpose/strided_slice_3/stack_1:output:01conv2d_transpose/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask▓
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0г
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0conv2d/Relu:activations:0*
T0*A
_output_shapes/
-:+                           *
paddingVALID*
strides
Ф
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╠
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           М
conv2d_transpose/ReluRelu!conv2d_transpose/BiasAdd:output:0*
T0*A
_output_shapes/
-:+                           Ж
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:	*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:i
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          h
dense/Tensordot/ShapeShape#conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╙
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ╫
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ж
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ┤
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Л
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:╕
dense/Tensordot/transpose	Transpose#conv2d_transpose/Relu:activations:0dense/Tensordot/concat:output:0*
T0*A
_output_shapes/
-:+                           Ь
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  Ь
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         	a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:	_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:л
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*A
_output_shapes/
-:+                           	~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0д
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           	|
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*A
_output_shapes/
-:+                           	А
IdentityIdentitydense/Softmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+                           	в
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:+                           ::: : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
╟
·
C__inference_dense_layer_call_and_return_conditional_losses_12753653

inputs3
!tensordot_readvariableop_resource:	-
biasadd_readvariableop_resource:	
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:	*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:c
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:П
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*A
_output_shapes/
-:+                           К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         	[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:	Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Щ
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*A
_output_shapes/
-:+                           	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0Т
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           	p
SoftmaxSoftmaxBiasAdd:output:0*
T0*A
_output_shapes/
-:+                           	z
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*A
_output_shapes/
-:+                           	z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs"█L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*К	
serving_defaultЎ
K
B1E
serving_default_B1:0+                           
M
B10F
serving_default_B10:0+                           
M
B11F
serving_default_B11:0+                           
M
B12F
serving_default_B12:0+                           
K
B2E
serving_default_B2:0+                           
K
B3E
serving_default_B3:0+                           
K
B4E
serving_default_B4:0+                           
K
B5E
serving_default_B5:0+                           
K
B6E
serving_default_B6:0+                           
K
B7E
serving_default_B7:0+                           
K
B8E
serving_default_B8:0+                           
M
B8AF
serving_default_B8A:0+                           
K
B9E
serving_default_B9:0+                           g
FullyConvolutionalNetworkJ
StatefulPartitionedCall:0+                           	tensorflow/serving/predict:▒╪
┼
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer_with_weights-0
layer-14
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
е
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
╞
layer_with_weights-0
layer-0
 layer_with_weights-1
 layer-1
!layer_with_weights-2
!layer-2
"layer_with_weights-3
"layer-3
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_sequential
─
)iter

*beta_1

+beta_2
	,decay
-learning_rate1my2mz3m{4m|5m}6m~1v2vА3vБ4vВ5vГ6vД"
	optimizer
_
.0
/1
02
13
24
35
46
57
68"
trackable_list_wrapper
J
10
21
32
43
54
65"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ю2ы
(__inference_model_layer_call_fn_12752753
(__inference_model_layer_call_fn_12753011
(__inference_model_layer_call_fn_12753044
(__inference_model_layer_call_fn_12752904└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
┌2╫
C__inference_model_layer_call_and_return_conditional_losses_12753137
C__inference_model_layer_call_and_return_conditional_losses_12753230
C__inference_model_layer_call_and_return_conditional_losses_12752938
C__inference_model_layer_call_and_return_conditional_losses_12752972└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
¤B·
#__inference__wrapped_model_12752362B1B10B11B12B2B3B4B5B6B7B8B8AB9"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
,
<serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╪2╒
.__inference_concatenate_layer_call_fn_12753282в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
є2Ё
I__inference_concatenate_layer_call_and_return_conditional_losses_12753300в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╙
B
_keep_axis
C_reduce_axis
D_reduce_axis_mask
E_broadcast_shape
.mean
.
adapt_mean
/variance
/adapt_variance
	0count
F	keras_api
G_adapt_function"
_tf_keras_layer
╗

1kernel
2bias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

3kernel
4bias
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

5kernel
6bias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses"
_tf_keras_layer
_
.0
/1
02
13
24
35
46
57
68"
trackable_list_wrapper
J
10
21
32
43
54
65"
trackable_list_wrapper
 "
trackable_list_wrapper
н
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
╛2╗
<__inference_FullyConvolutionalNetwork_layer_call_fn_12752504
<__inference_FullyConvolutionalNetwork_layer_call_fn_12753321
<__inference_FullyConvolutionalNetwork_layer_call_fn_12753342
<__inference_FullyConvolutionalNetwork_layer_call_fn_12752613└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
к2з
W__inference_FullyConvolutionalNetwork_layer_call_and_return_conditional_losses_12753421
W__inference_FullyConvolutionalNetwork_layer_call_and_return_conditional_losses_12753500
W__inference_FullyConvolutionalNetwork_layer_call_and_return_conditional_losses_12752639
W__inference_FullyConvolutionalNetwork_layer_call_and_return_conditional_losses_12752665└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
:2mean
:2variance
:	 2count
':% 2conv2d/kernel
: 2conv2d/bias
1:/ 2conv2d_transpose/kernel
#:!2conv2d_transpose/bias
:	2dense/kernel
:	2
dense/bias
5
.0
/1
02"
trackable_list_wrapper
О
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
·Bў
&__inference_signature_wrapper_12753265B1B10B11B12B2B3B4B5B6B7B8B8AB9"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
"
_generic_user_object
┴2╛
__inference_adapt_step_12753546Ъ
У▓П
FullArgSpec
argsЪ

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
н
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
╙2╨
)__inference_conv2d_layer_call_fn_12753555в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_conv2d_layer_call_and_return_conditional_losses_12753566в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
н
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
▌2┌
3__inference_conv2d_transpose_layer_call_fn_12753575в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°2ї
N__inference_conv2d_transpose_layer_call_and_return_conditional_losses_12753613в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
н
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
╥2╧
(__inference_dense_layer_call_fn_12753622в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
э2ъ
C__inference_dense_layer_call_and_return_conditional_losses_12753653в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
5
.0
/1
02"
trackable_list_wrapper
<
0
 1
!2
"3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	ptotal
	qcount
r	variables
s	keras_api"
_tf_keras_metric
^
	ttotal
	ucount
v
_fn_kwargs
w	variables
x	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
p0
q1"
trackable_list_wrapper
-
r	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
t0
u1"
trackable_list_wrapper
-
w	variables"
_generic_user_object
,:* 2Adam/conv2d/kernel/m
: 2Adam/conv2d/bias/m
6:4 2Adam/conv2d_transpose/kernel/m
(:&2Adam/conv2d_transpose/bias/m
#:!	2Adam/dense/kernel/m
:	2Adam/dense/bias/m
,:* 2Adam/conv2d/kernel/v
: 2Adam/conv2d/bias/v
6:4 2Adam/conv2d_transpose/kernel/v
(:&2Adam/conv2d_transpose/bias/v
#:!	2Adam/dense/kernel/v
:	2Adam/dense/bias/v
	J
Const
J	
Const_1¤
W__inference_FullyConvolutionalNetwork_layer_call_and_return_conditional_losses_12752639б
ЕЖ123456RвO
HвE
;К8
input_1+                           
p 

 
к "?в<
5К2
0+                           	
Ъ ¤
W__inference_FullyConvolutionalNetwork_layer_call_and_return_conditional_losses_12752665б
ЕЖ123456RвO
HвE
;К8
input_1+                           
p

 
к "?в<
5К2
0+                           	
Ъ №
W__inference_FullyConvolutionalNetwork_layer_call_and_return_conditional_losses_12753421а
ЕЖ123456QвN
GвD
:К7
inputs+                           
p 

 
к "?в<
5К2
0+                           	
Ъ №
W__inference_FullyConvolutionalNetwork_layer_call_and_return_conditional_losses_12753500а
ЕЖ123456QвN
GвD
:К7
inputs+                           
p

 
к "?в<
5К2
0+                           	
Ъ ╒
<__inference_FullyConvolutionalNetwork_layer_call_fn_12752504Ф
ЕЖ123456RвO
HвE
;К8
input_1+                           
p 

 
к "2К/+                           	╒
<__inference_FullyConvolutionalNetwork_layer_call_fn_12752613Ф
ЕЖ123456RвO
HвE
;К8
input_1+                           
p

 
к "2К/+                           	╘
<__inference_FullyConvolutionalNetwork_layer_call_fn_12753321У
ЕЖ123456QвN
GвD
:К7
inputs+                           
p 

 
к "2К/+                           	╘
<__inference_FullyConvolutionalNetwork_layer_call_fn_12753342У
ЕЖ123456QвN
GвD
:К7
inputs+                           
p

 
к "2К/+                           	э
#__inference__wrapped_model_12752362┼
ЕЖ123456┼в┴
╣в╡
▓ко
<
B16К3
B1+                           
>
B107К4
B10+                           
>
B117К4
B11+                           
>
B127К4
B12+                           
<
B26К3
B2+                           
<
B36К3
B3+                           
<
B46К3
B4+                           
<
B56К3
B5+                           
<
B66К3
B6+                           
<
B76К3
B7+                           
<
B86К3
B8+                           
>
B8A7К4
B8A+                           
<
B96К3
B9+                           
к "oкl
j
FullyConvolutionalNetworkMКJ
FullyConvolutionalNetwork+                           	y
__inference_adapt_step_12753546V0./KвH
Aв>
<Т9%в"
 К         IteratorSpec 
к "
 ╥
I__inference_concatenate_layer_call_and_return_conditional_losses_12753300Д└в╝
┤в░
нЪй
<К9
inputs/0+                           
<К9
inputs/1+                           
<К9
inputs/2+                           
<К9
inputs/3+                           
<К9
inputs/4+                           
<К9
inputs/5+                           
<К9
inputs/6+                           
<К9
inputs/7+                           
<К9
inputs/8+                           
<К9
inputs/9+                           
=К:
	inputs/10+                           
=К:
	inputs/11+                           
=К:
	inputs/12+                           
к "?в<
5К2
0+                           
Ъ к
.__inference_concatenate_layer_call_fn_12753282ў└в╝
┤в░
нЪй
<К9
inputs/0+                           
<К9
inputs/1+                           
<К9
inputs/2+                           
<К9
inputs/3+                           
<К9
inputs/4+                           
<К9
inputs/5+                           
<К9
inputs/6+                           
<К9
inputs/7+                           
<К9
inputs/8+                           
<К9
inputs/9+                           
=К:
	inputs/10+                           
=К:
	inputs/11+                           
=К:
	inputs/12+                           
к "2К/+                           ┘
D__inference_conv2d_layer_call_and_return_conditional_losses_12753566Р12IвF
?в<
:К7
inputs+                           
к "?в<
5К2
0+                            
Ъ ▒
)__inference_conv2d_layer_call_fn_12753555Г12IвF
?в<
:К7
inputs+                           
к "2К/+                            у
N__inference_conv2d_transpose_layer_call_and_return_conditional_losses_12753613Р34IвF
?в<
:К7
inputs+                            
к "?в<
5К2
0+                           
Ъ ╗
3__inference_conv2d_transpose_layer_call_fn_12753575Г34IвF
?в<
:К7
inputs+                            
к "2К/+                           ╪
C__inference_dense_layer_call_and_return_conditional_losses_12753653Р56IвF
?в<
:К7
inputs+                           
к "?в<
5К2
0+                           	
Ъ ░
(__inference_dense_layer_call_fn_12753622Г56IвF
?в<
:К7
inputs+                           
к "2К/+                           	х
C__inference_model_layer_call_and_return_conditional_losses_12752938Э
ЕЖ123456═в╔
┴в╜
▓ко
<
B16К3
B1+                           
>
B107К4
B10+                           
>
B117К4
B11+                           
>
B127К4
B12+                           
<
B26К3
B2+                           
<
B36К3
B3+                           
<
B46К3
B4+                           
<
B56К3
B5+                           
<
B66К3
B6+                           
<
B76К3
B7+                           
<
B86К3
B8+                           
>
B8A7К4
B8A+                           
<
B96К3
B9+                           
p 

 
к "?в<
5К2
0+                           	
Ъ х
C__inference_model_layer_call_and_return_conditional_losses_12752972Э
ЕЖ123456═в╔
┴в╜
▓ко
<
B16К3
B1+                           
>
B107К4
B10+                           
>
B117К4
B11+                           
>
B127К4
B12+                           
<
B26К3
B2+                           
<
B36К3
B3+                           
<
B46К3
B4+                           
<
B56К3
B5+                           
<
B66К3
B6+                           
<
B76К3
B7+                           
<
B86К3
B8+                           
>
B8A7К4
B8A+                           
<
B96К3
B9+                           
p

 
к "?в<
5К2
0+                           	
Ъ └
C__inference_model_layer_call_and_return_conditional_losses_12753137°
ЕЖ123456ивд
ЬвШ
НкЙ
C
B1=К:
	inputs/B1+                           
E
B10>К;

inputs/B10+                           
E
B11>К;

inputs/B11+                           
E
B12>К;

inputs/B12+                           
C
B2=К:
	inputs/B2+                           
C
B3=К:
	inputs/B3+                           
C
B4=К:
	inputs/B4+                           
C
B5=К:
	inputs/B5+                           
C
B6=К:
	inputs/B6+                           
C
B7=К:
	inputs/B7+                           
C
B8=К:
	inputs/B8+                           
E
B8A>К;

inputs/B8A+                           
C
B9=К:
	inputs/B9+                           
p 

 
к "?в<
5К2
0+                           	
Ъ └
C__inference_model_layer_call_and_return_conditional_losses_12753230°
ЕЖ123456ивд
ЬвШ
НкЙ
C
B1=К:
	inputs/B1+                           
E
B10>К;

inputs/B10+                           
E
B11>К;

inputs/B11+                           
E
B12>К;

inputs/B12+                           
C
B2=К:
	inputs/B2+                           
C
B3=К:
	inputs/B3+                           
C
B4=К:
	inputs/B4+                           
C
B5=К:
	inputs/B5+                           
C
B6=К:
	inputs/B6+                           
C
B7=К:
	inputs/B7+                           
C
B8=К:
	inputs/B8+                           
E
B8A>К;

inputs/B8A+                           
C
B9=К:
	inputs/B9+                           
p

 
к "?в<
5К2
0+                           	
Ъ ╜
(__inference_model_layer_call_fn_12752753Р
ЕЖ123456═в╔
┴в╜
▓ко
<
B16К3
B1+                           
>
B107К4
B10+                           
>
B117К4
B11+                           
>
B127К4
B12+                           
<
B26К3
B2+                           
<
B36К3
B3+                           
<
B46К3
B4+                           
<
B56К3
B5+                           
<
B66К3
B6+                           
<
B76К3
B7+                           
<
B86К3
B8+                           
>
B8A7К4
B8A+                           
<
B96К3
B9+                           
p 

 
к "2К/+                           	╜
(__inference_model_layer_call_fn_12752904Р
ЕЖ123456═в╔
┴в╜
▓ко
<
B16К3
B1+                           
>
B107К4
B10+                           
>
B117К4
B11+                           
>
B127К4
B12+                           
<
B26К3
B2+                           
<
B36К3
B3+                           
<
B46К3
B4+                           
<
B56К3
B5+                           
<
B66К3
B6+                           
<
B76К3
B7+                           
<
B86К3
B8+                           
>
B8A7К4
B8A+                           
<
B96К3
B9+                           
p

 
к "2К/+                           	Ш
(__inference_model_layer_call_fn_12753011ы
ЕЖ123456ивд
ЬвШ
НкЙ
C
B1=К:
	inputs/B1+                           
E
B10>К;

inputs/B10+                           
E
B11>К;

inputs/B11+                           
E
B12>К;

inputs/B12+                           
C
B2=К:
	inputs/B2+                           
C
B3=К:
	inputs/B3+                           
C
B4=К:
	inputs/B4+                           
C
B5=К:
	inputs/B5+                           
C
B6=К:
	inputs/B6+                           
C
B7=К:
	inputs/B7+                           
C
B8=К:
	inputs/B8+                           
E
B8A>К;

inputs/B8A+                           
C
B9=К:
	inputs/B9+                           
p 

 
к "2К/+                           	Ш
(__inference_model_layer_call_fn_12753044ы
ЕЖ123456ивд
ЬвШ
НкЙ
C
B1=К:
	inputs/B1+                           
E
B10>К;

inputs/B10+                           
E
B11>К;

inputs/B11+                           
E
B12>К;

inputs/B12+                           
C
B2=К:
	inputs/B2+                           
C
B3=К:
	inputs/B3+                           
C
B4=К:
	inputs/B4+                           
C
B5=К:
	inputs/B5+                           
C
B6=К:
	inputs/B6+                           
C
B7=К:
	inputs/B7+                           
C
B8=К:
	inputs/B8+                           
E
B8A>К;

inputs/B8A+                           
C
B9=К:
	inputs/B9+                           
p

 
к "2К/+                           	щ
&__inference_signature_wrapper_12753265╛
ЕЖ123456╛в║
в 
▓ко
<
B16К3
B1+                           
>
B107К4
B10+                           
>
B117К4
B11+                           
>
B127К4
B12+                           
<
B26К3
B2+                           
<
B36К3
B3+                           
<
B46К3
B4+                           
<
B56К3
B5+                           
<
B66К3
B6+                           
<
B76К3
B7+                           
<
B86К3
B8+                           
>
B8A7К4
B8A+                           
<
B96К3
B9+                           "oкl
j
FullyConvolutionalNetworkMКJ
FullyConvolutionalNetwork+                           	