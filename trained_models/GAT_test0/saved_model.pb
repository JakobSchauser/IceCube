э∞"
Х%к$
B
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
A
EnsureShape

input"T
output"T"
shapeshape"	
Ttype
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
≠
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
\
	LeakyRelu
features"T
activations"T"
alphafloat%ЌћL>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(Р
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
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
z
SegmentMean	
data"T
segment_ids"Tindices
output"T" 
Ttype:
2	"
Tindicestype:
2	
y

SegmentSum	
data"T
segment_ids"Tindices
output"T" 
Ttype:
2	"
Tindicestype:
2	
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
y
SparseReorder
input_indices	
input_values"T
input_shape	
output_indices	
output_values"T"	
Ttype
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
Њ
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
ц
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
;
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Љ
UnsortedSegmentMax	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T"
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
Ѕ
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T" 
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
E
Where

input"T	
index	"%
Ttype0
:
2	
"serve*2.4.12v2.4.0-49-g85c8b2a817f8≈Е 
Ц
model_15/gat_conv_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*,
shared_namemodel_15/gat_conv_30/kernel
П
/model_15/gat_conv_30/kernel/Read/ReadVariableOpReadVariableOpmodel_15/gat_conv_30/kernel*"
_output_shapes
:
*
dtype0
™
%model_15/gat_conv_30/attn_kernel_selfVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*6
shared_name'%model_15/gat_conv_30/attn_kernel_self
£
9model_15/gat_conv_30/attn_kernel_self/Read/ReadVariableOpReadVariableOp%model_15/gat_conv_30/attn_kernel_self*"
_output_shapes
:
*
dtype0
ђ
&model_15/gat_conv_30/attn_kernel_neighVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*7
shared_name(&model_15/gat_conv_30/attn_kernel_neigh
•
:model_15/gat_conv_30/attn_kernel_neigh/Read/ReadVariableOpReadVariableOp&model_15/gat_conv_30/attn_kernel_neigh*"
_output_shapes
:
*
dtype0
Ц
model_15/gat_conv_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*,
shared_namemodel_15/gat_conv_31/kernel
П
/model_15/gat_conv_31/kernel/Read/ReadVariableOpReadVariableOpmodel_15/gat_conv_31/kernel*"
_output_shapes
:P*
dtype0
™
%model_15/gat_conv_31/attn_kernel_selfVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%model_15/gat_conv_31/attn_kernel_self
£
9model_15/gat_conv_31/attn_kernel_self/Read/ReadVariableOpReadVariableOp%model_15/gat_conv_31/attn_kernel_self*"
_output_shapes
:*
dtype0
ђ
&model_15/gat_conv_31/attn_kernel_neighVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&model_15/gat_conv_31/attn_kernel_neigh
•
:model_15/gat_conv_31/attn_kernel_neigh/Read/ReadVariableOpReadVariableOp&model_15/gat_conv_31/attn_kernel_neigh*"
_output_shapes
:*
dtype0
М
model_15/dense_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*)
shared_namemodel_15/dense_47/kernel
Е
,model_15/dense_47/kernel/Read/ReadVariableOpReadVariableOpmodel_15/dense_47/kernel*
_output_shapes

:*
dtype0
Д
model_15/dense_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namemodel_15/dense_47/bias
}
*model_15/dense_47/bias/Read/ReadVariableOpReadVariableOpmodel_15/dense_47/bias*
_output_shapes
:*
dtype0
М
model_15/dense_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*)
shared_namemodel_15/dense_45/kernel
Е
,model_15/dense_45/kernel/Read/ReadVariableOpReadVariableOpmodel_15/dense_45/kernel*
_output_shapes

:(*
dtype0
Д
model_15/dense_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namemodel_15/dense_45/bias
}
*model_15/dense_45/bias/Read/ReadVariableOpReadVariableOpmodel_15/dense_45/bias*
_output_shapes
:*
dtype0
М
model_15/dense_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*)
shared_namemodel_15/dense_46/kernel
Е
,model_15/dense_46/kernel/Read/ReadVariableOpReadVariableOpmodel_15/dense_46/kernel*
_output_shapes

:*
dtype0
Д
model_15/dense_46/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namemodel_15/dense_46/bias
}
*model_15/dense_46/bias/Read/ReadVariableOpReadVariableOpmodel_15/dense_46/bias*
_output_shapes
:*
dtype0
Ґ
%model_15/batch_normalization_30/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%model_15/batch_normalization_30/gamma
Ы
9model_15/batch_normalization_30/gamma/Read/ReadVariableOpReadVariableOp%model_15/batch_normalization_30/gamma*
_output_shapes
:*
dtype0
†
$model_15/batch_normalization_30/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$model_15/batch_normalization_30/beta
Щ
8model_15/batch_normalization_30/beta/Read/ReadVariableOpReadVariableOp$model_15/batch_normalization_30/beta*
_output_shapes
:*
dtype0
Ґ
%model_15/batch_normalization_31/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%model_15/batch_normalization_31/gamma
Ы
9model_15/batch_normalization_31/gamma/Read/ReadVariableOpReadVariableOp%model_15/batch_normalization_31/gamma*
_output_shapes
:*
dtype0
†
$model_15/batch_normalization_31/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$model_15/batch_normalization_31/beta
Щ
8model_15/batch_normalization_31/beta/Read/ReadVariableOpReadVariableOp$model_15/batch_normalization_31/beta*
_output_shapes
:*
dtype0
Ѓ
+model_15/batch_normalization_30/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+model_15/batch_normalization_30/moving_mean
І
?model_15/batch_normalization_30/moving_mean/Read/ReadVariableOpReadVariableOp+model_15/batch_normalization_30/moving_mean*
_output_shapes
:*
dtype0
ґ
/model_15/batch_normalization_30/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/model_15/batch_normalization_30/moving_variance
ѓ
Cmodel_15/batch_normalization_30/moving_variance/Read/ReadVariableOpReadVariableOp/model_15/batch_normalization_30/moving_variance*
_output_shapes
:*
dtype0
Ѓ
+model_15/batch_normalization_31/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+model_15/batch_normalization_31/moving_mean
І
?model_15/batch_normalization_31/moving_mean/Read/ReadVariableOpReadVariableOp+model_15/batch_normalization_31/moving_mean*
_output_shapes
:*
dtype0
ґ
/model_15/batch_normalization_31/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/model_15/batch_normalization_31/moving_variance
ѓ
Cmodel_15/batch_normalization_31/moving_variance/Read/ReadVariableOpReadVariableOp/model_15/batch_normalization_31/moving_variance*
_output_shapes
:*
dtype0

NoOpNoOp
¬3
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*э2
valueу2Bр2 Bй2
±
att1
att2
	Pool1
	Pool2

decode
norm_layers
d2
	variables
	trainable_variables

regularization_losses
	keras_api

signatures
Ѕ
kwargs_keys

kernel
attn_kernel_self
attn_kernel_neigh
attn_kernel_neighs
dropout
trainable_variables
	variables
regularization_losses
	keras_api
Ѕ
kwargs_keys

kernel
attn_kernel_self
attn_kernel_neigh
attn_kernel_neighs
dropout
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
 	variables
!regularization_losses
"	keras_api
R
#trainable_variables
$	variables
%regularization_losses
&	keras_api

'0
(1

)0
*1
h

+kernel
,bias
-trainable_variables
.	variables
/regularization_losses
0	keras_api
Ц
0
1
2
3
4
5
16
27
38
49
510
611
712
813
914
:15
;16
<17
+18
,19
v
0
1
2
3
4
5
16
27
38
49
510
611
712
813
+14
,15
 
≠
=layer_metrics
	variables

>layers
	trainable_variables
?metrics
@layer_regularization_losses
Anon_trainable_variables

regularization_losses
 
 
WU
VARIABLE_VALUEmodel_15/gat_conv_30/kernel&att1/kernel/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%model_15/gat_conv_30/attn_kernel_self0att1/attn_kernel_self/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE&model_15/gat_conv_30/attn_kernel_neigh1att1/attn_kernel_neigh/.ATTRIBUTES/VARIABLE_VALUE
R
Btrainable_variables
C	variables
Dregularization_losses
E	keras_api

0
1
2

0
1
2
 
≠
Flayer_metrics

Glayers
trainable_variables
	variables
Hmetrics
Ilayer_regularization_losses
Jnon_trainable_variables
regularization_losses
 
WU
VARIABLE_VALUEmodel_15/gat_conv_31/kernel&att2/kernel/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%model_15/gat_conv_31/attn_kernel_self0att2/attn_kernel_self/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE&model_15/gat_conv_31/attn_kernel_neigh1att2/attn_kernel_neigh/.ATTRIBUTES/VARIABLE_VALUE
R
Ktrainable_variables
L	variables
Mregularization_losses
N	keras_api

0
1
2

0
1
2
 
≠
Olayer_metrics

Players
trainable_variables
	variables
Qmetrics
Rlayer_regularization_losses
Snon_trainable_variables
regularization_losses
 
 
 
≠
Tlayer_metrics

Ulayers
trainable_variables
 	variables
Vmetrics
Wlayer_regularization_losses
Xnon_trainable_variables
!regularization_losses
 
 
 
≠
Ylayer_metrics

Zlayers
#trainable_variables
$	variables
[metrics
\layer_regularization_losses
]non_trainable_variables
%regularization_losses
h

1kernel
2bias
^trainable_variables
_	variables
`regularization_losses
a	keras_api
h

3kernel
4bias
btrainable_variables
c	variables
dregularization_losses
e	keras_api
Ч
faxis
	5gamma
6beta
9moving_mean
:moving_variance
gtrainable_variables
h	variables
iregularization_losses
j	keras_api
Ч
kaxis
	7gamma
8beta
;moving_mean
<moving_variance
ltrainable_variables
m	variables
nregularization_losses
o	keras_api
RP
VARIABLE_VALUEmodel_15/dense_47/kernel$d2/kernel/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEmodel_15/dense_47/bias"d2/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1

+0
,1
 
≠
player_metrics

qlayers
-trainable_variables
.	variables
rmetrics
slayer_regularization_losses
tnon_trainable_variables
/regularization_losses
TR
VARIABLE_VALUEmodel_15/dense_45/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEmodel_15/dense_45/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEmodel_15/dense_46/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEmodel_15/dense_46/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%model_15/batch_normalization_30/gamma'variables/10/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE$model_15/batch_normalization_30/beta'variables/11/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%model_15/batch_normalization_31/gamma'variables/12/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE$model_15/batch_normalization_31/beta'variables/13/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUE+model_15/batch_normalization_30/moving_mean'variables/14/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE/model_15/batch_normalization_30/moving_variance'variables/15/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUE+model_15/batch_normalization_31/moving_mean'variables/16/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE/model_15/batch_normalization_31/moving_variance'variables/17/.ATTRIBUTES/VARIABLE_VALUE
 
?
0
1
2
3
'4
(5
)6
*7
8
 
 

90
:1
;2
<3
 
 
 
≠
ulayer_metrics

vlayers
Btrainable_variables
C	variables
wmetrics
xlayer_regularization_losses
ynon_trainable_variables
Dregularization_losses
 

0
 
 
 
 
 
 
≠
zlayer_metrics

{layers
Ktrainable_variables
L	variables
|metrics
}layer_regularization_losses
~non_trainable_variables
Mregularization_losses
 

0
 
 
 
 
 
 
 
 
 
 
 
 
 

10
21

10
21
 
±
layer_metrics
Аlayers
^trainable_variables
_	variables
Бmetrics
 Вlayer_regularization_losses
Гnon_trainable_variables
`regularization_losses

30
41

30
41
 
≤
Дlayer_metrics
Еlayers
btrainable_variables
c	variables
Жmetrics
 Зlayer_regularization_losses
Иnon_trainable_variables
dregularization_losses
 

50
61

50
61
92
:3
 
≤
Йlayer_metrics
Кlayers
gtrainable_variables
h	variables
Лmetrics
 Мlayer_regularization_losses
Нnon_trainable_variables
iregularization_losses
 

70
81

70
81
;2
<3
 
≤
Оlayer_metrics
Пlayers
ltrainable_variables
m	variables
Рmetrics
 Сlayer_regularization_losses
Тnon_trainable_variables
nregularization_losses
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

90
:1
 
 
 
 

;0
<1
y
serving_default_args_0Placeholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
{
serving_default_args_0_1Placeholder*'
_output_shapes
:€€€€€€€€€*
dtype0	*
shape:€€€€€€€€€
s
serving_default_args_0_2Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
a
serving_default_args_0_3Placeholder*
_output_shapes
:*
dtype0	*
shape:
s
serving_default_args_0_4Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0	*
shape:€€€€€€€€€
Н	
StatefulPartitionedCallStatefulPartitionedCallserving_default_args_0serving_default_args_0_1serving_default_args_0_2serving_default_args_0_3serving_default_args_0_4model_15/gat_conv_30/kernel%model_15/gat_conv_30/attn_kernel_self&model_15/gat_conv_30/attn_kernel_neighmodel_15/gat_conv_31/kernel%model_15/gat_conv_31/attn_kernel_self&model_15/gat_conv_31/attn_kernel_neighmodel_15/dense_45/kernelmodel_15/dense_45/bias+model_15/batch_normalization_30/moving_mean/model_15/batch_normalization_30/moving_variance$model_15/batch_normalization_30/beta%model_15/batch_normalization_30/gammamodel_15/dense_46/kernelmodel_15/dense_46/bias+model_15/batch_normalization_31/moving_mean/model_15/batch_normalization_31/moving_variance$model_15/batch_normalization_31/beta%model_15/batch_normalization_31/gammamodel_15/dense_47/kernelmodel_15/dense_47/bias*$
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*6
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *,
f'R%
#__inference_signature_wrapper_81381
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
З
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename/model_15/gat_conv_30/kernel/Read/ReadVariableOp9model_15/gat_conv_30/attn_kernel_self/Read/ReadVariableOp:model_15/gat_conv_30/attn_kernel_neigh/Read/ReadVariableOp/model_15/gat_conv_31/kernel/Read/ReadVariableOp9model_15/gat_conv_31/attn_kernel_self/Read/ReadVariableOp:model_15/gat_conv_31/attn_kernel_neigh/Read/ReadVariableOp,model_15/dense_47/kernel/Read/ReadVariableOp*model_15/dense_47/bias/Read/ReadVariableOp,model_15/dense_45/kernel/Read/ReadVariableOp*model_15/dense_45/bias/Read/ReadVariableOp,model_15/dense_46/kernel/Read/ReadVariableOp*model_15/dense_46/bias/Read/ReadVariableOp9model_15/batch_normalization_30/gamma/Read/ReadVariableOp8model_15/batch_normalization_30/beta/Read/ReadVariableOp9model_15/batch_normalization_31/gamma/Read/ReadVariableOp8model_15/batch_normalization_31/beta/Read/ReadVariableOp?model_15/batch_normalization_30/moving_mean/Read/ReadVariableOpCmodel_15/batch_normalization_30/moving_variance/Read/ReadVariableOp?model_15/batch_normalization_31/moving_mean/Read/ReadVariableOpCmodel_15/batch_normalization_31/moving_variance/Read/ReadVariableOpConst*!
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *'
f"R 
__inference__traced_save_83267
т
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemodel_15/gat_conv_30/kernel%model_15/gat_conv_30/attn_kernel_self&model_15/gat_conv_30/attn_kernel_neighmodel_15/gat_conv_31/kernel%model_15/gat_conv_31/attn_kernel_self&model_15/gat_conv_31/attn_kernel_neighmodel_15/dense_47/kernelmodel_15/dense_47/biasmodel_15/dense_45/kernelmodel_15/dense_45/biasmodel_15/dense_46/kernelmodel_15/dense_46/bias%model_15/batch_normalization_30/gamma$model_15/batch_normalization_30/beta%model_15/batch_normalization_31/gamma$model_15/batch_normalization_31/beta+model_15/batch_normalization_30/moving_mean/model_15/batch_normalization_30/moving_variance+model_15/batch_normalization_31/moving_mean/model_15/batch_normalization_31/moving_variance* 
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В **
f%R#
!__inference__traced_restore_83337±€
јЇ
’
F__inference_gat_conv_30_layer_call_and_return_conditional_losses_82407
inputs_0

inputs	
inputs_1
inputs_2	#
reshape_readvariableop_resource%
!transpose_readvariableop_resource'
#transpose_1_readvariableop_resource
identityИҐReshape/ReadVariableOpҐtranspose/ReadVariableOpҐtranspose_1/ReadVariableOpФ
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*"
_output_shapes
:
*
dtype02
Reshape/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   2
Reshape/shape~
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*
_output_shapes

:P2	
ReshapeЪ
transpose/ReadVariableOpReadVariableOp!transpose_readvariableop_resource*"
_output_shapes
:
*
dtype02
transpose/ReadVariableOpu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЛ
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*"
_output_shapes
:
2
	transpose†
transpose_1/ReadVariableOpReadVariableOp#transpose_1_readvariableop_resource*"
_output_shapes
:
*
dtype02
transpose_1/ReadVariableOpy
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permУ
transpose_1	Transpose"transpose_1/ReadVariableOp:value:0transpose_1/perm:output:0*
T0*"
_output_shapes
:
2
transpose_1V
ShapeShapeinputs_0*
T0*
_output_shapes
:*
out_type0	2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
strided_slice
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stackГ
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1Г
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2Ж
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2
strided_slice_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stackГ
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1Г
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2Ж
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2
strided_slice_2Ґ
NotEqualNotEqualstrided_slice_1:output:0strided_slice_2:output:0*
T0	*#
_output_shapes
:€€€€€€€€€*
incompatible_shape_error( 2

NotEqual
EnsureShapeEnsureShapeNotEqual:z:0*
T0
*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€2
EnsureShape\
range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2
range/deltaМ
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*

Tidx0	*#
_output_shapes
:€€€€€€€€€2
range
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stackГ
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1Г
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2Ь
strided_slice_3StridedSlicerange:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2
strided_slice_3b
Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/repeatsk
Repeat/CastCastRepeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Repeat/Castd
Repeat/ShapeShapestrided_slice_3:output:0*
T0	*
_output_shapes
:2
Repeat/Shapeo
Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shapes
Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shape_1~
Repeat/ReshapeReshapeRepeat/Cast:y:0Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
Repeat/Reshapep
Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/ExpandDims/dim§
Repeat/ExpandDims
ExpandDimsstrided_slice_3:output:0Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2
Repeat/ExpandDimst
Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/0t
Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/1Ѕ
Repeat/Tile/multiplesPack Repeat/Tile/multiples/0:output:0 Repeat/Tile/multiples/1:output:0Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2
Repeat/Tile/multiplesФ
Repeat/TileTileRepeat/ExpandDims:output:0Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2
Repeat/TileВ
Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Repeat/strided_slice/stackЖ
Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_1Ж
Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_2К
Repeat/strided_sliceStridedSliceRepeat/Shape:output:0#Repeat/strided_slice/stack:output:0%Repeat/strided_slice/stack_1:output:0%Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
Repeat/strided_sliceЖ
Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_1/stackК
Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_1К
Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_2Ц
Repeat/strided_slice_1StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_1/stack:output:0'Repeat/strided_slice_1/stack_1:output:0'Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Repeat/strided_slice_1z

Repeat/mulMulRepeat/Reshape:output:0Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2

Repeat/mulЖ
Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_2/stackК
Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
Repeat/strided_slice_2/stack_1К
Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_2/stack_2Р
Repeat/strided_slice_2StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_2/stack:output:0'Repeat/strided_slice_2/stack_1:output:0'Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2
Repeat/strided_slice_2v
Repeat/concat/values_1PackRepeat/mul:z:0*
N*
T0*
_output_shapes
:2
Repeat/concat/values_1j
Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Repeat/concat/axis÷
Repeat/concatConcatV2Repeat/strided_slice:output:0Repeat/concat/values_1:output:0Repeat/strided_slice_2:output:0Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Repeat/concatШ
Repeat/Reshape_1ReshapeRepeat/Tile:output:0Repeat/concat:output:0*
T0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Repeat/Reshape_1^
boolean_mask/ShapeShapeinputs*
T0	*
_output_shapes
:2
boolean_mask/ShapeО
 boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 boolean_mask/strided_slice/stackТ
"boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_1Т
"boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_2Ь
boolean_mask/strided_sliceStridedSliceboolean_mask/Shape:output:0)boolean_mask/strided_slice/stack:output:0+boolean_mask/strided_slice/stack_1:output:0+boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
boolean_mask/strided_sliceФ
#boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2%
#boolean_mask/Prod/reduction_indicesҐ
boolean_mask/ProdProd#boolean_mask/strided_slice:output:0,boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2
boolean_mask/Prodb
boolean_mask/Shape_1Shapeinputs*
T0	*
_output_shapes
:2
boolean_mask/Shape_1Т
"boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"boolean_mask/strided_slice_1/stackЦ
$boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_1/stack_1Ц
$boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_1/stack_2Є
boolean_mask/strided_slice_1StridedSliceboolean_mask/Shape_1:output:0+boolean_mask/strided_slice_1/stack:output:0-boolean_mask/strided_slice_1/stack_1:output:0-boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2
boolean_mask/strided_slice_1b
boolean_mask/Shape_2Shapeinputs*
T0	*
_output_shapes
:2
boolean_mask/Shape_2Т
"boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice_2/stackЦ
$boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_2/stack_1Ц
$boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_2/stack_2Є
boolean_mask/strided_slice_2StridedSliceboolean_mask/Shape_2:output:0+boolean_mask/strided_slice_2/stack:output:0-boolean_mask/strided_slice_2/stack_1:output:0-boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2
boolean_mask/strided_slice_2О
boolean_mask/concat/values_1Packboolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concat/values_1v
boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/concat/axisь
boolean_mask/concatConcatV2%boolean_mask/strided_slice_1:output:0%boolean_mask/concat/values_1:output:0%boolean_mask/strided_slice_2:output:0!boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concatП
boolean_mask/ReshapeReshapeinputsboolean_mask/concat:output:0*
T0	*'
_output_shapes
:€€€€€€€€€2
boolean_mask/ReshapeП
boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
boolean_mask/Reshape_1/shape¶
boolean_mask/Reshape_1ReshapeEnsureShape:output:0%boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:€€€€€€€€€2
boolean_mask/Reshape_1{
boolean_mask/WhereWhereboolean_mask/Reshape_1:output:0*'
_output_shapes
:€€€€€€€€€2
boolean_mask/WhereШ
boolean_mask/SqueezeSqueezeboolean_mask/Where:index:0*
T0	*#
_output_shapes
:€€€€€€€€€*
squeeze_dims
2
boolean_mask/Squeezez
boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/GatherV2/axisт
boolean_mask/GatherV2GatherV2boolean_mask/Reshape:output:0boolean_mask/Squeeze:output:0#boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:€€€€€€€€€2
boolean_mask/GatherV2\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis®
concatConcatV2boolean_mask/GatherV2:output:0Repeat/Reshape_1:output:0concat/axis:output:0*
N*
T0	*'
_output_shapes
:€€€€€€€€€2
concat
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stackГ
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_4/stack_1Г
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2Ь
strided_slice_4StridedSliceconcat:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_4j
ones_like/ShapeShapestrided_slice_4:output:0*
T0	*
_output_shapes
:2
ones_like/Shaped
ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
ones_like/ConstА
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0	*#
_output_shapes
:€€€€€€€€€2
	ones_likeЬ
SparseReorder/input_shapePackstrided_slice:output:0strided_slice:output:0*
N*
T0	*
_output_shapes
:2
SparseReorder/input_shapeє
SparseReorderSparseReorderconcat:output:0ones_like:output:0"SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":€€€€€€€€€:€€€€€€€€€2
SparseReorder
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"    ю€€€2
strided_slice_5/stackГ
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    €€€€2
strided_slice_5/stack_1Г
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_5/stack_2Ђ
strided_slice_5StridedSliceSparseReorder:output_indices:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_5
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"    €€€€2
strided_slice_6/stackГ
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack_1Г
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2Ђ
strided_slice_6StridedSliceSparseReorder:output_indices:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_6h
MatMulMatMulinputs_0Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€P2
MatMulw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€
      2
Reshape_1/shapeГ
	Reshape_1ReshapeMatMul:product:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€
2
	Reshape_1j
mulMulReshape_1:output:0transpose:y:0*
T0*+
_output_shapes
:€€€€€€€€€
2
muly
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Sum/reduction_indicesl
SumSummul:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
Sum`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axisµ
GatherV2GatherV2Sum:output:0strided_slice_5:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2

GatherV2p
mul_1MulReshape_1:output:0transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€
2
mul_1}
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Sum_1/reduction_indicest
Sum_1Sum	mul_1:z:0 Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
Sum_1d
GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_1/axisљ

GatherV2_1GatherV2Sum_1:output:0strided_slice_6:output:0GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2

GatherV2_1m
addAddV2GatherV2:output:0GatherV2_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
addU
	LeakyRelu	LeakyReluadd:z:0*'
_output_shapes
:€€€€€€€€€
2
	LeakyReluя
UnsortedSegmentMaxUnsortedSegmentMaxLeakyRelu:activations:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€
2
UnsortedSegmentMaxd
GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_2/axis 

GatherV2_2GatherV2UnsortedSegmentMax:output:0strided_slice_5:output:0GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2

GatherV2_2q
subSubLeakyRelu:activations:0GatherV2_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
subL
ExpExpsub:z:0*
T0*'
_output_shapes
:€€€€€€€€€
2
Expѕ
UnsortedSegmentSumUnsortedSegmentSumExp:y:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€
2
UnsortedSegmentSumW
add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_pЙ02	
add_1/yx
add_1AddV2UnsortedSegmentSum:output:0add_1/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
add_1d
GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_3/axisЄ

GatherV2_3GatherV2	add_1:z:0strided_slice_5:output:0GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2

GatherV2_3m
truedivRealDivExp:y:0GatherV2_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2	
truedivs
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   A2
dropout/dropout/ConstР
dropout/dropout/MulMultruediv:z:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dropout/dropout/Muli
dropout/dropout/ShapeShapetruediv:z:0*
T0*
_output_shapes
:2
dropout/dropout/Shapeћ
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€
*
dtype02.
,dropout/dropout/random_uniform/RandomUniformЕ
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?2 
dropout/dropout/GreaterEqual/yё
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dropout/dropout/GreaterEqualЧ
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€
2
dropout/dropout/CastЪ
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dropout/dropout/Mul_1
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stackГ
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack_1Г
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2Ю
strided_slice_7StridedSlicedropout/dropout/Mul_1:z:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:€€€€€€€€€
*
ellipsis_mask*
new_axis_mask2
strided_slice_7d
GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_4/axis≈

GatherV2_4GatherV2Reshape_1:output:0strided_slice_6:output:0GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:€€€€€€€€€
2

GatherV2_4z
mul_2Mulstrided_slice_7:output:0GatherV2_4:output:0*
T0*+
_output_shapes
:€€€€€€€€€
2
mul_2ў
UnsortedSegmentSum_1UnsortedSegmentSum	mul_2:z:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:€€€€€€€€€
2
UnsortedSegmentSum_1s
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   2
Reshape_2/shapeМ
	Reshape_2ReshapeUnsortedSegmentSum_1:output:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€P2
	Reshape_2Z
ReluReluReshape_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€P2
ReluЈ
IdentityIdentityRelu:activations:0^Reshape/ReadVariableOp^transpose/ReadVariableOp^transpose_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€P2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€::::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp28
transpose_1/ReadVariableOptranspose_1/ReadVariableOp:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
Љ
©
6__inference_batch_normalization_31_layer_call_fn_83180

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCall†
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Z
fURS
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_801382
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
цЇ
’
F__inference_gat_conv_31_layer_call_and_return_conditional_losses_80673

inputs
inputs_1	
inputs_2
inputs_3	#
reshape_readvariableop_resource%
!transpose_readvariableop_resource'
#transpose_1_readvariableop_resource
identityИҐReshape/ReadVariableOpҐtranspose/ReadVariableOpҐtranspose_1/ReadVariableOpФ
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*"
_output_shapes
:P*
dtype02
Reshape/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Reshape/shape~
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*
_output_shapes

:P2	
ReshapeЪ
transpose/ReadVariableOpReadVariableOp!transpose_readvariableop_resource*"
_output_shapes
:*
dtype02
transpose/ReadVariableOpu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЛ
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*"
_output_shapes
:2
	transpose†
transpose_1/ReadVariableOpReadVariableOp#transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02
transpose_1/ReadVariableOpy
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permУ
transpose_1	Transpose"transpose_1/ReadVariableOp:value:0transpose_1/perm:output:0*
T0*"
_output_shapes
:2
transpose_1T
ShapeShapeinputs*
T0*
_output_shapes
:*
out_type0	2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
strided_slice
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stackГ
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1Г
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2И
strided_slice_1StridedSliceinputs_1strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2
strided_slice_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stackГ
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1Г
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2И
strided_slice_2StridedSliceinputs_1strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2
strided_slice_2Ґ
NotEqualNotEqualstrided_slice_1:output:0strided_slice_2:output:0*
T0	*#
_output_shapes
:€€€€€€€€€*
incompatible_shape_error( 2

NotEqual
EnsureShapeEnsureShapeNotEqual:z:0*
T0
*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€2
EnsureShape\
range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2
range/deltaМ
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*

Tidx0	*#
_output_shapes
:€€€€€€€€€2
range
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stackГ
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1Г
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2Ь
strided_slice_3StridedSlicerange:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2
strided_slice_3b
Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/repeatsk
Repeat/CastCastRepeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Repeat/Castd
Repeat/ShapeShapestrided_slice_3:output:0*
T0	*
_output_shapes
:2
Repeat/Shapeo
Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shapes
Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shape_1~
Repeat/ReshapeReshapeRepeat/Cast:y:0Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
Repeat/Reshapep
Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/ExpandDims/dim§
Repeat/ExpandDims
ExpandDimsstrided_slice_3:output:0Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2
Repeat/ExpandDimst
Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/0t
Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/1Ѕ
Repeat/Tile/multiplesPack Repeat/Tile/multiples/0:output:0 Repeat/Tile/multiples/1:output:0Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2
Repeat/Tile/multiplesФ
Repeat/TileTileRepeat/ExpandDims:output:0Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2
Repeat/TileВ
Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Repeat/strided_slice/stackЖ
Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_1Ж
Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_2К
Repeat/strided_sliceStridedSliceRepeat/Shape:output:0#Repeat/strided_slice/stack:output:0%Repeat/strided_slice/stack_1:output:0%Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
Repeat/strided_sliceЖ
Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_1/stackК
Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_1К
Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_2Ц
Repeat/strided_slice_1StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_1/stack:output:0'Repeat/strided_slice_1/stack_1:output:0'Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Repeat/strided_slice_1z

Repeat/mulMulRepeat/Reshape:output:0Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2

Repeat/mulЖ
Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_2/stackК
Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
Repeat/strided_slice_2/stack_1К
Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_2/stack_2Р
Repeat/strided_slice_2StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_2/stack:output:0'Repeat/strided_slice_2/stack_1:output:0'Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2
Repeat/strided_slice_2v
Repeat/concat/values_1PackRepeat/mul:z:0*
N*
T0*
_output_shapes
:2
Repeat/concat/values_1j
Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Repeat/concat/axis÷
Repeat/concatConcatV2Repeat/strided_slice:output:0Repeat/concat/values_1:output:0Repeat/strided_slice_2:output:0Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Repeat/concatШ
Repeat/Reshape_1ReshapeRepeat/Tile:output:0Repeat/concat:output:0*
T0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Repeat/Reshape_1`
boolean_mask/ShapeShapeinputs_1*
T0	*
_output_shapes
:2
boolean_mask/ShapeО
 boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 boolean_mask/strided_slice/stackТ
"boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_1Т
"boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_2Ь
boolean_mask/strided_sliceStridedSliceboolean_mask/Shape:output:0)boolean_mask/strided_slice/stack:output:0+boolean_mask/strided_slice/stack_1:output:0+boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
boolean_mask/strided_sliceФ
#boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2%
#boolean_mask/Prod/reduction_indicesҐ
boolean_mask/ProdProd#boolean_mask/strided_slice:output:0,boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2
boolean_mask/Prodd
boolean_mask/Shape_1Shapeinputs_1*
T0	*
_output_shapes
:2
boolean_mask/Shape_1Т
"boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"boolean_mask/strided_slice_1/stackЦ
$boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_1/stack_1Ц
$boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_1/stack_2Є
boolean_mask/strided_slice_1StridedSliceboolean_mask/Shape_1:output:0+boolean_mask/strided_slice_1/stack:output:0-boolean_mask/strided_slice_1/stack_1:output:0-boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2
boolean_mask/strided_slice_1d
boolean_mask/Shape_2Shapeinputs_1*
T0	*
_output_shapes
:2
boolean_mask/Shape_2Т
"boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice_2/stackЦ
$boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_2/stack_1Ц
$boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_2/stack_2Є
boolean_mask/strided_slice_2StridedSliceboolean_mask/Shape_2:output:0+boolean_mask/strided_slice_2/stack:output:0-boolean_mask/strided_slice_2/stack_1:output:0-boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2
boolean_mask/strided_slice_2О
boolean_mask/concat/values_1Packboolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concat/values_1v
boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/concat/axisь
boolean_mask/concatConcatV2%boolean_mask/strided_slice_1:output:0%boolean_mask/concat/values_1:output:0%boolean_mask/strided_slice_2:output:0!boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concatС
boolean_mask/ReshapeReshapeinputs_1boolean_mask/concat:output:0*
T0	*'
_output_shapes
:€€€€€€€€€2
boolean_mask/ReshapeП
boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
boolean_mask/Reshape_1/shape¶
boolean_mask/Reshape_1ReshapeEnsureShape:output:0%boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:€€€€€€€€€2
boolean_mask/Reshape_1{
boolean_mask/WhereWhereboolean_mask/Reshape_1:output:0*'
_output_shapes
:€€€€€€€€€2
boolean_mask/WhereШ
boolean_mask/SqueezeSqueezeboolean_mask/Where:index:0*
T0	*#
_output_shapes
:€€€€€€€€€*
squeeze_dims
2
boolean_mask/Squeezez
boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/GatherV2/axisт
boolean_mask/GatherV2GatherV2boolean_mask/Reshape:output:0boolean_mask/Squeeze:output:0#boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:€€€€€€€€€2
boolean_mask/GatherV2\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis®
concatConcatV2boolean_mask/GatherV2:output:0Repeat/Reshape_1:output:0concat/axis:output:0*
N*
T0	*'
_output_shapes
:€€€€€€€€€2
concat
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stackГ
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_4/stack_1Г
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2Ь
strided_slice_4StridedSliceconcat:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_4j
ones_like/ShapeShapestrided_slice_4:output:0*
T0	*
_output_shapes
:2
ones_like/Shaped
ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
ones_like/ConstА
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0	*#
_output_shapes
:€€€€€€€€€2
	ones_likeЬ
SparseReorder/input_shapePackstrided_slice:output:0strided_slice:output:0*
N*
T0	*
_output_shapes
:2
SparseReorder/input_shapeє
SparseReorderSparseReorderconcat:output:0ones_like:output:0"SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":€€€€€€€€€:€€€€€€€€€2
SparseReorder
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"    ю€€€2
strided_slice_5/stackГ
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    €€€€2
strided_slice_5/stack_1Г
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_5/stack_2Ђ
strided_slice_5StridedSliceSparseReorder:output_indices:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_5
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"    €€€€2
strided_slice_6/stackГ
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack_1Г
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2Ђ
strided_slice_6StridedSliceSparseReorder:output_indices:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_6f
MatMulMatMulinputsReshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€      2
Reshape_1/shapeГ
	Reshape_1ReshapeMatMul:product:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	Reshape_1j
mulMulReshape_1:output:0transpose:y:0*
T0*+
_output_shapes
:€€€€€€€€€2
muly
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Sum/reduction_indicesl
SumSummul:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
Sum`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axisµ
GatherV2GatherV2Sum:output:0strided_slice_5:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2

GatherV2p
mul_1MulReshape_1:output:0transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€2
mul_1}
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Sum_1/reduction_indicest
Sum_1Sum	mul_1:z:0 Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
Sum_1d
GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_1/axisљ

GatherV2_1GatherV2Sum_1:output:0strided_slice_6:output:0GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2

GatherV2_1m
addAddV2GatherV2:output:0GatherV2_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
addU
	LeakyRelu	LeakyReluadd:z:0*'
_output_shapes
:€€€€€€€€€2
	LeakyReluя
UnsortedSegmentMaxUnsortedSegmentMaxLeakyRelu:activations:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€2
UnsortedSegmentMaxd
GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_2/axis 

GatherV2_2GatherV2UnsortedSegmentMax:output:0strided_slice_5:output:0GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2

GatherV2_2q
subSubLeakyRelu:activations:0GatherV2_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
subL
ExpExpsub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
Expѕ
UnsortedSegmentSumUnsortedSegmentSumExp:y:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€2
UnsortedSegmentSumW
add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_pЙ02	
add_1/yx
add_1AddV2UnsortedSegmentSum:output:0add_1/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
add_1d
GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_3/axisЄ

GatherV2_3GatherV2	add_1:z:0strided_slice_5:output:0GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2

GatherV2_3m
truedivRealDivExp:y:0GatherV2_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
truedivw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †@2
dropout_1/dropout/ConstЦ
dropout_1/dropout/MulMultruediv:z:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout_1/dropout/Mulm
dropout_1/dropout/ShapeShapetruediv:z:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape“
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype020
.dropout_1/dropout/random_uniform/RandomUniformЙ
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL?2"
 dropout_1/dropout/GreaterEqual/yж
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2 
dropout_1/dropout/GreaterEqualЭ
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€2
dropout_1/dropout/CastҐ
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout_1/dropout/Mul_1
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stackГ
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack_1Г
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2†
strided_slice_7StridedSlicedropout_1/dropout/Mul_1:z:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
new_axis_mask2
strided_slice_7d
GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_4/axis≈

GatherV2_4GatherV2Reshape_1:output:0strided_slice_6:output:0GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:€€€€€€€€€2

GatherV2_4z
mul_2Mulstrided_slice_7:output:0GatherV2_4:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
mul_2ў
UnsortedSegmentSum_1UnsortedSegmentSum	mul_2:z:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:€€€€€€€€€2
UnsortedSegmentSum_1s
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Reshape_2/shapeМ
	Reshape_2ReshapeUnsortedSegmentSum_1:output:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
	Reshape_2Z
ReluReluReshape_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
ReluЈ
IdentityIdentityRelu:activations:0^Reshape/ReadVariableOp^transpose/ReadVariableOp^transpose_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:€€€€€€€€€P:€€€€€€€€€:€€€€€€€€€::::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp28
transpose_1/ReadVariableOptranspose_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
Ё	
є
+__inference_gat_conv_31_layer_call_fn_82921
inputs_0

inputs	
inputs_1
inputs_2	
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCall©
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2unknown	unknown_0	unknown_1*
Tin
	2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *O
fJRH
F__inference_gat_conv_31_layer_call_and_return_conditional_losses_808282
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:€€€€€€€€€P:€€€€€€€€€:€€€€€€€€€::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:€€€€€€€€€P
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
Л
№
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_83154

inputs 
cast_readvariableop_resource"
cast_1_readvariableop_resource"
cast_2_readvariableop_resource"
cast_3_readvariableop_resource
identityИҐCast/ReadVariableOpҐCast_1/ReadVariableOpҐCast_2/ReadVariableOpҐCast_3/ReadVariableOpГ
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype02
Cast/ReadVariableOpЙ
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype02
Cast_1/ReadVariableOpЙ
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
:*
dtype02
Cast_2/ReadVariableOpЙ
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
:*
dtype02
Cast_3/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yЕ
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt~
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
batchnorm/mul_1~
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2~
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/subЕ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
batchnorm/add_1≈
IdentityIdentitybatchnorm/add_1:z:0^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::::2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
’±
’
F__inference_gat_conv_31_layer_call_and_return_conditional_losses_82907
inputs_0

inputs	
inputs_1
inputs_2	#
reshape_readvariableop_resource%
!transpose_readvariableop_resource'
#transpose_1_readvariableop_resource
identityИҐReshape/ReadVariableOpҐtranspose/ReadVariableOpҐtranspose_1/ReadVariableOpФ
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*"
_output_shapes
:P*
dtype02
Reshape/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Reshape/shape~
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*
_output_shapes

:P2	
ReshapeЪ
transpose/ReadVariableOpReadVariableOp!transpose_readvariableop_resource*"
_output_shapes
:*
dtype02
transpose/ReadVariableOpu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЛ
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*"
_output_shapes
:2
	transpose†
transpose_1/ReadVariableOpReadVariableOp#transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02
transpose_1/ReadVariableOpy
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permУ
transpose_1	Transpose"transpose_1/ReadVariableOp:value:0transpose_1/perm:output:0*
T0*"
_output_shapes
:2
transpose_1V
ShapeShapeinputs_0*
T0*
_output_shapes
:*
out_type0	2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
strided_slice
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stackГ
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1Г
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2Ж
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2
strided_slice_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stackГ
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1Г
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2Ж
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2
strided_slice_2Ґ
NotEqualNotEqualstrided_slice_1:output:0strided_slice_2:output:0*
T0	*#
_output_shapes
:€€€€€€€€€*
incompatible_shape_error( 2

NotEqual
EnsureShapeEnsureShapeNotEqual:z:0*
T0
*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€2
EnsureShape\
range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2
range/deltaМ
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*

Tidx0	*#
_output_shapes
:€€€€€€€€€2
range
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stackГ
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1Г
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2Ь
strided_slice_3StridedSlicerange:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2
strided_slice_3b
Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/repeatsk
Repeat/CastCastRepeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Repeat/Castd
Repeat/ShapeShapestrided_slice_3:output:0*
T0	*
_output_shapes
:2
Repeat/Shapeo
Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shapes
Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shape_1~
Repeat/ReshapeReshapeRepeat/Cast:y:0Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
Repeat/Reshapep
Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/ExpandDims/dim§
Repeat/ExpandDims
ExpandDimsstrided_slice_3:output:0Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2
Repeat/ExpandDimst
Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/0t
Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/1Ѕ
Repeat/Tile/multiplesPack Repeat/Tile/multiples/0:output:0 Repeat/Tile/multiples/1:output:0Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2
Repeat/Tile/multiplesФ
Repeat/TileTileRepeat/ExpandDims:output:0Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2
Repeat/TileВ
Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Repeat/strided_slice/stackЖ
Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_1Ж
Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_2К
Repeat/strided_sliceStridedSliceRepeat/Shape:output:0#Repeat/strided_slice/stack:output:0%Repeat/strided_slice/stack_1:output:0%Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
Repeat/strided_sliceЖ
Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_1/stackК
Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_1К
Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_2Ц
Repeat/strided_slice_1StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_1/stack:output:0'Repeat/strided_slice_1/stack_1:output:0'Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Repeat/strided_slice_1z

Repeat/mulMulRepeat/Reshape:output:0Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2

Repeat/mulЖ
Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_2/stackК
Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
Repeat/strided_slice_2/stack_1К
Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_2/stack_2Р
Repeat/strided_slice_2StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_2/stack:output:0'Repeat/strided_slice_2/stack_1:output:0'Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2
Repeat/strided_slice_2v
Repeat/concat/values_1PackRepeat/mul:z:0*
N*
T0*
_output_shapes
:2
Repeat/concat/values_1j
Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Repeat/concat/axis÷
Repeat/concatConcatV2Repeat/strided_slice:output:0Repeat/concat/values_1:output:0Repeat/strided_slice_2:output:0Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Repeat/concatШ
Repeat/Reshape_1ReshapeRepeat/Tile:output:0Repeat/concat:output:0*
T0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Repeat/Reshape_1^
boolean_mask/ShapeShapeinputs*
T0	*
_output_shapes
:2
boolean_mask/ShapeО
 boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 boolean_mask/strided_slice/stackТ
"boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_1Т
"boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_2Ь
boolean_mask/strided_sliceStridedSliceboolean_mask/Shape:output:0)boolean_mask/strided_slice/stack:output:0+boolean_mask/strided_slice/stack_1:output:0+boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
boolean_mask/strided_sliceФ
#boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2%
#boolean_mask/Prod/reduction_indicesҐ
boolean_mask/ProdProd#boolean_mask/strided_slice:output:0,boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2
boolean_mask/Prodb
boolean_mask/Shape_1Shapeinputs*
T0	*
_output_shapes
:2
boolean_mask/Shape_1Т
"boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"boolean_mask/strided_slice_1/stackЦ
$boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_1/stack_1Ц
$boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_1/stack_2Є
boolean_mask/strided_slice_1StridedSliceboolean_mask/Shape_1:output:0+boolean_mask/strided_slice_1/stack:output:0-boolean_mask/strided_slice_1/stack_1:output:0-boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2
boolean_mask/strided_slice_1b
boolean_mask/Shape_2Shapeinputs*
T0	*
_output_shapes
:2
boolean_mask/Shape_2Т
"boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice_2/stackЦ
$boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_2/stack_1Ц
$boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_2/stack_2Є
boolean_mask/strided_slice_2StridedSliceboolean_mask/Shape_2:output:0+boolean_mask/strided_slice_2/stack:output:0-boolean_mask/strided_slice_2/stack_1:output:0-boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2
boolean_mask/strided_slice_2О
boolean_mask/concat/values_1Packboolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concat/values_1v
boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/concat/axisь
boolean_mask/concatConcatV2%boolean_mask/strided_slice_1:output:0%boolean_mask/concat/values_1:output:0%boolean_mask/strided_slice_2:output:0!boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concatП
boolean_mask/ReshapeReshapeinputsboolean_mask/concat:output:0*
T0	*'
_output_shapes
:€€€€€€€€€2
boolean_mask/ReshapeП
boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
boolean_mask/Reshape_1/shape¶
boolean_mask/Reshape_1ReshapeEnsureShape:output:0%boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:€€€€€€€€€2
boolean_mask/Reshape_1{
boolean_mask/WhereWhereboolean_mask/Reshape_1:output:0*'
_output_shapes
:€€€€€€€€€2
boolean_mask/WhereШ
boolean_mask/SqueezeSqueezeboolean_mask/Where:index:0*
T0	*#
_output_shapes
:€€€€€€€€€*
squeeze_dims
2
boolean_mask/Squeezez
boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/GatherV2/axisт
boolean_mask/GatherV2GatherV2boolean_mask/Reshape:output:0boolean_mask/Squeeze:output:0#boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:€€€€€€€€€2
boolean_mask/GatherV2\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis®
concatConcatV2boolean_mask/GatherV2:output:0Repeat/Reshape_1:output:0concat/axis:output:0*
N*
T0	*'
_output_shapes
:€€€€€€€€€2
concat
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stackГ
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_4/stack_1Г
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2Ь
strided_slice_4StridedSliceconcat:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_4j
ones_like/ShapeShapestrided_slice_4:output:0*
T0	*
_output_shapes
:2
ones_like/Shaped
ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
ones_like/ConstА
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0	*#
_output_shapes
:€€€€€€€€€2
	ones_likeЬ
SparseReorder/input_shapePackstrided_slice:output:0strided_slice:output:0*
N*
T0	*
_output_shapes
:2
SparseReorder/input_shapeє
SparseReorderSparseReorderconcat:output:0ones_like:output:0"SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":€€€€€€€€€:€€€€€€€€€2
SparseReorder
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"    ю€€€2
strided_slice_5/stackГ
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    €€€€2
strided_slice_5/stack_1Г
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_5/stack_2Ђ
strided_slice_5StridedSliceSparseReorder:output_indices:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_5
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"    €€€€2
strided_slice_6/stackГ
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack_1Г
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2Ђ
strided_slice_6StridedSliceSparseReorder:output_indices:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_6h
MatMulMatMulinputs_0Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€      2
Reshape_1/shapeГ
	Reshape_1ReshapeMatMul:product:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	Reshape_1j
mulMulReshape_1:output:0transpose:y:0*
T0*+
_output_shapes
:€€€€€€€€€2
muly
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Sum/reduction_indicesl
SumSummul:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
Sum`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axisµ
GatherV2GatherV2Sum:output:0strided_slice_5:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2

GatherV2p
mul_1MulReshape_1:output:0transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€2
mul_1}
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Sum_1/reduction_indicest
Sum_1Sum	mul_1:z:0 Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
Sum_1d
GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_1/axisљ

GatherV2_1GatherV2Sum_1:output:0strided_slice_6:output:0GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2

GatherV2_1m
addAddV2GatherV2:output:0GatherV2_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
addU
	LeakyRelu	LeakyReluadd:z:0*'
_output_shapes
:€€€€€€€€€2
	LeakyReluя
UnsortedSegmentMaxUnsortedSegmentMaxLeakyRelu:activations:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€2
UnsortedSegmentMaxd
GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_2/axis 

GatherV2_2GatherV2UnsortedSegmentMax:output:0strided_slice_5:output:0GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2

GatherV2_2q
subSubLeakyRelu:activations:0GatherV2_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
subL
ExpExpsub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
Expѕ
UnsortedSegmentSumUnsortedSegmentSumExp:y:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€2
UnsortedSegmentSumW
add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_pЙ02	
add_1/yx
add_1AddV2UnsortedSegmentSum:output:0add_1/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
add_1d
GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_3/axisЄ

GatherV2_3GatherV2	add_1:z:0strided_slice_5:output:0GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2

GatherV2_3m
truedivRealDivExp:y:0GatherV2_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
truedivs
dropout_1/IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout_1/Identity
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stackГ
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack_1Г
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2†
strided_slice_7StridedSlicedropout_1/Identity:output:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
new_axis_mask2
strided_slice_7d
GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_4/axis≈

GatherV2_4GatherV2Reshape_1:output:0strided_slice_6:output:0GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:€€€€€€€€€2

GatherV2_4z
mul_2Mulstrided_slice_7:output:0GatherV2_4:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
mul_2ў
UnsortedSegmentSum_1UnsortedSegmentSum	mul_2:z:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:€€€€€€€€€2
UnsortedSegmentSum_1s
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Reshape_2/shapeМ
	Reshape_2ReshapeUnsortedSegmentSum_1:output:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
	Reshape_2Z
ReluReluReshape_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
ReluЈ
IdentityIdentityRelu:activations:0^Reshape/ReadVariableOp^transpose/ReadVariableOp^transpose_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:€€€€€€€€€P:€€€€€€€€€:€€€€€€€€€::::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp28
transpose_1/ReadVariableOptranspose_1/ReadVariableOp:Q M
'
_output_shapes
:€€€€€€€€€P
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
Л
№
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_79998

inputs 
cast_readvariableop_resource"
cast_1_readvariableop_resource"
cast_2_readvariableop_resource"
cast_3_readvariableop_resource
identityИҐCast/ReadVariableOpҐCast_1/ReadVariableOpҐCast_2/ReadVariableOpҐCast_3/ReadVariableOpГ
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype02
Cast/ReadVariableOpЙ
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype02
Cast_1/ReadVariableOpЙ
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
:*
dtype02
Cast_2/ReadVariableOpЙ
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
:*
dtype02
Cast_3/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yЕ
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt~
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
batchnorm/mul_1~
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2~
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/subЕ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
batchnorm/add_1≈
IdentityIdentitybatchnorm/add_1:z:0^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::::2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
÷X
М
!__inference__traced_restore_83337
file_prefix0
,assignvariableop_model_15_gat_conv_30_kernel<
8assignvariableop_1_model_15_gat_conv_30_attn_kernel_self=
9assignvariableop_2_model_15_gat_conv_30_attn_kernel_neigh2
.assignvariableop_3_model_15_gat_conv_31_kernel<
8assignvariableop_4_model_15_gat_conv_31_attn_kernel_self=
9assignvariableop_5_model_15_gat_conv_31_attn_kernel_neigh/
+assignvariableop_6_model_15_dense_47_kernel-
)assignvariableop_7_model_15_dense_47_bias/
+assignvariableop_8_model_15_dense_45_kernel-
)assignvariableop_9_model_15_dense_45_bias0
,assignvariableop_10_model_15_dense_46_kernel.
*assignvariableop_11_model_15_dense_46_bias=
9assignvariableop_12_model_15_batch_normalization_30_gamma<
8assignvariableop_13_model_15_batch_normalization_30_beta=
9assignvariableop_14_model_15_batch_normalization_31_gamma<
8assignvariableop_15_model_15_batch_normalization_31_betaC
?assignvariableop_16_model_15_batch_normalization_30_moving_meanG
Cassignvariableop_17_model_15_batch_normalization_30_moving_varianceC
?assignvariableop_18_model_15_batch_normalization_31_moving_meanG
Cassignvariableop_19_model_15_batch_normalization_31_moving_variance
identity_21ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9у
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*€
valueхBтB&att1/kernel/.ATTRIBUTES/VARIABLE_VALUEB0att1/attn_kernel_self/.ATTRIBUTES/VARIABLE_VALUEB1att1/attn_kernel_neigh/.ATTRIBUTES/VARIABLE_VALUEB&att2/kernel/.ATTRIBUTES/VARIABLE_VALUEB0att2/attn_kernel_self/.ATTRIBUTES/VARIABLE_VALUEB1att2/attn_kernel_neigh/.ATTRIBUTES/VARIABLE_VALUEB$d2/kernel/.ATTRIBUTES/VARIABLE_VALUEB"d2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesЄ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesФ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЂ
AssignVariableOpAssignVariableOp,assignvariableop_model_15_gat_conv_30_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1љ
AssignVariableOp_1AssignVariableOp8assignvariableop_1_model_15_gat_conv_30_attn_kernel_selfIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Њ
AssignVariableOp_2AssignVariableOp9assignvariableop_2_model_15_gat_conv_30_attn_kernel_neighIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3≥
AssignVariableOp_3AssignVariableOp.assignvariableop_3_model_15_gat_conv_31_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4љ
AssignVariableOp_4AssignVariableOp8assignvariableop_4_model_15_gat_conv_31_attn_kernel_selfIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Њ
AssignVariableOp_5AssignVariableOp9assignvariableop_5_model_15_gat_conv_31_attn_kernel_neighIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6∞
AssignVariableOp_6AssignVariableOp+assignvariableop_6_model_15_dense_47_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ѓ
AssignVariableOp_7AssignVariableOp)assignvariableop_7_model_15_dense_47_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8∞
AssignVariableOp_8AssignVariableOp+assignvariableop_8_model_15_dense_45_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ѓ
AssignVariableOp_9AssignVariableOp)assignvariableop_9_model_15_dense_45_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10і
AssignVariableOp_10AssignVariableOp,assignvariableop_10_model_15_dense_46_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11≤
AssignVariableOp_11AssignVariableOp*assignvariableop_11_model_15_dense_46_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ѕ
AssignVariableOp_12AssignVariableOp9assignvariableop_12_model_15_batch_normalization_30_gammaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13ј
AssignVariableOp_13AssignVariableOp8assignvariableop_13_model_15_batch_normalization_30_betaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ѕ
AssignVariableOp_14AssignVariableOp9assignvariableop_14_model_15_batch_normalization_31_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15ј
AssignVariableOp_15AssignVariableOp8assignvariableop_15_model_15_batch_normalization_31_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16«
AssignVariableOp_16AssignVariableOp?assignvariableop_16_model_15_batch_normalization_30_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Ћ
AssignVariableOp_17AssignVariableOpCassignvariableop_17_model_15_batch_normalization_30_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18«
AssignVariableOp_18AssignVariableOp?assignvariableop_18_model_15_batch_normalization_31_moving_meanIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Ћ
AssignVariableOp_19AssignVariableOpCassignvariableop_19_model_15_batch_normalization_31_moving_varianceIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_199
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpЦ
Identity_20Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_20Й
Identity_21IdentityIdentity_20:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_21"#
identity_21Identity_21:output:0*e
_input_shapesT
R: ::::::::::::::::::::2$
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
AssignVariableOp_2AssignVariableOp_22(
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
Ї
©
6__inference_batch_normalization_30_layer_call_fn_83085

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Z
fURS
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_799652
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Л/
Ѓ
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_83134

inputs
assignmovingavg_83109
assignmovingavg_1_83115 
cast_readvariableop_resource"
cast_1_readvariableop_resource
identityИҐ#AssignMovingAvg/AssignSubVariableOpҐAssignMovingAvg/ReadVariableOpҐ%AssignMovingAvg_1/AssignSubVariableOpҐ AssignMovingAvg_1/ReadVariableOpҐCast/ReadVariableOpҐCast_1/ReadVariableOpК
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indicesП
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:2
moments/StopGradient§
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
moments/SquaredDifferenceТ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices≤
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/varianceА
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/SqueezeИ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1Ћ
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/83109*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg/decayТ
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_83109*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOpр
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/83109*
_output_shapes
:2
AssignMovingAvg/subз
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/83109*
_output_shapes
:2
AssignMovingAvg/mul≠
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_83109AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/83109*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp—
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/83115*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg_1/decayШ
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_83115*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpъ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/83115*
_output_shapes
:2
AssignMovingAvg_1/subс
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/83115*
_output_shapes
:2
AssignMovingAvg_1/mulє
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_83115AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/83115*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpГ
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype02
Cast/ReadVariableOpЙ
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype02
Cast_1/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yВ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt~
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2|
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/subЕ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
batchnorm/add_1І
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ƒ:
√
C__inference_model_15_layer_call_and_return_conditional_losses_81287

inputs
inputs_1	
inputs_2
inputs_3	
inputs_4	
gat_conv_30_81233
gat_conv_30_81235
gat_conv_30_81237
gat_conv_31_81240
gat_conv_31_81242
gat_conv_31_81244
dense_45_81251
dense_45_81253 
batch_normalization_30_81257 
batch_normalization_30_81259 
batch_normalization_30_81261 
batch_normalization_30_81263
dense_46_81266
dense_46_81268 
batch_normalization_31_81272 
batch_normalization_31_81274 
batch_normalization_31_81276 
batch_normalization_31_81278
dense_47_81281
dense_47_81283
identityИҐ.batch_normalization_30/StatefulPartitionedCallҐ.batch_normalization_31/StatefulPartitionedCallҐ dense_45/StatefulPartitionedCallҐ dense_46/StatefulPartitionedCallҐ dense_47/StatefulPartitionedCallҐ#gat_conv_30/StatefulPartitionedCallҐ#gat_conv_31/StatefulPartitionedCallџ
#gat_conv_30/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3gat_conv_30_81233gat_conv_30_81235gat_conv_30_81237*
Tin
	2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€P*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *O
fJRH
F__inference_gat_conv_30_layer_call_and_return_conditional_losses_804742%
#gat_conv_30/StatefulPartitionedCallБ
#gat_conv_31/StatefulPartitionedCallStatefulPartitionedCall,gat_conv_30/StatefulPartitionedCall:output:0inputs_1inputs_2inputs_3gat_conv_31_81240gat_conv_31_81242gat_conv_31_81244*
Tin
	2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *O
fJRH
F__inference_gat_conv_31_layer_call_and_return_conditional_losses_808282%
#gat_conv_31/StatefulPartitionedCallІ
"global_avg_pool_15/PartitionedCallPartitionedCall,gat_conv_31/StatefulPartitionedCall:output:0inputs_4*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *V
fQRO
M__inference_global_avg_pool_15_layer_call_and_return_conditional_losses_808712$
"global_avg_pool_15/PartitionedCallІ
"global_sum_pool_15/PartitionedCallPartitionedCall,gat_conv_31/StatefulPartitionedCall:output:0inputs_4*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *V
fQRO
M__inference_global_sum_pool_15_layer_call_and_return_conditional_losses_808862$
"global_sum_pool_15/PartitionedCall\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis«
concatConcatV2+global_avg_pool_15/PartitionedCall:output:0+global_sum_pool_15/PartitionedCall:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€(2
concatЯ
 dense_45/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0dense_45_81251dense_45_81253*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dense_45_layer_call_and_return_conditional_losses_809072"
 dense_45/StatefulPartitionedCall•
leaky_re_lu_15/LeakyRelu	LeakyRelu)dense_45/StatefulPartitionedCall:output:0*'
_output_shapes
:€€€€€€€€€*
alpha%Ќћћ=2
leaky_re_lu_15/LeakyReluЉ
.batch_normalization_30/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_15/LeakyRelu:activations:0batch_normalization_30_81257batch_normalization_30_81259batch_normalization_30_81261batch_normalization_30_81263*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Z
fURS
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_7999820
.batch_normalization_30/StatefulPartitionedCall«
 dense_46/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_30/StatefulPartitionedCall:output:0dense_46_81266dense_46_81268*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dense_46_layer_call_and_return_conditional_losses_809692"
 dense_46/StatefulPartitionedCall©
leaky_re_lu_15/LeakyRelu_1	LeakyRelu)dense_46/StatefulPartitionedCall:output:0*'
_output_shapes
:€€€€€€€€€*
alpha%Ќћћ=2
leaky_re_lu_15/LeakyRelu_1Њ
.batch_normalization_31/StatefulPartitionedCallStatefulPartitionedCall(leaky_re_lu_15/LeakyRelu_1:activations:0batch_normalization_31_81272batch_normalization_31_81274batch_normalization_31_81276batch_normalization_31_81278*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Z
fURS
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_8013820
.batch_normalization_31/StatefulPartitionedCall«
 dense_47/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_31/StatefulPartitionedCall:output:0dense_47_81281dense_47_81283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dense_47_layer_call_and_return_conditional_losses_810312"
 dense_47/StatefulPartitionedCallФ
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0/^batch_normalization_30/StatefulPartitionedCall/^batch_normalization_31/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall$^gat_conv_30/StatefulPartitionedCall$^gat_conv_31/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*ѓ
_input_shapesЭ
Ъ:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€::€€€€€€€€€::::::::::::::::::::2`
.batch_normalization_30/StatefulPartitionedCall.batch_normalization_30/StatefulPartitionedCall2`
.batch_normalization_31/StatefulPartitionedCall.batch_normalization_31/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2J
#gat_conv_30/StatefulPartitionedCall#gat_conv_30/StatefulPartitionedCall2J
#gat_conv_31/StatefulPartitionedCall#gat_conv_31/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
я
«
#__inference_signature_wrapper_81381

args_0
args_0_1	
args_0_2
args_0_3	
args_0_4	
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallargs_0args_0_1args_0_2args_0_3args_0_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18*$
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*6
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *)
f$R"
 __inference__wrapped_model_798692
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*ѓ
_input_shapesЭ
Ъ:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€::€€€€€€€€€::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameargs_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
args_0_1:MI
#
_output_shapes
:€€€€€€€€€
"
_user_specified_name
args_0_2:D@

_output_shapes
:
"
_user_specified_name
args_0_3:MI
#
_output_shapes
:€€€€€€€€€
"
_user_specified_name
args_0_4
Л/
Ѓ
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_79965

inputs
assignmovingavg_79940
assignmovingavg_1_79946 
cast_readvariableop_resource"
cast_1_readvariableop_resource
identityИҐ#AssignMovingAvg/AssignSubVariableOpҐAssignMovingAvg/ReadVariableOpҐ%AssignMovingAvg_1/AssignSubVariableOpҐ AssignMovingAvg_1/ReadVariableOpҐCast/ReadVariableOpҐCast_1/ReadVariableOpК
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indicesП
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:2
moments/StopGradient§
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
moments/SquaredDifferenceТ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices≤
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/varianceА
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/SqueezeИ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1Ћ
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/79940*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg/decayТ
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_79940*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOpр
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/79940*
_output_shapes
:2
AssignMovingAvg/subз
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/79940*
_output_shapes
:2
AssignMovingAvg/mul≠
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_79940AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/79940*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp—
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/79946*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg_1/decayШ
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_79946*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpъ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/79946*
_output_shapes
:2
AssignMovingAvg_1/subс
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/79946*
_output_shapes
:2
AssignMovingAvg_1/mulє
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_79946AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/79946*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpГ
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype02
Cast/ReadVariableOpЙ
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype02
Cast_1/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yВ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt~
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2|
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/subЕ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
batchnorm/add_1І
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
’±
’
F__inference_gat_conv_30_layer_call_and_return_conditional_losses_80474

inputs
inputs_1	
inputs_2
inputs_3	#
reshape_readvariableop_resource%
!transpose_readvariableop_resource'
#transpose_1_readvariableop_resource
identityИҐReshape/ReadVariableOpҐtranspose/ReadVariableOpҐtranspose_1/ReadVariableOpФ
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*"
_output_shapes
:
*
dtype02
Reshape/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   2
Reshape/shape~
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*
_output_shapes

:P2	
ReshapeЪ
transpose/ReadVariableOpReadVariableOp!transpose_readvariableop_resource*"
_output_shapes
:
*
dtype02
transpose/ReadVariableOpu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЛ
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*"
_output_shapes
:
2
	transpose†
transpose_1/ReadVariableOpReadVariableOp#transpose_1_readvariableop_resource*"
_output_shapes
:
*
dtype02
transpose_1/ReadVariableOpy
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permУ
transpose_1	Transpose"transpose_1/ReadVariableOp:value:0transpose_1/perm:output:0*
T0*"
_output_shapes
:
2
transpose_1T
ShapeShapeinputs*
T0*
_output_shapes
:*
out_type0	2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
strided_slice
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stackГ
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1Г
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2И
strided_slice_1StridedSliceinputs_1strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2
strided_slice_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stackГ
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1Г
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2И
strided_slice_2StridedSliceinputs_1strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2
strided_slice_2Ґ
NotEqualNotEqualstrided_slice_1:output:0strided_slice_2:output:0*
T0	*#
_output_shapes
:€€€€€€€€€*
incompatible_shape_error( 2

NotEqual
EnsureShapeEnsureShapeNotEqual:z:0*
T0
*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€2
EnsureShape\
range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2
range/deltaМ
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*

Tidx0	*#
_output_shapes
:€€€€€€€€€2
range
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stackГ
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1Г
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2Ь
strided_slice_3StridedSlicerange:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2
strided_slice_3b
Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/repeatsk
Repeat/CastCastRepeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Repeat/Castd
Repeat/ShapeShapestrided_slice_3:output:0*
T0	*
_output_shapes
:2
Repeat/Shapeo
Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shapes
Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shape_1~
Repeat/ReshapeReshapeRepeat/Cast:y:0Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
Repeat/Reshapep
Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/ExpandDims/dim§
Repeat/ExpandDims
ExpandDimsstrided_slice_3:output:0Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2
Repeat/ExpandDimst
Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/0t
Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/1Ѕ
Repeat/Tile/multiplesPack Repeat/Tile/multiples/0:output:0 Repeat/Tile/multiples/1:output:0Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2
Repeat/Tile/multiplesФ
Repeat/TileTileRepeat/ExpandDims:output:0Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2
Repeat/TileВ
Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Repeat/strided_slice/stackЖ
Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_1Ж
Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_2К
Repeat/strided_sliceStridedSliceRepeat/Shape:output:0#Repeat/strided_slice/stack:output:0%Repeat/strided_slice/stack_1:output:0%Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
Repeat/strided_sliceЖ
Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_1/stackК
Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_1К
Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_2Ц
Repeat/strided_slice_1StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_1/stack:output:0'Repeat/strided_slice_1/stack_1:output:0'Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Repeat/strided_slice_1z

Repeat/mulMulRepeat/Reshape:output:0Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2

Repeat/mulЖ
Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_2/stackК
Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
Repeat/strided_slice_2/stack_1К
Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_2/stack_2Р
Repeat/strided_slice_2StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_2/stack:output:0'Repeat/strided_slice_2/stack_1:output:0'Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2
Repeat/strided_slice_2v
Repeat/concat/values_1PackRepeat/mul:z:0*
N*
T0*
_output_shapes
:2
Repeat/concat/values_1j
Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Repeat/concat/axis÷
Repeat/concatConcatV2Repeat/strided_slice:output:0Repeat/concat/values_1:output:0Repeat/strided_slice_2:output:0Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Repeat/concatШ
Repeat/Reshape_1ReshapeRepeat/Tile:output:0Repeat/concat:output:0*
T0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Repeat/Reshape_1`
boolean_mask/ShapeShapeinputs_1*
T0	*
_output_shapes
:2
boolean_mask/ShapeО
 boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 boolean_mask/strided_slice/stackТ
"boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_1Т
"boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_2Ь
boolean_mask/strided_sliceStridedSliceboolean_mask/Shape:output:0)boolean_mask/strided_slice/stack:output:0+boolean_mask/strided_slice/stack_1:output:0+boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
boolean_mask/strided_sliceФ
#boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2%
#boolean_mask/Prod/reduction_indicesҐ
boolean_mask/ProdProd#boolean_mask/strided_slice:output:0,boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2
boolean_mask/Prodd
boolean_mask/Shape_1Shapeinputs_1*
T0	*
_output_shapes
:2
boolean_mask/Shape_1Т
"boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"boolean_mask/strided_slice_1/stackЦ
$boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_1/stack_1Ц
$boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_1/stack_2Є
boolean_mask/strided_slice_1StridedSliceboolean_mask/Shape_1:output:0+boolean_mask/strided_slice_1/stack:output:0-boolean_mask/strided_slice_1/stack_1:output:0-boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2
boolean_mask/strided_slice_1d
boolean_mask/Shape_2Shapeinputs_1*
T0	*
_output_shapes
:2
boolean_mask/Shape_2Т
"boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice_2/stackЦ
$boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_2/stack_1Ц
$boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_2/stack_2Є
boolean_mask/strided_slice_2StridedSliceboolean_mask/Shape_2:output:0+boolean_mask/strided_slice_2/stack:output:0-boolean_mask/strided_slice_2/stack_1:output:0-boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2
boolean_mask/strided_slice_2О
boolean_mask/concat/values_1Packboolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concat/values_1v
boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/concat/axisь
boolean_mask/concatConcatV2%boolean_mask/strided_slice_1:output:0%boolean_mask/concat/values_1:output:0%boolean_mask/strided_slice_2:output:0!boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concatС
boolean_mask/ReshapeReshapeinputs_1boolean_mask/concat:output:0*
T0	*'
_output_shapes
:€€€€€€€€€2
boolean_mask/ReshapeП
boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
boolean_mask/Reshape_1/shape¶
boolean_mask/Reshape_1ReshapeEnsureShape:output:0%boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:€€€€€€€€€2
boolean_mask/Reshape_1{
boolean_mask/WhereWhereboolean_mask/Reshape_1:output:0*'
_output_shapes
:€€€€€€€€€2
boolean_mask/WhereШ
boolean_mask/SqueezeSqueezeboolean_mask/Where:index:0*
T0	*#
_output_shapes
:€€€€€€€€€*
squeeze_dims
2
boolean_mask/Squeezez
boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/GatherV2/axisт
boolean_mask/GatherV2GatherV2boolean_mask/Reshape:output:0boolean_mask/Squeeze:output:0#boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:€€€€€€€€€2
boolean_mask/GatherV2\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis®
concatConcatV2boolean_mask/GatherV2:output:0Repeat/Reshape_1:output:0concat/axis:output:0*
N*
T0	*'
_output_shapes
:€€€€€€€€€2
concat
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stackГ
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_4/stack_1Г
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2Ь
strided_slice_4StridedSliceconcat:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_4j
ones_like/ShapeShapestrided_slice_4:output:0*
T0	*
_output_shapes
:2
ones_like/Shaped
ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
ones_like/ConstА
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0	*#
_output_shapes
:€€€€€€€€€2
	ones_likeЬ
SparseReorder/input_shapePackstrided_slice:output:0strided_slice:output:0*
N*
T0	*
_output_shapes
:2
SparseReorder/input_shapeє
SparseReorderSparseReorderconcat:output:0ones_like:output:0"SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":€€€€€€€€€:€€€€€€€€€2
SparseReorder
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"    ю€€€2
strided_slice_5/stackГ
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    €€€€2
strided_slice_5/stack_1Г
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_5/stack_2Ђ
strided_slice_5StridedSliceSparseReorder:output_indices:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_5
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"    €€€€2
strided_slice_6/stackГ
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack_1Г
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2Ђ
strided_slice_6StridedSliceSparseReorder:output_indices:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_6f
MatMulMatMulinputsReshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€P2
MatMulw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€
      2
Reshape_1/shapeГ
	Reshape_1ReshapeMatMul:product:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€
2
	Reshape_1j
mulMulReshape_1:output:0transpose:y:0*
T0*+
_output_shapes
:€€€€€€€€€
2
muly
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Sum/reduction_indicesl
SumSummul:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
Sum`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axisµ
GatherV2GatherV2Sum:output:0strided_slice_5:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2

GatherV2p
mul_1MulReshape_1:output:0transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€
2
mul_1}
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Sum_1/reduction_indicest
Sum_1Sum	mul_1:z:0 Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
Sum_1d
GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_1/axisљ

GatherV2_1GatherV2Sum_1:output:0strided_slice_6:output:0GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2

GatherV2_1m
addAddV2GatherV2:output:0GatherV2_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
addU
	LeakyRelu	LeakyReluadd:z:0*'
_output_shapes
:€€€€€€€€€
2
	LeakyReluя
UnsortedSegmentMaxUnsortedSegmentMaxLeakyRelu:activations:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€
2
UnsortedSegmentMaxd
GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_2/axis 

GatherV2_2GatherV2UnsortedSegmentMax:output:0strided_slice_5:output:0GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2

GatherV2_2q
subSubLeakyRelu:activations:0GatherV2_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
subL
ExpExpsub:z:0*
T0*'
_output_shapes
:€€€€€€€€€
2
Expѕ
UnsortedSegmentSumUnsortedSegmentSumExp:y:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€
2
UnsortedSegmentSumW
add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_pЙ02	
add_1/yx
add_1AddV2UnsortedSegmentSum:output:0add_1/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
add_1d
GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_3/axisЄ

GatherV2_3GatherV2	add_1:z:0strided_slice_5:output:0GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2

GatherV2_3m
truedivRealDivExp:y:0GatherV2_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2	
truedivo
dropout/IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dropout/Identity
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stackГ
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack_1Г
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2Ю
strided_slice_7StridedSlicedropout/Identity:output:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:€€€€€€€€€
*
ellipsis_mask*
new_axis_mask2
strided_slice_7d
GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_4/axis≈

GatherV2_4GatherV2Reshape_1:output:0strided_slice_6:output:0GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:€€€€€€€€€
2

GatherV2_4z
mul_2Mulstrided_slice_7:output:0GatherV2_4:output:0*
T0*+
_output_shapes
:€€€€€€€€€
2
mul_2ў
UnsortedSegmentSum_1UnsortedSegmentSum	mul_2:z:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:€€€€€€€€€
2
UnsortedSegmentSum_1s
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   2
Reshape_2/shapeМ
	Reshape_2ReshapeUnsortedSegmentSum_1:output:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€P2
	Reshape_2Z
ReluReluReshape_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€P2
ReluЈ
IdentityIdentityRelu:activations:0^Reshape/ReadVariableOp^transpose/ReadVariableOp^transpose_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€P2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€::::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp28
transpose_1/ReadVariableOptranspose_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
џ±
’
F__inference_gat_conv_31_layer_call_and_return_conditional_losses_80828

inputs
inputs_1	
inputs_2
inputs_3	#
reshape_readvariableop_resource%
!transpose_readvariableop_resource'
#transpose_1_readvariableop_resource
identityИҐReshape/ReadVariableOpҐtranspose/ReadVariableOpҐtranspose_1/ReadVariableOpФ
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*"
_output_shapes
:P*
dtype02
Reshape/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Reshape/shape~
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*
_output_shapes

:P2	
ReshapeЪ
transpose/ReadVariableOpReadVariableOp!transpose_readvariableop_resource*"
_output_shapes
:*
dtype02
transpose/ReadVariableOpu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЛ
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*"
_output_shapes
:2
	transpose†
transpose_1/ReadVariableOpReadVariableOp#transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02
transpose_1/ReadVariableOpy
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permУ
transpose_1	Transpose"transpose_1/ReadVariableOp:value:0transpose_1/perm:output:0*
T0*"
_output_shapes
:2
transpose_1T
ShapeShapeinputs*
T0*
_output_shapes
:*
out_type0	2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
strided_slice
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stackГ
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1Г
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2И
strided_slice_1StridedSliceinputs_1strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2
strided_slice_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stackГ
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1Г
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2И
strided_slice_2StridedSliceinputs_1strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2
strided_slice_2Ґ
NotEqualNotEqualstrided_slice_1:output:0strided_slice_2:output:0*
T0	*#
_output_shapes
:€€€€€€€€€*
incompatible_shape_error( 2

NotEqual
EnsureShapeEnsureShapeNotEqual:z:0*
T0
*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€2
EnsureShape\
range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2
range/deltaМ
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*

Tidx0	*#
_output_shapes
:€€€€€€€€€2
range
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stackГ
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1Г
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2Ь
strided_slice_3StridedSlicerange:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2
strided_slice_3b
Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/repeatsk
Repeat/CastCastRepeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Repeat/Castd
Repeat/ShapeShapestrided_slice_3:output:0*
T0	*
_output_shapes
:2
Repeat/Shapeo
Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shapes
Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shape_1~
Repeat/ReshapeReshapeRepeat/Cast:y:0Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
Repeat/Reshapep
Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/ExpandDims/dim§
Repeat/ExpandDims
ExpandDimsstrided_slice_3:output:0Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2
Repeat/ExpandDimst
Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/0t
Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/1Ѕ
Repeat/Tile/multiplesPack Repeat/Tile/multiples/0:output:0 Repeat/Tile/multiples/1:output:0Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2
Repeat/Tile/multiplesФ
Repeat/TileTileRepeat/ExpandDims:output:0Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2
Repeat/TileВ
Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Repeat/strided_slice/stackЖ
Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_1Ж
Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_2К
Repeat/strided_sliceStridedSliceRepeat/Shape:output:0#Repeat/strided_slice/stack:output:0%Repeat/strided_slice/stack_1:output:0%Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
Repeat/strided_sliceЖ
Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_1/stackК
Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_1К
Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_2Ц
Repeat/strided_slice_1StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_1/stack:output:0'Repeat/strided_slice_1/stack_1:output:0'Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Repeat/strided_slice_1z

Repeat/mulMulRepeat/Reshape:output:0Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2

Repeat/mulЖ
Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_2/stackК
Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
Repeat/strided_slice_2/stack_1К
Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_2/stack_2Р
Repeat/strided_slice_2StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_2/stack:output:0'Repeat/strided_slice_2/stack_1:output:0'Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2
Repeat/strided_slice_2v
Repeat/concat/values_1PackRepeat/mul:z:0*
N*
T0*
_output_shapes
:2
Repeat/concat/values_1j
Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Repeat/concat/axis÷
Repeat/concatConcatV2Repeat/strided_slice:output:0Repeat/concat/values_1:output:0Repeat/strided_slice_2:output:0Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Repeat/concatШ
Repeat/Reshape_1ReshapeRepeat/Tile:output:0Repeat/concat:output:0*
T0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Repeat/Reshape_1`
boolean_mask/ShapeShapeinputs_1*
T0	*
_output_shapes
:2
boolean_mask/ShapeО
 boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 boolean_mask/strided_slice/stackТ
"boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_1Т
"boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_2Ь
boolean_mask/strided_sliceStridedSliceboolean_mask/Shape:output:0)boolean_mask/strided_slice/stack:output:0+boolean_mask/strided_slice/stack_1:output:0+boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
boolean_mask/strided_sliceФ
#boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2%
#boolean_mask/Prod/reduction_indicesҐ
boolean_mask/ProdProd#boolean_mask/strided_slice:output:0,boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2
boolean_mask/Prodd
boolean_mask/Shape_1Shapeinputs_1*
T0	*
_output_shapes
:2
boolean_mask/Shape_1Т
"boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"boolean_mask/strided_slice_1/stackЦ
$boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_1/stack_1Ц
$boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_1/stack_2Є
boolean_mask/strided_slice_1StridedSliceboolean_mask/Shape_1:output:0+boolean_mask/strided_slice_1/stack:output:0-boolean_mask/strided_slice_1/stack_1:output:0-boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2
boolean_mask/strided_slice_1d
boolean_mask/Shape_2Shapeinputs_1*
T0	*
_output_shapes
:2
boolean_mask/Shape_2Т
"boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice_2/stackЦ
$boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_2/stack_1Ц
$boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_2/stack_2Є
boolean_mask/strided_slice_2StridedSliceboolean_mask/Shape_2:output:0+boolean_mask/strided_slice_2/stack:output:0-boolean_mask/strided_slice_2/stack_1:output:0-boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2
boolean_mask/strided_slice_2О
boolean_mask/concat/values_1Packboolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concat/values_1v
boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/concat/axisь
boolean_mask/concatConcatV2%boolean_mask/strided_slice_1:output:0%boolean_mask/concat/values_1:output:0%boolean_mask/strided_slice_2:output:0!boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concatС
boolean_mask/ReshapeReshapeinputs_1boolean_mask/concat:output:0*
T0	*'
_output_shapes
:€€€€€€€€€2
boolean_mask/ReshapeП
boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
boolean_mask/Reshape_1/shape¶
boolean_mask/Reshape_1ReshapeEnsureShape:output:0%boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:€€€€€€€€€2
boolean_mask/Reshape_1{
boolean_mask/WhereWhereboolean_mask/Reshape_1:output:0*'
_output_shapes
:€€€€€€€€€2
boolean_mask/WhereШ
boolean_mask/SqueezeSqueezeboolean_mask/Where:index:0*
T0	*#
_output_shapes
:€€€€€€€€€*
squeeze_dims
2
boolean_mask/Squeezez
boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/GatherV2/axisт
boolean_mask/GatherV2GatherV2boolean_mask/Reshape:output:0boolean_mask/Squeeze:output:0#boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:€€€€€€€€€2
boolean_mask/GatherV2\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis®
concatConcatV2boolean_mask/GatherV2:output:0Repeat/Reshape_1:output:0concat/axis:output:0*
N*
T0	*'
_output_shapes
:€€€€€€€€€2
concat
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stackГ
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_4/stack_1Г
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2Ь
strided_slice_4StridedSliceconcat:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_4j
ones_like/ShapeShapestrided_slice_4:output:0*
T0	*
_output_shapes
:2
ones_like/Shaped
ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
ones_like/ConstА
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0	*#
_output_shapes
:€€€€€€€€€2
	ones_likeЬ
SparseReorder/input_shapePackstrided_slice:output:0strided_slice:output:0*
N*
T0	*
_output_shapes
:2
SparseReorder/input_shapeє
SparseReorderSparseReorderconcat:output:0ones_like:output:0"SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":€€€€€€€€€:€€€€€€€€€2
SparseReorder
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"    ю€€€2
strided_slice_5/stackГ
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    €€€€2
strided_slice_5/stack_1Г
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_5/stack_2Ђ
strided_slice_5StridedSliceSparseReorder:output_indices:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_5
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"    €€€€2
strided_slice_6/stackГ
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack_1Г
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2Ђ
strided_slice_6StridedSliceSparseReorder:output_indices:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_6f
MatMulMatMulinputsReshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€      2
Reshape_1/shapeГ
	Reshape_1ReshapeMatMul:product:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	Reshape_1j
mulMulReshape_1:output:0transpose:y:0*
T0*+
_output_shapes
:€€€€€€€€€2
muly
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Sum/reduction_indicesl
SumSummul:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
Sum`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axisµ
GatherV2GatherV2Sum:output:0strided_slice_5:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2

GatherV2p
mul_1MulReshape_1:output:0transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€2
mul_1}
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Sum_1/reduction_indicest
Sum_1Sum	mul_1:z:0 Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
Sum_1d
GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_1/axisљ

GatherV2_1GatherV2Sum_1:output:0strided_slice_6:output:0GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2

GatherV2_1m
addAddV2GatherV2:output:0GatherV2_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
addU
	LeakyRelu	LeakyReluadd:z:0*'
_output_shapes
:€€€€€€€€€2
	LeakyReluя
UnsortedSegmentMaxUnsortedSegmentMaxLeakyRelu:activations:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€2
UnsortedSegmentMaxd
GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_2/axis 

GatherV2_2GatherV2UnsortedSegmentMax:output:0strided_slice_5:output:0GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2

GatherV2_2q
subSubLeakyRelu:activations:0GatherV2_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
subL
ExpExpsub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
Expѕ
UnsortedSegmentSumUnsortedSegmentSumExp:y:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€2
UnsortedSegmentSumW
add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_pЙ02	
add_1/yx
add_1AddV2UnsortedSegmentSum:output:0add_1/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
add_1d
GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_3/axisЄ

GatherV2_3GatherV2	add_1:z:0strided_slice_5:output:0GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2

GatherV2_3m
truedivRealDivExp:y:0GatherV2_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
truedivs
dropout_1/IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout_1/Identity
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stackГ
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack_1Г
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2†
strided_slice_7StridedSlicedropout_1/Identity:output:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
new_axis_mask2
strided_slice_7d
GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_4/axis≈

GatherV2_4GatherV2Reshape_1:output:0strided_slice_6:output:0GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:€€€€€€€€€2

GatherV2_4z
mul_2Mulstrided_slice_7:output:0GatherV2_4:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
mul_2ў
UnsortedSegmentSum_1UnsortedSegmentSum	mul_2:z:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:€€€€€€€€€2
UnsortedSegmentSum_1s
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Reshape_2/shapeМ
	Reshape_2ReshapeUnsortedSegmentSum_1:output:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
	Reshape_2Z
ReluReluReshape_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
ReluЈ
IdentityIdentityRelu:activations:0^Reshape/ReadVariableOp^transpose/ReadVariableOp^transpose_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:€€€€€€€€€P:€€€€€€€€€:€€€€€€€€€::::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp28
transpose_1/ReadVariableOptranspose_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
∆Ї
’
F__inference_gat_conv_30_layer_call_and_return_conditional_losses_80319

inputs
inputs_1	
inputs_2
inputs_3	#
reshape_readvariableop_resource%
!transpose_readvariableop_resource'
#transpose_1_readvariableop_resource
identityИҐReshape/ReadVariableOpҐtranspose/ReadVariableOpҐtranspose_1/ReadVariableOpФ
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*"
_output_shapes
:
*
dtype02
Reshape/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   2
Reshape/shape~
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*
_output_shapes

:P2	
ReshapeЪ
transpose/ReadVariableOpReadVariableOp!transpose_readvariableop_resource*"
_output_shapes
:
*
dtype02
transpose/ReadVariableOpu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЛ
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*"
_output_shapes
:
2
	transpose†
transpose_1/ReadVariableOpReadVariableOp#transpose_1_readvariableop_resource*"
_output_shapes
:
*
dtype02
transpose_1/ReadVariableOpy
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permУ
transpose_1	Transpose"transpose_1/ReadVariableOp:value:0transpose_1/perm:output:0*
T0*"
_output_shapes
:
2
transpose_1T
ShapeShapeinputs*
T0*
_output_shapes
:*
out_type0	2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
strided_slice
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stackГ
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1Г
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2И
strided_slice_1StridedSliceinputs_1strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2
strided_slice_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stackГ
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1Г
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2И
strided_slice_2StridedSliceinputs_1strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2
strided_slice_2Ґ
NotEqualNotEqualstrided_slice_1:output:0strided_slice_2:output:0*
T0	*#
_output_shapes
:€€€€€€€€€*
incompatible_shape_error( 2

NotEqual
EnsureShapeEnsureShapeNotEqual:z:0*
T0
*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€2
EnsureShape\
range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2
range/deltaМ
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*

Tidx0	*#
_output_shapes
:€€€€€€€€€2
range
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stackГ
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1Г
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2Ь
strided_slice_3StridedSlicerange:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2
strided_slice_3b
Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/repeatsk
Repeat/CastCastRepeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Repeat/Castd
Repeat/ShapeShapestrided_slice_3:output:0*
T0	*
_output_shapes
:2
Repeat/Shapeo
Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shapes
Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shape_1~
Repeat/ReshapeReshapeRepeat/Cast:y:0Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
Repeat/Reshapep
Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/ExpandDims/dim§
Repeat/ExpandDims
ExpandDimsstrided_slice_3:output:0Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2
Repeat/ExpandDimst
Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/0t
Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/1Ѕ
Repeat/Tile/multiplesPack Repeat/Tile/multiples/0:output:0 Repeat/Tile/multiples/1:output:0Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2
Repeat/Tile/multiplesФ
Repeat/TileTileRepeat/ExpandDims:output:0Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2
Repeat/TileВ
Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Repeat/strided_slice/stackЖ
Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_1Ж
Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_2К
Repeat/strided_sliceStridedSliceRepeat/Shape:output:0#Repeat/strided_slice/stack:output:0%Repeat/strided_slice/stack_1:output:0%Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
Repeat/strided_sliceЖ
Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_1/stackК
Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_1К
Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_2Ц
Repeat/strided_slice_1StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_1/stack:output:0'Repeat/strided_slice_1/stack_1:output:0'Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Repeat/strided_slice_1z

Repeat/mulMulRepeat/Reshape:output:0Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2

Repeat/mulЖ
Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_2/stackК
Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
Repeat/strided_slice_2/stack_1К
Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_2/stack_2Р
Repeat/strided_slice_2StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_2/stack:output:0'Repeat/strided_slice_2/stack_1:output:0'Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2
Repeat/strided_slice_2v
Repeat/concat/values_1PackRepeat/mul:z:0*
N*
T0*
_output_shapes
:2
Repeat/concat/values_1j
Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Repeat/concat/axis÷
Repeat/concatConcatV2Repeat/strided_slice:output:0Repeat/concat/values_1:output:0Repeat/strided_slice_2:output:0Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Repeat/concatШ
Repeat/Reshape_1ReshapeRepeat/Tile:output:0Repeat/concat:output:0*
T0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Repeat/Reshape_1`
boolean_mask/ShapeShapeinputs_1*
T0	*
_output_shapes
:2
boolean_mask/ShapeО
 boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 boolean_mask/strided_slice/stackТ
"boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_1Т
"boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_2Ь
boolean_mask/strided_sliceStridedSliceboolean_mask/Shape:output:0)boolean_mask/strided_slice/stack:output:0+boolean_mask/strided_slice/stack_1:output:0+boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
boolean_mask/strided_sliceФ
#boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2%
#boolean_mask/Prod/reduction_indicesҐ
boolean_mask/ProdProd#boolean_mask/strided_slice:output:0,boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2
boolean_mask/Prodd
boolean_mask/Shape_1Shapeinputs_1*
T0	*
_output_shapes
:2
boolean_mask/Shape_1Т
"boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"boolean_mask/strided_slice_1/stackЦ
$boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_1/stack_1Ц
$boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_1/stack_2Є
boolean_mask/strided_slice_1StridedSliceboolean_mask/Shape_1:output:0+boolean_mask/strided_slice_1/stack:output:0-boolean_mask/strided_slice_1/stack_1:output:0-boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2
boolean_mask/strided_slice_1d
boolean_mask/Shape_2Shapeinputs_1*
T0	*
_output_shapes
:2
boolean_mask/Shape_2Т
"boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice_2/stackЦ
$boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_2/stack_1Ц
$boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_2/stack_2Є
boolean_mask/strided_slice_2StridedSliceboolean_mask/Shape_2:output:0+boolean_mask/strided_slice_2/stack:output:0-boolean_mask/strided_slice_2/stack_1:output:0-boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2
boolean_mask/strided_slice_2О
boolean_mask/concat/values_1Packboolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concat/values_1v
boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/concat/axisь
boolean_mask/concatConcatV2%boolean_mask/strided_slice_1:output:0%boolean_mask/concat/values_1:output:0%boolean_mask/strided_slice_2:output:0!boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concatС
boolean_mask/ReshapeReshapeinputs_1boolean_mask/concat:output:0*
T0	*'
_output_shapes
:€€€€€€€€€2
boolean_mask/ReshapeП
boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
boolean_mask/Reshape_1/shape¶
boolean_mask/Reshape_1ReshapeEnsureShape:output:0%boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:€€€€€€€€€2
boolean_mask/Reshape_1{
boolean_mask/WhereWhereboolean_mask/Reshape_1:output:0*'
_output_shapes
:€€€€€€€€€2
boolean_mask/WhereШ
boolean_mask/SqueezeSqueezeboolean_mask/Where:index:0*
T0	*#
_output_shapes
:€€€€€€€€€*
squeeze_dims
2
boolean_mask/Squeezez
boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/GatherV2/axisт
boolean_mask/GatherV2GatherV2boolean_mask/Reshape:output:0boolean_mask/Squeeze:output:0#boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:€€€€€€€€€2
boolean_mask/GatherV2\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis®
concatConcatV2boolean_mask/GatherV2:output:0Repeat/Reshape_1:output:0concat/axis:output:0*
N*
T0	*'
_output_shapes
:€€€€€€€€€2
concat
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stackГ
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_4/stack_1Г
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2Ь
strided_slice_4StridedSliceconcat:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_4j
ones_like/ShapeShapestrided_slice_4:output:0*
T0	*
_output_shapes
:2
ones_like/Shaped
ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
ones_like/ConstА
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0	*#
_output_shapes
:€€€€€€€€€2
	ones_likeЬ
SparseReorder/input_shapePackstrided_slice:output:0strided_slice:output:0*
N*
T0	*
_output_shapes
:2
SparseReorder/input_shapeє
SparseReorderSparseReorderconcat:output:0ones_like:output:0"SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":€€€€€€€€€:€€€€€€€€€2
SparseReorder
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"    ю€€€2
strided_slice_5/stackГ
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    €€€€2
strided_slice_5/stack_1Г
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_5/stack_2Ђ
strided_slice_5StridedSliceSparseReorder:output_indices:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_5
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"    €€€€2
strided_slice_6/stackГ
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack_1Г
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2Ђ
strided_slice_6StridedSliceSparseReorder:output_indices:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_6f
MatMulMatMulinputsReshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€P2
MatMulw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€
      2
Reshape_1/shapeГ
	Reshape_1ReshapeMatMul:product:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€
2
	Reshape_1j
mulMulReshape_1:output:0transpose:y:0*
T0*+
_output_shapes
:€€€€€€€€€
2
muly
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Sum/reduction_indicesl
SumSummul:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
Sum`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axisµ
GatherV2GatherV2Sum:output:0strided_slice_5:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2

GatherV2p
mul_1MulReshape_1:output:0transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€
2
mul_1}
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Sum_1/reduction_indicest
Sum_1Sum	mul_1:z:0 Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
Sum_1d
GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_1/axisљ

GatherV2_1GatherV2Sum_1:output:0strided_slice_6:output:0GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2

GatherV2_1m
addAddV2GatherV2:output:0GatherV2_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
addU
	LeakyRelu	LeakyReluadd:z:0*'
_output_shapes
:€€€€€€€€€
2
	LeakyReluя
UnsortedSegmentMaxUnsortedSegmentMaxLeakyRelu:activations:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€
2
UnsortedSegmentMaxd
GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_2/axis 

GatherV2_2GatherV2UnsortedSegmentMax:output:0strided_slice_5:output:0GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2

GatherV2_2q
subSubLeakyRelu:activations:0GatherV2_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
subL
ExpExpsub:z:0*
T0*'
_output_shapes
:€€€€€€€€€
2
Expѕ
UnsortedSegmentSumUnsortedSegmentSumExp:y:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€
2
UnsortedSegmentSumW
add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_pЙ02	
add_1/yx
add_1AddV2UnsortedSegmentSum:output:0add_1/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
add_1d
GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_3/axisЄ

GatherV2_3GatherV2	add_1:z:0strided_slice_5:output:0GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2

GatherV2_3m
truedivRealDivExp:y:0GatherV2_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2	
truedivs
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   A2
dropout/dropout/ConstР
dropout/dropout/MulMultruediv:z:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dropout/dropout/Muli
dropout/dropout/ShapeShapetruediv:z:0*
T0*
_output_shapes
:2
dropout/dropout/Shapeћ
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€
*
dtype02.
,dropout/dropout/random_uniform/RandomUniformЕ
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?2 
dropout/dropout/GreaterEqual/yё
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dropout/dropout/GreaterEqualЧ
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€
2
dropout/dropout/CastЪ
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dropout/dropout/Mul_1
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stackГ
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack_1Г
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2Ю
strided_slice_7StridedSlicedropout/dropout/Mul_1:z:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:€€€€€€€€€
*
ellipsis_mask*
new_axis_mask2
strided_slice_7d
GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_4/axis≈

GatherV2_4GatherV2Reshape_1:output:0strided_slice_6:output:0GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:€€€€€€€€€
2

GatherV2_4z
mul_2Mulstrided_slice_7:output:0GatherV2_4:output:0*
T0*+
_output_shapes
:€€€€€€€€€
2
mul_2ў
UnsortedSegmentSum_1UnsortedSegmentSum	mul_2:z:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:€€€€€€€€€
2
UnsortedSegmentSum_1s
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   2
Reshape_2/shapeМ
	Reshape_2ReshapeUnsortedSegmentSum_1:output:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€P2
	Reshape_2Z
ReluReluReshape_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€P2
ReluЈ
IdentityIdentityRelu:activations:0^Reshape/ReadVariableOp^transpose/ReadVariableOp^transpose_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€P2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€::::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp28
transpose_1/ReadVariableOptranspose_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
З
ќ
(__inference_model_15_layer_call_fn_82245
inputs_0

inputs	
inputs_1
inputs_2	

inputs_2_0	
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18
identityИҐStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2
inputs_2_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18*$
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*6
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_model_15_layer_call_and_return_conditional_losses_812872
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*ѓ
_input_shapesЭ
Ъ:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€::€€€€€€€€€::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:MI
#
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/2
Љ
©
6__inference_batch_normalization_30_layer_call_fn_83098

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCall†
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Z
fURS
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_799982
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Л/
Ѓ
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_83052

inputs
assignmovingavg_83027
assignmovingavg_1_83033 
cast_readvariableop_resource"
cast_1_readvariableop_resource
identityИҐ#AssignMovingAvg/AssignSubVariableOpҐAssignMovingAvg/ReadVariableOpҐ%AssignMovingAvg_1/AssignSubVariableOpҐ AssignMovingAvg_1/ReadVariableOpҐCast/ReadVariableOpҐCast_1/ReadVariableOpК
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indicesП
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:2
moments/StopGradient§
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
moments/SquaredDifferenceТ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices≤
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/varianceА
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/SqueezeИ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1Ћ
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/83027*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg/decayТ
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_83027*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOpр
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/83027*
_output_shapes
:2
AssignMovingAvg/subз
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/83027*
_output_shapes
:2
AssignMovingAvg/mul≠
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_83027AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/83027*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp—
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/83033*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg_1/decayШ
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_83033*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpъ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/83033*
_output_shapes
:2
AssignMovingAvg_1/subс
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/83033*
_output_shapes
:2
AssignMovingAvg_1/mulє
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_83033AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/83033*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpГ
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype02
Cast/ReadVariableOpЙ
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype02
Cast_1/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yВ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt~
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2|
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/subЕ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
batchnorm/add_1І
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
я
}
(__inference_dense_45_layer_call_fn_82997

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dense_45_layer_call_and_return_conditional_losses_809072
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€(::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€(
 
_user_specified_nameinputs
Ёц
Џ
C__inference_model_15_layer_call_and_return_conditional_losses_81787
inputs_0

inputs	
inputs_1
inputs_2	

inputs_2_0	/
+gat_conv_30_reshape_readvariableop_resource1
-gat_conv_30_transpose_readvariableop_resource3
/gat_conv_30_transpose_1_readvariableop_resource/
+gat_conv_31_reshape_readvariableop_resource1
-gat_conv_31_transpose_readvariableop_resource3
/gat_conv_31_transpose_1_readvariableop_resource+
'dense_45_matmul_readvariableop_resource,
(dense_45_biasadd_readvariableop_resource0
,batch_normalization_30_assignmovingavg_817172
.batch_normalization_30_assignmovingavg_1_817237
3batch_normalization_30_cast_readvariableop_resource9
5batch_normalization_30_cast_1_readvariableop_resource+
'dense_46_matmul_readvariableop_resource,
(dense_46_biasadd_readvariableop_resource0
,batch_normalization_31_assignmovingavg_817562
.batch_normalization_31_assignmovingavg_1_817627
3batch_normalization_31_cast_readvariableop_resource9
5batch_normalization_31_cast_1_readvariableop_resource+
'dense_47_matmul_readvariableop_resource,
(dense_47_biasadd_readvariableop_resource
identityИҐ:batch_normalization_30/AssignMovingAvg/AssignSubVariableOpҐ5batch_normalization_30/AssignMovingAvg/ReadVariableOpҐ<batch_normalization_30/AssignMovingAvg_1/AssignSubVariableOpҐ7batch_normalization_30/AssignMovingAvg_1/ReadVariableOpҐ*batch_normalization_30/Cast/ReadVariableOpҐ,batch_normalization_30/Cast_1/ReadVariableOpҐ:batch_normalization_31/AssignMovingAvg/AssignSubVariableOpҐ5batch_normalization_31/AssignMovingAvg/ReadVariableOpҐ<batch_normalization_31/AssignMovingAvg_1/AssignSubVariableOpҐ7batch_normalization_31/AssignMovingAvg_1/ReadVariableOpҐ*batch_normalization_31/Cast/ReadVariableOpҐ,batch_normalization_31/Cast_1/ReadVariableOpҐdense_45/BiasAdd/ReadVariableOpҐdense_45/MatMul/ReadVariableOpҐdense_46/BiasAdd/ReadVariableOpҐdense_46/MatMul/ReadVariableOpҐdense_47/BiasAdd/ReadVariableOpҐdense_47/MatMul/ReadVariableOpҐ"gat_conv_30/Reshape/ReadVariableOpҐ$gat_conv_30/transpose/ReadVariableOpҐ&gat_conv_30/transpose_1/ReadVariableOpҐ"gat_conv_31/Reshape/ReadVariableOpҐ$gat_conv_31/transpose/ReadVariableOpҐ&gat_conv_31/transpose_1/ReadVariableOpЄ
"gat_conv_30/Reshape/ReadVariableOpReadVariableOp+gat_conv_30_reshape_readvariableop_resource*"
_output_shapes
:
*
dtype02$
"gat_conv_30/Reshape/ReadVariableOpЗ
gat_conv_30/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   2
gat_conv_30/Reshape/shapeЃ
gat_conv_30/ReshapeReshape*gat_conv_30/Reshape/ReadVariableOp:value:0"gat_conv_30/Reshape/shape:output:0*
T0*
_output_shapes

:P2
gat_conv_30/ReshapeЊ
$gat_conv_30/transpose/ReadVariableOpReadVariableOp-gat_conv_30_transpose_readvariableop_resource*"
_output_shapes
:
*
dtype02&
$gat_conv_30/transpose/ReadVariableOpН
gat_conv_30/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gat_conv_30/transpose/permї
gat_conv_30/transpose	Transpose,gat_conv_30/transpose/ReadVariableOp:value:0#gat_conv_30/transpose/perm:output:0*
T0*"
_output_shapes
:
2
gat_conv_30/transposeƒ
&gat_conv_30/transpose_1/ReadVariableOpReadVariableOp/gat_conv_30_transpose_1_readvariableop_resource*"
_output_shapes
:
*
dtype02(
&gat_conv_30/transpose_1/ReadVariableOpС
gat_conv_30/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gat_conv_30/transpose_1/perm√
gat_conv_30/transpose_1	Transpose.gat_conv_30/transpose_1/ReadVariableOp:value:0%gat_conv_30/transpose_1/perm:output:0*
T0*"
_output_shapes
:
2
gat_conv_30/transpose_1n
gat_conv_30/ShapeShapeinputs_0*
T0*
_output_shapes
:*
out_type0	2
gat_conv_30/ShapeМ
gat_conv_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
gat_conv_30/strided_slice/stackР
!gat_conv_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!gat_conv_30/strided_slice/stack_1Р
!gat_conv_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!gat_conv_30/strided_slice/stack_2™
gat_conv_30/strided_sliceStridedSlicegat_conv_30/Shape:output:0(gat_conv_30/strided_slice/stack:output:0*gat_conv_30/strided_slice/stack_1:output:0*gat_conv_30/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
gat_conv_30/strided_sliceЧ
!gat_conv_30/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!gat_conv_30/strided_slice_1/stackЫ
#gat_conv_30/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#gat_conv_30/strided_slice_1/stack_1Ы
#gat_conv_30/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_30/strided_slice_1/stack_2¬
gat_conv_30/strided_slice_1StridedSliceinputs*gat_conv_30/strided_slice_1/stack:output:0,gat_conv_30/strided_slice_1/stack_1:output:0,gat_conv_30/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2
gat_conv_30/strided_slice_1Ч
!gat_conv_30/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!gat_conv_30/strided_slice_2/stackЫ
#gat_conv_30/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#gat_conv_30/strided_slice_2/stack_1Ы
#gat_conv_30/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_30/strided_slice_2/stack_2¬
gat_conv_30/strided_slice_2StridedSliceinputs*gat_conv_30/strided_slice_2/stack:output:0,gat_conv_30/strided_slice_2/stack_1:output:0,gat_conv_30/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2
gat_conv_30/strided_slice_2“
gat_conv_30/NotEqualNotEqual$gat_conv_30/strided_slice_1:output:0$gat_conv_30/strided_slice_2:output:0*
T0	*#
_output_shapes
:€€€€€€€€€*
incompatible_shape_error( 2
gat_conv_30/NotEqual£
gat_conv_30/EnsureShapeEnsureShapegat_conv_30/NotEqual:z:0*
T0
*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€2
gat_conv_30/EnsureShapet
gat_conv_30/range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
gat_conv_30/range/startt
gat_conv_30/range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2
gat_conv_30/range/delta»
gat_conv_30/rangeRange gat_conv_30/range/start:output:0"gat_conv_30/strided_slice:output:0 gat_conv_30/range/delta:output:0*

Tidx0	*#
_output_shapes
:€€€€€€€€€2
gat_conv_30/rangeЧ
!gat_conv_30/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!gat_conv_30/strided_slice_3/stackЫ
#gat_conv_30/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gat_conv_30/strided_slice_3/stack_1Ы
#gat_conv_30/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_30/strided_slice_3/stack_2д
gat_conv_30/strided_slice_3StridedSlicegat_conv_30/range:output:0*gat_conv_30/strided_slice_3/stack:output:0,gat_conv_30/strided_slice_3/stack_1:output:0,gat_conv_30/strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2
gat_conv_30/strided_slice_3z
gat_conv_30/Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2
gat_conv_30/Repeat/repeatsП
gat_conv_30/Repeat/CastCast#gat_conv_30/Repeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
gat_conv_30/Repeat/CastИ
gat_conv_30/Repeat/ShapeShape$gat_conv_30/strided_slice_3:output:0*
T0	*
_output_shapes
:2
gat_conv_30/Repeat/ShapeЗ
 gat_conv_30/Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2"
 gat_conv_30/Repeat/Reshape/shapeЛ
"gat_conv_30/Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2$
"gat_conv_30/Repeat/Reshape/shape_1Ѓ
gat_conv_30/Repeat/ReshapeReshapegat_conv_30/Repeat/Cast:y:0+gat_conv_30/Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gat_conv_30/Repeat/ReshapeИ
!gat_conv_30/Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!gat_conv_30/Repeat/ExpandDims/dim‘
gat_conv_30/Repeat/ExpandDims
ExpandDims$gat_conv_30/strided_slice_3:output:0*gat_conv_30/Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2
gat_conv_30/Repeat/ExpandDimsМ
#gat_conv_30/Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2%
#gat_conv_30/Repeat/Tile/multiples/0М
#gat_conv_30/Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#gat_conv_30/Repeat/Tile/multiples/1э
!gat_conv_30/Repeat/Tile/multiplesPack,gat_conv_30/Repeat/Tile/multiples/0:output:0,gat_conv_30/Repeat/Tile/multiples/1:output:0#gat_conv_30/Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2#
!gat_conv_30/Repeat/Tile/multiplesƒ
gat_conv_30/Repeat/TileTile&gat_conv_30/Repeat/ExpandDims:output:0*gat_conv_30/Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2
gat_conv_30/Repeat/TileЪ
&gat_conv_30/Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&gat_conv_30/Repeat/strided_slice/stackЮ
(gat_conv_30/Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(gat_conv_30/Repeat/strided_slice/stack_1Ю
(gat_conv_30/Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(gat_conv_30/Repeat/strided_slice/stack_2“
 gat_conv_30/Repeat/strided_sliceStridedSlice!gat_conv_30/Repeat/Shape:output:0/gat_conv_30/Repeat/strided_slice/stack:output:01gat_conv_30/Repeat/strided_slice/stack_1:output:01gat_conv_30/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2"
 gat_conv_30/Repeat/strided_sliceЮ
(gat_conv_30/Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(gat_conv_30/Repeat/strided_slice_1/stackҐ
*gat_conv_30/Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*gat_conv_30/Repeat/strided_slice_1/stack_1Ґ
*gat_conv_30/Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gat_conv_30/Repeat/strided_slice_1/stack_2ё
"gat_conv_30/Repeat/strided_slice_1StridedSlice!gat_conv_30/Repeat/Shape:output:01gat_conv_30/Repeat/strided_slice_1/stack:output:03gat_conv_30/Repeat/strided_slice_1/stack_1:output:03gat_conv_30/Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"gat_conv_30/Repeat/strided_slice_1™
gat_conv_30/Repeat/mulMul#gat_conv_30/Repeat/Reshape:output:0+gat_conv_30/Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2
gat_conv_30/Repeat/mulЮ
(gat_conv_30/Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(gat_conv_30/Repeat/strided_slice_2/stackҐ
*gat_conv_30/Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2,
*gat_conv_30/Repeat/strided_slice_2/stack_1Ґ
*gat_conv_30/Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gat_conv_30/Repeat/strided_slice_2/stack_2Ў
"gat_conv_30/Repeat/strided_slice_2StridedSlice!gat_conv_30/Repeat/Shape:output:01gat_conv_30/Repeat/strided_slice_2/stack:output:03gat_conv_30/Repeat/strided_slice_2/stack_1:output:03gat_conv_30/Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2$
"gat_conv_30/Repeat/strided_slice_2Ъ
"gat_conv_30/Repeat/concat/values_1Packgat_conv_30/Repeat/mul:z:0*
N*
T0*
_output_shapes
:2$
"gat_conv_30/Repeat/concat/values_1В
gat_conv_30/Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
gat_conv_30/Repeat/concat/axisЮ
gat_conv_30/Repeat/concatConcatV2)gat_conv_30/Repeat/strided_slice:output:0+gat_conv_30/Repeat/concat/values_1:output:0+gat_conv_30/Repeat/strided_slice_2:output:0'gat_conv_30/Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2
gat_conv_30/Repeat/concat»
gat_conv_30/Repeat/Reshape_1Reshape gat_conv_30/Repeat/Tile:output:0"gat_conv_30/Repeat/concat:output:0*
T0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
gat_conv_30/Repeat/Reshape_1v
gat_conv_30/boolean_mask/ShapeShapeinputs*
T0	*
_output_shapes
:2 
gat_conv_30/boolean_mask/Shape¶
,gat_conv_30/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,gat_conv_30/boolean_mask/strided_slice/stack™
.gat_conv_30/boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.gat_conv_30/boolean_mask/strided_slice/stack_1™
.gat_conv_30/boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.gat_conv_30/boolean_mask/strided_slice/stack_2д
&gat_conv_30/boolean_mask/strided_sliceStridedSlice'gat_conv_30/boolean_mask/Shape:output:05gat_conv_30/boolean_mask/strided_slice/stack:output:07gat_conv_30/boolean_mask/strided_slice/stack_1:output:07gat_conv_30/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2(
&gat_conv_30/boolean_mask/strided_sliceђ
/gat_conv_30/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 21
/gat_conv_30/boolean_mask/Prod/reduction_indices“
gat_conv_30/boolean_mask/ProdProd/gat_conv_30/boolean_mask/strided_slice:output:08gat_conv_30/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2
gat_conv_30/boolean_mask/Prodz
 gat_conv_30/boolean_mask/Shape_1Shapeinputs*
T0	*
_output_shapes
:2"
 gat_conv_30/boolean_mask/Shape_1™
.gat_conv_30/boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.gat_conv_30/boolean_mask/strided_slice_1/stackЃ
0gat_conv_30/boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 22
0gat_conv_30/boolean_mask/strided_slice_1/stack_1Ѓ
0gat_conv_30/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0gat_conv_30/boolean_mask/strided_slice_1/stack_2А
(gat_conv_30/boolean_mask/strided_slice_1StridedSlice)gat_conv_30/boolean_mask/Shape_1:output:07gat_conv_30/boolean_mask/strided_slice_1/stack:output:09gat_conv_30/boolean_mask/strided_slice_1/stack_1:output:09gat_conv_30/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2*
(gat_conv_30/boolean_mask/strided_slice_1z
 gat_conv_30/boolean_mask/Shape_2Shapeinputs*
T0	*
_output_shapes
:2"
 gat_conv_30/boolean_mask/Shape_2™
.gat_conv_30/boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:20
.gat_conv_30/boolean_mask/strided_slice_2/stackЃ
0gat_conv_30/boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 22
0gat_conv_30/boolean_mask/strided_slice_2/stack_1Ѓ
0gat_conv_30/boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0gat_conv_30/boolean_mask/strided_slice_2/stack_2А
(gat_conv_30/boolean_mask/strided_slice_2StridedSlice)gat_conv_30/boolean_mask/Shape_2:output:07gat_conv_30/boolean_mask/strided_slice_2/stack:output:09gat_conv_30/boolean_mask/strided_slice_2/stack_1:output:09gat_conv_30/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2*
(gat_conv_30/boolean_mask/strided_slice_2≤
(gat_conv_30/boolean_mask/concat/values_1Pack&gat_conv_30/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2*
(gat_conv_30/boolean_mask/concat/values_1О
$gat_conv_30/boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$gat_conv_30/boolean_mask/concat/axisƒ
gat_conv_30/boolean_mask/concatConcatV21gat_conv_30/boolean_mask/strided_slice_1:output:01gat_conv_30/boolean_mask/concat/values_1:output:01gat_conv_30/boolean_mask/strided_slice_2:output:0-gat_conv_30/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2!
gat_conv_30/boolean_mask/concat≥
 gat_conv_30/boolean_mask/ReshapeReshapeinputs(gat_conv_30/boolean_mask/concat:output:0*
T0	*'
_output_shapes
:€€€€€€€€€2"
 gat_conv_30/boolean_mask/ReshapeІ
(gat_conv_30/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2*
(gat_conv_30/boolean_mask/Reshape_1/shape÷
"gat_conv_30/boolean_mask/Reshape_1Reshape gat_conv_30/EnsureShape:output:01gat_conv_30/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:€€€€€€€€€2$
"gat_conv_30/boolean_mask/Reshape_1Я
gat_conv_30/boolean_mask/WhereWhere+gat_conv_30/boolean_mask/Reshape_1:output:0*'
_output_shapes
:€€€€€€€€€2 
gat_conv_30/boolean_mask/WhereЉ
 gat_conv_30/boolean_mask/SqueezeSqueeze&gat_conv_30/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:€€€€€€€€€*
squeeze_dims
2"
 gat_conv_30/boolean_mask/SqueezeТ
&gat_conv_30/boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&gat_conv_30/boolean_mask/GatherV2/axisЃ
!gat_conv_30/boolean_mask/GatherV2GatherV2)gat_conv_30/boolean_mask/Reshape:output:0)gat_conv_30/boolean_mask/Squeeze:output:0/gat_conv_30/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:€€€€€€€€€2#
!gat_conv_30/boolean_mask/GatherV2t
gat_conv_30/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_30/concat/axisд
gat_conv_30/concatConcatV2*gat_conv_30/boolean_mask/GatherV2:output:0%gat_conv_30/Repeat/Reshape_1:output:0 gat_conv_30/concat/axis:output:0*
N*
T0	*'
_output_shapes
:€€€€€€€€€2
gat_conv_30/concatЧ
!gat_conv_30/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!gat_conv_30/strided_slice_4/stackЫ
#gat_conv_30/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#gat_conv_30/strided_slice_4/stack_1Ы
#gat_conv_30/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_30/strided_slice_4/stack_2д
gat_conv_30/strided_slice_4StridedSlicegat_conv_30/concat:output:0*gat_conv_30/strided_slice_4/stack:output:0,gat_conv_30/strided_slice_4/stack_1:output:0,gat_conv_30/strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
gat_conv_30/strided_slice_4О
gat_conv_30/ones_like/ShapeShape$gat_conv_30/strided_slice_4:output:0*
T0	*
_output_shapes
:2
gat_conv_30/ones_like/Shape|
gat_conv_30/ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
gat_conv_30/ones_like/Const∞
gat_conv_30/ones_likeFill$gat_conv_30/ones_like/Shape:output:0$gat_conv_30/ones_like/Const:output:0*
T0	*#
_output_shapes
:€€€€€€€€€2
gat_conv_30/ones_likeћ
%gat_conv_30/SparseReorder/input_shapePack"gat_conv_30/strided_slice:output:0"gat_conv_30/strided_slice:output:0*
N*
T0	*
_output_shapes
:2'
%gat_conv_30/SparseReorder/input_shapeх
gat_conv_30/SparseReorderSparseReordergat_conv_30/concat:output:0gat_conv_30/ones_like:output:0.gat_conv_30/SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":€€€€€€€€€:€€€€€€€€€2
gat_conv_30/SparseReorderЧ
!gat_conv_30/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"    ю€€€2#
!gat_conv_30/strided_slice_5/stackЫ
#gat_conv_30/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    €€€€2%
#gat_conv_30/strided_slice_5/stack_1Ы
#gat_conv_30/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_30/strided_slice_5/stack_2у
gat_conv_30/strided_slice_5StridedSlice*gat_conv_30/SparseReorder:output_indices:0*gat_conv_30/strided_slice_5/stack:output:0,gat_conv_30/strided_slice_5/stack_1:output:0,gat_conv_30/strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
gat_conv_30/strided_slice_5Ч
!gat_conv_30/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"    €€€€2#
!gat_conv_30/strided_slice_6/stackЫ
#gat_conv_30/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gat_conv_30/strided_slice_6/stack_1Ы
#gat_conv_30/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_30/strided_slice_6/stack_2у
gat_conv_30/strided_slice_6StridedSlice*gat_conv_30/SparseReorder:output_indices:0*gat_conv_30/strided_slice_6/stack:output:0,gat_conv_30/strided_slice_6/stack_1:output:0,gat_conv_30/strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
gat_conv_30/strided_slice_6М
gat_conv_30/MatMulMatMulinputs_0gat_conv_30/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€P2
gat_conv_30/MatMulП
gat_conv_30/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€
      2
gat_conv_30/Reshape_1/shape≥
gat_conv_30/Reshape_1Reshapegat_conv_30/MatMul:product:0$gat_conv_30/Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€
2
gat_conv_30/Reshape_1Ъ
gat_conv_30/mulMulgat_conv_30/Reshape_1:output:0gat_conv_30/transpose:y:0*
T0*+
_output_shapes
:€€€€€€€€€
2
gat_conv_30/mulС
!gat_conv_30/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2#
!gat_conv_30/Sum/reduction_indicesЬ
gat_conv_30/SumSumgat_conv_30/mul:z:0*gat_conv_30/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/Sumx
gat_conv_30/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_30/GatherV2/axisс
gat_conv_30/GatherV2GatherV2gat_conv_30/Sum:output:0$gat_conv_30/strided_slice_5:output:0"gat_conv_30/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/GatherV2†
gat_conv_30/mul_1Mulgat_conv_30/Reshape_1:output:0gat_conv_30/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€
2
gat_conv_30/mul_1Х
#gat_conv_30/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2%
#gat_conv_30/Sum_1/reduction_indices§
gat_conv_30/Sum_1Sumgat_conv_30/mul_1:z:0,gat_conv_30/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/Sum_1|
gat_conv_30/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_30/GatherV2_1/axisщ
gat_conv_30/GatherV2_1GatherV2gat_conv_30/Sum_1:output:0$gat_conv_30/strided_slice_6:output:0$gat_conv_30/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/GatherV2_1Э
gat_conv_30/addAddV2gat_conv_30/GatherV2:output:0gat_conv_30/GatherV2_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/addy
gat_conv_30/LeakyRelu	LeakyRelugat_conv_30/add:z:0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/LeakyReluЫ
gat_conv_30/UnsortedSegmentMaxUnsortedSegmentMax#gat_conv_30/LeakyRelu:activations:0$gat_conv_30/strided_slice_5:output:0"gat_conv_30/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€
2 
gat_conv_30/UnsortedSegmentMax|
gat_conv_30/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_30/GatherV2_2/axisЖ
gat_conv_30/GatherV2_2GatherV2'gat_conv_30/UnsortedSegmentMax:output:0$gat_conv_30/strided_slice_5:output:0$gat_conv_30/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/GatherV2_2°
gat_conv_30/subSub#gat_conv_30/LeakyRelu:activations:0gat_conv_30/GatherV2_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/subp
gat_conv_30/ExpExpgat_conv_30/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/ExpЛ
gat_conv_30/UnsortedSegmentSumUnsortedSegmentSumgat_conv_30/Exp:y:0$gat_conv_30/strided_slice_5:output:0"gat_conv_30/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€
2 
gat_conv_30/UnsortedSegmentSumo
gat_conv_30/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_pЙ02
gat_conv_30/add_1/y®
gat_conv_30/add_1AddV2'gat_conv_30/UnsortedSegmentSum:output:0gat_conv_30/add_1/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/add_1|
gat_conv_30/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_30/GatherV2_3/axisф
gat_conv_30/GatherV2_3GatherV2gat_conv_30/add_1:z:0$gat_conv_30/strided_slice_5:output:0$gat_conv_30/GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/GatherV2_3Э
gat_conv_30/truedivRealDivgat_conv_30/Exp:y:0gat_conv_30/GatherV2_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/truedivЛ
!gat_conv_30/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   A2#
!gat_conv_30/dropout/dropout/Constј
gat_conv_30/dropout/dropout/MulMulgat_conv_30/truediv:z:0*gat_conv_30/dropout/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2!
gat_conv_30/dropout/dropout/MulН
!gat_conv_30/dropout/dropout/ShapeShapegat_conv_30/truediv:z:0*
T0*
_output_shapes
:2#
!gat_conv_30/dropout/dropout/Shapeр
8gat_conv_30/dropout/dropout/random_uniform/RandomUniformRandomUniform*gat_conv_30/dropout/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€
*
dtype02:
8gat_conv_30/dropout/dropout/random_uniform/RandomUniformЭ
*gat_conv_30/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *fff?2,
*gat_conv_30/dropout/dropout/GreaterEqual/yО
(gat_conv_30/dropout/dropout/GreaterEqualGreaterEqualAgat_conv_30/dropout/dropout/random_uniform/RandomUniform:output:03gat_conv_30/dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2*
(gat_conv_30/dropout/dropout/GreaterEqualї
 gat_conv_30/dropout/dropout/CastCast,gat_conv_30/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€
2"
 gat_conv_30/dropout/dropout/Cast 
!gat_conv_30/dropout/dropout/Mul_1Mul#gat_conv_30/dropout/dropout/Mul:z:0$gat_conv_30/dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€
2#
!gat_conv_30/dropout/dropout/Mul_1Ч
!gat_conv_30/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!gat_conv_30/strided_slice_7/stackЫ
#gat_conv_30/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gat_conv_30/strided_slice_7/stack_1Ы
#gat_conv_30/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_30/strided_slice_7/stack_2ж
gat_conv_30/strided_slice_7StridedSlice%gat_conv_30/dropout/dropout/Mul_1:z:0*gat_conv_30/strided_slice_7/stack:output:0,gat_conv_30/strided_slice_7/stack_1:output:0,gat_conv_30/strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:€€€€€€€€€
*
ellipsis_mask*
new_axis_mask2
gat_conv_30/strided_slice_7|
gat_conv_30/GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_30/GatherV2_4/axisБ
gat_conv_30/GatherV2_4GatherV2gat_conv_30/Reshape_1:output:0$gat_conv_30/strided_slice_6:output:0$gat_conv_30/GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:€€€€€€€€€
2
gat_conv_30/GatherV2_4™
gat_conv_30/mul_2Mul$gat_conv_30/strided_slice_7:output:0gat_conv_30/GatherV2_4:output:0*
T0*+
_output_shapes
:€€€€€€€€€
2
gat_conv_30/mul_2Х
 gat_conv_30/UnsortedSegmentSum_1UnsortedSegmentSumgat_conv_30/mul_2:z:0$gat_conv_30/strided_slice_5:output:0"gat_conv_30/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:€€€€€€€€€
2"
 gat_conv_30/UnsortedSegmentSum_1Л
gat_conv_30/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   2
gat_conv_30/Reshape_2/shapeЉ
gat_conv_30/Reshape_2Reshape)gat_conv_30/UnsortedSegmentSum_1:output:0$gat_conv_30/Reshape_2/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€P2
gat_conv_30/Reshape_2~
gat_conv_30/ReluRelugat_conv_30/Reshape_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€P2
gat_conv_30/ReluЄ
"gat_conv_31/Reshape/ReadVariableOpReadVariableOp+gat_conv_31_reshape_readvariableop_resource*"
_output_shapes
:P*
dtype02$
"gat_conv_31/Reshape/ReadVariableOpЗ
gat_conv_31/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
gat_conv_31/Reshape/shapeЃ
gat_conv_31/ReshapeReshape*gat_conv_31/Reshape/ReadVariableOp:value:0"gat_conv_31/Reshape/shape:output:0*
T0*
_output_shapes

:P2
gat_conv_31/ReshapeЊ
$gat_conv_31/transpose/ReadVariableOpReadVariableOp-gat_conv_31_transpose_readvariableop_resource*"
_output_shapes
:*
dtype02&
$gat_conv_31/transpose/ReadVariableOpН
gat_conv_31/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gat_conv_31/transpose/permї
gat_conv_31/transpose	Transpose,gat_conv_31/transpose/ReadVariableOp:value:0#gat_conv_31/transpose/perm:output:0*
T0*"
_output_shapes
:2
gat_conv_31/transposeƒ
&gat_conv_31/transpose_1/ReadVariableOpReadVariableOp/gat_conv_31_transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02(
&gat_conv_31/transpose_1/ReadVariableOpС
gat_conv_31/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gat_conv_31/transpose_1/perm√
gat_conv_31/transpose_1	Transpose.gat_conv_31/transpose_1/ReadVariableOp:value:0%gat_conv_31/transpose_1/perm:output:0*
T0*"
_output_shapes
:2
gat_conv_31/transpose_1Д
gat_conv_31/ShapeShapegat_conv_30/Relu:activations:0*
T0*
_output_shapes
:*
out_type0	2
gat_conv_31/ShapeМ
gat_conv_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
gat_conv_31/strided_slice/stackР
!gat_conv_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!gat_conv_31/strided_slice/stack_1Р
!gat_conv_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!gat_conv_31/strided_slice/stack_2™
gat_conv_31/strided_sliceStridedSlicegat_conv_31/Shape:output:0(gat_conv_31/strided_slice/stack:output:0*gat_conv_31/strided_slice/stack_1:output:0*gat_conv_31/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
gat_conv_31/strided_sliceЧ
!gat_conv_31/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!gat_conv_31/strided_slice_1/stackЫ
#gat_conv_31/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#gat_conv_31/strided_slice_1/stack_1Ы
#gat_conv_31/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_31/strided_slice_1/stack_2¬
gat_conv_31/strided_slice_1StridedSliceinputs*gat_conv_31/strided_slice_1/stack:output:0,gat_conv_31/strided_slice_1/stack_1:output:0,gat_conv_31/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2
gat_conv_31/strided_slice_1Ч
!gat_conv_31/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!gat_conv_31/strided_slice_2/stackЫ
#gat_conv_31/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#gat_conv_31/strided_slice_2/stack_1Ы
#gat_conv_31/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_31/strided_slice_2/stack_2¬
gat_conv_31/strided_slice_2StridedSliceinputs*gat_conv_31/strided_slice_2/stack:output:0,gat_conv_31/strided_slice_2/stack_1:output:0,gat_conv_31/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2
gat_conv_31/strided_slice_2“
gat_conv_31/NotEqualNotEqual$gat_conv_31/strided_slice_1:output:0$gat_conv_31/strided_slice_2:output:0*
T0	*#
_output_shapes
:€€€€€€€€€*
incompatible_shape_error( 2
gat_conv_31/NotEqual£
gat_conv_31/EnsureShapeEnsureShapegat_conv_31/NotEqual:z:0*
T0
*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€2
gat_conv_31/EnsureShapet
gat_conv_31/range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
gat_conv_31/range/startt
gat_conv_31/range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2
gat_conv_31/range/delta»
gat_conv_31/rangeRange gat_conv_31/range/start:output:0"gat_conv_31/strided_slice:output:0 gat_conv_31/range/delta:output:0*

Tidx0	*#
_output_shapes
:€€€€€€€€€2
gat_conv_31/rangeЧ
!gat_conv_31/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!gat_conv_31/strided_slice_3/stackЫ
#gat_conv_31/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gat_conv_31/strided_slice_3/stack_1Ы
#gat_conv_31/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_31/strided_slice_3/stack_2д
gat_conv_31/strided_slice_3StridedSlicegat_conv_31/range:output:0*gat_conv_31/strided_slice_3/stack:output:0,gat_conv_31/strided_slice_3/stack_1:output:0,gat_conv_31/strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2
gat_conv_31/strided_slice_3z
gat_conv_31/Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2
gat_conv_31/Repeat/repeatsП
gat_conv_31/Repeat/CastCast#gat_conv_31/Repeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
gat_conv_31/Repeat/CastИ
gat_conv_31/Repeat/ShapeShape$gat_conv_31/strided_slice_3:output:0*
T0	*
_output_shapes
:2
gat_conv_31/Repeat/ShapeЗ
 gat_conv_31/Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2"
 gat_conv_31/Repeat/Reshape/shapeЛ
"gat_conv_31/Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2$
"gat_conv_31/Repeat/Reshape/shape_1Ѓ
gat_conv_31/Repeat/ReshapeReshapegat_conv_31/Repeat/Cast:y:0+gat_conv_31/Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gat_conv_31/Repeat/ReshapeИ
!gat_conv_31/Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!gat_conv_31/Repeat/ExpandDims/dim‘
gat_conv_31/Repeat/ExpandDims
ExpandDims$gat_conv_31/strided_slice_3:output:0*gat_conv_31/Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2
gat_conv_31/Repeat/ExpandDimsМ
#gat_conv_31/Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2%
#gat_conv_31/Repeat/Tile/multiples/0М
#gat_conv_31/Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#gat_conv_31/Repeat/Tile/multiples/1э
!gat_conv_31/Repeat/Tile/multiplesPack,gat_conv_31/Repeat/Tile/multiples/0:output:0,gat_conv_31/Repeat/Tile/multiples/1:output:0#gat_conv_31/Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2#
!gat_conv_31/Repeat/Tile/multiplesƒ
gat_conv_31/Repeat/TileTile&gat_conv_31/Repeat/ExpandDims:output:0*gat_conv_31/Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2
gat_conv_31/Repeat/TileЪ
&gat_conv_31/Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&gat_conv_31/Repeat/strided_slice/stackЮ
(gat_conv_31/Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(gat_conv_31/Repeat/strided_slice/stack_1Ю
(gat_conv_31/Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(gat_conv_31/Repeat/strided_slice/stack_2“
 gat_conv_31/Repeat/strided_sliceStridedSlice!gat_conv_31/Repeat/Shape:output:0/gat_conv_31/Repeat/strided_slice/stack:output:01gat_conv_31/Repeat/strided_slice/stack_1:output:01gat_conv_31/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2"
 gat_conv_31/Repeat/strided_sliceЮ
(gat_conv_31/Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(gat_conv_31/Repeat/strided_slice_1/stackҐ
*gat_conv_31/Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*gat_conv_31/Repeat/strided_slice_1/stack_1Ґ
*gat_conv_31/Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gat_conv_31/Repeat/strided_slice_1/stack_2ё
"gat_conv_31/Repeat/strided_slice_1StridedSlice!gat_conv_31/Repeat/Shape:output:01gat_conv_31/Repeat/strided_slice_1/stack:output:03gat_conv_31/Repeat/strided_slice_1/stack_1:output:03gat_conv_31/Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"gat_conv_31/Repeat/strided_slice_1™
gat_conv_31/Repeat/mulMul#gat_conv_31/Repeat/Reshape:output:0+gat_conv_31/Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2
gat_conv_31/Repeat/mulЮ
(gat_conv_31/Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(gat_conv_31/Repeat/strided_slice_2/stackҐ
*gat_conv_31/Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2,
*gat_conv_31/Repeat/strided_slice_2/stack_1Ґ
*gat_conv_31/Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gat_conv_31/Repeat/strided_slice_2/stack_2Ў
"gat_conv_31/Repeat/strided_slice_2StridedSlice!gat_conv_31/Repeat/Shape:output:01gat_conv_31/Repeat/strided_slice_2/stack:output:03gat_conv_31/Repeat/strided_slice_2/stack_1:output:03gat_conv_31/Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2$
"gat_conv_31/Repeat/strided_slice_2Ъ
"gat_conv_31/Repeat/concat/values_1Packgat_conv_31/Repeat/mul:z:0*
N*
T0*
_output_shapes
:2$
"gat_conv_31/Repeat/concat/values_1В
gat_conv_31/Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
gat_conv_31/Repeat/concat/axisЮ
gat_conv_31/Repeat/concatConcatV2)gat_conv_31/Repeat/strided_slice:output:0+gat_conv_31/Repeat/concat/values_1:output:0+gat_conv_31/Repeat/strided_slice_2:output:0'gat_conv_31/Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2
gat_conv_31/Repeat/concat»
gat_conv_31/Repeat/Reshape_1Reshape gat_conv_31/Repeat/Tile:output:0"gat_conv_31/Repeat/concat:output:0*
T0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
gat_conv_31/Repeat/Reshape_1v
gat_conv_31/boolean_mask/ShapeShapeinputs*
T0	*
_output_shapes
:2 
gat_conv_31/boolean_mask/Shape¶
,gat_conv_31/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,gat_conv_31/boolean_mask/strided_slice/stack™
.gat_conv_31/boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.gat_conv_31/boolean_mask/strided_slice/stack_1™
.gat_conv_31/boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.gat_conv_31/boolean_mask/strided_slice/stack_2д
&gat_conv_31/boolean_mask/strided_sliceStridedSlice'gat_conv_31/boolean_mask/Shape:output:05gat_conv_31/boolean_mask/strided_slice/stack:output:07gat_conv_31/boolean_mask/strided_slice/stack_1:output:07gat_conv_31/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2(
&gat_conv_31/boolean_mask/strided_sliceђ
/gat_conv_31/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 21
/gat_conv_31/boolean_mask/Prod/reduction_indices“
gat_conv_31/boolean_mask/ProdProd/gat_conv_31/boolean_mask/strided_slice:output:08gat_conv_31/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2
gat_conv_31/boolean_mask/Prodz
 gat_conv_31/boolean_mask/Shape_1Shapeinputs*
T0	*
_output_shapes
:2"
 gat_conv_31/boolean_mask/Shape_1™
.gat_conv_31/boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.gat_conv_31/boolean_mask/strided_slice_1/stackЃ
0gat_conv_31/boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 22
0gat_conv_31/boolean_mask/strided_slice_1/stack_1Ѓ
0gat_conv_31/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0gat_conv_31/boolean_mask/strided_slice_1/stack_2А
(gat_conv_31/boolean_mask/strided_slice_1StridedSlice)gat_conv_31/boolean_mask/Shape_1:output:07gat_conv_31/boolean_mask/strided_slice_1/stack:output:09gat_conv_31/boolean_mask/strided_slice_1/stack_1:output:09gat_conv_31/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2*
(gat_conv_31/boolean_mask/strided_slice_1z
 gat_conv_31/boolean_mask/Shape_2Shapeinputs*
T0	*
_output_shapes
:2"
 gat_conv_31/boolean_mask/Shape_2™
.gat_conv_31/boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:20
.gat_conv_31/boolean_mask/strided_slice_2/stackЃ
0gat_conv_31/boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 22
0gat_conv_31/boolean_mask/strided_slice_2/stack_1Ѓ
0gat_conv_31/boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0gat_conv_31/boolean_mask/strided_slice_2/stack_2А
(gat_conv_31/boolean_mask/strided_slice_2StridedSlice)gat_conv_31/boolean_mask/Shape_2:output:07gat_conv_31/boolean_mask/strided_slice_2/stack:output:09gat_conv_31/boolean_mask/strided_slice_2/stack_1:output:09gat_conv_31/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2*
(gat_conv_31/boolean_mask/strided_slice_2≤
(gat_conv_31/boolean_mask/concat/values_1Pack&gat_conv_31/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2*
(gat_conv_31/boolean_mask/concat/values_1О
$gat_conv_31/boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$gat_conv_31/boolean_mask/concat/axisƒ
gat_conv_31/boolean_mask/concatConcatV21gat_conv_31/boolean_mask/strided_slice_1:output:01gat_conv_31/boolean_mask/concat/values_1:output:01gat_conv_31/boolean_mask/strided_slice_2:output:0-gat_conv_31/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2!
gat_conv_31/boolean_mask/concat≥
 gat_conv_31/boolean_mask/ReshapeReshapeinputs(gat_conv_31/boolean_mask/concat:output:0*
T0	*'
_output_shapes
:€€€€€€€€€2"
 gat_conv_31/boolean_mask/ReshapeІ
(gat_conv_31/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2*
(gat_conv_31/boolean_mask/Reshape_1/shape÷
"gat_conv_31/boolean_mask/Reshape_1Reshape gat_conv_31/EnsureShape:output:01gat_conv_31/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:€€€€€€€€€2$
"gat_conv_31/boolean_mask/Reshape_1Я
gat_conv_31/boolean_mask/WhereWhere+gat_conv_31/boolean_mask/Reshape_1:output:0*'
_output_shapes
:€€€€€€€€€2 
gat_conv_31/boolean_mask/WhereЉ
 gat_conv_31/boolean_mask/SqueezeSqueeze&gat_conv_31/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:€€€€€€€€€*
squeeze_dims
2"
 gat_conv_31/boolean_mask/SqueezeТ
&gat_conv_31/boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&gat_conv_31/boolean_mask/GatherV2/axisЃ
!gat_conv_31/boolean_mask/GatherV2GatherV2)gat_conv_31/boolean_mask/Reshape:output:0)gat_conv_31/boolean_mask/Squeeze:output:0/gat_conv_31/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:€€€€€€€€€2#
!gat_conv_31/boolean_mask/GatherV2t
gat_conv_31/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_31/concat/axisд
gat_conv_31/concatConcatV2*gat_conv_31/boolean_mask/GatherV2:output:0%gat_conv_31/Repeat/Reshape_1:output:0 gat_conv_31/concat/axis:output:0*
N*
T0	*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/concatЧ
!gat_conv_31/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!gat_conv_31/strided_slice_4/stackЫ
#gat_conv_31/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#gat_conv_31/strided_slice_4/stack_1Ы
#gat_conv_31/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_31/strided_slice_4/stack_2д
gat_conv_31/strided_slice_4StridedSlicegat_conv_31/concat:output:0*gat_conv_31/strided_slice_4/stack:output:0,gat_conv_31/strided_slice_4/stack_1:output:0,gat_conv_31/strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
gat_conv_31/strided_slice_4О
gat_conv_31/ones_like/ShapeShape$gat_conv_31/strided_slice_4:output:0*
T0	*
_output_shapes
:2
gat_conv_31/ones_like/Shape|
gat_conv_31/ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
gat_conv_31/ones_like/Const∞
gat_conv_31/ones_likeFill$gat_conv_31/ones_like/Shape:output:0$gat_conv_31/ones_like/Const:output:0*
T0	*#
_output_shapes
:€€€€€€€€€2
gat_conv_31/ones_likeћ
%gat_conv_31/SparseReorder/input_shapePack"gat_conv_31/strided_slice:output:0"gat_conv_31/strided_slice:output:0*
N*
T0	*
_output_shapes
:2'
%gat_conv_31/SparseReorder/input_shapeх
gat_conv_31/SparseReorderSparseReordergat_conv_31/concat:output:0gat_conv_31/ones_like:output:0.gat_conv_31/SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":€€€€€€€€€:€€€€€€€€€2
gat_conv_31/SparseReorderЧ
!gat_conv_31/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"    ю€€€2#
!gat_conv_31/strided_slice_5/stackЫ
#gat_conv_31/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    €€€€2%
#gat_conv_31/strided_slice_5/stack_1Ы
#gat_conv_31/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_31/strided_slice_5/stack_2у
gat_conv_31/strided_slice_5StridedSlice*gat_conv_31/SparseReorder:output_indices:0*gat_conv_31/strided_slice_5/stack:output:0,gat_conv_31/strided_slice_5/stack_1:output:0,gat_conv_31/strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
gat_conv_31/strided_slice_5Ч
!gat_conv_31/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"    €€€€2#
!gat_conv_31/strided_slice_6/stackЫ
#gat_conv_31/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gat_conv_31/strided_slice_6/stack_1Ы
#gat_conv_31/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_31/strided_slice_6/stack_2у
gat_conv_31/strided_slice_6StridedSlice*gat_conv_31/SparseReorder:output_indices:0*gat_conv_31/strided_slice_6/stack:output:0,gat_conv_31/strided_slice_6/stack_1:output:0,gat_conv_31/strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
gat_conv_31/strided_slice_6Ґ
gat_conv_31/MatMulMatMulgat_conv_30/Relu:activations:0gat_conv_31/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/MatMulП
gat_conv_31/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€      2
gat_conv_31/Reshape_1/shape≥
gat_conv_31/Reshape_1Reshapegat_conv_31/MatMul:product:0$gat_conv_31/Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
gat_conv_31/Reshape_1Ъ
gat_conv_31/mulMulgat_conv_31/Reshape_1:output:0gat_conv_31/transpose:y:0*
T0*+
_output_shapes
:€€€€€€€€€2
gat_conv_31/mulС
!gat_conv_31/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2#
!gat_conv_31/Sum/reduction_indicesЬ
gat_conv_31/SumSumgat_conv_31/mul:z:0*gat_conv_31/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/Sumx
gat_conv_31/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_31/GatherV2/axisс
gat_conv_31/GatherV2GatherV2gat_conv_31/Sum:output:0$gat_conv_31/strided_slice_5:output:0"gat_conv_31/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/GatherV2†
gat_conv_31/mul_1Mulgat_conv_31/Reshape_1:output:0gat_conv_31/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€2
gat_conv_31/mul_1Х
#gat_conv_31/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2%
#gat_conv_31/Sum_1/reduction_indices§
gat_conv_31/Sum_1Sumgat_conv_31/mul_1:z:0,gat_conv_31/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/Sum_1|
gat_conv_31/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_31/GatherV2_1/axisщ
gat_conv_31/GatherV2_1GatherV2gat_conv_31/Sum_1:output:0$gat_conv_31/strided_slice_6:output:0$gat_conv_31/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/GatherV2_1Э
gat_conv_31/addAddV2gat_conv_31/GatherV2:output:0gat_conv_31/GatherV2_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/addy
gat_conv_31/LeakyRelu	LeakyRelugat_conv_31/add:z:0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/LeakyReluЫ
gat_conv_31/UnsortedSegmentMaxUnsortedSegmentMax#gat_conv_31/LeakyRelu:activations:0$gat_conv_31/strided_slice_5:output:0"gat_conv_31/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€2 
gat_conv_31/UnsortedSegmentMax|
gat_conv_31/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_31/GatherV2_2/axisЖ
gat_conv_31/GatherV2_2GatherV2'gat_conv_31/UnsortedSegmentMax:output:0$gat_conv_31/strided_slice_5:output:0$gat_conv_31/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/GatherV2_2°
gat_conv_31/subSub#gat_conv_31/LeakyRelu:activations:0gat_conv_31/GatherV2_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/subp
gat_conv_31/ExpExpgat_conv_31/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/ExpЛ
gat_conv_31/UnsortedSegmentSumUnsortedSegmentSumgat_conv_31/Exp:y:0$gat_conv_31/strided_slice_5:output:0"gat_conv_31/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€2 
gat_conv_31/UnsortedSegmentSumo
gat_conv_31/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_pЙ02
gat_conv_31/add_1/y®
gat_conv_31/add_1AddV2'gat_conv_31/UnsortedSegmentSum:output:0gat_conv_31/add_1/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/add_1|
gat_conv_31/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_31/GatherV2_3/axisф
gat_conv_31/GatherV2_3GatherV2gat_conv_31/add_1:z:0$gat_conv_31/strided_slice_5:output:0$gat_conv_31/GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/GatherV2_3Э
gat_conv_31/truedivRealDivgat_conv_31/Exp:y:0gat_conv_31/GatherV2_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/truedivП
#gat_conv_31/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †@2%
#gat_conv_31/dropout_1/dropout/Const∆
!gat_conv_31/dropout_1/dropout/MulMulgat_conv_31/truediv:z:0,gat_conv_31/dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2#
!gat_conv_31/dropout_1/dropout/MulС
#gat_conv_31/dropout_1/dropout/ShapeShapegat_conv_31/truediv:z:0*
T0*
_output_shapes
:2%
#gat_conv_31/dropout_1/dropout/Shapeц
:gat_conv_31/dropout_1/dropout/random_uniform/RandomUniformRandomUniform,gat_conv_31/dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype02<
:gat_conv_31/dropout_1/dropout/random_uniform/RandomUniform°
,gat_conv_31/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL?2.
,gat_conv_31/dropout_1/dropout/GreaterEqual/yЦ
*gat_conv_31/dropout_1/dropout/GreaterEqualGreaterEqualCgat_conv_31/dropout_1/dropout/random_uniform/RandomUniform:output:05gat_conv_31/dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2,
*gat_conv_31/dropout_1/dropout/GreaterEqualЅ
"gat_conv_31/dropout_1/dropout/CastCast.gat_conv_31/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€2$
"gat_conv_31/dropout_1/dropout/Cast“
#gat_conv_31/dropout_1/dropout/Mul_1Mul%gat_conv_31/dropout_1/dropout/Mul:z:0&gat_conv_31/dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€2%
#gat_conv_31/dropout_1/dropout/Mul_1Ч
!gat_conv_31/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!gat_conv_31/strided_slice_7/stackЫ
#gat_conv_31/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gat_conv_31/strided_slice_7/stack_1Ы
#gat_conv_31/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_31/strided_slice_7/stack_2и
gat_conv_31/strided_slice_7StridedSlice'gat_conv_31/dropout_1/dropout/Mul_1:z:0*gat_conv_31/strided_slice_7/stack:output:0,gat_conv_31/strided_slice_7/stack_1:output:0,gat_conv_31/strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
new_axis_mask2
gat_conv_31/strided_slice_7|
gat_conv_31/GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_31/GatherV2_4/axisБ
gat_conv_31/GatherV2_4GatherV2gat_conv_31/Reshape_1:output:0$gat_conv_31/strided_slice_6:output:0$gat_conv_31/GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:€€€€€€€€€2
gat_conv_31/GatherV2_4™
gat_conv_31/mul_2Mul$gat_conv_31/strided_slice_7:output:0gat_conv_31/GatherV2_4:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
gat_conv_31/mul_2Х
 gat_conv_31/UnsortedSegmentSum_1UnsortedSegmentSumgat_conv_31/mul_2:z:0$gat_conv_31/strided_slice_5:output:0"gat_conv_31/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:€€€€€€€€€2"
 gat_conv_31/UnsortedSegmentSum_1Л
gat_conv_31/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
gat_conv_31/Reshape_2/shapeЉ
gat_conv_31/Reshape_2Reshape)gat_conv_31/UnsortedSegmentSum_1:output:0$gat_conv_31/Reshape_2/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/Reshape_2~
gat_conv_31/ReluRelugat_conv_31/Reshape_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/Reluљ
global_avg_pool_15/SegmentMeanSegmentMeangat_conv_31/Relu:activations:0
inputs_2_0*
T0*
Tindices0	*'
_output_shapes
:€€€€€€€€€2 
global_avg_pool_15/SegmentMeanЇ
global_sum_pool_15/SegmentSum
SegmentSumgat_conv_31/Relu:activations:0
inputs_2_0*
T0*
Tindices0	*'
_output_shapes
:€€€€€€€€€2
global_sum_pool_15/SegmentSum\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisЊ
concatConcatV2'global_avg_pool_15/SegmentMean:output:0&global_sum_pool_15/SegmentSum:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€(2
concat®
dense_45/MatMul/ReadVariableOpReadVariableOp'dense_45_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02 
dense_45/MatMul/ReadVariableOpЧ
dense_45/MatMulMatMulconcat:output:0&dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_45/MatMulІ
dense_45/BiasAdd/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_45/BiasAdd/ReadVariableOp•
dense_45/BiasAddBiasAdddense_45/MatMul:product:0'dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_45/BiasAddХ
leaky_re_lu_15/LeakyRelu	LeakyReludense_45/BiasAdd:output:0*'
_output_shapes
:€€€€€€€€€*
alpha%Ќћћ=2
leaky_re_lu_15/LeakyReluЄ
5batch_normalization_30/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_30/moments/mean/reduction_indicesф
#batch_normalization_30/moments/meanMean&leaky_re_lu_15/LeakyRelu:activations:0>batch_normalization_30/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2%
#batch_normalization_30/moments/meanЅ
+batch_normalization_30/moments/StopGradientStopGradient,batch_normalization_30/moments/mean:output:0*
T0*
_output_shapes

:2-
+batch_normalization_30/moments/StopGradientЙ
0batch_normalization_30/moments/SquaredDifferenceSquaredDifference&leaky_re_lu_15/LeakyRelu:activations:04batch_normalization_30/moments/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
0batch_normalization_30/moments/SquaredDifferenceј
9batch_normalization_30/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_30/moments/variance/reduction_indicesО
'batch_normalization_30/moments/varianceMean4batch_normalization_30/moments/SquaredDifference:z:0Bbatch_normalization_30/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2)
'batch_normalization_30/moments/variance≈
&batch_normalization_30/moments/SqueezeSqueeze,batch_normalization_30/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2(
&batch_normalization_30/moments/SqueezeЌ
(batch_normalization_30/moments/Squeeze_1Squeeze0batch_normalization_30/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2*
(batch_normalization_30/moments/Squeeze_1Р
,batch_normalization_30/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*?
_class5
31loc:@batch_normalization_30/AssignMovingAvg/81717*
_output_shapes
: *
dtype0*
valueB
 *
„#<2.
,batch_normalization_30/AssignMovingAvg/decay„
5batch_normalization_30/AssignMovingAvg/ReadVariableOpReadVariableOp,batch_normalization_30_assignmovingavg_81717*
_output_shapes
:*
dtype027
5batch_normalization_30/AssignMovingAvg/ReadVariableOpг
*batch_normalization_30/AssignMovingAvg/subSub=batch_normalization_30/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_30/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*?
_class5
31loc:@batch_normalization_30/AssignMovingAvg/81717*
_output_shapes
:2,
*batch_normalization_30/AssignMovingAvg/subЏ
*batch_normalization_30/AssignMovingAvg/mulMul.batch_normalization_30/AssignMovingAvg/sub:z:05batch_normalization_30/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*?
_class5
31loc:@batch_normalization_30/AssignMovingAvg/81717*
_output_shapes
:2,
*batch_normalization_30/AssignMovingAvg/mulЈ
:batch_normalization_30/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp,batch_normalization_30_assignmovingavg_81717.batch_normalization_30/AssignMovingAvg/mul:z:06^batch_normalization_30/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*?
_class5
31loc:@batch_normalization_30/AssignMovingAvg/81717*
_output_shapes
 *
dtype02<
:batch_normalization_30/AssignMovingAvg/AssignSubVariableOpЦ
.batch_normalization_30/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*A
_class7
53loc:@batch_normalization_30/AssignMovingAvg_1/81723*
_output_shapes
: *
dtype0*
valueB
 *
„#<20
.batch_normalization_30/AssignMovingAvg_1/decayЁ
7batch_normalization_30/AssignMovingAvg_1/ReadVariableOpReadVariableOp.batch_normalization_30_assignmovingavg_1_81723*
_output_shapes
:*
dtype029
7batch_normalization_30/AssignMovingAvg_1/ReadVariableOpн
,batch_normalization_30/AssignMovingAvg_1/subSub?batch_normalization_30/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_30/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@batch_normalization_30/AssignMovingAvg_1/81723*
_output_shapes
:2.
,batch_normalization_30/AssignMovingAvg_1/subд
,batch_normalization_30/AssignMovingAvg_1/mulMul0batch_normalization_30/AssignMovingAvg_1/sub:z:07batch_normalization_30/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@batch_normalization_30/AssignMovingAvg_1/81723*
_output_shapes
:2.
,batch_normalization_30/AssignMovingAvg_1/mul√
<batch_normalization_30/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp.batch_normalization_30_assignmovingavg_1_817230batch_normalization_30/AssignMovingAvg_1/mul:z:08^batch_normalization_30/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*A
_class7
53loc:@batch_normalization_30/AssignMovingAvg_1/81723*
_output_shapes
 *
dtype02>
<batch_normalization_30/AssignMovingAvg_1/AssignSubVariableOp»
*batch_normalization_30/Cast/ReadVariableOpReadVariableOp3batch_normalization_30_cast_readvariableop_resource*
_output_shapes
:*
dtype02,
*batch_normalization_30/Cast/ReadVariableOpќ
,batch_normalization_30/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_30_cast_1_readvariableop_resource*
_output_shapes
:*
dtype02.
,batch_normalization_30/Cast_1/ReadVariableOpХ
&batch_normalization_30/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2(
&batch_normalization_30/batchnorm/add/yё
$batch_normalization_30/batchnorm/addAddV21batch_normalization_30/moments/Squeeze_1:output:0/batch_normalization_30/batchnorm/add/y:output:0*
T0*
_output_shapes
:2&
$batch_normalization_30/batchnorm/add®
&batch_normalization_30/batchnorm/RsqrtRsqrt(batch_normalization_30/batchnorm/add:z:0*
T0*
_output_shapes
:2(
&batch_normalization_30/batchnorm/RsqrtЏ
$batch_normalization_30/batchnorm/mulMul*batch_normalization_30/batchnorm/Rsqrt:y:04batch_normalization_30/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2&
$batch_normalization_30/batchnorm/mulџ
&batch_normalization_30/batchnorm/mul_1Mul&leaky_re_lu_15/LeakyRelu:activations:0(batch_normalization_30/batchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€2(
&batch_normalization_30/batchnorm/mul_1„
&batch_normalization_30/batchnorm/mul_2Mul/batch_normalization_30/moments/Squeeze:output:0(batch_normalization_30/batchnorm/mul:z:0*
T0*
_output_shapes
:2(
&batch_normalization_30/batchnorm/mul_2Ў
$batch_normalization_30/batchnorm/subSub2batch_normalization_30/Cast/ReadVariableOp:value:0*batch_normalization_30/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2&
$batch_normalization_30/batchnorm/subб
&batch_normalization_30/batchnorm/add_1AddV2*batch_normalization_30/batchnorm/mul_1:z:0(batch_normalization_30/batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2(
&batch_normalization_30/batchnorm/add_1®
dense_46/MatMul/ReadVariableOpReadVariableOp'dense_46_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_46/MatMul/ReadVariableOp≤
dense_46/MatMulMatMul*batch_normalization_30/batchnorm/add_1:z:0&dense_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_46/MatMulІ
dense_46/BiasAdd/ReadVariableOpReadVariableOp(dense_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_46/BiasAdd/ReadVariableOp•
dense_46/BiasAddBiasAdddense_46/MatMul:product:0'dense_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_46/BiasAddЩ
leaky_re_lu_15/LeakyRelu_1	LeakyReludense_46/BiasAdd:output:0*'
_output_shapes
:€€€€€€€€€*
alpha%Ќћћ=2
leaky_re_lu_15/LeakyRelu_1Є
5batch_normalization_31/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_31/moments/mean/reduction_indicesц
#batch_normalization_31/moments/meanMean(leaky_re_lu_15/LeakyRelu_1:activations:0>batch_normalization_31/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2%
#batch_normalization_31/moments/meanЅ
+batch_normalization_31/moments/StopGradientStopGradient,batch_normalization_31/moments/mean:output:0*
T0*
_output_shapes

:2-
+batch_normalization_31/moments/StopGradientЛ
0batch_normalization_31/moments/SquaredDifferenceSquaredDifference(leaky_re_lu_15/LeakyRelu_1:activations:04batch_normalization_31/moments/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€22
0batch_normalization_31/moments/SquaredDifferenceј
9batch_normalization_31/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_31/moments/variance/reduction_indicesО
'batch_normalization_31/moments/varianceMean4batch_normalization_31/moments/SquaredDifference:z:0Bbatch_normalization_31/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2)
'batch_normalization_31/moments/variance≈
&batch_normalization_31/moments/SqueezeSqueeze,batch_normalization_31/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2(
&batch_normalization_31/moments/SqueezeЌ
(batch_normalization_31/moments/Squeeze_1Squeeze0batch_normalization_31/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2*
(batch_normalization_31/moments/Squeeze_1Р
,batch_normalization_31/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*?
_class5
31loc:@batch_normalization_31/AssignMovingAvg/81756*
_output_shapes
: *
dtype0*
valueB
 *
„#<2.
,batch_normalization_31/AssignMovingAvg/decay„
5batch_normalization_31/AssignMovingAvg/ReadVariableOpReadVariableOp,batch_normalization_31_assignmovingavg_81756*
_output_shapes
:*
dtype027
5batch_normalization_31/AssignMovingAvg/ReadVariableOpг
*batch_normalization_31/AssignMovingAvg/subSub=batch_normalization_31/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_31/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*?
_class5
31loc:@batch_normalization_31/AssignMovingAvg/81756*
_output_shapes
:2,
*batch_normalization_31/AssignMovingAvg/subЏ
*batch_normalization_31/AssignMovingAvg/mulMul.batch_normalization_31/AssignMovingAvg/sub:z:05batch_normalization_31/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*?
_class5
31loc:@batch_normalization_31/AssignMovingAvg/81756*
_output_shapes
:2,
*batch_normalization_31/AssignMovingAvg/mulЈ
:batch_normalization_31/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp,batch_normalization_31_assignmovingavg_81756.batch_normalization_31/AssignMovingAvg/mul:z:06^batch_normalization_31/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*?
_class5
31loc:@batch_normalization_31/AssignMovingAvg/81756*
_output_shapes
 *
dtype02<
:batch_normalization_31/AssignMovingAvg/AssignSubVariableOpЦ
.batch_normalization_31/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*A
_class7
53loc:@batch_normalization_31/AssignMovingAvg_1/81762*
_output_shapes
: *
dtype0*
valueB
 *
„#<20
.batch_normalization_31/AssignMovingAvg_1/decayЁ
7batch_normalization_31/AssignMovingAvg_1/ReadVariableOpReadVariableOp.batch_normalization_31_assignmovingavg_1_81762*
_output_shapes
:*
dtype029
7batch_normalization_31/AssignMovingAvg_1/ReadVariableOpн
,batch_normalization_31/AssignMovingAvg_1/subSub?batch_normalization_31/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_31/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@batch_normalization_31/AssignMovingAvg_1/81762*
_output_shapes
:2.
,batch_normalization_31/AssignMovingAvg_1/subд
,batch_normalization_31/AssignMovingAvg_1/mulMul0batch_normalization_31/AssignMovingAvg_1/sub:z:07batch_normalization_31/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@batch_normalization_31/AssignMovingAvg_1/81762*
_output_shapes
:2.
,batch_normalization_31/AssignMovingAvg_1/mul√
<batch_normalization_31/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp.batch_normalization_31_assignmovingavg_1_817620batch_normalization_31/AssignMovingAvg_1/mul:z:08^batch_normalization_31/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*A
_class7
53loc:@batch_normalization_31/AssignMovingAvg_1/81762*
_output_shapes
 *
dtype02>
<batch_normalization_31/AssignMovingAvg_1/AssignSubVariableOp»
*batch_normalization_31/Cast/ReadVariableOpReadVariableOp3batch_normalization_31_cast_readvariableop_resource*
_output_shapes
:*
dtype02,
*batch_normalization_31/Cast/ReadVariableOpќ
,batch_normalization_31/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_31_cast_1_readvariableop_resource*
_output_shapes
:*
dtype02.
,batch_normalization_31/Cast_1/ReadVariableOpХ
&batch_normalization_31/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2(
&batch_normalization_31/batchnorm/add/yё
$batch_normalization_31/batchnorm/addAddV21batch_normalization_31/moments/Squeeze_1:output:0/batch_normalization_31/batchnorm/add/y:output:0*
T0*
_output_shapes
:2&
$batch_normalization_31/batchnorm/add®
&batch_normalization_31/batchnorm/RsqrtRsqrt(batch_normalization_31/batchnorm/add:z:0*
T0*
_output_shapes
:2(
&batch_normalization_31/batchnorm/RsqrtЏ
$batch_normalization_31/batchnorm/mulMul*batch_normalization_31/batchnorm/Rsqrt:y:04batch_normalization_31/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2&
$batch_normalization_31/batchnorm/mulЁ
&batch_normalization_31/batchnorm/mul_1Mul(leaky_re_lu_15/LeakyRelu_1:activations:0(batch_normalization_31/batchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€2(
&batch_normalization_31/batchnorm/mul_1„
&batch_normalization_31/batchnorm/mul_2Mul/batch_normalization_31/moments/Squeeze:output:0(batch_normalization_31/batchnorm/mul:z:0*
T0*
_output_shapes
:2(
&batch_normalization_31/batchnorm/mul_2Ў
$batch_normalization_31/batchnorm/subSub2batch_normalization_31/Cast/ReadVariableOp:value:0*batch_normalization_31/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2&
$batch_normalization_31/batchnorm/subб
&batch_normalization_31/batchnorm/add_1AddV2*batch_normalization_31/batchnorm/mul_1:z:0(batch_normalization_31/batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2(
&batch_normalization_31/batchnorm/add_1®
dense_47/MatMul/ReadVariableOpReadVariableOp'dense_47_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_47/MatMul/ReadVariableOp≤
dense_47/MatMulMatMul*batch_normalization_31/batchnorm/add_1:z:0&dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_47/MatMulІ
dense_47/BiasAdd/ReadVariableOpReadVariableOp(dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_47/BiasAdd/ReadVariableOp•
dense_47/BiasAddBiasAdddense_47/MatMul:product:0'dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_47/BiasAddі	
IdentityIdentitydense_47/BiasAdd:output:0;^batch_normalization_30/AssignMovingAvg/AssignSubVariableOp6^batch_normalization_30/AssignMovingAvg/ReadVariableOp=^batch_normalization_30/AssignMovingAvg_1/AssignSubVariableOp8^batch_normalization_30/AssignMovingAvg_1/ReadVariableOp+^batch_normalization_30/Cast/ReadVariableOp-^batch_normalization_30/Cast_1/ReadVariableOp;^batch_normalization_31/AssignMovingAvg/AssignSubVariableOp6^batch_normalization_31/AssignMovingAvg/ReadVariableOp=^batch_normalization_31/AssignMovingAvg_1/AssignSubVariableOp8^batch_normalization_31/AssignMovingAvg_1/ReadVariableOp+^batch_normalization_31/Cast/ReadVariableOp-^batch_normalization_31/Cast_1/ReadVariableOp ^dense_45/BiasAdd/ReadVariableOp^dense_45/MatMul/ReadVariableOp ^dense_46/BiasAdd/ReadVariableOp^dense_46/MatMul/ReadVariableOp ^dense_47/BiasAdd/ReadVariableOp^dense_47/MatMul/ReadVariableOp#^gat_conv_30/Reshape/ReadVariableOp%^gat_conv_30/transpose/ReadVariableOp'^gat_conv_30/transpose_1/ReadVariableOp#^gat_conv_31/Reshape/ReadVariableOp%^gat_conv_31/transpose/ReadVariableOp'^gat_conv_31/transpose_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*ѓ
_input_shapesЭ
Ъ:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€::€€€€€€€€€::::::::::::::::::::2x
:batch_normalization_30/AssignMovingAvg/AssignSubVariableOp:batch_normalization_30/AssignMovingAvg/AssignSubVariableOp2n
5batch_normalization_30/AssignMovingAvg/ReadVariableOp5batch_normalization_30/AssignMovingAvg/ReadVariableOp2|
<batch_normalization_30/AssignMovingAvg_1/AssignSubVariableOp<batch_normalization_30/AssignMovingAvg_1/AssignSubVariableOp2r
7batch_normalization_30/AssignMovingAvg_1/ReadVariableOp7batch_normalization_30/AssignMovingAvg_1/ReadVariableOp2X
*batch_normalization_30/Cast/ReadVariableOp*batch_normalization_30/Cast/ReadVariableOp2\
,batch_normalization_30/Cast_1/ReadVariableOp,batch_normalization_30/Cast_1/ReadVariableOp2x
:batch_normalization_31/AssignMovingAvg/AssignSubVariableOp:batch_normalization_31/AssignMovingAvg/AssignSubVariableOp2n
5batch_normalization_31/AssignMovingAvg/ReadVariableOp5batch_normalization_31/AssignMovingAvg/ReadVariableOp2|
<batch_normalization_31/AssignMovingAvg_1/AssignSubVariableOp<batch_normalization_31/AssignMovingAvg_1/AssignSubVariableOp2r
7batch_normalization_31/AssignMovingAvg_1/ReadVariableOp7batch_normalization_31/AssignMovingAvg_1/ReadVariableOp2X
*batch_normalization_31/Cast/ReadVariableOp*batch_normalization_31/Cast/ReadVariableOp2\
,batch_normalization_31/Cast_1/ReadVariableOp,batch_normalization_31/Cast_1/ReadVariableOp2B
dense_45/BiasAdd/ReadVariableOpdense_45/BiasAdd/ReadVariableOp2@
dense_45/MatMul/ReadVariableOpdense_45/MatMul/ReadVariableOp2B
dense_46/BiasAdd/ReadVariableOpdense_46/BiasAdd/ReadVariableOp2@
dense_46/MatMul/ReadVariableOpdense_46/MatMul/ReadVariableOp2B
dense_47/BiasAdd/ReadVariableOpdense_47/BiasAdd/ReadVariableOp2@
dense_47/MatMul/ReadVariableOpdense_47/MatMul/ReadVariableOp2H
"gat_conv_30/Reshape/ReadVariableOp"gat_conv_30/Reshape/ReadVariableOp2L
$gat_conv_30/transpose/ReadVariableOp$gat_conv_30/transpose/ReadVariableOp2P
&gat_conv_30/transpose_1/ReadVariableOp&gat_conv_30/transpose_1/ReadVariableOp2H
"gat_conv_31/Reshape/ReadVariableOp"gat_conv_31/Reshape/ReadVariableOp2L
$gat_conv_31/transpose/ReadVariableOp$gat_conv_31/transpose/ReadVariableOp2P
&gat_conv_31/transpose_1/ReadVariableOp&gat_conv_31/transpose_1/ReadVariableOp:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:MI
#
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/2
Л/
Ѓ
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_80105

inputs
assignmovingavg_80080
assignmovingavg_1_80086 
cast_readvariableop_resource"
cast_1_readvariableop_resource
identityИҐ#AssignMovingAvg/AssignSubVariableOpҐAssignMovingAvg/ReadVariableOpҐ%AssignMovingAvg_1/AssignSubVariableOpҐ AssignMovingAvg_1/ReadVariableOpҐCast/ReadVariableOpҐCast_1/ReadVariableOpК
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indicesП
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:2
moments/StopGradient§
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
moments/SquaredDifferenceТ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices≤
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/varianceА
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/SqueezeИ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1Ћ
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/80080*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg/decayТ
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_80080*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOpр
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/80080*
_output_shapes
:2
AssignMovingAvg/subз
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/80080*
_output_shapes
:2
AssignMovingAvg/mul≠
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_80080AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/80080*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp—
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/80086*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg_1/decayШ
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_80086*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpъ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/80086*
_output_shapes
:2
AssignMovingAvg_1/subс
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/80086*
_output_shapes
:2
AssignMovingAvg_1/mulє
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_80086AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/80086*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpГ
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype02
Cast/ReadVariableOpЙ
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype02
Cast_1/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yВ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt~
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2|
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/subЕ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
batchnorm/add_1І
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ё	
є
+__inference_gat_conv_30_layer_call_fn_82590
inputs_0

inputs	
inputs_1
inputs_2	
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCall©
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2unknown	unknown_0	unknown_1*
Tin
	2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€P*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *O
fJRH
F__inference_gat_conv_30_layer_call_and_return_conditional_losses_804742
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€P2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
С	
№
C__inference_dense_45_layer_call_and_return_conditional_losses_80907

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€(::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€(
 
_user_specified_nameinputs
÷
w
M__inference_global_avg_pool_15_layer_call_and_return_conditional_losses_80871

inputs
inputs_1	
identity}
SegmentMeanSegmentMeaninputsinputs_1*
T0*
Tindices0	*'
_output_shapes
:€€€€€€€€€2
SegmentMeanh
IdentityIdentitySegmentMean:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*5
_input_shapes$
":€€€€€€€€€:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
С	
№
C__inference_dense_46_layer_call_and_return_conditional_losses_80969

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
¶
^
2__inference_global_sum_pool_15_layer_call_fn_82959
inputs_0
inputs_1	
identityЁ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *V
fQRO
M__inference_global_sum_pool_15_layer_call_and_return_conditional_losses_808862
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*5
_input_shapes$
":€€€€€€€€€:€€€€€€€€€:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1
Л
№
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_83072

inputs 
cast_readvariableop_resource"
cast_1_readvariableop_resource"
cast_2_readvariableop_resource"
cast_3_readvariableop_resource
identityИҐCast/ReadVariableOpҐCast_1/ReadVariableOpҐCast_2/ReadVariableOpҐCast_3/ReadVariableOpГ
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype02
Cast/ReadVariableOpЙ
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype02
Cast_1/ReadVariableOpЙ
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
:*
dtype02
Cast_2/ReadVariableOpЙ
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
:*
dtype02
Cast_3/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yЕ
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt~
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
batchnorm/mul_1~
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2~
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/subЕ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
batchnorm/add_1≈
IdentityIdentitybatchnorm/add_1:z:0^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::::2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Џ
y
M__inference_global_sum_pool_15_layer_call_and_return_conditional_losses_82953
inputs_0
inputs_1	
identity|

SegmentSum
SegmentSuminputs_0inputs_1*
T0*
Tindices0	*'
_output_shapes
:€€€€€€€€€2

SegmentSumg
IdentityIdentitySegmentSum:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*5
_input_shapes$
":€€€€€€€€€:€€€€€€€€€:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1
”О
Џ
C__inference_model_15_layer_call_and_return_conditional_losses_82147
inputs_0

inputs	
inputs_1
inputs_2	

inputs_2_0	/
+gat_conv_30_reshape_readvariableop_resource1
-gat_conv_30_transpose_readvariableop_resource3
/gat_conv_30_transpose_1_readvariableop_resource/
+gat_conv_31_reshape_readvariableop_resource1
-gat_conv_31_transpose_readvariableop_resource3
/gat_conv_31_transpose_1_readvariableop_resource+
'dense_45_matmul_readvariableop_resource,
(dense_45_biasadd_readvariableop_resource7
3batch_normalization_30_cast_readvariableop_resource9
5batch_normalization_30_cast_1_readvariableop_resource9
5batch_normalization_30_cast_2_readvariableop_resource9
5batch_normalization_30_cast_3_readvariableop_resource+
'dense_46_matmul_readvariableop_resource,
(dense_46_biasadd_readvariableop_resource7
3batch_normalization_31_cast_readvariableop_resource9
5batch_normalization_31_cast_1_readvariableop_resource9
5batch_normalization_31_cast_2_readvariableop_resource9
5batch_normalization_31_cast_3_readvariableop_resource+
'dense_47_matmul_readvariableop_resource,
(dense_47_biasadd_readvariableop_resource
identityИҐ*batch_normalization_30/Cast/ReadVariableOpҐ,batch_normalization_30/Cast_1/ReadVariableOpҐ,batch_normalization_30/Cast_2/ReadVariableOpҐ,batch_normalization_30/Cast_3/ReadVariableOpҐ*batch_normalization_31/Cast/ReadVariableOpҐ,batch_normalization_31/Cast_1/ReadVariableOpҐ,batch_normalization_31/Cast_2/ReadVariableOpҐ,batch_normalization_31/Cast_3/ReadVariableOpҐdense_45/BiasAdd/ReadVariableOpҐdense_45/MatMul/ReadVariableOpҐdense_46/BiasAdd/ReadVariableOpҐdense_46/MatMul/ReadVariableOpҐdense_47/BiasAdd/ReadVariableOpҐdense_47/MatMul/ReadVariableOpҐ"gat_conv_30/Reshape/ReadVariableOpҐ$gat_conv_30/transpose/ReadVariableOpҐ&gat_conv_30/transpose_1/ReadVariableOpҐ"gat_conv_31/Reshape/ReadVariableOpҐ$gat_conv_31/transpose/ReadVariableOpҐ&gat_conv_31/transpose_1/ReadVariableOpЄ
"gat_conv_30/Reshape/ReadVariableOpReadVariableOp+gat_conv_30_reshape_readvariableop_resource*"
_output_shapes
:
*
dtype02$
"gat_conv_30/Reshape/ReadVariableOpЗ
gat_conv_30/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   2
gat_conv_30/Reshape/shapeЃ
gat_conv_30/ReshapeReshape*gat_conv_30/Reshape/ReadVariableOp:value:0"gat_conv_30/Reshape/shape:output:0*
T0*
_output_shapes

:P2
gat_conv_30/ReshapeЊ
$gat_conv_30/transpose/ReadVariableOpReadVariableOp-gat_conv_30_transpose_readvariableop_resource*"
_output_shapes
:
*
dtype02&
$gat_conv_30/transpose/ReadVariableOpН
gat_conv_30/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gat_conv_30/transpose/permї
gat_conv_30/transpose	Transpose,gat_conv_30/transpose/ReadVariableOp:value:0#gat_conv_30/transpose/perm:output:0*
T0*"
_output_shapes
:
2
gat_conv_30/transposeƒ
&gat_conv_30/transpose_1/ReadVariableOpReadVariableOp/gat_conv_30_transpose_1_readvariableop_resource*"
_output_shapes
:
*
dtype02(
&gat_conv_30/transpose_1/ReadVariableOpС
gat_conv_30/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gat_conv_30/transpose_1/perm√
gat_conv_30/transpose_1	Transpose.gat_conv_30/transpose_1/ReadVariableOp:value:0%gat_conv_30/transpose_1/perm:output:0*
T0*"
_output_shapes
:
2
gat_conv_30/transpose_1n
gat_conv_30/ShapeShapeinputs_0*
T0*
_output_shapes
:*
out_type0	2
gat_conv_30/ShapeМ
gat_conv_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
gat_conv_30/strided_slice/stackР
!gat_conv_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!gat_conv_30/strided_slice/stack_1Р
!gat_conv_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!gat_conv_30/strided_slice/stack_2™
gat_conv_30/strided_sliceStridedSlicegat_conv_30/Shape:output:0(gat_conv_30/strided_slice/stack:output:0*gat_conv_30/strided_slice/stack_1:output:0*gat_conv_30/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
gat_conv_30/strided_sliceЧ
!gat_conv_30/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!gat_conv_30/strided_slice_1/stackЫ
#gat_conv_30/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#gat_conv_30/strided_slice_1/stack_1Ы
#gat_conv_30/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_30/strided_slice_1/stack_2¬
gat_conv_30/strided_slice_1StridedSliceinputs*gat_conv_30/strided_slice_1/stack:output:0,gat_conv_30/strided_slice_1/stack_1:output:0,gat_conv_30/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2
gat_conv_30/strided_slice_1Ч
!gat_conv_30/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!gat_conv_30/strided_slice_2/stackЫ
#gat_conv_30/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#gat_conv_30/strided_slice_2/stack_1Ы
#gat_conv_30/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_30/strided_slice_2/stack_2¬
gat_conv_30/strided_slice_2StridedSliceinputs*gat_conv_30/strided_slice_2/stack:output:0,gat_conv_30/strided_slice_2/stack_1:output:0,gat_conv_30/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2
gat_conv_30/strided_slice_2“
gat_conv_30/NotEqualNotEqual$gat_conv_30/strided_slice_1:output:0$gat_conv_30/strided_slice_2:output:0*
T0	*#
_output_shapes
:€€€€€€€€€*
incompatible_shape_error( 2
gat_conv_30/NotEqual£
gat_conv_30/EnsureShapeEnsureShapegat_conv_30/NotEqual:z:0*
T0
*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€2
gat_conv_30/EnsureShapet
gat_conv_30/range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
gat_conv_30/range/startt
gat_conv_30/range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2
gat_conv_30/range/delta»
gat_conv_30/rangeRange gat_conv_30/range/start:output:0"gat_conv_30/strided_slice:output:0 gat_conv_30/range/delta:output:0*

Tidx0	*#
_output_shapes
:€€€€€€€€€2
gat_conv_30/rangeЧ
!gat_conv_30/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!gat_conv_30/strided_slice_3/stackЫ
#gat_conv_30/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gat_conv_30/strided_slice_3/stack_1Ы
#gat_conv_30/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_30/strided_slice_3/stack_2д
gat_conv_30/strided_slice_3StridedSlicegat_conv_30/range:output:0*gat_conv_30/strided_slice_3/stack:output:0,gat_conv_30/strided_slice_3/stack_1:output:0,gat_conv_30/strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2
gat_conv_30/strided_slice_3z
gat_conv_30/Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2
gat_conv_30/Repeat/repeatsП
gat_conv_30/Repeat/CastCast#gat_conv_30/Repeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
gat_conv_30/Repeat/CastИ
gat_conv_30/Repeat/ShapeShape$gat_conv_30/strided_slice_3:output:0*
T0	*
_output_shapes
:2
gat_conv_30/Repeat/ShapeЗ
 gat_conv_30/Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2"
 gat_conv_30/Repeat/Reshape/shapeЛ
"gat_conv_30/Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2$
"gat_conv_30/Repeat/Reshape/shape_1Ѓ
gat_conv_30/Repeat/ReshapeReshapegat_conv_30/Repeat/Cast:y:0+gat_conv_30/Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gat_conv_30/Repeat/ReshapeИ
!gat_conv_30/Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!gat_conv_30/Repeat/ExpandDims/dim‘
gat_conv_30/Repeat/ExpandDims
ExpandDims$gat_conv_30/strided_slice_3:output:0*gat_conv_30/Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2
gat_conv_30/Repeat/ExpandDimsМ
#gat_conv_30/Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2%
#gat_conv_30/Repeat/Tile/multiples/0М
#gat_conv_30/Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#gat_conv_30/Repeat/Tile/multiples/1э
!gat_conv_30/Repeat/Tile/multiplesPack,gat_conv_30/Repeat/Tile/multiples/0:output:0,gat_conv_30/Repeat/Tile/multiples/1:output:0#gat_conv_30/Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2#
!gat_conv_30/Repeat/Tile/multiplesƒ
gat_conv_30/Repeat/TileTile&gat_conv_30/Repeat/ExpandDims:output:0*gat_conv_30/Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2
gat_conv_30/Repeat/TileЪ
&gat_conv_30/Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&gat_conv_30/Repeat/strided_slice/stackЮ
(gat_conv_30/Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(gat_conv_30/Repeat/strided_slice/stack_1Ю
(gat_conv_30/Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(gat_conv_30/Repeat/strided_slice/stack_2“
 gat_conv_30/Repeat/strided_sliceStridedSlice!gat_conv_30/Repeat/Shape:output:0/gat_conv_30/Repeat/strided_slice/stack:output:01gat_conv_30/Repeat/strided_slice/stack_1:output:01gat_conv_30/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2"
 gat_conv_30/Repeat/strided_sliceЮ
(gat_conv_30/Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(gat_conv_30/Repeat/strided_slice_1/stackҐ
*gat_conv_30/Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*gat_conv_30/Repeat/strided_slice_1/stack_1Ґ
*gat_conv_30/Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gat_conv_30/Repeat/strided_slice_1/stack_2ё
"gat_conv_30/Repeat/strided_slice_1StridedSlice!gat_conv_30/Repeat/Shape:output:01gat_conv_30/Repeat/strided_slice_1/stack:output:03gat_conv_30/Repeat/strided_slice_1/stack_1:output:03gat_conv_30/Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"gat_conv_30/Repeat/strided_slice_1™
gat_conv_30/Repeat/mulMul#gat_conv_30/Repeat/Reshape:output:0+gat_conv_30/Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2
gat_conv_30/Repeat/mulЮ
(gat_conv_30/Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(gat_conv_30/Repeat/strided_slice_2/stackҐ
*gat_conv_30/Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2,
*gat_conv_30/Repeat/strided_slice_2/stack_1Ґ
*gat_conv_30/Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gat_conv_30/Repeat/strided_slice_2/stack_2Ў
"gat_conv_30/Repeat/strided_slice_2StridedSlice!gat_conv_30/Repeat/Shape:output:01gat_conv_30/Repeat/strided_slice_2/stack:output:03gat_conv_30/Repeat/strided_slice_2/stack_1:output:03gat_conv_30/Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2$
"gat_conv_30/Repeat/strided_slice_2Ъ
"gat_conv_30/Repeat/concat/values_1Packgat_conv_30/Repeat/mul:z:0*
N*
T0*
_output_shapes
:2$
"gat_conv_30/Repeat/concat/values_1В
gat_conv_30/Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
gat_conv_30/Repeat/concat/axisЮ
gat_conv_30/Repeat/concatConcatV2)gat_conv_30/Repeat/strided_slice:output:0+gat_conv_30/Repeat/concat/values_1:output:0+gat_conv_30/Repeat/strided_slice_2:output:0'gat_conv_30/Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2
gat_conv_30/Repeat/concat»
gat_conv_30/Repeat/Reshape_1Reshape gat_conv_30/Repeat/Tile:output:0"gat_conv_30/Repeat/concat:output:0*
T0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
gat_conv_30/Repeat/Reshape_1v
gat_conv_30/boolean_mask/ShapeShapeinputs*
T0	*
_output_shapes
:2 
gat_conv_30/boolean_mask/Shape¶
,gat_conv_30/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,gat_conv_30/boolean_mask/strided_slice/stack™
.gat_conv_30/boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.gat_conv_30/boolean_mask/strided_slice/stack_1™
.gat_conv_30/boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.gat_conv_30/boolean_mask/strided_slice/stack_2д
&gat_conv_30/boolean_mask/strided_sliceStridedSlice'gat_conv_30/boolean_mask/Shape:output:05gat_conv_30/boolean_mask/strided_slice/stack:output:07gat_conv_30/boolean_mask/strided_slice/stack_1:output:07gat_conv_30/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2(
&gat_conv_30/boolean_mask/strided_sliceђ
/gat_conv_30/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 21
/gat_conv_30/boolean_mask/Prod/reduction_indices“
gat_conv_30/boolean_mask/ProdProd/gat_conv_30/boolean_mask/strided_slice:output:08gat_conv_30/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2
gat_conv_30/boolean_mask/Prodz
 gat_conv_30/boolean_mask/Shape_1Shapeinputs*
T0	*
_output_shapes
:2"
 gat_conv_30/boolean_mask/Shape_1™
.gat_conv_30/boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.gat_conv_30/boolean_mask/strided_slice_1/stackЃ
0gat_conv_30/boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 22
0gat_conv_30/boolean_mask/strided_slice_1/stack_1Ѓ
0gat_conv_30/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0gat_conv_30/boolean_mask/strided_slice_1/stack_2А
(gat_conv_30/boolean_mask/strided_slice_1StridedSlice)gat_conv_30/boolean_mask/Shape_1:output:07gat_conv_30/boolean_mask/strided_slice_1/stack:output:09gat_conv_30/boolean_mask/strided_slice_1/stack_1:output:09gat_conv_30/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2*
(gat_conv_30/boolean_mask/strided_slice_1z
 gat_conv_30/boolean_mask/Shape_2Shapeinputs*
T0	*
_output_shapes
:2"
 gat_conv_30/boolean_mask/Shape_2™
.gat_conv_30/boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:20
.gat_conv_30/boolean_mask/strided_slice_2/stackЃ
0gat_conv_30/boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 22
0gat_conv_30/boolean_mask/strided_slice_2/stack_1Ѓ
0gat_conv_30/boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0gat_conv_30/boolean_mask/strided_slice_2/stack_2А
(gat_conv_30/boolean_mask/strided_slice_2StridedSlice)gat_conv_30/boolean_mask/Shape_2:output:07gat_conv_30/boolean_mask/strided_slice_2/stack:output:09gat_conv_30/boolean_mask/strided_slice_2/stack_1:output:09gat_conv_30/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2*
(gat_conv_30/boolean_mask/strided_slice_2≤
(gat_conv_30/boolean_mask/concat/values_1Pack&gat_conv_30/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2*
(gat_conv_30/boolean_mask/concat/values_1О
$gat_conv_30/boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$gat_conv_30/boolean_mask/concat/axisƒ
gat_conv_30/boolean_mask/concatConcatV21gat_conv_30/boolean_mask/strided_slice_1:output:01gat_conv_30/boolean_mask/concat/values_1:output:01gat_conv_30/boolean_mask/strided_slice_2:output:0-gat_conv_30/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2!
gat_conv_30/boolean_mask/concat≥
 gat_conv_30/boolean_mask/ReshapeReshapeinputs(gat_conv_30/boolean_mask/concat:output:0*
T0	*'
_output_shapes
:€€€€€€€€€2"
 gat_conv_30/boolean_mask/ReshapeІ
(gat_conv_30/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2*
(gat_conv_30/boolean_mask/Reshape_1/shape÷
"gat_conv_30/boolean_mask/Reshape_1Reshape gat_conv_30/EnsureShape:output:01gat_conv_30/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:€€€€€€€€€2$
"gat_conv_30/boolean_mask/Reshape_1Я
gat_conv_30/boolean_mask/WhereWhere+gat_conv_30/boolean_mask/Reshape_1:output:0*'
_output_shapes
:€€€€€€€€€2 
gat_conv_30/boolean_mask/WhereЉ
 gat_conv_30/boolean_mask/SqueezeSqueeze&gat_conv_30/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:€€€€€€€€€*
squeeze_dims
2"
 gat_conv_30/boolean_mask/SqueezeТ
&gat_conv_30/boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&gat_conv_30/boolean_mask/GatherV2/axisЃ
!gat_conv_30/boolean_mask/GatherV2GatherV2)gat_conv_30/boolean_mask/Reshape:output:0)gat_conv_30/boolean_mask/Squeeze:output:0/gat_conv_30/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:€€€€€€€€€2#
!gat_conv_30/boolean_mask/GatherV2t
gat_conv_30/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_30/concat/axisд
gat_conv_30/concatConcatV2*gat_conv_30/boolean_mask/GatherV2:output:0%gat_conv_30/Repeat/Reshape_1:output:0 gat_conv_30/concat/axis:output:0*
N*
T0	*'
_output_shapes
:€€€€€€€€€2
gat_conv_30/concatЧ
!gat_conv_30/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!gat_conv_30/strided_slice_4/stackЫ
#gat_conv_30/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#gat_conv_30/strided_slice_4/stack_1Ы
#gat_conv_30/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_30/strided_slice_4/stack_2д
gat_conv_30/strided_slice_4StridedSlicegat_conv_30/concat:output:0*gat_conv_30/strided_slice_4/stack:output:0,gat_conv_30/strided_slice_4/stack_1:output:0,gat_conv_30/strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
gat_conv_30/strided_slice_4О
gat_conv_30/ones_like/ShapeShape$gat_conv_30/strided_slice_4:output:0*
T0	*
_output_shapes
:2
gat_conv_30/ones_like/Shape|
gat_conv_30/ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
gat_conv_30/ones_like/Const∞
gat_conv_30/ones_likeFill$gat_conv_30/ones_like/Shape:output:0$gat_conv_30/ones_like/Const:output:0*
T0	*#
_output_shapes
:€€€€€€€€€2
gat_conv_30/ones_likeћ
%gat_conv_30/SparseReorder/input_shapePack"gat_conv_30/strided_slice:output:0"gat_conv_30/strided_slice:output:0*
N*
T0	*
_output_shapes
:2'
%gat_conv_30/SparseReorder/input_shapeх
gat_conv_30/SparseReorderSparseReordergat_conv_30/concat:output:0gat_conv_30/ones_like:output:0.gat_conv_30/SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":€€€€€€€€€:€€€€€€€€€2
gat_conv_30/SparseReorderЧ
!gat_conv_30/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"    ю€€€2#
!gat_conv_30/strided_slice_5/stackЫ
#gat_conv_30/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    €€€€2%
#gat_conv_30/strided_slice_5/stack_1Ы
#gat_conv_30/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_30/strided_slice_5/stack_2у
gat_conv_30/strided_slice_5StridedSlice*gat_conv_30/SparseReorder:output_indices:0*gat_conv_30/strided_slice_5/stack:output:0,gat_conv_30/strided_slice_5/stack_1:output:0,gat_conv_30/strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
gat_conv_30/strided_slice_5Ч
!gat_conv_30/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"    €€€€2#
!gat_conv_30/strided_slice_6/stackЫ
#gat_conv_30/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gat_conv_30/strided_slice_6/stack_1Ы
#gat_conv_30/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_30/strided_slice_6/stack_2у
gat_conv_30/strided_slice_6StridedSlice*gat_conv_30/SparseReorder:output_indices:0*gat_conv_30/strided_slice_6/stack:output:0,gat_conv_30/strided_slice_6/stack_1:output:0,gat_conv_30/strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
gat_conv_30/strided_slice_6М
gat_conv_30/MatMulMatMulinputs_0gat_conv_30/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€P2
gat_conv_30/MatMulП
gat_conv_30/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€
      2
gat_conv_30/Reshape_1/shape≥
gat_conv_30/Reshape_1Reshapegat_conv_30/MatMul:product:0$gat_conv_30/Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€
2
gat_conv_30/Reshape_1Ъ
gat_conv_30/mulMulgat_conv_30/Reshape_1:output:0gat_conv_30/transpose:y:0*
T0*+
_output_shapes
:€€€€€€€€€
2
gat_conv_30/mulС
!gat_conv_30/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2#
!gat_conv_30/Sum/reduction_indicesЬ
gat_conv_30/SumSumgat_conv_30/mul:z:0*gat_conv_30/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/Sumx
gat_conv_30/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_30/GatherV2/axisс
gat_conv_30/GatherV2GatherV2gat_conv_30/Sum:output:0$gat_conv_30/strided_slice_5:output:0"gat_conv_30/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/GatherV2†
gat_conv_30/mul_1Mulgat_conv_30/Reshape_1:output:0gat_conv_30/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€
2
gat_conv_30/mul_1Х
#gat_conv_30/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2%
#gat_conv_30/Sum_1/reduction_indices§
gat_conv_30/Sum_1Sumgat_conv_30/mul_1:z:0,gat_conv_30/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/Sum_1|
gat_conv_30/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_30/GatherV2_1/axisщ
gat_conv_30/GatherV2_1GatherV2gat_conv_30/Sum_1:output:0$gat_conv_30/strided_slice_6:output:0$gat_conv_30/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/GatherV2_1Э
gat_conv_30/addAddV2gat_conv_30/GatherV2:output:0gat_conv_30/GatherV2_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/addy
gat_conv_30/LeakyRelu	LeakyRelugat_conv_30/add:z:0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/LeakyReluЫ
gat_conv_30/UnsortedSegmentMaxUnsortedSegmentMax#gat_conv_30/LeakyRelu:activations:0$gat_conv_30/strided_slice_5:output:0"gat_conv_30/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€
2 
gat_conv_30/UnsortedSegmentMax|
gat_conv_30/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_30/GatherV2_2/axisЖ
gat_conv_30/GatherV2_2GatherV2'gat_conv_30/UnsortedSegmentMax:output:0$gat_conv_30/strided_slice_5:output:0$gat_conv_30/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/GatherV2_2°
gat_conv_30/subSub#gat_conv_30/LeakyRelu:activations:0gat_conv_30/GatherV2_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/subp
gat_conv_30/ExpExpgat_conv_30/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/ExpЛ
gat_conv_30/UnsortedSegmentSumUnsortedSegmentSumgat_conv_30/Exp:y:0$gat_conv_30/strided_slice_5:output:0"gat_conv_30/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€
2 
gat_conv_30/UnsortedSegmentSumo
gat_conv_30/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_pЙ02
gat_conv_30/add_1/y®
gat_conv_30/add_1AddV2'gat_conv_30/UnsortedSegmentSum:output:0gat_conv_30/add_1/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/add_1|
gat_conv_30/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_30/GatherV2_3/axisф
gat_conv_30/GatherV2_3GatherV2gat_conv_30/add_1:z:0$gat_conv_30/strided_slice_5:output:0$gat_conv_30/GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/GatherV2_3Э
gat_conv_30/truedivRealDivgat_conv_30/Exp:y:0gat_conv_30/GatherV2_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/truedivУ
gat_conv_30/dropout/IdentityIdentitygat_conv_30/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€
2
gat_conv_30/dropout/IdentityЧ
!gat_conv_30/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!gat_conv_30/strided_slice_7/stackЫ
#gat_conv_30/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gat_conv_30/strided_slice_7/stack_1Ы
#gat_conv_30/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_30/strided_slice_7/stack_2ж
gat_conv_30/strided_slice_7StridedSlice%gat_conv_30/dropout/Identity:output:0*gat_conv_30/strided_slice_7/stack:output:0,gat_conv_30/strided_slice_7/stack_1:output:0,gat_conv_30/strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:€€€€€€€€€
*
ellipsis_mask*
new_axis_mask2
gat_conv_30/strided_slice_7|
gat_conv_30/GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_30/GatherV2_4/axisБ
gat_conv_30/GatherV2_4GatherV2gat_conv_30/Reshape_1:output:0$gat_conv_30/strided_slice_6:output:0$gat_conv_30/GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:€€€€€€€€€
2
gat_conv_30/GatherV2_4™
gat_conv_30/mul_2Mul$gat_conv_30/strided_slice_7:output:0gat_conv_30/GatherV2_4:output:0*
T0*+
_output_shapes
:€€€€€€€€€
2
gat_conv_30/mul_2Х
 gat_conv_30/UnsortedSegmentSum_1UnsortedSegmentSumgat_conv_30/mul_2:z:0$gat_conv_30/strided_slice_5:output:0"gat_conv_30/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:€€€€€€€€€
2"
 gat_conv_30/UnsortedSegmentSum_1Л
gat_conv_30/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   2
gat_conv_30/Reshape_2/shapeЉ
gat_conv_30/Reshape_2Reshape)gat_conv_30/UnsortedSegmentSum_1:output:0$gat_conv_30/Reshape_2/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€P2
gat_conv_30/Reshape_2~
gat_conv_30/ReluRelugat_conv_30/Reshape_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€P2
gat_conv_30/ReluЄ
"gat_conv_31/Reshape/ReadVariableOpReadVariableOp+gat_conv_31_reshape_readvariableop_resource*"
_output_shapes
:P*
dtype02$
"gat_conv_31/Reshape/ReadVariableOpЗ
gat_conv_31/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
gat_conv_31/Reshape/shapeЃ
gat_conv_31/ReshapeReshape*gat_conv_31/Reshape/ReadVariableOp:value:0"gat_conv_31/Reshape/shape:output:0*
T0*
_output_shapes

:P2
gat_conv_31/ReshapeЊ
$gat_conv_31/transpose/ReadVariableOpReadVariableOp-gat_conv_31_transpose_readvariableop_resource*"
_output_shapes
:*
dtype02&
$gat_conv_31/transpose/ReadVariableOpН
gat_conv_31/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gat_conv_31/transpose/permї
gat_conv_31/transpose	Transpose,gat_conv_31/transpose/ReadVariableOp:value:0#gat_conv_31/transpose/perm:output:0*
T0*"
_output_shapes
:2
gat_conv_31/transposeƒ
&gat_conv_31/transpose_1/ReadVariableOpReadVariableOp/gat_conv_31_transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02(
&gat_conv_31/transpose_1/ReadVariableOpС
gat_conv_31/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gat_conv_31/transpose_1/perm√
gat_conv_31/transpose_1	Transpose.gat_conv_31/transpose_1/ReadVariableOp:value:0%gat_conv_31/transpose_1/perm:output:0*
T0*"
_output_shapes
:2
gat_conv_31/transpose_1Д
gat_conv_31/ShapeShapegat_conv_30/Relu:activations:0*
T0*
_output_shapes
:*
out_type0	2
gat_conv_31/ShapeМ
gat_conv_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
gat_conv_31/strided_slice/stackР
!gat_conv_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!gat_conv_31/strided_slice/stack_1Р
!gat_conv_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!gat_conv_31/strided_slice/stack_2™
gat_conv_31/strided_sliceStridedSlicegat_conv_31/Shape:output:0(gat_conv_31/strided_slice/stack:output:0*gat_conv_31/strided_slice/stack_1:output:0*gat_conv_31/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
gat_conv_31/strided_sliceЧ
!gat_conv_31/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!gat_conv_31/strided_slice_1/stackЫ
#gat_conv_31/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#gat_conv_31/strided_slice_1/stack_1Ы
#gat_conv_31/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_31/strided_slice_1/stack_2¬
gat_conv_31/strided_slice_1StridedSliceinputs*gat_conv_31/strided_slice_1/stack:output:0,gat_conv_31/strided_slice_1/stack_1:output:0,gat_conv_31/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2
gat_conv_31/strided_slice_1Ч
!gat_conv_31/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2#
!gat_conv_31/strided_slice_2/stackЫ
#gat_conv_31/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#gat_conv_31/strided_slice_2/stack_1Ы
#gat_conv_31/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_31/strided_slice_2/stack_2¬
gat_conv_31/strided_slice_2StridedSliceinputs*gat_conv_31/strided_slice_2/stack:output:0,gat_conv_31/strided_slice_2/stack_1:output:0,gat_conv_31/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2
gat_conv_31/strided_slice_2“
gat_conv_31/NotEqualNotEqual$gat_conv_31/strided_slice_1:output:0$gat_conv_31/strided_slice_2:output:0*
T0	*#
_output_shapes
:€€€€€€€€€*
incompatible_shape_error( 2
gat_conv_31/NotEqual£
gat_conv_31/EnsureShapeEnsureShapegat_conv_31/NotEqual:z:0*
T0
*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€2
gat_conv_31/EnsureShapet
gat_conv_31/range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
gat_conv_31/range/startt
gat_conv_31/range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2
gat_conv_31/range/delta»
gat_conv_31/rangeRange gat_conv_31/range/start:output:0"gat_conv_31/strided_slice:output:0 gat_conv_31/range/delta:output:0*

Tidx0	*#
_output_shapes
:€€€€€€€€€2
gat_conv_31/rangeЧ
!gat_conv_31/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!gat_conv_31/strided_slice_3/stackЫ
#gat_conv_31/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gat_conv_31/strided_slice_3/stack_1Ы
#gat_conv_31/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_31/strided_slice_3/stack_2д
gat_conv_31/strided_slice_3StridedSlicegat_conv_31/range:output:0*gat_conv_31/strided_slice_3/stack:output:0,gat_conv_31/strided_slice_3/stack_1:output:0,gat_conv_31/strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2
gat_conv_31/strided_slice_3z
gat_conv_31/Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2
gat_conv_31/Repeat/repeatsП
gat_conv_31/Repeat/CastCast#gat_conv_31/Repeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
gat_conv_31/Repeat/CastИ
gat_conv_31/Repeat/ShapeShape$gat_conv_31/strided_slice_3:output:0*
T0	*
_output_shapes
:2
gat_conv_31/Repeat/ShapeЗ
 gat_conv_31/Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2"
 gat_conv_31/Repeat/Reshape/shapeЛ
"gat_conv_31/Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2$
"gat_conv_31/Repeat/Reshape/shape_1Ѓ
gat_conv_31/Repeat/ReshapeReshapegat_conv_31/Repeat/Cast:y:0+gat_conv_31/Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gat_conv_31/Repeat/ReshapeИ
!gat_conv_31/Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!gat_conv_31/Repeat/ExpandDims/dim‘
gat_conv_31/Repeat/ExpandDims
ExpandDims$gat_conv_31/strided_slice_3:output:0*gat_conv_31/Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2
gat_conv_31/Repeat/ExpandDimsМ
#gat_conv_31/Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2%
#gat_conv_31/Repeat/Tile/multiples/0М
#gat_conv_31/Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#gat_conv_31/Repeat/Tile/multiples/1э
!gat_conv_31/Repeat/Tile/multiplesPack,gat_conv_31/Repeat/Tile/multiples/0:output:0,gat_conv_31/Repeat/Tile/multiples/1:output:0#gat_conv_31/Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2#
!gat_conv_31/Repeat/Tile/multiplesƒ
gat_conv_31/Repeat/TileTile&gat_conv_31/Repeat/ExpandDims:output:0*gat_conv_31/Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2
gat_conv_31/Repeat/TileЪ
&gat_conv_31/Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&gat_conv_31/Repeat/strided_slice/stackЮ
(gat_conv_31/Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(gat_conv_31/Repeat/strided_slice/stack_1Ю
(gat_conv_31/Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(gat_conv_31/Repeat/strided_slice/stack_2“
 gat_conv_31/Repeat/strided_sliceStridedSlice!gat_conv_31/Repeat/Shape:output:0/gat_conv_31/Repeat/strided_slice/stack:output:01gat_conv_31/Repeat/strided_slice/stack_1:output:01gat_conv_31/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2"
 gat_conv_31/Repeat/strided_sliceЮ
(gat_conv_31/Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(gat_conv_31/Repeat/strided_slice_1/stackҐ
*gat_conv_31/Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*gat_conv_31/Repeat/strided_slice_1/stack_1Ґ
*gat_conv_31/Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gat_conv_31/Repeat/strided_slice_1/stack_2ё
"gat_conv_31/Repeat/strided_slice_1StridedSlice!gat_conv_31/Repeat/Shape:output:01gat_conv_31/Repeat/strided_slice_1/stack:output:03gat_conv_31/Repeat/strided_slice_1/stack_1:output:03gat_conv_31/Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"gat_conv_31/Repeat/strided_slice_1™
gat_conv_31/Repeat/mulMul#gat_conv_31/Repeat/Reshape:output:0+gat_conv_31/Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2
gat_conv_31/Repeat/mulЮ
(gat_conv_31/Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(gat_conv_31/Repeat/strided_slice_2/stackҐ
*gat_conv_31/Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2,
*gat_conv_31/Repeat/strided_slice_2/stack_1Ґ
*gat_conv_31/Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*gat_conv_31/Repeat/strided_slice_2/stack_2Ў
"gat_conv_31/Repeat/strided_slice_2StridedSlice!gat_conv_31/Repeat/Shape:output:01gat_conv_31/Repeat/strided_slice_2/stack:output:03gat_conv_31/Repeat/strided_slice_2/stack_1:output:03gat_conv_31/Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2$
"gat_conv_31/Repeat/strided_slice_2Ъ
"gat_conv_31/Repeat/concat/values_1Packgat_conv_31/Repeat/mul:z:0*
N*
T0*
_output_shapes
:2$
"gat_conv_31/Repeat/concat/values_1В
gat_conv_31/Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
gat_conv_31/Repeat/concat/axisЮ
gat_conv_31/Repeat/concatConcatV2)gat_conv_31/Repeat/strided_slice:output:0+gat_conv_31/Repeat/concat/values_1:output:0+gat_conv_31/Repeat/strided_slice_2:output:0'gat_conv_31/Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2
gat_conv_31/Repeat/concat»
gat_conv_31/Repeat/Reshape_1Reshape gat_conv_31/Repeat/Tile:output:0"gat_conv_31/Repeat/concat:output:0*
T0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
gat_conv_31/Repeat/Reshape_1v
gat_conv_31/boolean_mask/ShapeShapeinputs*
T0	*
_output_shapes
:2 
gat_conv_31/boolean_mask/Shape¶
,gat_conv_31/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,gat_conv_31/boolean_mask/strided_slice/stack™
.gat_conv_31/boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.gat_conv_31/boolean_mask/strided_slice/stack_1™
.gat_conv_31/boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.gat_conv_31/boolean_mask/strided_slice/stack_2д
&gat_conv_31/boolean_mask/strided_sliceStridedSlice'gat_conv_31/boolean_mask/Shape:output:05gat_conv_31/boolean_mask/strided_slice/stack:output:07gat_conv_31/boolean_mask/strided_slice/stack_1:output:07gat_conv_31/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2(
&gat_conv_31/boolean_mask/strided_sliceђ
/gat_conv_31/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 21
/gat_conv_31/boolean_mask/Prod/reduction_indices“
gat_conv_31/boolean_mask/ProdProd/gat_conv_31/boolean_mask/strided_slice:output:08gat_conv_31/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2
gat_conv_31/boolean_mask/Prodz
 gat_conv_31/boolean_mask/Shape_1Shapeinputs*
T0	*
_output_shapes
:2"
 gat_conv_31/boolean_mask/Shape_1™
.gat_conv_31/boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.gat_conv_31/boolean_mask/strided_slice_1/stackЃ
0gat_conv_31/boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 22
0gat_conv_31/boolean_mask/strided_slice_1/stack_1Ѓ
0gat_conv_31/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0gat_conv_31/boolean_mask/strided_slice_1/stack_2А
(gat_conv_31/boolean_mask/strided_slice_1StridedSlice)gat_conv_31/boolean_mask/Shape_1:output:07gat_conv_31/boolean_mask/strided_slice_1/stack:output:09gat_conv_31/boolean_mask/strided_slice_1/stack_1:output:09gat_conv_31/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2*
(gat_conv_31/boolean_mask/strided_slice_1z
 gat_conv_31/boolean_mask/Shape_2Shapeinputs*
T0	*
_output_shapes
:2"
 gat_conv_31/boolean_mask/Shape_2™
.gat_conv_31/boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:20
.gat_conv_31/boolean_mask/strided_slice_2/stackЃ
0gat_conv_31/boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 22
0gat_conv_31/boolean_mask/strided_slice_2/stack_1Ѓ
0gat_conv_31/boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0gat_conv_31/boolean_mask/strided_slice_2/stack_2А
(gat_conv_31/boolean_mask/strided_slice_2StridedSlice)gat_conv_31/boolean_mask/Shape_2:output:07gat_conv_31/boolean_mask/strided_slice_2/stack:output:09gat_conv_31/boolean_mask/strided_slice_2/stack_1:output:09gat_conv_31/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2*
(gat_conv_31/boolean_mask/strided_slice_2≤
(gat_conv_31/boolean_mask/concat/values_1Pack&gat_conv_31/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2*
(gat_conv_31/boolean_mask/concat/values_1О
$gat_conv_31/boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$gat_conv_31/boolean_mask/concat/axisƒ
gat_conv_31/boolean_mask/concatConcatV21gat_conv_31/boolean_mask/strided_slice_1:output:01gat_conv_31/boolean_mask/concat/values_1:output:01gat_conv_31/boolean_mask/strided_slice_2:output:0-gat_conv_31/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2!
gat_conv_31/boolean_mask/concat≥
 gat_conv_31/boolean_mask/ReshapeReshapeinputs(gat_conv_31/boolean_mask/concat:output:0*
T0	*'
_output_shapes
:€€€€€€€€€2"
 gat_conv_31/boolean_mask/ReshapeІ
(gat_conv_31/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2*
(gat_conv_31/boolean_mask/Reshape_1/shape÷
"gat_conv_31/boolean_mask/Reshape_1Reshape gat_conv_31/EnsureShape:output:01gat_conv_31/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:€€€€€€€€€2$
"gat_conv_31/boolean_mask/Reshape_1Я
gat_conv_31/boolean_mask/WhereWhere+gat_conv_31/boolean_mask/Reshape_1:output:0*'
_output_shapes
:€€€€€€€€€2 
gat_conv_31/boolean_mask/WhereЉ
 gat_conv_31/boolean_mask/SqueezeSqueeze&gat_conv_31/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:€€€€€€€€€*
squeeze_dims
2"
 gat_conv_31/boolean_mask/SqueezeТ
&gat_conv_31/boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&gat_conv_31/boolean_mask/GatherV2/axisЃ
!gat_conv_31/boolean_mask/GatherV2GatherV2)gat_conv_31/boolean_mask/Reshape:output:0)gat_conv_31/boolean_mask/Squeeze:output:0/gat_conv_31/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:€€€€€€€€€2#
!gat_conv_31/boolean_mask/GatherV2t
gat_conv_31/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_31/concat/axisд
gat_conv_31/concatConcatV2*gat_conv_31/boolean_mask/GatherV2:output:0%gat_conv_31/Repeat/Reshape_1:output:0 gat_conv_31/concat/axis:output:0*
N*
T0	*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/concatЧ
!gat_conv_31/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!gat_conv_31/strided_slice_4/stackЫ
#gat_conv_31/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2%
#gat_conv_31/strided_slice_4/stack_1Ы
#gat_conv_31/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_31/strided_slice_4/stack_2д
gat_conv_31/strided_slice_4StridedSlicegat_conv_31/concat:output:0*gat_conv_31/strided_slice_4/stack:output:0,gat_conv_31/strided_slice_4/stack_1:output:0,gat_conv_31/strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
gat_conv_31/strided_slice_4О
gat_conv_31/ones_like/ShapeShape$gat_conv_31/strided_slice_4:output:0*
T0	*
_output_shapes
:2
gat_conv_31/ones_like/Shape|
gat_conv_31/ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
gat_conv_31/ones_like/Const∞
gat_conv_31/ones_likeFill$gat_conv_31/ones_like/Shape:output:0$gat_conv_31/ones_like/Const:output:0*
T0	*#
_output_shapes
:€€€€€€€€€2
gat_conv_31/ones_likeћ
%gat_conv_31/SparseReorder/input_shapePack"gat_conv_31/strided_slice:output:0"gat_conv_31/strided_slice:output:0*
N*
T0	*
_output_shapes
:2'
%gat_conv_31/SparseReorder/input_shapeх
gat_conv_31/SparseReorderSparseReordergat_conv_31/concat:output:0gat_conv_31/ones_like:output:0.gat_conv_31/SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":€€€€€€€€€:€€€€€€€€€2
gat_conv_31/SparseReorderЧ
!gat_conv_31/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"    ю€€€2#
!gat_conv_31/strided_slice_5/stackЫ
#gat_conv_31/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    €€€€2%
#gat_conv_31/strided_slice_5/stack_1Ы
#gat_conv_31/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_31/strided_slice_5/stack_2у
gat_conv_31/strided_slice_5StridedSlice*gat_conv_31/SparseReorder:output_indices:0*gat_conv_31/strided_slice_5/stack:output:0,gat_conv_31/strided_slice_5/stack_1:output:0,gat_conv_31/strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
gat_conv_31/strided_slice_5Ч
!gat_conv_31/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"    €€€€2#
!gat_conv_31/strided_slice_6/stackЫ
#gat_conv_31/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gat_conv_31/strided_slice_6/stack_1Ы
#gat_conv_31/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_31/strided_slice_6/stack_2у
gat_conv_31/strided_slice_6StridedSlice*gat_conv_31/SparseReorder:output_indices:0*gat_conv_31/strided_slice_6/stack:output:0,gat_conv_31/strided_slice_6/stack_1:output:0,gat_conv_31/strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
gat_conv_31/strided_slice_6Ґ
gat_conv_31/MatMulMatMulgat_conv_30/Relu:activations:0gat_conv_31/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/MatMulП
gat_conv_31/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€      2
gat_conv_31/Reshape_1/shape≥
gat_conv_31/Reshape_1Reshapegat_conv_31/MatMul:product:0$gat_conv_31/Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
gat_conv_31/Reshape_1Ъ
gat_conv_31/mulMulgat_conv_31/Reshape_1:output:0gat_conv_31/transpose:y:0*
T0*+
_output_shapes
:€€€€€€€€€2
gat_conv_31/mulС
!gat_conv_31/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2#
!gat_conv_31/Sum/reduction_indicesЬ
gat_conv_31/SumSumgat_conv_31/mul:z:0*gat_conv_31/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/Sumx
gat_conv_31/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_31/GatherV2/axisс
gat_conv_31/GatherV2GatherV2gat_conv_31/Sum:output:0$gat_conv_31/strided_slice_5:output:0"gat_conv_31/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/GatherV2†
gat_conv_31/mul_1Mulgat_conv_31/Reshape_1:output:0gat_conv_31/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€2
gat_conv_31/mul_1Х
#gat_conv_31/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2%
#gat_conv_31/Sum_1/reduction_indices§
gat_conv_31/Sum_1Sumgat_conv_31/mul_1:z:0,gat_conv_31/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/Sum_1|
gat_conv_31/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_31/GatherV2_1/axisщ
gat_conv_31/GatherV2_1GatherV2gat_conv_31/Sum_1:output:0$gat_conv_31/strided_slice_6:output:0$gat_conv_31/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/GatherV2_1Э
gat_conv_31/addAddV2gat_conv_31/GatherV2:output:0gat_conv_31/GatherV2_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/addy
gat_conv_31/LeakyRelu	LeakyRelugat_conv_31/add:z:0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/LeakyReluЫ
gat_conv_31/UnsortedSegmentMaxUnsortedSegmentMax#gat_conv_31/LeakyRelu:activations:0$gat_conv_31/strided_slice_5:output:0"gat_conv_31/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€2 
gat_conv_31/UnsortedSegmentMax|
gat_conv_31/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_31/GatherV2_2/axisЖ
gat_conv_31/GatherV2_2GatherV2'gat_conv_31/UnsortedSegmentMax:output:0$gat_conv_31/strided_slice_5:output:0$gat_conv_31/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/GatherV2_2°
gat_conv_31/subSub#gat_conv_31/LeakyRelu:activations:0gat_conv_31/GatherV2_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/subp
gat_conv_31/ExpExpgat_conv_31/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/ExpЛ
gat_conv_31/UnsortedSegmentSumUnsortedSegmentSumgat_conv_31/Exp:y:0$gat_conv_31/strided_slice_5:output:0"gat_conv_31/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€2 
gat_conv_31/UnsortedSegmentSumo
gat_conv_31/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_pЙ02
gat_conv_31/add_1/y®
gat_conv_31/add_1AddV2'gat_conv_31/UnsortedSegmentSum:output:0gat_conv_31/add_1/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/add_1|
gat_conv_31/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_31/GatherV2_3/axisф
gat_conv_31/GatherV2_3GatherV2gat_conv_31/add_1:z:0$gat_conv_31/strided_slice_5:output:0$gat_conv_31/GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/GatherV2_3Э
gat_conv_31/truedivRealDivgat_conv_31/Exp:y:0gat_conv_31/GatherV2_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/truedivЧ
gat_conv_31/dropout_1/IdentityIdentitygat_conv_31/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€2 
gat_conv_31/dropout_1/IdentityЧ
!gat_conv_31/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2#
!gat_conv_31/strided_slice_7/stackЫ
#gat_conv_31/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gat_conv_31/strided_slice_7/stack_1Ы
#gat_conv_31/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gat_conv_31/strided_slice_7/stack_2и
gat_conv_31/strided_slice_7StridedSlice'gat_conv_31/dropout_1/Identity:output:0*gat_conv_31/strided_slice_7/stack:output:0,gat_conv_31/strided_slice_7/stack_1:output:0,gat_conv_31/strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
new_axis_mask2
gat_conv_31/strided_slice_7|
gat_conv_31/GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
gat_conv_31/GatherV2_4/axisБ
gat_conv_31/GatherV2_4GatherV2gat_conv_31/Reshape_1:output:0$gat_conv_31/strided_slice_6:output:0$gat_conv_31/GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:€€€€€€€€€2
gat_conv_31/GatherV2_4™
gat_conv_31/mul_2Mul$gat_conv_31/strided_slice_7:output:0gat_conv_31/GatherV2_4:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
gat_conv_31/mul_2Х
 gat_conv_31/UnsortedSegmentSum_1UnsortedSegmentSumgat_conv_31/mul_2:z:0$gat_conv_31/strided_slice_5:output:0"gat_conv_31/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:€€€€€€€€€2"
 gat_conv_31/UnsortedSegmentSum_1Л
gat_conv_31/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
gat_conv_31/Reshape_2/shapeЉ
gat_conv_31/Reshape_2Reshape)gat_conv_31/UnsortedSegmentSum_1:output:0$gat_conv_31/Reshape_2/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/Reshape_2~
gat_conv_31/ReluRelugat_conv_31/Reshape_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
gat_conv_31/Reluљ
global_avg_pool_15/SegmentMeanSegmentMeangat_conv_31/Relu:activations:0
inputs_2_0*
T0*
Tindices0	*'
_output_shapes
:€€€€€€€€€2 
global_avg_pool_15/SegmentMeanЇ
global_sum_pool_15/SegmentSum
SegmentSumgat_conv_31/Relu:activations:0
inputs_2_0*
T0*
Tindices0	*'
_output_shapes
:€€€€€€€€€2
global_sum_pool_15/SegmentSum\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisЊ
concatConcatV2'global_avg_pool_15/SegmentMean:output:0&global_sum_pool_15/SegmentSum:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€(2
concat®
dense_45/MatMul/ReadVariableOpReadVariableOp'dense_45_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02 
dense_45/MatMul/ReadVariableOpЧ
dense_45/MatMulMatMulconcat:output:0&dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_45/MatMulІ
dense_45/BiasAdd/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_45/BiasAdd/ReadVariableOp•
dense_45/BiasAddBiasAdddense_45/MatMul:product:0'dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_45/BiasAddХ
leaky_re_lu_15/LeakyRelu	LeakyReludense_45/BiasAdd:output:0*'
_output_shapes
:€€€€€€€€€*
alpha%Ќћћ=2
leaky_re_lu_15/LeakyRelu»
*batch_normalization_30/Cast/ReadVariableOpReadVariableOp3batch_normalization_30_cast_readvariableop_resource*
_output_shapes
:*
dtype02,
*batch_normalization_30/Cast/ReadVariableOpќ
,batch_normalization_30/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_30_cast_1_readvariableop_resource*
_output_shapes
:*
dtype02.
,batch_normalization_30/Cast_1/ReadVariableOpќ
,batch_normalization_30/Cast_2/ReadVariableOpReadVariableOp5batch_normalization_30_cast_2_readvariableop_resource*
_output_shapes
:*
dtype02.
,batch_normalization_30/Cast_2/ReadVariableOpќ
,batch_normalization_30/Cast_3/ReadVariableOpReadVariableOp5batch_normalization_30_cast_3_readvariableop_resource*
_output_shapes
:*
dtype02.
,batch_normalization_30/Cast_3/ReadVariableOpХ
&batch_normalization_30/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2(
&batch_normalization_30/batchnorm/add/yб
$batch_normalization_30/batchnorm/addAddV24batch_normalization_30/Cast_1/ReadVariableOp:value:0/batch_normalization_30/batchnorm/add/y:output:0*
T0*
_output_shapes
:2&
$batch_normalization_30/batchnorm/add®
&batch_normalization_30/batchnorm/RsqrtRsqrt(batch_normalization_30/batchnorm/add:z:0*
T0*
_output_shapes
:2(
&batch_normalization_30/batchnorm/RsqrtЏ
$batch_normalization_30/batchnorm/mulMul*batch_normalization_30/batchnorm/Rsqrt:y:04batch_normalization_30/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:2&
$batch_normalization_30/batchnorm/mulџ
&batch_normalization_30/batchnorm/mul_1Mul&leaky_re_lu_15/LeakyRelu:activations:0(batch_normalization_30/batchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€2(
&batch_normalization_30/batchnorm/mul_1Џ
&batch_normalization_30/batchnorm/mul_2Mul2batch_normalization_30/Cast/ReadVariableOp:value:0(batch_normalization_30/batchnorm/mul:z:0*
T0*
_output_shapes
:2(
&batch_normalization_30/batchnorm/mul_2Џ
$batch_normalization_30/batchnorm/subSub4batch_normalization_30/Cast_2/ReadVariableOp:value:0*batch_normalization_30/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2&
$batch_normalization_30/batchnorm/subб
&batch_normalization_30/batchnorm/add_1AddV2*batch_normalization_30/batchnorm/mul_1:z:0(batch_normalization_30/batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2(
&batch_normalization_30/batchnorm/add_1®
dense_46/MatMul/ReadVariableOpReadVariableOp'dense_46_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_46/MatMul/ReadVariableOp≤
dense_46/MatMulMatMul*batch_normalization_30/batchnorm/add_1:z:0&dense_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_46/MatMulІ
dense_46/BiasAdd/ReadVariableOpReadVariableOp(dense_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_46/BiasAdd/ReadVariableOp•
dense_46/BiasAddBiasAdddense_46/MatMul:product:0'dense_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_46/BiasAddЩ
leaky_re_lu_15/LeakyRelu_1	LeakyReludense_46/BiasAdd:output:0*'
_output_shapes
:€€€€€€€€€*
alpha%Ќћћ=2
leaky_re_lu_15/LeakyRelu_1»
*batch_normalization_31/Cast/ReadVariableOpReadVariableOp3batch_normalization_31_cast_readvariableop_resource*
_output_shapes
:*
dtype02,
*batch_normalization_31/Cast/ReadVariableOpќ
,batch_normalization_31/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_31_cast_1_readvariableop_resource*
_output_shapes
:*
dtype02.
,batch_normalization_31/Cast_1/ReadVariableOpќ
,batch_normalization_31/Cast_2/ReadVariableOpReadVariableOp5batch_normalization_31_cast_2_readvariableop_resource*
_output_shapes
:*
dtype02.
,batch_normalization_31/Cast_2/ReadVariableOpќ
,batch_normalization_31/Cast_3/ReadVariableOpReadVariableOp5batch_normalization_31_cast_3_readvariableop_resource*
_output_shapes
:*
dtype02.
,batch_normalization_31/Cast_3/ReadVariableOpХ
&batch_normalization_31/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2(
&batch_normalization_31/batchnorm/add/yб
$batch_normalization_31/batchnorm/addAddV24batch_normalization_31/Cast_1/ReadVariableOp:value:0/batch_normalization_31/batchnorm/add/y:output:0*
T0*
_output_shapes
:2&
$batch_normalization_31/batchnorm/add®
&batch_normalization_31/batchnorm/RsqrtRsqrt(batch_normalization_31/batchnorm/add:z:0*
T0*
_output_shapes
:2(
&batch_normalization_31/batchnorm/RsqrtЏ
$batch_normalization_31/batchnorm/mulMul*batch_normalization_31/batchnorm/Rsqrt:y:04batch_normalization_31/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:2&
$batch_normalization_31/batchnorm/mulЁ
&batch_normalization_31/batchnorm/mul_1Mul(leaky_re_lu_15/LeakyRelu_1:activations:0(batch_normalization_31/batchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€2(
&batch_normalization_31/batchnorm/mul_1Џ
&batch_normalization_31/batchnorm/mul_2Mul2batch_normalization_31/Cast/ReadVariableOp:value:0(batch_normalization_31/batchnorm/mul:z:0*
T0*
_output_shapes
:2(
&batch_normalization_31/batchnorm/mul_2Џ
$batch_normalization_31/batchnorm/subSub4batch_normalization_31/Cast_2/ReadVariableOp:value:0*batch_normalization_31/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2&
$batch_normalization_31/batchnorm/subб
&batch_normalization_31/batchnorm/add_1AddV2*batch_normalization_31/batchnorm/mul_1:z:0(batch_normalization_31/batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2(
&batch_normalization_31/batchnorm/add_1®
dense_47/MatMul/ReadVariableOpReadVariableOp'dense_47_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_47/MatMul/ReadVariableOp≤
dense_47/MatMulMatMul*batch_normalization_31/batchnorm/add_1:z:0&dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_47/MatMulІ
dense_47/BiasAdd/ReadVariableOpReadVariableOp(dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_47/BiasAdd/ReadVariableOp•
dense_47/BiasAddBiasAdddense_47/MatMul:product:0'dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_47/BiasAddФ
IdentityIdentitydense_47/BiasAdd:output:0+^batch_normalization_30/Cast/ReadVariableOp-^batch_normalization_30/Cast_1/ReadVariableOp-^batch_normalization_30/Cast_2/ReadVariableOp-^batch_normalization_30/Cast_3/ReadVariableOp+^batch_normalization_31/Cast/ReadVariableOp-^batch_normalization_31/Cast_1/ReadVariableOp-^batch_normalization_31/Cast_2/ReadVariableOp-^batch_normalization_31/Cast_3/ReadVariableOp ^dense_45/BiasAdd/ReadVariableOp^dense_45/MatMul/ReadVariableOp ^dense_46/BiasAdd/ReadVariableOp^dense_46/MatMul/ReadVariableOp ^dense_47/BiasAdd/ReadVariableOp^dense_47/MatMul/ReadVariableOp#^gat_conv_30/Reshape/ReadVariableOp%^gat_conv_30/transpose/ReadVariableOp'^gat_conv_30/transpose_1/ReadVariableOp#^gat_conv_31/Reshape/ReadVariableOp%^gat_conv_31/transpose/ReadVariableOp'^gat_conv_31/transpose_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*ѓ
_input_shapesЭ
Ъ:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€::€€€€€€€€€::::::::::::::::::::2X
*batch_normalization_30/Cast/ReadVariableOp*batch_normalization_30/Cast/ReadVariableOp2\
,batch_normalization_30/Cast_1/ReadVariableOp,batch_normalization_30/Cast_1/ReadVariableOp2\
,batch_normalization_30/Cast_2/ReadVariableOp,batch_normalization_30/Cast_2/ReadVariableOp2\
,batch_normalization_30/Cast_3/ReadVariableOp,batch_normalization_30/Cast_3/ReadVariableOp2X
*batch_normalization_31/Cast/ReadVariableOp*batch_normalization_31/Cast/ReadVariableOp2\
,batch_normalization_31/Cast_1/ReadVariableOp,batch_normalization_31/Cast_1/ReadVariableOp2\
,batch_normalization_31/Cast_2/ReadVariableOp,batch_normalization_31/Cast_2/ReadVariableOp2\
,batch_normalization_31/Cast_3/ReadVariableOp,batch_normalization_31/Cast_3/ReadVariableOp2B
dense_45/BiasAdd/ReadVariableOpdense_45/BiasAdd/ReadVariableOp2@
dense_45/MatMul/ReadVariableOpdense_45/MatMul/ReadVariableOp2B
dense_46/BiasAdd/ReadVariableOpdense_46/BiasAdd/ReadVariableOp2@
dense_46/MatMul/ReadVariableOpdense_46/MatMul/ReadVariableOp2B
dense_47/BiasAdd/ReadVariableOpdense_47/BiasAdd/ReadVariableOp2@
dense_47/MatMul/ReadVariableOpdense_47/MatMul/ReadVariableOp2H
"gat_conv_30/Reshape/ReadVariableOp"gat_conv_30/Reshape/ReadVariableOp2L
$gat_conv_30/transpose/ReadVariableOp$gat_conv_30/transpose/ReadVariableOp2P
&gat_conv_30/transpose_1/ReadVariableOp&gat_conv_30/transpose_1/ReadVariableOp2H
"gat_conv_31/Reshape/ReadVariableOp"gat_conv_31/Reshape/ReadVariableOp2L
$gat_conv_31/transpose/ReadVariableOp$gat_conv_31/transpose/ReadVariableOp2P
&gat_conv_31/transpose_1/ReadVariableOp&gat_conv_31/transpose_1/ReadVariableOp:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:MI
#
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/2
С	
№
C__inference_dense_46_layer_call_and_return_conditional_losses_83007

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
я
}
(__inference_dense_46_layer_call_fn_83016

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dense_46_layer_call_and_return_conditional_losses_809692
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
С	
№
C__inference_dense_47_layer_call_and_return_conditional_losses_81031

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Л
№
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_80138

inputs 
cast_readvariableop_resource"
cast_1_readvariableop_resource"
cast_2_readvariableop_resource"
cast_3_readvariableop_resource
identityИҐCast/ReadVariableOpҐCast_1/ReadVariableOpҐCast_2/ReadVariableOpҐCast_3/ReadVariableOpГ
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype02
Cast/ReadVariableOpЙ
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype02
Cast_1/ReadVariableOpЙ
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
:*
dtype02
Cast_2/ReadVariableOpЙ
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
:*
dtype02
Cast_3/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yЕ
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt~
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
batchnorm/mul_1~
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2~
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/subЕ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
batchnorm/add_1≈
IdentityIdentitybatchnorm/add_1:z:0^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::::2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ј:
√
C__inference_model_15_layer_call_and_return_conditional_losses_81177

inputs
inputs_1	
inputs_2
inputs_3	
inputs_4	
gat_conv_30_81123
gat_conv_30_81125
gat_conv_30_81127
gat_conv_31_81130
gat_conv_31_81132
gat_conv_31_81134
dense_45_81141
dense_45_81143 
batch_normalization_30_81147 
batch_normalization_30_81149 
batch_normalization_30_81151 
batch_normalization_30_81153
dense_46_81156
dense_46_81158 
batch_normalization_31_81162 
batch_normalization_31_81164 
batch_normalization_31_81166 
batch_normalization_31_81168
dense_47_81171
dense_47_81173
identityИҐ.batch_normalization_30/StatefulPartitionedCallҐ.batch_normalization_31/StatefulPartitionedCallҐ dense_45/StatefulPartitionedCallҐ dense_46/StatefulPartitionedCallҐ dense_47/StatefulPartitionedCallҐ#gat_conv_30/StatefulPartitionedCallҐ#gat_conv_31/StatefulPartitionedCallџ
#gat_conv_30/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3gat_conv_30_81123gat_conv_30_81125gat_conv_30_81127*
Tin
	2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€P*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *O
fJRH
F__inference_gat_conv_30_layer_call_and_return_conditional_losses_803192%
#gat_conv_30/StatefulPartitionedCallБ
#gat_conv_31/StatefulPartitionedCallStatefulPartitionedCall,gat_conv_30/StatefulPartitionedCall:output:0inputs_1inputs_2inputs_3gat_conv_31_81130gat_conv_31_81132gat_conv_31_81134*
Tin
	2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *O
fJRH
F__inference_gat_conv_31_layer_call_and_return_conditional_losses_806732%
#gat_conv_31/StatefulPartitionedCallІ
"global_avg_pool_15/PartitionedCallPartitionedCall,gat_conv_31/StatefulPartitionedCall:output:0inputs_4*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *V
fQRO
M__inference_global_avg_pool_15_layer_call_and_return_conditional_losses_808712$
"global_avg_pool_15/PartitionedCallІ
"global_sum_pool_15/PartitionedCallPartitionedCall,gat_conv_31/StatefulPartitionedCall:output:0inputs_4*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *V
fQRO
M__inference_global_sum_pool_15_layer_call_and_return_conditional_losses_808862$
"global_sum_pool_15/PartitionedCall\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis«
concatConcatV2+global_avg_pool_15/PartitionedCall:output:0+global_sum_pool_15/PartitionedCall:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€(2
concatЯ
 dense_45/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0dense_45_81141dense_45_81143*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dense_45_layer_call_and_return_conditional_losses_809072"
 dense_45/StatefulPartitionedCall•
leaky_re_lu_15/LeakyRelu	LeakyRelu)dense_45/StatefulPartitionedCall:output:0*'
_output_shapes
:€€€€€€€€€*
alpha%Ќћћ=2
leaky_re_lu_15/LeakyReluЇ
.batch_normalization_30/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_15/LeakyRelu:activations:0batch_normalization_30_81147batch_normalization_30_81149batch_normalization_30_81151batch_normalization_30_81153*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Z
fURS
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_7996520
.batch_normalization_30/StatefulPartitionedCall«
 dense_46/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_30/StatefulPartitionedCall:output:0dense_46_81156dense_46_81158*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dense_46_layer_call_and_return_conditional_losses_809692"
 dense_46/StatefulPartitionedCall©
leaky_re_lu_15/LeakyRelu_1	LeakyRelu)dense_46/StatefulPartitionedCall:output:0*'
_output_shapes
:€€€€€€€€€*
alpha%Ќћћ=2
leaky_re_lu_15/LeakyRelu_1Љ
.batch_normalization_31/StatefulPartitionedCallStatefulPartitionedCall(leaky_re_lu_15/LeakyRelu_1:activations:0batch_normalization_31_81162batch_normalization_31_81164batch_normalization_31_81166batch_normalization_31_81168*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Z
fURS
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_8010520
.batch_normalization_31/StatefulPartitionedCall«
 dense_47/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_31/StatefulPartitionedCall:output:0dense_47_81171dense_47_81173*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dense_47_layer_call_and_return_conditional_losses_810312"
 dense_47/StatefulPartitionedCallФ
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0/^batch_normalization_30/StatefulPartitionedCall/^batch_normalization_31/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall$^gat_conv_30/StatefulPartitionedCall$^gat_conv_31/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*ѓ
_input_shapesЭ
Ъ:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€::€€€€€€€€€::::::::::::::::::::2`
.batch_normalization_30/StatefulPartitionedCall.batch_normalization_30/StatefulPartitionedCall2`
.batch_normalization_31/StatefulPartitionedCall.batch_normalization_31/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2J
#gat_conv_30/StatefulPartitionedCall#gat_conv_30/StatefulPartitionedCall2J
#gat_conv_31/StatefulPartitionedCall#gat_conv_31/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
“
w
M__inference_global_sum_pool_15_layer_call_and_return_conditional_losses_80886

inputs
inputs_1	
identityz

SegmentSum
SegmentSuminputsinputs_1*
T0*
Tindices0	*'
_output_shapes
:€€€€€€€€€2

SegmentSumg
IdentityIdentitySegmentSum:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*5
_input_shapes$
":€€€€€€€€€:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
рЇ
’
F__inference_gat_conv_31_layer_call_and_return_conditional_losses_82752
inputs_0

inputs	
inputs_1
inputs_2	#
reshape_readvariableop_resource%
!transpose_readvariableop_resource'
#transpose_1_readvariableop_resource
identityИҐReshape/ReadVariableOpҐtranspose/ReadVariableOpҐtranspose_1/ReadVariableOpФ
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*"
_output_shapes
:P*
dtype02
Reshape/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Reshape/shape~
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*
_output_shapes

:P2	
ReshapeЪ
transpose/ReadVariableOpReadVariableOp!transpose_readvariableop_resource*"
_output_shapes
:*
dtype02
transpose/ReadVariableOpu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЛ
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*"
_output_shapes
:2
	transpose†
transpose_1/ReadVariableOpReadVariableOp#transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype02
transpose_1/ReadVariableOpy
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permУ
transpose_1	Transpose"transpose_1/ReadVariableOp:value:0transpose_1/perm:output:0*
T0*"
_output_shapes
:2
transpose_1V
ShapeShapeinputs_0*
T0*
_output_shapes
:*
out_type0	2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
strided_slice
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stackГ
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1Г
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2Ж
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2
strided_slice_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stackГ
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1Г
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2Ж
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2
strided_slice_2Ґ
NotEqualNotEqualstrided_slice_1:output:0strided_slice_2:output:0*
T0	*#
_output_shapes
:€€€€€€€€€*
incompatible_shape_error( 2

NotEqual
EnsureShapeEnsureShapeNotEqual:z:0*
T0
*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€2
EnsureShape\
range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2
range/deltaМ
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*

Tidx0	*#
_output_shapes
:€€€€€€€€€2
range
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stackГ
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1Г
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2Ь
strided_slice_3StridedSlicerange:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2
strided_slice_3b
Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/repeatsk
Repeat/CastCastRepeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Repeat/Castd
Repeat/ShapeShapestrided_slice_3:output:0*
T0	*
_output_shapes
:2
Repeat/Shapeo
Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shapes
Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shape_1~
Repeat/ReshapeReshapeRepeat/Cast:y:0Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
Repeat/Reshapep
Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/ExpandDims/dim§
Repeat/ExpandDims
ExpandDimsstrided_slice_3:output:0Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2
Repeat/ExpandDimst
Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/0t
Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/1Ѕ
Repeat/Tile/multiplesPack Repeat/Tile/multiples/0:output:0 Repeat/Tile/multiples/1:output:0Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2
Repeat/Tile/multiplesФ
Repeat/TileTileRepeat/ExpandDims:output:0Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2
Repeat/TileВ
Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Repeat/strided_slice/stackЖ
Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_1Ж
Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_2К
Repeat/strided_sliceStridedSliceRepeat/Shape:output:0#Repeat/strided_slice/stack:output:0%Repeat/strided_slice/stack_1:output:0%Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
Repeat/strided_sliceЖ
Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_1/stackК
Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_1К
Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_2Ц
Repeat/strided_slice_1StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_1/stack:output:0'Repeat/strided_slice_1/stack_1:output:0'Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Repeat/strided_slice_1z

Repeat/mulMulRepeat/Reshape:output:0Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2

Repeat/mulЖ
Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_2/stackК
Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
Repeat/strided_slice_2/stack_1К
Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_2/stack_2Р
Repeat/strided_slice_2StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_2/stack:output:0'Repeat/strided_slice_2/stack_1:output:0'Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2
Repeat/strided_slice_2v
Repeat/concat/values_1PackRepeat/mul:z:0*
N*
T0*
_output_shapes
:2
Repeat/concat/values_1j
Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Repeat/concat/axis÷
Repeat/concatConcatV2Repeat/strided_slice:output:0Repeat/concat/values_1:output:0Repeat/strided_slice_2:output:0Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Repeat/concatШ
Repeat/Reshape_1ReshapeRepeat/Tile:output:0Repeat/concat:output:0*
T0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Repeat/Reshape_1^
boolean_mask/ShapeShapeinputs*
T0	*
_output_shapes
:2
boolean_mask/ShapeО
 boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 boolean_mask/strided_slice/stackТ
"boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_1Т
"boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_2Ь
boolean_mask/strided_sliceStridedSliceboolean_mask/Shape:output:0)boolean_mask/strided_slice/stack:output:0+boolean_mask/strided_slice/stack_1:output:0+boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
boolean_mask/strided_sliceФ
#boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2%
#boolean_mask/Prod/reduction_indicesҐ
boolean_mask/ProdProd#boolean_mask/strided_slice:output:0,boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2
boolean_mask/Prodb
boolean_mask/Shape_1Shapeinputs*
T0	*
_output_shapes
:2
boolean_mask/Shape_1Т
"boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"boolean_mask/strided_slice_1/stackЦ
$boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_1/stack_1Ц
$boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_1/stack_2Є
boolean_mask/strided_slice_1StridedSliceboolean_mask/Shape_1:output:0+boolean_mask/strided_slice_1/stack:output:0-boolean_mask/strided_slice_1/stack_1:output:0-boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2
boolean_mask/strided_slice_1b
boolean_mask/Shape_2Shapeinputs*
T0	*
_output_shapes
:2
boolean_mask/Shape_2Т
"boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice_2/stackЦ
$boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_2/stack_1Ц
$boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_2/stack_2Є
boolean_mask/strided_slice_2StridedSliceboolean_mask/Shape_2:output:0+boolean_mask/strided_slice_2/stack:output:0-boolean_mask/strided_slice_2/stack_1:output:0-boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2
boolean_mask/strided_slice_2О
boolean_mask/concat/values_1Packboolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concat/values_1v
boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/concat/axisь
boolean_mask/concatConcatV2%boolean_mask/strided_slice_1:output:0%boolean_mask/concat/values_1:output:0%boolean_mask/strided_slice_2:output:0!boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concatП
boolean_mask/ReshapeReshapeinputsboolean_mask/concat:output:0*
T0	*'
_output_shapes
:€€€€€€€€€2
boolean_mask/ReshapeП
boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
boolean_mask/Reshape_1/shape¶
boolean_mask/Reshape_1ReshapeEnsureShape:output:0%boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:€€€€€€€€€2
boolean_mask/Reshape_1{
boolean_mask/WhereWhereboolean_mask/Reshape_1:output:0*'
_output_shapes
:€€€€€€€€€2
boolean_mask/WhereШ
boolean_mask/SqueezeSqueezeboolean_mask/Where:index:0*
T0	*#
_output_shapes
:€€€€€€€€€*
squeeze_dims
2
boolean_mask/Squeezez
boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/GatherV2/axisт
boolean_mask/GatherV2GatherV2boolean_mask/Reshape:output:0boolean_mask/Squeeze:output:0#boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:€€€€€€€€€2
boolean_mask/GatherV2\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis®
concatConcatV2boolean_mask/GatherV2:output:0Repeat/Reshape_1:output:0concat/axis:output:0*
N*
T0	*'
_output_shapes
:€€€€€€€€€2
concat
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stackГ
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_4/stack_1Г
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2Ь
strided_slice_4StridedSliceconcat:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_4j
ones_like/ShapeShapestrided_slice_4:output:0*
T0	*
_output_shapes
:2
ones_like/Shaped
ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
ones_like/ConstА
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0	*#
_output_shapes
:€€€€€€€€€2
	ones_likeЬ
SparseReorder/input_shapePackstrided_slice:output:0strided_slice:output:0*
N*
T0	*
_output_shapes
:2
SparseReorder/input_shapeє
SparseReorderSparseReorderconcat:output:0ones_like:output:0"SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":€€€€€€€€€:€€€€€€€€€2
SparseReorder
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"    ю€€€2
strided_slice_5/stackГ
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    €€€€2
strided_slice_5/stack_1Г
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_5/stack_2Ђ
strided_slice_5StridedSliceSparseReorder:output_indices:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_5
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"    €€€€2
strided_slice_6/stackГ
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack_1Г
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2Ђ
strided_slice_6StridedSliceSparseReorder:output_indices:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_6h
MatMulMatMulinputs_0Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€      2
Reshape_1/shapeГ
	Reshape_1ReshapeMatMul:product:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
	Reshape_1j
mulMulReshape_1:output:0transpose:y:0*
T0*+
_output_shapes
:€€€€€€€€€2
muly
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Sum/reduction_indicesl
SumSummul:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
Sum`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axisµ
GatherV2GatherV2Sum:output:0strided_slice_5:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2

GatherV2p
mul_1MulReshape_1:output:0transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€2
mul_1}
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Sum_1/reduction_indicest
Sum_1Sum	mul_1:z:0 Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
Sum_1d
GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_1/axisљ

GatherV2_1GatherV2Sum_1:output:0strided_slice_6:output:0GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2

GatherV2_1m
addAddV2GatherV2:output:0GatherV2_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
addU
	LeakyRelu	LeakyReluadd:z:0*'
_output_shapes
:€€€€€€€€€2
	LeakyReluя
UnsortedSegmentMaxUnsortedSegmentMaxLeakyRelu:activations:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€2
UnsortedSegmentMaxd
GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_2/axis 

GatherV2_2GatherV2UnsortedSegmentMax:output:0strided_slice_5:output:0GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2

GatherV2_2q
subSubLeakyRelu:activations:0GatherV2_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
subL
ExpExpsub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
Expѕ
UnsortedSegmentSumUnsortedSegmentSumExp:y:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€2
UnsortedSegmentSumW
add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_pЙ02	
add_1/yx
add_1AddV2UnsortedSegmentSum:output:0add_1/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
add_1d
GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_3/axisЄ

GatherV2_3GatherV2	add_1:z:0strided_slice_5:output:0GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2

GatherV2_3m
truedivRealDivExp:y:0GatherV2_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
truedivw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †@2
dropout_1/dropout/ConstЦ
dropout_1/dropout/MulMultruediv:z:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout_1/dropout/Mulm
dropout_1/dropout/ShapeShapetruediv:z:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape“
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype020
.dropout_1/dropout/random_uniform/RandomUniformЙ
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL?2"
 dropout_1/dropout/GreaterEqual/yж
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2 
dropout_1/dropout/GreaterEqualЭ
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€2
dropout_1/dropout/CastҐ
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout_1/dropout/Mul_1
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stackГ
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack_1Г
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2†
strided_slice_7StridedSlicedropout_1/dropout/Mul_1:z:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
new_axis_mask2
strided_slice_7d
GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_4/axis≈

GatherV2_4GatherV2Reshape_1:output:0strided_slice_6:output:0GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:€€€€€€€€€2

GatherV2_4z
mul_2Mulstrided_slice_7:output:0GatherV2_4:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
mul_2ў
UnsortedSegmentSum_1UnsortedSegmentSum	mul_2:z:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:€€€€€€€€€2
UnsortedSegmentSum_1s
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Reshape_2/shapeМ
	Reshape_2ReshapeUnsortedSegmentSum_1:output:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
	Reshape_2Z
ReluReluReshape_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
ReluЈ
IdentityIdentityRelu:activations:0^Reshape/ReadVariableOp^transpose/ReadVariableOp^transpose_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:€€€€€€€€€P:€€€€€€€€€:€€€€€€€€€::::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp28
transpose_1/ReadVariableOptranspose_1/ReadVariableOp:Q M
'
_output_shapes
:€€€€€€€€€P
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
я
}
(__inference_dense_47_layer_call_fn_82978

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_dense_47_layer_call_and_return_conditional_losses_810312
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
С	
№
C__inference_dense_45_layer_call_and_return_conditional_losses_82988

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€(::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€(
 
_user_specified_nameinputs
Ё	
є
+__inference_gat_conv_31_layer_call_fn_82935
inputs_0

inputs	
inputs_1
inputs_2	
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCall©
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2unknown	unknown_0	unknown_1*
Tin
	2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *O
fJRH
F__inference_gat_conv_31_layer_call_and_return_conditional_losses_808282
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:€€€€€€€€€P:€€€€€€€€€:€€€€€€€€€::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:€€€€€€€€€P
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
Ё	
є
+__inference_gat_conv_30_layer_call_fn_82576
inputs_0

inputs	
inputs_1
inputs_2	
unknown
	unknown_0
	unknown_1
identityИҐStatefulPartitionedCall©
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2unknown	unknown_0	unknown_1*
Tin
	2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€P*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *O
fJRH
F__inference_gat_conv_30_layer_call_and_return_conditional_losses_804742
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€P2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
Л5
Ы
__inference__traced_save_83267
file_prefix:
6savev2_model_15_gat_conv_30_kernel_read_readvariableopD
@savev2_model_15_gat_conv_30_attn_kernel_self_read_readvariableopE
Asavev2_model_15_gat_conv_30_attn_kernel_neigh_read_readvariableop:
6savev2_model_15_gat_conv_31_kernel_read_readvariableopD
@savev2_model_15_gat_conv_31_attn_kernel_self_read_readvariableopE
Asavev2_model_15_gat_conv_31_attn_kernel_neigh_read_readvariableop7
3savev2_model_15_dense_47_kernel_read_readvariableop5
1savev2_model_15_dense_47_bias_read_readvariableop7
3savev2_model_15_dense_45_kernel_read_readvariableop5
1savev2_model_15_dense_45_bias_read_readvariableop7
3savev2_model_15_dense_46_kernel_read_readvariableop5
1savev2_model_15_dense_46_bias_read_readvariableopD
@savev2_model_15_batch_normalization_30_gamma_read_readvariableopC
?savev2_model_15_batch_normalization_30_beta_read_readvariableopD
@savev2_model_15_batch_normalization_31_gamma_read_readvariableopC
?savev2_model_15_batch_normalization_31_beta_read_readvariableopJ
Fsavev2_model_15_batch_normalization_30_moving_mean_read_readvariableopN
Jsavev2_model_15_batch_normalization_30_moving_variance_read_readvariableopJ
Fsavev2_model_15_batch_normalization_31_moving_mean_read_readvariableopN
Jsavev2_model_15_batch_normalization_31_moving_variance_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameн
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*€
valueхBтB&att1/kernel/.ATTRIBUTES/VARIABLE_VALUEB0att1/attn_kernel_self/.ATTRIBUTES/VARIABLE_VALUEB1att1/attn_kernel_neigh/.ATTRIBUTES/VARIABLE_VALUEB&att2/kernel/.ATTRIBUTES/VARIABLE_VALUEB0att2/attn_kernel_self/.ATTRIBUTES/VARIABLE_VALUEB1att2/attn_kernel_neigh/.ATTRIBUTES/VARIABLE_VALUEB$d2/kernel/.ATTRIBUTES/VARIABLE_VALUEB"d2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names≤
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesЃ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_model_15_gat_conv_30_kernel_read_readvariableop@savev2_model_15_gat_conv_30_attn_kernel_self_read_readvariableopAsavev2_model_15_gat_conv_30_attn_kernel_neigh_read_readvariableop6savev2_model_15_gat_conv_31_kernel_read_readvariableop@savev2_model_15_gat_conv_31_attn_kernel_self_read_readvariableopAsavev2_model_15_gat_conv_31_attn_kernel_neigh_read_readvariableop3savev2_model_15_dense_47_kernel_read_readvariableop1savev2_model_15_dense_47_bias_read_readvariableop3savev2_model_15_dense_45_kernel_read_readvariableop1savev2_model_15_dense_45_bias_read_readvariableop3savev2_model_15_dense_46_kernel_read_readvariableop1savev2_model_15_dense_46_bias_read_readvariableop@savev2_model_15_batch_normalization_30_gamma_read_readvariableop?savev2_model_15_batch_normalization_30_beta_read_readvariableop@savev2_model_15_batch_normalization_31_gamma_read_readvariableop?savev2_model_15_batch_normalization_31_beta_read_readvariableopFsavev2_model_15_batch_normalization_30_moving_mean_read_readvariableopJsavev2_model_15_batch_normalization_30_moving_variance_read_readvariableopFsavev2_model_15_batch_normalization_31_moving_mean_read_readvariableopJsavev2_model_15_batch_normalization_31_moving_variance_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *#
dtypes
22
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*Ќ
_input_shapesї
Є: :
:
:
:P:::::(:::::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:
:($
"
_output_shapes
:
:($
"
_output_shapes
:
:($
"
_output_shapes
:P:($
"
_output_shapes
::($
"
_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$	 

_output_shapes

:(: 


_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
ё
y
M__inference_global_avg_pool_15_layer_call_and_return_conditional_losses_82941
inputs_0
inputs_1	
identity
SegmentMeanSegmentMeaninputs_0inputs_1*
T0*
Tindices0	*'
_output_shapes
:€€€€€€€€€2
SegmentMeanh
IdentityIdentitySegmentMean:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*5
_input_shapes$
":€€€€€€€€€:€€€€€€€€€:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1
С	
№
C__inference_dense_47_layer_call_and_return_conditional_losses_82969

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
оя
Э
 __inference__wrapped_model_79869

args_0
args_0_1	
args_0_2
args_0_3	
args_0_4	8
4model_15_gat_conv_30_reshape_readvariableop_resource:
6model_15_gat_conv_30_transpose_readvariableop_resource<
8model_15_gat_conv_30_transpose_1_readvariableop_resource8
4model_15_gat_conv_31_reshape_readvariableop_resource:
6model_15_gat_conv_31_transpose_readvariableop_resource<
8model_15_gat_conv_31_transpose_1_readvariableop_resource4
0model_15_dense_45_matmul_readvariableop_resource5
1model_15_dense_45_biasadd_readvariableop_resource@
<model_15_batch_normalization_30_cast_readvariableop_resourceB
>model_15_batch_normalization_30_cast_1_readvariableop_resourceB
>model_15_batch_normalization_30_cast_2_readvariableop_resourceB
>model_15_batch_normalization_30_cast_3_readvariableop_resource4
0model_15_dense_46_matmul_readvariableop_resource5
1model_15_dense_46_biasadd_readvariableop_resource@
<model_15_batch_normalization_31_cast_readvariableop_resourceB
>model_15_batch_normalization_31_cast_1_readvariableop_resourceB
>model_15_batch_normalization_31_cast_2_readvariableop_resourceB
>model_15_batch_normalization_31_cast_3_readvariableop_resource4
0model_15_dense_47_matmul_readvariableop_resource5
1model_15_dense_47_biasadd_readvariableop_resource
identityИҐ3model_15/batch_normalization_30/Cast/ReadVariableOpҐ5model_15/batch_normalization_30/Cast_1/ReadVariableOpҐ5model_15/batch_normalization_30/Cast_2/ReadVariableOpҐ5model_15/batch_normalization_30/Cast_3/ReadVariableOpҐ3model_15/batch_normalization_31/Cast/ReadVariableOpҐ5model_15/batch_normalization_31/Cast_1/ReadVariableOpҐ5model_15/batch_normalization_31/Cast_2/ReadVariableOpҐ5model_15/batch_normalization_31/Cast_3/ReadVariableOpҐ(model_15/dense_45/BiasAdd/ReadVariableOpҐ'model_15/dense_45/MatMul/ReadVariableOpҐ(model_15/dense_46/BiasAdd/ReadVariableOpҐ'model_15/dense_46/MatMul/ReadVariableOpҐ(model_15/dense_47/BiasAdd/ReadVariableOpҐ'model_15/dense_47/MatMul/ReadVariableOpҐ+model_15/gat_conv_30/Reshape/ReadVariableOpҐ-model_15/gat_conv_30/transpose/ReadVariableOpҐ/model_15/gat_conv_30/transpose_1/ReadVariableOpҐ+model_15/gat_conv_31/Reshape/ReadVariableOpҐ-model_15/gat_conv_31/transpose/ReadVariableOpҐ/model_15/gat_conv_31/transpose_1/ReadVariableOp”
+model_15/gat_conv_30/Reshape/ReadVariableOpReadVariableOp4model_15_gat_conv_30_reshape_readvariableop_resource*"
_output_shapes
:
*
dtype02-
+model_15/gat_conv_30/Reshape/ReadVariableOpЩ
"model_15/gat_conv_30/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   2$
"model_15/gat_conv_30/Reshape/shape“
model_15/gat_conv_30/ReshapeReshape3model_15/gat_conv_30/Reshape/ReadVariableOp:value:0+model_15/gat_conv_30/Reshape/shape:output:0*
T0*
_output_shapes

:P2
model_15/gat_conv_30/Reshapeў
-model_15/gat_conv_30/transpose/ReadVariableOpReadVariableOp6model_15_gat_conv_30_transpose_readvariableop_resource*"
_output_shapes
:
*
dtype02/
-model_15/gat_conv_30/transpose/ReadVariableOpЯ
#model_15/gat_conv_30/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#model_15/gat_conv_30/transpose/permя
model_15/gat_conv_30/transpose	Transpose5model_15/gat_conv_30/transpose/ReadVariableOp:value:0,model_15/gat_conv_30/transpose/perm:output:0*
T0*"
_output_shapes
:
2 
model_15/gat_conv_30/transposeя
/model_15/gat_conv_30/transpose_1/ReadVariableOpReadVariableOp8model_15_gat_conv_30_transpose_1_readvariableop_resource*"
_output_shapes
:
*
dtype021
/model_15/gat_conv_30/transpose_1/ReadVariableOp£
%model_15/gat_conv_30/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%model_15/gat_conv_30/transpose_1/permз
 model_15/gat_conv_30/transpose_1	Transpose7model_15/gat_conv_30/transpose_1/ReadVariableOp:value:0.model_15/gat_conv_30/transpose_1/perm:output:0*
T0*"
_output_shapes
:
2"
 model_15/gat_conv_30/transpose_1~
model_15/gat_conv_30/ShapeShapeargs_0*
T0*
_output_shapes
:*
out_type0	2
model_15/gat_conv_30/ShapeЮ
(model_15/gat_conv_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_15/gat_conv_30/strided_slice/stackҐ
*model_15/gat_conv_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_15/gat_conv_30/strided_slice/stack_1Ґ
*model_15/gat_conv_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_15/gat_conv_30/strided_slice/stack_2а
"model_15/gat_conv_30/strided_sliceStridedSlice#model_15/gat_conv_30/Shape:output:01model_15/gat_conv_30/strided_slice/stack:output:03model_15/gat_conv_30/strided_slice/stack_1:output:03model_15/gat_conv_30/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2$
"model_15/gat_conv_30/strided_slice©
*model_15/gat_conv_30/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*model_15/gat_conv_30/strided_slice_1/stack≠
,model_15/gat_conv_30/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2.
,model_15/gat_conv_30/strided_slice_1/stack_1≠
,model_15/gat_conv_30/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,model_15/gat_conv_30/strided_slice_1/stack_2с
$model_15/gat_conv_30/strided_slice_1StridedSliceargs_0_13model_15/gat_conv_30/strided_slice_1/stack:output:05model_15/gat_conv_30/strided_slice_1/stack_1:output:05model_15/gat_conv_30/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2&
$model_15/gat_conv_30/strided_slice_1©
*model_15/gat_conv_30/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2,
*model_15/gat_conv_30/strided_slice_2/stack≠
,model_15/gat_conv_30/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2.
,model_15/gat_conv_30/strided_slice_2/stack_1≠
,model_15/gat_conv_30/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,model_15/gat_conv_30/strided_slice_2/stack_2с
$model_15/gat_conv_30/strided_slice_2StridedSliceargs_0_13model_15/gat_conv_30/strided_slice_2/stack:output:05model_15/gat_conv_30/strided_slice_2/stack_1:output:05model_15/gat_conv_30/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2&
$model_15/gat_conv_30/strided_slice_2ц
model_15/gat_conv_30/NotEqualNotEqual-model_15/gat_conv_30/strided_slice_1:output:0-model_15/gat_conv_30/strided_slice_2:output:0*
T0	*#
_output_shapes
:€€€€€€€€€*
incompatible_shape_error( 2
model_15/gat_conv_30/NotEqualЊ
 model_15/gat_conv_30/EnsureShapeEnsureShape!model_15/gat_conv_30/NotEqual:z:0*
T0
*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€2"
 model_15/gat_conv_30/EnsureShapeЖ
 model_15/gat_conv_30/range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2"
 model_15/gat_conv_30/range/startЖ
 model_15/gat_conv_30/range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2"
 model_15/gat_conv_30/range/deltaх
model_15/gat_conv_30/rangeRange)model_15/gat_conv_30/range/start:output:0+model_15/gat_conv_30/strided_slice:output:0)model_15/gat_conv_30/range/delta:output:0*

Tidx0	*#
_output_shapes
:€€€€€€€€€2
model_15/gat_conv_30/range©
*model_15/gat_conv_30/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*model_15/gat_conv_30/strided_slice_3/stack≠
,model_15/gat_conv_30/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,model_15/gat_conv_30/strided_slice_3/stack_1≠
,model_15/gat_conv_30/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,model_15/gat_conv_30/strided_slice_3/stack_2Ъ
$model_15/gat_conv_30/strided_slice_3StridedSlice#model_15/gat_conv_30/range:output:03model_15/gat_conv_30/strided_slice_3/stack:output:05model_15/gat_conv_30/strided_slice_3/stack_1:output:05model_15/gat_conv_30/strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2&
$model_15/gat_conv_30/strided_slice_3М
#model_15/gat_conv_30/Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_15/gat_conv_30/Repeat/repeats™
 model_15/gat_conv_30/Repeat/CastCast,model_15/gat_conv_30/Repeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 model_15/gat_conv_30/Repeat/Cast£
!model_15/gat_conv_30/Repeat/ShapeShape-model_15/gat_conv_30/strided_slice_3:output:0*
T0	*
_output_shapes
:2#
!model_15/gat_conv_30/Repeat/ShapeЩ
)model_15/gat_conv_30/Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2+
)model_15/gat_conv_30/Repeat/Reshape/shapeЭ
+model_15/gat_conv_30/Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2-
+model_15/gat_conv_30/Repeat/Reshape/shape_1“
#model_15/gat_conv_30/Repeat/ReshapeReshape$model_15/gat_conv_30/Repeat/Cast:y:04model_15/gat_conv_30/Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2%
#model_15/gat_conv_30/Repeat/ReshapeЪ
*model_15/gat_conv_30/Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*model_15/gat_conv_30/Repeat/ExpandDims/dimш
&model_15/gat_conv_30/Repeat/ExpandDims
ExpandDims-model_15/gat_conv_30/strided_slice_3:output:03model_15/gat_conv_30/Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2(
&model_15/gat_conv_30/Repeat/ExpandDimsЮ
,model_15/gat_conv_30/Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2.
,model_15/gat_conv_30/Repeat/Tile/multiples/0Ю
,model_15/gat_conv_30/Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2.
,model_15/gat_conv_30/Repeat/Tile/multiples/1™
*model_15/gat_conv_30/Repeat/Tile/multiplesPack5model_15/gat_conv_30/Repeat/Tile/multiples/0:output:05model_15/gat_conv_30/Repeat/Tile/multiples/1:output:0,model_15/gat_conv_30/Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2,
*model_15/gat_conv_30/Repeat/Tile/multiplesи
 model_15/gat_conv_30/Repeat/TileTile/model_15/gat_conv_30/Repeat/ExpandDims:output:03model_15/gat_conv_30/Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2"
 model_15/gat_conv_30/Repeat/Tileђ
/model_15/gat_conv_30/Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/model_15/gat_conv_30/Repeat/strided_slice/stack∞
1model_15/gat_conv_30/Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1model_15/gat_conv_30/Repeat/strided_slice/stack_1∞
1model_15/gat_conv_30/Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1model_15/gat_conv_30/Repeat/strided_slice/stack_2И
)model_15/gat_conv_30/Repeat/strided_sliceStridedSlice*model_15/gat_conv_30/Repeat/Shape:output:08model_15/gat_conv_30/Repeat/strided_slice/stack:output:0:model_15/gat_conv_30/Repeat/strided_slice/stack_1:output:0:model_15/gat_conv_30/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2+
)model_15/gat_conv_30/Repeat/strided_slice∞
1model_15/gat_conv_30/Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:23
1model_15/gat_conv_30/Repeat/strided_slice_1/stackі
3model_15/gat_conv_30/Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3model_15/gat_conv_30/Repeat/strided_slice_1/stack_1і
3model_15/gat_conv_30/Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_15/gat_conv_30/Repeat/strided_slice_1/stack_2Ф
+model_15/gat_conv_30/Repeat/strided_slice_1StridedSlice*model_15/gat_conv_30/Repeat/Shape:output:0:model_15/gat_conv_30/Repeat/strided_slice_1/stack:output:0<model_15/gat_conv_30/Repeat/strided_slice_1/stack_1:output:0<model_15/gat_conv_30/Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+model_15/gat_conv_30/Repeat/strided_slice_1ќ
model_15/gat_conv_30/Repeat/mulMul,model_15/gat_conv_30/Repeat/Reshape:output:04model_15/gat_conv_30/Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2!
model_15/gat_conv_30/Repeat/mul∞
1model_15/gat_conv_30/Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:23
1model_15/gat_conv_30/Repeat/strided_slice_2/stackі
3model_15/gat_conv_30/Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 25
3model_15/gat_conv_30/Repeat/strided_slice_2/stack_1і
3model_15/gat_conv_30/Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_15/gat_conv_30/Repeat/strided_slice_2/stack_2О
+model_15/gat_conv_30/Repeat/strided_slice_2StridedSlice*model_15/gat_conv_30/Repeat/Shape:output:0:model_15/gat_conv_30/Repeat/strided_slice_2/stack:output:0<model_15/gat_conv_30/Repeat/strided_slice_2/stack_1:output:0<model_15/gat_conv_30/Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2-
+model_15/gat_conv_30/Repeat/strided_slice_2µ
+model_15/gat_conv_30/Repeat/concat/values_1Pack#model_15/gat_conv_30/Repeat/mul:z:0*
N*
T0*
_output_shapes
:2-
+model_15/gat_conv_30/Repeat/concat/values_1Ф
'model_15/gat_conv_30/Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_15/gat_conv_30/Repeat/concat/axis‘
"model_15/gat_conv_30/Repeat/concatConcatV22model_15/gat_conv_30/Repeat/strided_slice:output:04model_15/gat_conv_30/Repeat/concat/values_1:output:04model_15/gat_conv_30/Repeat/strided_slice_2:output:00model_15/gat_conv_30/Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2$
"model_15/gat_conv_30/Repeat/concatм
%model_15/gat_conv_30/Repeat/Reshape_1Reshape)model_15/gat_conv_30/Repeat/Tile:output:0+model_15/gat_conv_30/Repeat/concat:output:0*
T0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2'
%model_15/gat_conv_30/Repeat/Reshape_1К
'model_15/gat_conv_30/boolean_mask/ShapeShapeargs_0_1*
T0	*
_output_shapes
:2)
'model_15/gat_conv_30/boolean_mask/ShapeЄ
5model_15/gat_conv_30/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5model_15/gat_conv_30/boolean_mask/strided_slice/stackЉ
7model_15/gat_conv_30/boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7model_15/gat_conv_30/boolean_mask/strided_slice/stack_1Љ
7model_15/gat_conv_30/boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7model_15/gat_conv_30/boolean_mask/strided_slice/stack_2Ъ
/model_15/gat_conv_30/boolean_mask/strided_sliceStridedSlice0model_15/gat_conv_30/boolean_mask/Shape:output:0>model_15/gat_conv_30/boolean_mask/strided_slice/stack:output:0@model_15/gat_conv_30/boolean_mask/strided_slice/stack_1:output:0@model_15/gat_conv_30/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:21
/model_15/gat_conv_30/boolean_mask/strided_sliceЊ
8model_15/gat_conv_30/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8model_15/gat_conv_30/boolean_mask/Prod/reduction_indicesц
&model_15/gat_conv_30/boolean_mask/ProdProd8model_15/gat_conv_30/boolean_mask/strided_slice:output:0Amodel_15/gat_conv_30/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2(
&model_15/gat_conv_30/boolean_mask/ProdО
)model_15/gat_conv_30/boolean_mask/Shape_1Shapeargs_0_1*
T0	*
_output_shapes
:2+
)model_15/gat_conv_30/boolean_mask/Shape_1Љ
7model_15/gat_conv_30/boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7model_15/gat_conv_30/boolean_mask/strided_slice_1/stackј
9model_15/gat_conv_30/boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2;
9model_15/gat_conv_30/boolean_mask/strided_slice_1/stack_1ј
9model_15/gat_conv_30/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9model_15/gat_conv_30/boolean_mask/strided_slice_1/stack_2ґ
1model_15/gat_conv_30/boolean_mask/strided_slice_1StridedSlice2model_15/gat_conv_30/boolean_mask/Shape_1:output:0@model_15/gat_conv_30/boolean_mask/strided_slice_1/stack:output:0Bmodel_15/gat_conv_30/boolean_mask/strided_slice_1/stack_1:output:0Bmodel_15/gat_conv_30/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask23
1model_15/gat_conv_30/boolean_mask/strided_slice_1О
)model_15/gat_conv_30/boolean_mask/Shape_2Shapeargs_0_1*
T0	*
_output_shapes
:2+
)model_15/gat_conv_30/boolean_mask/Shape_2Љ
7model_15/gat_conv_30/boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7model_15/gat_conv_30/boolean_mask/strided_slice_2/stackј
9model_15/gat_conv_30/boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2;
9model_15/gat_conv_30/boolean_mask/strided_slice_2/stack_1ј
9model_15/gat_conv_30/boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9model_15/gat_conv_30/boolean_mask/strided_slice_2/stack_2ґ
1model_15/gat_conv_30/boolean_mask/strided_slice_2StridedSlice2model_15/gat_conv_30/boolean_mask/Shape_2:output:0@model_15/gat_conv_30/boolean_mask/strided_slice_2/stack:output:0Bmodel_15/gat_conv_30/boolean_mask/strided_slice_2/stack_1:output:0Bmodel_15/gat_conv_30/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask23
1model_15/gat_conv_30/boolean_mask/strided_slice_2Ќ
1model_15/gat_conv_30/boolean_mask/concat/values_1Pack/model_15/gat_conv_30/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:23
1model_15/gat_conv_30/boolean_mask/concat/values_1†
-model_15/gat_conv_30/boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-model_15/gat_conv_30/boolean_mask/concat/axisъ
(model_15/gat_conv_30/boolean_mask/concatConcatV2:model_15/gat_conv_30/boolean_mask/strided_slice_1:output:0:model_15/gat_conv_30/boolean_mask/concat/values_1:output:0:model_15/gat_conv_30/boolean_mask/strided_slice_2:output:06model_15/gat_conv_30/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2*
(model_15/gat_conv_30/boolean_mask/concat–
)model_15/gat_conv_30/boolean_mask/ReshapeReshapeargs_0_11model_15/gat_conv_30/boolean_mask/concat:output:0*
T0	*'
_output_shapes
:€€€€€€€€€2+
)model_15/gat_conv_30/boolean_mask/Reshapeє
1model_15/gat_conv_30/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€23
1model_15/gat_conv_30/boolean_mask/Reshape_1/shapeъ
+model_15/gat_conv_30/boolean_mask/Reshape_1Reshape)model_15/gat_conv_30/EnsureShape:output:0:model_15/gat_conv_30/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:€€€€€€€€€2-
+model_15/gat_conv_30/boolean_mask/Reshape_1Ї
'model_15/gat_conv_30/boolean_mask/WhereWhere4model_15/gat_conv_30/boolean_mask/Reshape_1:output:0*'
_output_shapes
:€€€€€€€€€2)
'model_15/gat_conv_30/boolean_mask/Where„
)model_15/gat_conv_30/boolean_mask/SqueezeSqueeze/model_15/gat_conv_30/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:€€€€€€€€€*
squeeze_dims
2+
)model_15/gat_conv_30/boolean_mask/Squeeze§
/model_15/gat_conv_30/boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/model_15/gat_conv_30/boolean_mask/GatherV2/axisџ
*model_15/gat_conv_30/boolean_mask/GatherV2GatherV22model_15/gat_conv_30/boolean_mask/Reshape:output:02model_15/gat_conv_30/boolean_mask/Squeeze:output:08model_15/gat_conv_30/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:€€€€€€€€€2,
*model_15/gat_conv_30/boolean_mask/GatherV2Ж
 model_15/gat_conv_30/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 model_15/gat_conv_30/concat/axisС
model_15/gat_conv_30/concatConcatV23model_15/gat_conv_30/boolean_mask/GatherV2:output:0.model_15/gat_conv_30/Repeat/Reshape_1:output:0)model_15/gat_conv_30/concat/axis:output:0*
N*
T0	*'
_output_shapes
:€€€€€€€€€2
model_15/gat_conv_30/concat©
*model_15/gat_conv_30/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*model_15/gat_conv_30/strided_slice_4/stack≠
,model_15/gat_conv_30/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2.
,model_15/gat_conv_30/strided_slice_4/stack_1≠
,model_15/gat_conv_30/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,model_15/gat_conv_30/strided_slice_4/stack_2Ъ
$model_15/gat_conv_30/strided_slice_4StridedSlice$model_15/gat_conv_30/concat:output:03model_15/gat_conv_30/strided_slice_4/stack:output:05model_15/gat_conv_30/strided_slice_4/stack_1:output:05model_15/gat_conv_30/strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2&
$model_15/gat_conv_30/strided_slice_4©
$model_15/gat_conv_30/ones_like/ShapeShape-model_15/gat_conv_30/strided_slice_4:output:0*
T0	*
_output_shapes
:2&
$model_15/gat_conv_30/ones_like/ShapeО
$model_15/gat_conv_30/ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2&
$model_15/gat_conv_30/ones_like/Const‘
model_15/gat_conv_30/ones_likeFill-model_15/gat_conv_30/ones_like/Shape:output:0-model_15/gat_conv_30/ones_like/Const:output:0*
T0	*#
_output_shapes
:€€€€€€€€€2 
model_15/gat_conv_30/ones_likeр
.model_15/gat_conv_30/SparseReorder/input_shapePack+model_15/gat_conv_30/strided_slice:output:0+model_15/gat_conv_30/strided_slice:output:0*
N*
T0	*
_output_shapes
:20
.model_15/gat_conv_30/SparseReorder/input_shapeҐ
"model_15/gat_conv_30/SparseReorderSparseReorder$model_15/gat_conv_30/concat:output:0'model_15/gat_conv_30/ones_like:output:07model_15/gat_conv_30/SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":€€€€€€€€€:€€€€€€€€€2$
"model_15/gat_conv_30/SparseReorder©
*model_15/gat_conv_30/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"    ю€€€2,
*model_15/gat_conv_30/strided_slice_5/stack≠
,model_15/gat_conv_30/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    €€€€2.
,model_15/gat_conv_30/strided_slice_5/stack_1≠
,model_15/gat_conv_30/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,model_15/gat_conv_30/strided_slice_5/stack_2©
$model_15/gat_conv_30/strided_slice_5StridedSlice3model_15/gat_conv_30/SparseReorder:output_indices:03model_15/gat_conv_30/strided_slice_5/stack:output:05model_15/gat_conv_30/strided_slice_5/stack_1:output:05model_15/gat_conv_30/strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2&
$model_15/gat_conv_30/strided_slice_5©
*model_15/gat_conv_30/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"    €€€€2,
*model_15/gat_conv_30/strided_slice_6/stack≠
,model_15/gat_conv_30/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,model_15/gat_conv_30/strided_slice_6/stack_1≠
,model_15/gat_conv_30/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,model_15/gat_conv_30/strided_slice_6/stack_2©
$model_15/gat_conv_30/strided_slice_6StridedSlice3model_15/gat_conv_30/SparseReorder:output_indices:03model_15/gat_conv_30/strided_slice_6/stack:output:05model_15/gat_conv_30/strided_slice_6/stack_1:output:05model_15/gat_conv_30/strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2&
$model_15/gat_conv_30/strided_slice_6•
model_15/gat_conv_30/MatMulMatMulargs_0%model_15/gat_conv_30/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€P2
model_15/gat_conv_30/MatMul°
$model_15/gat_conv_30/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€
      2&
$model_15/gat_conv_30/Reshape_1/shape„
model_15/gat_conv_30/Reshape_1Reshape%model_15/gat_conv_30/MatMul:product:0-model_15/gat_conv_30/Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€
2 
model_15/gat_conv_30/Reshape_1Њ
model_15/gat_conv_30/mulMul'model_15/gat_conv_30/Reshape_1:output:0"model_15/gat_conv_30/transpose:y:0*
T0*+
_output_shapes
:€€€€€€€€€
2
model_15/gat_conv_30/mul£
*model_15/gat_conv_30/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2,
*model_15/gat_conv_30/Sum/reduction_indicesј
model_15/gat_conv_30/SumSummodel_15/gat_conv_30/mul:z:03model_15/gat_conv_30/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
model_15/gat_conv_30/SumК
"model_15/gat_conv_30/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"model_15/gat_conv_30/GatherV2/axisЮ
model_15/gat_conv_30/GatherV2GatherV2!model_15/gat_conv_30/Sum:output:0-model_15/gat_conv_30/strided_slice_5:output:0+model_15/gat_conv_30/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2
model_15/gat_conv_30/GatherV2ƒ
model_15/gat_conv_30/mul_1Mul'model_15/gat_conv_30/Reshape_1:output:0$model_15/gat_conv_30/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€
2
model_15/gat_conv_30/mul_1І
,model_15/gat_conv_30/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2.
,model_15/gat_conv_30/Sum_1/reduction_indices»
model_15/gat_conv_30/Sum_1Summodel_15/gat_conv_30/mul_1:z:05model_15/gat_conv_30/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
model_15/gat_conv_30/Sum_1О
$model_15/gat_conv_30/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$model_15/gat_conv_30/GatherV2_1/axis¶
model_15/gat_conv_30/GatherV2_1GatherV2#model_15/gat_conv_30/Sum_1:output:0-model_15/gat_conv_30/strided_slice_6:output:0-model_15/gat_conv_30/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2!
model_15/gat_conv_30/GatherV2_1Ѕ
model_15/gat_conv_30/addAddV2&model_15/gat_conv_30/GatherV2:output:0(model_15/gat_conv_30/GatherV2_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
model_15/gat_conv_30/addФ
model_15/gat_conv_30/LeakyRelu	LeakyRelumodel_15/gat_conv_30/add:z:0*'
_output_shapes
:€€€€€€€€€
2 
model_15/gat_conv_30/LeakyRelu»
'model_15/gat_conv_30/UnsortedSegmentMaxUnsortedSegmentMax,model_15/gat_conv_30/LeakyRelu:activations:0-model_15/gat_conv_30/strided_slice_5:output:0+model_15/gat_conv_30/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€
2)
'model_15/gat_conv_30/UnsortedSegmentMaxО
$model_15/gat_conv_30/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$model_15/gat_conv_30/GatherV2_2/axis≥
model_15/gat_conv_30/GatherV2_2GatherV20model_15/gat_conv_30/UnsortedSegmentMax:output:0-model_15/gat_conv_30/strided_slice_5:output:0-model_15/gat_conv_30/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2!
model_15/gat_conv_30/GatherV2_2≈
model_15/gat_conv_30/subSub,model_15/gat_conv_30/LeakyRelu:activations:0(model_15/gat_conv_30/GatherV2_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
model_15/gat_conv_30/subЛ
model_15/gat_conv_30/ExpExpmodel_15/gat_conv_30/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€
2
model_15/gat_conv_30/ExpЄ
'model_15/gat_conv_30/UnsortedSegmentSumUnsortedSegmentSummodel_15/gat_conv_30/Exp:y:0-model_15/gat_conv_30/strided_slice_5:output:0+model_15/gat_conv_30/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€
2)
'model_15/gat_conv_30/UnsortedSegmentSumБ
model_15/gat_conv_30/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_pЙ02
model_15/gat_conv_30/add_1/yћ
model_15/gat_conv_30/add_1AddV20model_15/gat_conv_30/UnsortedSegmentSum:output:0%model_15/gat_conv_30/add_1/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
model_15/gat_conv_30/add_1О
$model_15/gat_conv_30/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$model_15/gat_conv_30/GatherV2_3/axis°
model_15/gat_conv_30/GatherV2_3GatherV2model_15/gat_conv_30/add_1:z:0-model_15/gat_conv_30/strided_slice_5:output:0-model_15/gat_conv_30/GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2!
model_15/gat_conv_30/GatherV2_3Ѕ
model_15/gat_conv_30/truedivRealDivmodel_15/gat_conv_30/Exp:y:0(model_15/gat_conv_30/GatherV2_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
model_15/gat_conv_30/truedivЃ
%model_15/gat_conv_30/dropout/IdentityIdentity model_15/gat_conv_30/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€
2'
%model_15/gat_conv_30/dropout/Identity©
*model_15/gat_conv_30/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*model_15/gat_conv_30/strided_slice_7/stack≠
,model_15/gat_conv_30/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,model_15/gat_conv_30/strided_slice_7/stack_1≠
,model_15/gat_conv_30/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,model_15/gat_conv_30/strided_slice_7/stack_2Ь
$model_15/gat_conv_30/strided_slice_7StridedSlice.model_15/gat_conv_30/dropout/Identity:output:03model_15/gat_conv_30/strided_slice_7/stack:output:05model_15/gat_conv_30/strided_slice_7/stack_1:output:05model_15/gat_conv_30/strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:€€€€€€€€€
*
ellipsis_mask*
new_axis_mask2&
$model_15/gat_conv_30/strided_slice_7О
$model_15/gat_conv_30/GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$model_15/gat_conv_30/GatherV2_4/axisЃ
model_15/gat_conv_30/GatherV2_4GatherV2'model_15/gat_conv_30/Reshape_1:output:0-model_15/gat_conv_30/strided_slice_6:output:0-model_15/gat_conv_30/GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:€€€€€€€€€
2!
model_15/gat_conv_30/GatherV2_4ќ
model_15/gat_conv_30/mul_2Mul-model_15/gat_conv_30/strided_slice_7:output:0(model_15/gat_conv_30/GatherV2_4:output:0*
T0*+
_output_shapes
:€€€€€€€€€
2
model_15/gat_conv_30/mul_2¬
)model_15/gat_conv_30/UnsortedSegmentSum_1UnsortedSegmentSummodel_15/gat_conv_30/mul_2:z:0-model_15/gat_conv_30/strided_slice_5:output:0+model_15/gat_conv_30/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:€€€€€€€€€
2+
)model_15/gat_conv_30/UnsortedSegmentSum_1Э
$model_15/gat_conv_30/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   2&
$model_15/gat_conv_30/Reshape_2/shapeа
model_15/gat_conv_30/Reshape_2Reshape2model_15/gat_conv_30/UnsortedSegmentSum_1:output:0-model_15/gat_conv_30/Reshape_2/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€P2 
model_15/gat_conv_30/Reshape_2Щ
model_15/gat_conv_30/ReluRelu'model_15/gat_conv_30/Reshape_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€P2
model_15/gat_conv_30/Relu”
+model_15/gat_conv_31/Reshape/ReadVariableOpReadVariableOp4model_15_gat_conv_31_reshape_readvariableop_resource*"
_output_shapes
:P*
dtype02-
+model_15/gat_conv_31/Reshape/ReadVariableOpЩ
"model_15/gat_conv_31/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2$
"model_15/gat_conv_31/Reshape/shape“
model_15/gat_conv_31/ReshapeReshape3model_15/gat_conv_31/Reshape/ReadVariableOp:value:0+model_15/gat_conv_31/Reshape/shape:output:0*
T0*
_output_shapes

:P2
model_15/gat_conv_31/Reshapeў
-model_15/gat_conv_31/transpose/ReadVariableOpReadVariableOp6model_15_gat_conv_31_transpose_readvariableop_resource*"
_output_shapes
:*
dtype02/
-model_15/gat_conv_31/transpose/ReadVariableOpЯ
#model_15/gat_conv_31/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#model_15/gat_conv_31/transpose/permя
model_15/gat_conv_31/transpose	Transpose5model_15/gat_conv_31/transpose/ReadVariableOp:value:0,model_15/gat_conv_31/transpose/perm:output:0*
T0*"
_output_shapes
:2 
model_15/gat_conv_31/transposeя
/model_15/gat_conv_31/transpose_1/ReadVariableOpReadVariableOp8model_15_gat_conv_31_transpose_1_readvariableop_resource*"
_output_shapes
:*
dtype021
/model_15/gat_conv_31/transpose_1/ReadVariableOp£
%model_15/gat_conv_31/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%model_15/gat_conv_31/transpose_1/permз
 model_15/gat_conv_31/transpose_1	Transpose7model_15/gat_conv_31/transpose_1/ReadVariableOp:value:0.model_15/gat_conv_31/transpose_1/perm:output:0*
T0*"
_output_shapes
:2"
 model_15/gat_conv_31/transpose_1Я
model_15/gat_conv_31/ShapeShape'model_15/gat_conv_30/Relu:activations:0*
T0*
_output_shapes
:*
out_type0	2
model_15/gat_conv_31/ShapeЮ
(model_15/gat_conv_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model_15/gat_conv_31/strided_slice/stackҐ
*model_15/gat_conv_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_15/gat_conv_31/strided_slice/stack_1Ґ
*model_15/gat_conv_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model_15/gat_conv_31/strided_slice/stack_2а
"model_15/gat_conv_31/strided_sliceStridedSlice#model_15/gat_conv_31/Shape:output:01model_15/gat_conv_31/strided_slice/stack:output:03model_15/gat_conv_31/strided_slice/stack_1:output:03model_15/gat_conv_31/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2$
"model_15/gat_conv_31/strided_slice©
*model_15/gat_conv_31/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*model_15/gat_conv_31/strided_slice_1/stack≠
,model_15/gat_conv_31/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2.
,model_15/gat_conv_31/strided_slice_1/stack_1≠
,model_15/gat_conv_31/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,model_15/gat_conv_31/strided_slice_1/stack_2с
$model_15/gat_conv_31/strided_slice_1StridedSliceargs_0_13model_15/gat_conv_31/strided_slice_1/stack:output:05model_15/gat_conv_31/strided_slice_1/stack_1:output:05model_15/gat_conv_31/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2&
$model_15/gat_conv_31/strided_slice_1©
*model_15/gat_conv_31/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2,
*model_15/gat_conv_31/strided_slice_2/stack≠
,model_15/gat_conv_31/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2.
,model_15/gat_conv_31/strided_slice_2/stack_1≠
,model_15/gat_conv_31/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,model_15/gat_conv_31/strided_slice_2/stack_2с
$model_15/gat_conv_31/strided_slice_2StridedSliceargs_0_13model_15/gat_conv_31/strided_slice_2/stack:output:05model_15/gat_conv_31/strided_slice_2/stack_1:output:05model_15/gat_conv_31/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2&
$model_15/gat_conv_31/strided_slice_2ц
model_15/gat_conv_31/NotEqualNotEqual-model_15/gat_conv_31/strided_slice_1:output:0-model_15/gat_conv_31/strided_slice_2:output:0*
T0	*#
_output_shapes
:€€€€€€€€€*
incompatible_shape_error( 2
model_15/gat_conv_31/NotEqualЊ
 model_15/gat_conv_31/EnsureShapeEnsureShape!model_15/gat_conv_31/NotEqual:z:0*
T0
*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€2"
 model_15/gat_conv_31/EnsureShapeЖ
 model_15/gat_conv_31/range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2"
 model_15/gat_conv_31/range/startЖ
 model_15/gat_conv_31/range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2"
 model_15/gat_conv_31/range/deltaх
model_15/gat_conv_31/rangeRange)model_15/gat_conv_31/range/start:output:0+model_15/gat_conv_31/strided_slice:output:0)model_15/gat_conv_31/range/delta:output:0*

Tidx0	*#
_output_shapes
:€€€€€€€€€2
model_15/gat_conv_31/range©
*model_15/gat_conv_31/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*model_15/gat_conv_31/strided_slice_3/stack≠
,model_15/gat_conv_31/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,model_15/gat_conv_31/strided_slice_3/stack_1≠
,model_15/gat_conv_31/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,model_15/gat_conv_31/strided_slice_3/stack_2Ъ
$model_15/gat_conv_31/strided_slice_3StridedSlice#model_15/gat_conv_31/range:output:03model_15/gat_conv_31/strided_slice_3/stack:output:05model_15/gat_conv_31/strided_slice_3/stack_1:output:05model_15/gat_conv_31/strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2&
$model_15/gat_conv_31/strided_slice_3М
#model_15/gat_conv_31/Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2%
#model_15/gat_conv_31/Repeat/repeats™
 model_15/gat_conv_31/Repeat/CastCast,model_15/gat_conv_31/Repeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 model_15/gat_conv_31/Repeat/Cast£
!model_15/gat_conv_31/Repeat/ShapeShape-model_15/gat_conv_31/strided_slice_3:output:0*
T0	*
_output_shapes
:2#
!model_15/gat_conv_31/Repeat/ShapeЩ
)model_15/gat_conv_31/Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2+
)model_15/gat_conv_31/Repeat/Reshape/shapeЭ
+model_15/gat_conv_31/Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2-
+model_15/gat_conv_31/Repeat/Reshape/shape_1“
#model_15/gat_conv_31/Repeat/ReshapeReshape$model_15/gat_conv_31/Repeat/Cast:y:04model_15/gat_conv_31/Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2%
#model_15/gat_conv_31/Repeat/ReshapeЪ
*model_15/gat_conv_31/Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*model_15/gat_conv_31/Repeat/ExpandDims/dimш
&model_15/gat_conv_31/Repeat/ExpandDims
ExpandDims-model_15/gat_conv_31/strided_slice_3:output:03model_15/gat_conv_31/Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2(
&model_15/gat_conv_31/Repeat/ExpandDimsЮ
,model_15/gat_conv_31/Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2.
,model_15/gat_conv_31/Repeat/Tile/multiples/0Ю
,model_15/gat_conv_31/Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2.
,model_15/gat_conv_31/Repeat/Tile/multiples/1™
*model_15/gat_conv_31/Repeat/Tile/multiplesPack5model_15/gat_conv_31/Repeat/Tile/multiples/0:output:05model_15/gat_conv_31/Repeat/Tile/multiples/1:output:0,model_15/gat_conv_31/Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2,
*model_15/gat_conv_31/Repeat/Tile/multiplesи
 model_15/gat_conv_31/Repeat/TileTile/model_15/gat_conv_31/Repeat/ExpandDims:output:03model_15/gat_conv_31/Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2"
 model_15/gat_conv_31/Repeat/Tileђ
/model_15/gat_conv_31/Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/model_15/gat_conv_31/Repeat/strided_slice/stack∞
1model_15/gat_conv_31/Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1model_15/gat_conv_31/Repeat/strided_slice/stack_1∞
1model_15/gat_conv_31/Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1model_15/gat_conv_31/Repeat/strided_slice/stack_2И
)model_15/gat_conv_31/Repeat/strided_sliceStridedSlice*model_15/gat_conv_31/Repeat/Shape:output:08model_15/gat_conv_31/Repeat/strided_slice/stack:output:0:model_15/gat_conv_31/Repeat/strided_slice/stack_1:output:0:model_15/gat_conv_31/Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2+
)model_15/gat_conv_31/Repeat/strided_slice∞
1model_15/gat_conv_31/Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:23
1model_15/gat_conv_31/Repeat/strided_slice_1/stackі
3model_15/gat_conv_31/Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3model_15/gat_conv_31/Repeat/strided_slice_1/stack_1і
3model_15/gat_conv_31/Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_15/gat_conv_31/Repeat/strided_slice_1/stack_2Ф
+model_15/gat_conv_31/Repeat/strided_slice_1StridedSlice*model_15/gat_conv_31/Repeat/Shape:output:0:model_15/gat_conv_31/Repeat/strided_slice_1/stack:output:0<model_15/gat_conv_31/Repeat/strided_slice_1/stack_1:output:0<model_15/gat_conv_31/Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+model_15/gat_conv_31/Repeat/strided_slice_1ќ
model_15/gat_conv_31/Repeat/mulMul,model_15/gat_conv_31/Repeat/Reshape:output:04model_15/gat_conv_31/Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2!
model_15/gat_conv_31/Repeat/mul∞
1model_15/gat_conv_31/Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:23
1model_15/gat_conv_31/Repeat/strided_slice_2/stackі
3model_15/gat_conv_31/Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 25
3model_15/gat_conv_31/Repeat/strided_slice_2/stack_1і
3model_15/gat_conv_31/Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_15/gat_conv_31/Repeat/strided_slice_2/stack_2О
+model_15/gat_conv_31/Repeat/strided_slice_2StridedSlice*model_15/gat_conv_31/Repeat/Shape:output:0:model_15/gat_conv_31/Repeat/strided_slice_2/stack:output:0<model_15/gat_conv_31/Repeat/strided_slice_2/stack_1:output:0<model_15/gat_conv_31/Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2-
+model_15/gat_conv_31/Repeat/strided_slice_2µ
+model_15/gat_conv_31/Repeat/concat/values_1Pack#model_15/gat_conv_31/Repeat/mul:z:0*
N*
T0*
_output_shapes
:2-
+model_15/gat_conv_31/Repeat/concat/values_1Ф
'model_15/gat_conv_31/Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_15/gat_conv_31/Repeat/concat/axis‘
"model_15/gat_conv_31/Repeat/concatConcatV22model_15/gat_conv_31/Repeat/strided_slice:output:04model_15/gat_conv_31/Repeat/concat/values_1:output:04model_15/gat_conv_31/Repeat/strided_slice_2:output:00model_15/gat_conv_31/Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2$
"model_15/gat_conv_31/Repeat/concatм
%model_15/gat_conv_31/Repeat/Reshape_1Reshape)model_15/gat_conv_31/Repeat/Tile:output:0+model_15/gat_conv_31/Repeat/concat:output:0*
T0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2'
%model_15/gat_conv_31/Repeat/Reshape_1К
'model_15/gat_conv_31/boolean_mask/ShapeShapeargs_0_1*
T0	*
_output_shapes
:2)
'model_15/gat_conv_31/boolean_mask/ShapeЄ
5model_15/gat_conv_31/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5model_15/gat_conv_31/boolean_mask/strided_slice/stackЉ
7model_15/gat_conv_31/boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7model_15/gat_conv_31/boolean_mask/strided_slice/stack_1Љ
7model_15/gat_conv_31/boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7model_15/gat_conv_31/boolean_mask/strided_slice/stack_2Ъ
/model_15/gat_conv_31/boolean_mask/strided_sliceStridedSlice0model_15/gat_conv_31/boolean_mask/Shape:output:0>model_15/gat_conv_31/boolean_mask/strided_slice/stack:output:0@model_15/gat_conv_31/boolean_mask/strided_slice/stack_1:output:0@model_15/gat_conv_31/boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:21
/model_15/gat_conv_31/boolean_mask/strided_sliceЊ
8model_15/gat_conv_31/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8model_15/gat_conv_31/boolean_mask/Prod/reduction_indicesц
&model_15/gat_conv_31/boolean_mask/ProdProd8model_15/gat_conv_31/boolean_mask/strided_slice:output:0Amodel_15/gat_conv_31/boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2(
&model_15/gat_conv_31/boolean_mask/ProdО
)model_15/gat_conv_31/boolean_mask/Shape_1Shapeargs_0_1*
T0	*
_output_shapes
:2+
)model_15/gat_conv_31/boolean_mask/Shape_1Љ
7model_15/gat_conv_31/boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7model_15/gat_conv_31/boolean_mask/strided_slice_1/stackј
9model_15/gat_conv_31/boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2;
9model_15/gat_conv_31/boolean_mask/strided_slice_1/stack_1ј
9model_15/gat_conv_31/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9model_15/gat_conv_31/boolean_mask/strided_slice_1/stack_2ґ
1model_15/gat_conv_31/boolean_mask/strided_slice_1StridedSlice2model_15/gat_conv_31/boolean_mask/Shape_1:output:0@model_15/gat_conv_31/boolean_mask/strided_slice_1/stack:output:0Bmodel_15/gat_conv_31/boolean_mask/strided_slice_1/stack_1:output:0Bmodel_15/gat_conv_31/boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask23
1model_15/gat_conv_31/boolean_mask/strided_slice_1О
)model_15/gat_conv_31/boolean_mask/Shape_2Shapeargs_0_1*
T0	*
_output_shapes
:2+
)model_15/gat_conv_31/boolean_mask/Shape_2Љ
7model_15/gat_conv_31/boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7model_15/gat_conv_31/boolean_mask/strided_slice_2/stackј
9model_15/gat_conv_31/boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2;
9model_15/gat_conv_31/boolean_mask/strided_slice_2/stack_1ј
9model_15/gat_conv_31/boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9model_15/gat_conv_31/boolean_mask/strided_slice_2/stack_2ґ
1model_15/gat_conv_31/boolean_mask/strided_slice_2StridedSlice2model_15/gat_conv_31/boolean_mask/Shape_2:output:0@model_15/gat_conv_31/boolean_mask/strided_slice_2/stack:output:0Bmodel_15/gat_conv_31/boolean_mask/strided_slice_2/stack_1:output:0Bmodel_15/gat_conv_31/boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask23
1model_15/gat_conv_31/boolean_mask/strided_slice_2Ќ
1model_15/gat_conv_31/boolean_mask/concat/values_1Pack/model_15/gat_conv_31/boolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:23
1model_15/gat_conv_31/boolean_mask/concat/values_1†
-model_15/gat_conv_31/boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-model_15/gat_conv_31/boolean_mask/concat/axisъ
(model_15/gat_conv_31/boolean_mask/concatConcatV2:model_15/gat_conv_31/boolean_mask/strided_slice_1:output:0:model_15/gat_conv_31/boolean_mask/concat/values_1:output:0:model_15/gat_conv_31/boolean_mask/strided_slice_2:output:06model_15/gat_conv_31/boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2*
(model_15/gat_conv_31/boolean_mask/concat–
)model_15/gat_conv_31/boolean_mask/ReshapeReshapeargs_0_11model_15/gat_conv_31/boolean_mask/concat:output:0*
T0	*'
_output_shapes
:€€€€€€€€€2+
)model_15/gat_conv_31/boolean_mask/Reshapeє
1model_15/gat_conv_31/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€23
1model_15/gat_conv_31/boolean_mask/Reshape_1/shapeъ
+model_15/gat_conv_31/boolean_mask/Reshape_1Reshape)model_15/gat_conv_31/EnsureShape:output:0:model_15/gat_conv_31/boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:€€€€€€€€€2-
+model_15/gat_conv_31/boolean_mask/Reshape_1Ї
'model_15/gat_conv_31/boolean_mask/WhereWhere4model_15/gat_conv_31/boolean_mask/Reshape_1:output:0*'
_output_shapes
:€€€€€€€€€2)
'model_15/gat_conv_31/boolean_mask/Where„
)model_15/gat_conv_31/boolean_mask/SqueezeSqueeze/model_15/gat_conv_31/boolean_mask/Where:index:0*
T0	*#
_output_shapes
:€€€€€€€€€*
squeeze_dims
2+
)model_15/gat_conv_31/boolean_mask/Squeeze§
/model_15/gat_conv_31/boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/model_15/gat_conv_31/boolean_mask/GatherV2/axisџ
*model_15/gat_conv_31/boolean_mask/GatherV2GatherV22model_15/gat_conv_31/boolean_mask/Reshape:output:02model_15/gat_conv_31/boolean_mask/Squeeze:output:08model_15/gat_conv_31/boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:€€€€€€€€€2,
*model_15/gat_conv_31/boolean_mask/GatherV2Ж
 model_15/gat_conv_31/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 model_15/gat_conv_31/concat/axisС
model_15/gat_conv_31/concatConcatV23model_15/gat_conv_31/boolean_mask/GatherV2:output:0.model_15/gat_conv_31/Repeat/Reshape_1:output:0)model_15/gat_conv_31/concat/axis:output:0*
N*
T0	*'
_output_shapes
:€€€€€€€€€2
model_15/gat_conv_31/concat©
*model_15/gat_conv_31/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*model_15/gat_conv_31/strided_slice_4/stack≠
,model_15/gat_conv_31/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2.
,model_15/gat_conv_31/strided_slice_4/stack_1≠
,model_15/gat_conv_31/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,model_15/gat_conv_31/strided_slice_4/stack_2Ъ
$model_15/gat_conv_31/strided_slice_4StridedSlice$model_15/gat_conv_31/concat:output:03model_15/gat_conv_31/strided_slice_4/stack:output:05model_15/gat_conv_31/strided_slice_4/stack_1:output:05model_15/gat_conv_31/strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2&
$model_15/gat_conv_31/strided_slice_4©
$model_15/gat_conv_31/ones_like/ShapeShape-model_15/gat_conv_31/strided_slice_4:output:0*
T0	*
_output_shapes
:2&
$model_15/gat_conv_31/ones_like/ShapeО
$model_15/gat_conv_31/ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2&
$model_15/gat_conv_31/ones_like/Const‘
model_15/gat_conv_31/ones_likeFill-model_15/gat_conv_31/ones_like/Shape:output:0-model_15/gat_conv_31/ones_like/Const:output:0*
T0	*#
_output_shapes
:€€€€€€€€€2 
model_15/gat_conv_31/ones_likeр
.model_15/gat_conv_31/SparseReorder/input_shapePack+model_15/gat_conv_31/strided_slice:output:0+model_15/gat_conv_31/strided_slice:output:0*
N*
T0	*
_output_shapes
:20
.model_15/gat_conv_31/SparseReorder/input_shapeҐ
"model_15/gat_conv_31/SparseReorderSparseReorder$model_15/gat_conv_31/concat:output:0'model_15/gat_conv_31/ones_like:output:07model_15/gat_conv_31/SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":€€€€€€€€€:€€€€€€€€€2$
"model_15/gat_conv_31/SparseReorder©
*model_15/gat_conv_31/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"    ю€€€2,
*model_15/gat_conv_31/strided_slice_5/stack≠
,model_15/gat_conv_31/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    €€€€2.
,model_15/gat_conv_31/strided_slice_5/stack_1≠
,model_15/gat_conv_31/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,model_15/gat_conv_31/strided_slice_5/stack_2©
$model_15/gat_conv_31/strided_slice_5StridedSlice3model_15/gat_conv_31/SparseReorder:output_indices:03model_15/gat_conv_31/strided_slice_5/stack:output:05model_15/gat_conv_31/strided_slice_5/stack_1:output:05model_15/gat_conv_31/strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2&
$model_15/gat_conv_31/strided_slice_5©
*model_15/gat_conv_31/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"    €€€€2,
*model_15/gat_conv_31/strided_slice_6/stack≠
,model_15/gat_conv_31/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,model_15/gat_conv_31/strided_slice_6/stack_1≠
,model_15/gat_conv_31/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,model_15/gat_conv_31/strided_slice_6/stack_2©
$model_15/gat_conv_31/strided_slice_6StridedSlice3model_15/gat_conv_31/SparseReorder:output_indices:03model_15/gat_conv_31/strided_slice_6/stack:output:05model_15/gat_conv_31/strided_slice_6/stack_1:output:05model_15/gat_conv_31/strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2&
$model_15/gat_conv_31/strided_slice_6∆
model_15/gat_conv_31/MatMulMatMul'model_15/gat_conv_30/Relu:activations:0%model_15/gat_conv_31/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
model_15/gat_conv_31/MatMul°
$model_15/gat_conv_31/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€      2&
$model_15/gat_conv_31/Reshape_1/shape„
model_15/gat_conv_31/Reshape_1Reshape%model_15/gat_conv_31/MatMul:product:0-model_15/gat_conv_31/Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2 
model_15/gat_conv_31/Reshape_1Њ
model_15/gat_conv_31/mulMul'model_15/gat_conv_31/Reshape_1:output:0"model_15/gat_conv_31/transpose:y:0*
T0*+
_output_shapes
:€€€€€€€€€2
model_15/gat_conv_31/mul£
*model_15/gat_conv_31/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2,
*model_15/gat_conv_31/Sum/reduction_indicesј
model_15/gat_conv_31/SumSummodel_15/gat_conv_31/mul:z:03model_15/gat_conv_31/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
model_15/gat_conv_31/SumК
"model_15/gat_conv_31/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"model_15/gat_conv_31/GatherV2/axisЮ
model_15/gat_conv_31/GatherV2GatherV2!model_15/gat_conv_31/Sum:output:0-model_15/gat_conv_31/strided_slice_5:output:0+model_15/gat_conv_31/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2
model_15/gat_conv_31/GatherV2ƒ
model_15/gat_conv_31/mul_1Mul'model_15/gat_conv_31/Reshape_1:output:0$model_15/gat_conv_31/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€2
model_15/gat_conv_31/mul_1І
,model_15/gat_conv_31/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2.
,model_15/gat_conv_31/Sum_1/reduction_indices»
model_15/gat_conv_31/Sum_1Summodel_15/gat_conv_31/mul_1:z:05model_15/gat_conv_31/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
model_15/gat_conv_31/Sum_1О
$model_15/gat_conv_31/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$model_15/gat_conv_31/GatherV2_1/axis¶
model_15/gat_conv_31/GatherV2_1GatherV2#model_15/gat_conv_31/Sum_1:output:0-model_15/gat_conv_31/strided_slice_6:output:0-model_15/gat_conv_31/GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2!
model_15/gat_conv_31/GatherV2_1Ѕ
model_15/gat_conv_31/addAddV2&model_15/gat_conv_31/GatherV2:output:0(model_15/gat_conv_31/GatherV2_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
model_15/gat_conv_31/addФ
model_15/gat_conv_31/LeakyRelu	LeakyRelumodel_15/gat_conv_31/add:z:0*'
_output_shapes
:€€€€€€€€€2 
model_15/gat_conv_31/LeakyRelu»
'model_15/gat_conv_31/UnsortedSegmentMaxUnsortedSegmentMax,model_15/gat_conv_31/LeakyRelu:activations:0-model_15/gat_conv_31/strided_slice_5:output:0+model_15/gat_conv_31/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€2)
'model_15/gat_conv_31/UnsortedSegmentMaxО
$model_15/gat_conv_31/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$model_15/gat_conv_31/GatherV2_2/axis≥
model_15/gat_conv_31/GatherV2_2GatherV20model_15/gat_conv_31/UnsortedSegmentMax:output:0-model_15/gat_conv_31/strided_slice_5:output:0-model_15/gat_conv_31/GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2!
model_15/gat_conv_31/GatherV2_2≈
model_15/gat_conv_31/subSub,model_15/gat_conv_31/LeakyRelu:activations:0(model_15/gat_conv_31/GatherV2_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
model_15/gat_conv_31/subЛ
model_15/gat_conv_31/ExpExpmodel_15/gat_conv_31/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€2
model_15/gat_conv_31/ExpЄ
'model_15/gat_conv_31/UnsortedSegmentSumUnsortedSegmentSummodel_15/gat_conv_31/Exp:y:0-model_15/gat_conv_31/strided_slice_5:output:0+model_15/gat_conv_31/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€2)
'model_15/gat_conv_31/UnsortedSegmentSumБ
model_15/gat_conv_31/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_pЙ02
model_15/gat_conv_31/add_1/yћ
model_15/gat_conv_31/add_1AddV20model_15/gat_conv_31/UnsortedSegmentSum:output:0%model_15/gat_conv_31/add_1/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
model_15/gat_conv_31/add_1О
$model_15/gat_conv_31/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$model_15/gat_conv_31/GatherV2_3/axis°
model_15/gat_conv_31/GatherV2_3GatherV2model_15/gat_conv_31/add_1:z:0-model_15/gat_conv_31/strided_slice_5:output:0-model_15/gat_conv_31/GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€2!
model_15/gat_conv_31/GatherV2_3Ѕ
model_15/gat_conv_31/truedivRealDivmodel_15/gat_conv_31/Exp:y:0(model_15/gat_conv_31/GatherV2_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
model_15/gat_conv_31/truediv≤
'model_15/gat_conv_31/dropout_1/IdentityIdentity model_15/gat_conv_31/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€2)
'model_15/gat_conv_31/dropout_1/Identity©
*model_15/gat_conv_31/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*model_15/gat_conv_31/strided_slice_7/stack≠
,model_15/gat_conv_31/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,model_15/gat_conv_31/strided_slice_7/stack_1≠
,model_15/gat_conv_31/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,model_15/gat_conv_31/strided_slice_7/stack_2Ю
$model_15/gat_conv_31/strided_slice_7StridedSlice0model_15/gat_conv_31/dropout_1/Identity:output:03model_15/gat_conv_31/strided_slice_7/stack:output:05model_15/gat_conv_31/strided_slice_7/stack_1:output:05model_15/gat_conv_31/strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
new_axis_mask2&
$model_15/gat_conv_31/strided_slice_7О
$model_15/gat_conv_31/GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$model_15/gat_conv_31/GatherV2_4/axisЃ
model_15/gat_conv_31/GatherV2_4GatherV2'model_15/gat_conv_31/Reshape_1:output:0-model_15/gat_conv_31/strided_slice_6:output:0-model_15/gat_conv_31/GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:€€€€€€€€€2!
model_15/gat_conv_31/GatherV2_4ќ
model_15/gat_conv_31/mul_2Mul-model_15/gat_conv_31/strided_slice_7:output:0(model_15/gat_conv_31/GatherV2_4:output:0*
T0*+
_output_shapes
:€€€€€€€€€2
model_15/gat_conv_31/mul_2¬
)model_15/gat_conv_31/UnsortedSegmentSum_1UnsortedSegmentSummodel_15/gat_conv_31/mul_2:z:0-model_15/gat_conv_31/strided_slice_5:output:0+model_15/gat_conv_31/strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:€€€€€€€€€2+
)model_15/gat_conv_31/UnsortedSegmentSum_1Э
$model_15/gat_conv_31/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2&
$model_15/gat_conv_31/Reshape_2/shapeа
model_15/gat_conv_31/Reshape_2Reshape2model_15/gat_conv_31/UnsortedSegmentSum_1:output:0-model_15/gat_conv_31/Reshape_2/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€2 
model_15/gat_conv_31/Reshape_2Щ
model_15/gat_conv_31/ReluRelu'model_15/gat_conv_31/Reshape_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
model_15/gat_conv_31/Relu÷
'model_15/global_avg_pool_15/SegmentMeanSegmentMean'model_15/gat_conv_31/Relu:activations:0args_0_4*
T0*
Tindices0	*'
_output_shapes
:€€€€€€€€€2)
'model_15/global_avg_pool_15/SegmentMean”
&model_15/global_sum_pool_15/SegmentSum
SegmentSum'model_15/gat_conv_31/Relu:activations:0args_0_4*
T0*
Tindices0	*'
_output_shapes
:€€€€€€€€€2(
&model_15/global_sum_pool_15/SegmentSumn
model_15/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
model_15/concat/axisл
model_15/concatConcatV20model_15/global_avg_pool_15/SegmentMean:output:0/model_15/global_sum_pool_15/SegmentSum:output:0model_15/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€(2
model_15/concat√
'model_15/dense_45/MatMul/ReadVariableOpReadVariableOp0model_15_dense_45_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02)
'model_15/dense_45/MatMul/ReadVariableOpї
model_15/dense_45/MatMulMatMulmodel_15/concat:output:0/model_15/dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
model_15/dense_45/MatMul¬
(model_15/dense_45/BiasAdd/ReadVariableOpReadVariableOp1model_15_dense_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_15/dense_45/BiasAdd/ReadVariableOp…
model_15/dense_45/BiasAddBiasAdd"model_15/dense_45/MatMul:product:00model_15/dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
model_15/dense_45/BiasAdd∞
!model_15/leaky_re_lu_15/LeakyRelu	LeakyRelu"model_15/dense_45/BiasAdd:output:0*'
_output_shapes
:€€€€€€€€€*
alpha%Ќћћ=2#
!model_15/leaky_re_lu_15/LeakyReluг
3model_15/batch_normalization_30/Cast/ReadVariableOpReadVariableOp<model_15_batch_normalization_30_cast_readvariableop_resource*
_output_shapes
:*
dtype025
3model_15/batch_normalization_30/Cast/ReadVariableOpй
5model_15/batch_normalization_30/Cast_1/ReadVariableOpReadVariableOp>model_15_batch_normalization_30_cast_1_readvariableop_resource*
_output_shapes
:*
dtype027
5model_15/batch_normalization_30/Cast_1/ReadVariableOpй
5model_15/batch_normalization_30/Cast_2/ReadVariableOpReadVariableOp>model_15_batch_normalization_30_cast_2_readvariableop_resource*
_output_shapes
:*
dtype027
5model_15/batch_normalization_30/Cast_2/ReadVariableOpй
5model_15/batch_normalization_30/Cast_3/ReadVariableOpReadVariableOp>model_15_batch_normalization_30_cast_3_readvariableop_resource*
_output_shapes
:*
dtype027
5model_15/batch_normalization_30/Cast_3/ReadVariableOpІ
/model_15/batch_normalization_30/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:21
/model_15/batch_normalization_30/batchnorm/add/yЕ
-model_15/batch_normalization_30/batchnorm/addAddV2=model_15/batch_normalization_30/Cast_1/ReadVariableOp:value:08model_15/batch_normalization_30/batchnorm/add/y:output:0*
T0*
_output_shapes
:2/
-model_15/batch_normalization_30/batchnorm/add√
/model_15/batch_normalization_30/batchnorm/RsqrtRsqrt1model_15/batch_normalization_30/batchnorm/add:z:0*
T0*
_output_shapes
:21
/model_15/batch_normalization_30/batchnorm/Rsqrtю
-model_15/batch_normalization_30/batchnorm/mulMul3model_15/batch_normalization_30/batchnorm/Rsqrt:y:0=model_15/batch_normalization_30/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:2/
-model_15/batch_normalization_30/batchnorm/mul€
/model_15/batch_normalization_30/batchnorm/mul_1Mul/model_15/leaky_re_lu_15/LeakyRelu:activations:01model_15/batch_normalization_30/batchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€21
/model_15/batch_normalization_30/batchnorm/mul_1ю
/model_15/batch_normalization_30/batchnorm/mul_2Mul;model_15/batch_normalization_30/Cast/ReadVariableOp:value:01model_15/batch_normalization_30/batchnorm/mul:z:0*
T0*
_output_shapes
:21
/model_15/batch_normalization_30/batchnorm/mul_2ю
-model_15/batch_normalization_30/batchnorm/subSub=model_15/batch_normalization_30/Cast_2/ReadVariableOp:value:03model_15/batch_normalization_30/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2/
-model_15/batch_normalization_30/batchnorm/subЕ
/model_15/batch_normalization_30/batchnorm/add_1AddV23model_15/batch_normalization_30/batchnorm/mul_1:z:01model_15/batch_normalization_30/batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€21
/model_15/batch_normalization_30/batchnorm/add_1√
'model_15/dense_46/MatMul/ReadVariableOpReadVariableOp0model_15_dense_46_matmul_readvariableop_resource*
_output_shapes

:*
dtype02)
'model_15/dense_46/MatMul/ReadVariableOp÷
model_15/dense_46/MatMulMatMul3model_15/batch_normalization_30/batchnorm/add_1:z:0/model_15/dense_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
model_15/dense_46/MatMul¬
(model_15/dense_46/BiasAdd/ReadVariableOpReadVariableOp1model_15_dense_46_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_15/dense_46/BiasAdd/ReadVariableOp…
model_15/dense_46/BiasAddBiasAdd"model_15/dense_46/MatMul:product:00model_15/dense_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
model_15/dense_46/BiasAddі
#model_15/leaky_re_lu_15/LeakyRelu_1	LeakyRelu"model_15/dense_46/BiasAdd:output:0*'
_output_shapes
:€€€€€€€€€*
alpha%Ќћћ=2%
#model_15/leaky_re_lu_15/LeakyRelu_1г
3model_15/batch_normalization_31/Cast/ReadVariableOpReadVariableOp<model_15_batch_normalization_31_cast_readvariableop_resource*
_output_shapes
:*
dtype025
3model_15/batch_normalization_31/Cast/ReadVariableOpй
5model_15/batch_normalization_31/Cast_1/ReadVariableOpReadVariableOp>model_15_batch_normalization_31_cast_1_readvariableop_resource*
_output_shapes
:*
dtype027
5model_15/batch_normalization_31/Cast_1/ReadVariableOpй
5model_15/batch_normalization_31/Cast_2/ReadVariableOpReadVariableOp>model_15_batch_normalization_31_cast_2_readvariableop_resource*
_output_shapes
:*
dtype027
5model_15/batch_normalization_31/Cast_2/ReadVariableOpй
5model_15/batch_normalization_31/Cast_3/ReadVariableOpReadVariableOp>model_15_batch_normalization_31_cast_3_readvariableop_resource*
_output_shapes
:*
dtype027
5model_15/batch_normalization_31/Cast_3/ReadVariableOpІ
/model_15/batch_normalization_31/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:21
/model_15/batch_normalization_31/batchnorm/add/yЕ
-model_15/batch_normalization_31/batchnorm/addAddV2=model_15/batch_normalization_31/Cast_1/ReadVariableOp:value:08model_15/batch_normalization_31/batchnorm/add/y:output:0*
T0*
_output_shapes
:2/
-model_15/batch_normalization_31/batchnorm/add√
/model_15/batch_normalization_31/batchnorm/RsqrtRsqrt1model_15/batch_normalization_31/batchnorm/add:z:0*
T0*
_output_shapes
:21
/model_15/batch_normalization_31/batchnorm/Rsqrtю
-model_15/batch_normalization_31/batchnorm/mulMul3model_15/batch_normalization_31/batchnorm/Rsqrt:y:0=model_15/batch_normalization_31/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:2/
-model_15/batch_normalization_31/batchnorm/mulБ
/model_15/batch_normalization_31/batchnorm/mul_1Mul1model_15/leaky_re_lu_15/LeakyRelu_1:activations:01model_15/batch_normalization_31/batchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€21
/model_15/batch_normalization_31/batchnorm/mul_1ю
/model_15/batch_normalization_31/batchnorm/mul_2Mul;model_15/batch_normalization_31/Cast/ReadVariableOp:value:01model_15/batch_normalization_31/batchnorm/mul:z:0*
T0*
_output_shapes
:21
/model_15/batch_normalization_31/batchnorm/mul_2ю
-model_15/batch_normalization_31/batchnorm/subSub=model_15/batch_normalization_31/Cast_2/ReadVariableOp:value:03model_15/batch_normalization_31/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2/
-model_15/batch_normalization_31/batchnorm/subЕ
/model_15/batch_normalization_31/batchnorm/add_1AddV23model_15/batch_normalization_31/batchnorm/mul_1:z:01model_15/batch_normalization_31/batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€21
/model_15/batch_normalization_31/batchnorm/add_1√
'model_15/dense_47/MatMul/ReadVariableOpReadVariableOp0model_15_dense_47_matmul_readvariableop_resource*
_output_shapes

:*
dtype02)
'model_15/dense_47/MatMul/ReadVariableOp÷
model_15/dense_47/MatMulMatMul3model_15/batch_normalization_31/batchnorm/add_1:z:0/model_15/dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
model_15/dense_47/MatMul¬
(model_15/dense_47/BiasAdd/ReadVariableOpReadVariableOp1model_15_dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_15/dense_47/BiasAdd/ReadVariableOp…
model_15/dense_47/BiasAddBiasAdd"model_15/dense_47/MatMul:product:00model_15/dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
model_15/dense_47/BiasAdd—
IdentityIdentity"model_15/dense_47/BiasAdd:output:04^model_15/batch_normalization_30/Cast/ReadVariableOp6^model_15/batch_normalization_30/Cast_1/ReadVariableOp6^model_15/batch_normalization_30/Cast_2/ReadVariableOp6^model_15/batch_normalization_30/Cast_3/ReadVariableOp4^model_15/batch_normalization_31/Cast/ReadVariableOp6^model_15/batch_normalization_31/Cast_1/ReadVariableOp6^model_15/batch_normalization_31/Cast_2/ReadVariableOp6^model_15/batch_normalization_31/Cast_3/ReadVariableOp)^model_15/dense_45/BiasAdd/ReadVariableOp(^model_15/dense_45/MatMul/ReadVariableOp)^model_15/dense_46/BiasAdd/ReadVariableOp(^model_15/dense_46/MatMul/ReadVariableOp)^model_15/dense_47/BiasAdd/ReadVariableOp(^model_15/dense_47/MatMul/ReadVariableOp,^model_15/gat_conv_30/Reshape/ReadVariableOp.^model_15/gat_conv_30/transpose/ReadVariableOp0^model_15/gat_conv_30/transpose_1/ReadVariableOp,^model_15/gat_conv_31/Reshape/ReadVariableOp.^model_15/gat_conv_31/transpose/ReadVariableOp0^model_15/gat_conv_31/transpose_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*ѓ
_input_shapesЭ
Ъ:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€::€€€€€€€€€::::::::::::::::::::2j
3model_15/batch_normalization_30/Cast/ReadVariableOp3model_15/batch_normalization_30/Cast/ReadVariableOp2n
5model_15/batch_normalization_30/Cast_1/ReadVariableOp5model_15/batch_normalization_30/Cast_1/ReadVariableOp2n
5model_15/batch_normalization_30/Cast_2/ReadVariableOp5model_15/batch_normalization_30/Cast_2/ReadVariableOp2n
5model_15/batch_normalization_30/Cast_3/ReadVariableOp5model_15/batch_normalization_30/Cast_3/ReadVariableOp2j
3model_15/batch_normalization_31/Cast/ReadVariableOp3model_15/batch_normalization_31/Cast/ReadVariableOp2n
5model_15/batch_normalization_31/Cast_1/ReadVariableOp5model_15/batch_normalization_31/Cast_1/ReadVariableOp2n
5model_15/batch_normalization_31/Cast_2/ReadVariableOp5model_15/batch_normalization_31/Cast_2/ReadVariableOp2n
5model_15/batch_normalization_31/Cast_3/ReadVariableOp5model_15/batch_normalization_31/Cast_3/ReadVariableOp2T
(model_15/dense_45/BiasAdd/ReadVariableOp(model_15/dense_45/BiasAdd/ReadVariableOp2R
'model_15/dense_45/MatMul/ReadVariableOp'model_15/dense_45/MatMul/ReadVariableOp2T
(model_15/dense_46/BiasAdd/ReadVariableOp(model_15/dense_46/BiasAdd/ReadVariableOp2R
'model_15/dense_46/MatMul/ReadVariableOp'model_15/dense_46/MatMul/ReadVariableOp2T
(model_15/dense_47/BiasAdd/ReadVariableOp(model_15/dense_47/BiasAdd/ReadVariableOp2R
'model_15/dense_47/MatMul/ReadVariableOp'model_15/dense_47/MatMul/ReadVariableOp2Z
+model_15/gat_conv_30/Reshape/ReadVariableOp+model_15/gat_conv_30/Reshape/ReadVariableOp2^
-model_15/gat_conv_30/transpose/ReadVariableOp-model_15/gat_conv_30/transpose/ReadVariableOp2b
/model_15/gat_conv_30/transpose_1/ReadVariableOp/model_15/gat_conv_30/transpose_1/ReadVariableOp2Z
+model_15/gat_conv_31/Reshape/ReadVariableOp+model_15/gat_conv_31/Reshape/ReadVariableOp2^
-model_15/gat_conv_31/transpose/ReadVariableOp-model_15/gat_conv_31/transpose/ReadVariableOp2b
/model_15/gat_conv_31/transpose_1/ReadVariableOp/model_15/gat_conv_31/transpose_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameargs_0:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameargs_0:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_nameargs_0:B>

_output_shapes
:
 
_user_specified_nameargs_0:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_nameargs_0
¶
^
2__inference_global_avg_pool_15_layer_call_fn_82947
inputs_0
inputs_1	
identityЁ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8В *V
fQRO
M__inference_global_avg_pool_15_layer_call_and_return_conditional_losses_808712
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*5
_input_shapes$
":€€€€€€€€€:€€€€€€€€€:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1
Ї
©
6__inference_batch_normalization_31_layer_call_fn_83167

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8В *Z
fURS
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_801052
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ѕ±
’
F__inference_gat_conv_30_layer_call_and_return_conditional_losses_82562
inputs_0

inputs	
inputs_1
inputs_2	#
reshape_readvariableop_resource%
!transpose_readvariableop_resource'
#transpose_1_readvariableop_resource
identityИҐReshape/ReadVariableOpҐtranspose/ReadVariableOpҐtranspose_1/ReadVariableOpФ
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*"
_output_shapes
:
*
dtype02
Reshape/ReadVariableOpo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   2
Reshape/shape~
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*
_output_shapes

:P2	
ReshapeЪ
transpose/ReadVariableOpReadVariableOp!transpose_readvariableop_resource*"
_output_shapes
:
*
dtype02
transpose/ReadVariableOpu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЛ
	transpose	Transpose transpose/ReadVariableOp:value:0transpose/perm:output:0*
T0*"
_output_shapes
:
2
	transpose†
transpose_1/ReadVariableOpReadVariableOp#transpose_1_readvariableop_resource*"
_output_shapes
:
*
dtype02
transpose_1/ReadVariableOpy
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permУ
transpose_1	Transpose"transpose_1/ReadVariableOp:value:0transpose_1/perm:output:0*
T0*"
_output_shapes
:
2
transpose_1V
ShapeShapeinputs_0*
T0*
_output_shapes
:*
out_type0	2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
strided_slice
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stackГ
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack_1Г
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2Ж
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2
strided_slice_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stackГ
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_2/stack_1Г
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2Ж
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*
ellipsis_mask*
shrink_axis_mask2
strided_slice_2Ґ
NotEqualNotEqualstrided_slice_1:output:0strided_slice_2:output:0*
T0	*#
_output_shapes
:€€€€€€€€€*
incompatible_shape_error( 2

NotEqual
EnsureShapeEnsureShapeNotEqual:z:0*
T0
*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€2
EnsureShape\
range/startConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R2
range/deltaМ
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*

Tidx0	*#
_output_shapes
:€€€€€€€€€2
range
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stackГ
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1Г
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2Ь
strided_slice_3StridedSlicerange:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask2
strided_slice_3b
Repeat/repeatsConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/repeatsk
Repeat/CastCastRepeat/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
Repeat/Castd
Repeat/ShapeShapestrided_slice_3:output:0*
T0	*
_output_shapes
:2
Repeat/Shapeo
Repeat/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shapes
Repeat/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2
Repeat/Reshape/shape_1~
Repeat/ReshapeReshapeRepeat/Cast:y:0Repeat/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
Repeat/Reshapep
Repeat/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
Repeat/ExpandDims/dim§
Repeat/ExpandDims
ExpandDimsstrided_slice_3:output:0Repeat/ExpandDims/dim:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2
Repeat/ExpandDimst
Repeat/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/0t
Repeat/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Repeat/Tile/multiples/1Ѕ
Repeat/Tile/multiplesPack Repeat/Tile/multiples/0:output:0 Repeat/Tile/multiples/1:output:0Repeat/Reshape:output:0*
N*
T0*
_output_shapes
:2
Repeat/Tile/multiplesФ
Repeat/TileTileRepeat/ExpandDims:output:0Repeat/Tile/multiples:output:0*
T0	*+
_output_shapes
:€€€€€€€€€2
Repeat/TileВ
Repeat/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
Repeat/strided_slice/stackЖ
Repeat/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_1Ж
Repeat/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice/stack_2К
Repeat/strided_sliceStridedSliceRepeat/Shape:output:0#Repeat/strided_slice/stack:output:0%Repeat/strided_slice/stack_1:output:0%Repeat/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
Repeat/strided_sliceЖ
Repeat/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_1/stackК
Repeat/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_1К
Repeat/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_1/stack_2Ц
Repeat/strided_slice_1StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_1/stack:output:0'Repeat/strided_slice_1/stack_1:output:0'Repeat/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
Repeat/strided_slice_1z

Repeat/mulMulRepeat/Reshape:output:0Repeat/strided_slice_1:output:0*
T0*
_output_shapes
: 2

Repeat/mulЖ
Repeat/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
Repeat/strided_slice_2/stackК
Repeat/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
Repeat/strided_slice_2/stack_1К
Repeat/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
Repeat/strided_slice_2/stack_2Р
Repeat/strided_slice_2StridedSliceRepeat/Shape:output:0%Repeat/strided_slice_2/stack:output:0'Repeat/strided_slice_2/stack_1:output:0'Repeat/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_mask2
Repeat/strided_slice_2v
Repeat/concat/values_1PackRepeat/mul:z:0*
N*
T0*
_output_shapes
:2
Repeat/concat/values_1j
Repeat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Repeat/concat/axis÷
Repeat/concatConcatV2Repeat/strided_slice:output:0Repeat/concat/values_1:output:0Repeat/strided_slice_2:output:0Repeat/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Repeat/concatШ
Repeat/Reshape_1ReshapeRepeat/Tile:output:0Repeat/concat:output:0*
T0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Repeat/Reshape_1^
boolean_mask/ShapeShapeinputs*
T0	*
_output_shapes
:2
boolean_mask/ShapeО
 boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 boolean_mask/strided_slice/stackТ
"boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_1Т
"boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice/stack_2Ь
boolean_mask/strided_sliceStridedSliceboolean_mask/Shape:output:0)boolean_mask/strided_slice/stack:output:0+boolean_mask/strided_slice/stack_1:output:0+boolean_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
boolean_mask/strided_sliceФ
#boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2%
#boolean_mask/Prod/reduction_indicesҐ
boolean_mask/ProdProd#boolean_mask/strided_slice:output:0,boolean_mask/Prod/reduction_indices:output:0*
T0*
_output_shapes
: 2
boolean_mask/Prodb
boolean_mask/Shape_1Shapeinputs*
T0	*
_output_shapes
:2
boolean_mask/Shape_1Т
"boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"boolean_mask/strided_slice_1/stackЦ
$boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_1/stack_1Ц
$boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_1/stack_2Є
boolean_mask/strided_slice_1StridedSliceboolean_mask/Shape_1:output:0+boolean_mask/strided_slice_1/stack:output:0-boolean_mask/strided_slice_1/stack_1:output:0-boolean_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *

begin_mask2
boolean_mask/strided_slice_1b
boolean_mask/Shape_2Shapeinputs*
T0	*
_output_shapes
:2
boolean_mask/Shape_2Т
"boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2$
"boolean_mask/strided_slice_2/stackЦ
$boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$boolean_mask/strided_slice_2/stack_1Ц
$boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$boolean_mask/strided_slice_2/stack_2Є
boolean_mask/strided_slice_2StridedSliceboolean_mask/Shape_2:output:0+boolean_mask/strided_slice_2/stack:output:0-boolean_mask/strided_slice_2/stack_1:output:0-boolean_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2
boolean_mask/strided_slice_2О
boolean_mask/concat/values_1Packboolean_mask/Prod:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concat/values_1v
boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/concat/axisь
boolean_mask/concatConcatV2%boolean_mask/strided_slice_1:output:0%boolean_mask/concat/values_1:output:0%boolean_mask/strided_slice_2:output:0!boolean_mask/concat/axis:output:0*
N*
T0*
_output_shapes
:2
boolean_mask/concatП
boolean_mask/ReshapeReshapeinputsboolean_mask/concat:output:0*
T0	*'
_output_shapes
:€€€€€€€€€2
boolean_mask/ReshapeП
boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
boolean_mask/Reshape_1/shape¶
boolean_mask/Reshape_1ReshapeEnsureShape:output:0%boolean_mask/Reshape_1/shape:output:0*
T0
*#
_output_shapes
:€€€€€€€€€2
boolean_mask/Reshape_1{
boolean_mask/WhereWhereboolean_mask/Reshape_1:output:0*'
_output_shapes
:€€€€€€€€€2
boolean_mask/WhereШ
boolean_mask/SqueezeSqueezeboolean_mask/Where:index:0*
T0	*#
_output_shapes
:€€€€€€€€€*
squeeze_dims
2
boolean_mask/Squeezez
boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
boolean_mask/GatherV2/axisт
boolean_mask/GatherV2GatherV2boolean_mask/Reshape:output:0boolean_mask/Squeeze:output:0#boolean_mask/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:€€€€€€€€€2
boolean_mask/GatherV2\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis®
concatConcatV2boolean_mask/GatherV2:output:0Repeat/Reshape_1:output:0concat/axis:output:0*
N*
T0	*'
_output_shapes
:€€€€€€€€€2
concat
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_4/stackГ
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_4/stack_1Г
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_4/stack_2Ь
strided_slice_4StridedSliceconcat:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_4j
ones_like/ShapeShapestrided_slice_4:output:0*
T0	*
_output_shapes
:2
ones_like/Shaped
ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R2
ones_like/ConstА
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0	*#
_output_shapes
:€€€€€€€€€2
	ones_likeЬ
SparseReorder/input_shapePackstrided_slice:output:0strided_slice:output:0*
N*
T0	*
_output_shapes
:2
SparseReorder/input_shapeє
SparseReorderSparseReorderconcat:output:0ones_like:output:0"SparseReorder/input_shape:output:0*
T0	*6
_output_shapes$
":€€€€€€€€€:€€€€€€€€€2
SparseReorder
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"    ю€€€2
strided_slice_5/stackГ
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    €€€€2
strided_slice_5/stack_1Г
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_5/stack_2Ђ
strided_slice_5StridedSliceSparseReorder:output_indices:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_5
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"    €€€€2
strided_slice_6/stackГ
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_6/stack_1Г
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_6/stack_2Ђ
strided_slice_6StridedSliceSparseReorder:output_indices:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_6h
MatMulMatMulinputs_0Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€P2
MatMulw
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"€€€€
      2
Reshape_1/shapeГ
	Reshape_1ReshapeMatMul:product:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€
2
	Reshape_1j
mulMulReshape_1:output:0transpose:y:0*
T0*+
_output_shapes
:€€€€€€€€€
2
muly
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Sum/reduction_indicesl
SumSummul:z:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
Sum`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axisµ
GatherV2GatherV2Sum:output:0strided_slice_5:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2

GatherV2p
mul_1MulReshape_1:output:0transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€
2
mul_1}
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
Sum_1/reduction_indicest
Sum_1Sum	mul_1:z:0 Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
Sum_1d
GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_1/axisљ

GatherV2_1GatherV2Sum_1:output:0strided_slice_6:output:0GatherV2_1/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2

GatherV2_1m
addAddV2GatherV2:output:0GatherV2_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
addU
	LeakyRelu	LeakyReluadd:z:0*'
_output_shapes
:€€€€€€€€€
2
	LeakyReluя
UnsortedSegmentMaxUnsortedSegmentMaxLeakyRelu:activations:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€
2
UnsortedSegmentMaxd
GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_2/axis 

GatherV2_2GatherV2UnsortedSegmentMax:output:0strided_slice_5:output:0GatherV2_2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2

GatherV2_2q
subSubLeakyRelu:activations:0GatherV2_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
subL
ExpExpsub:z:0*
T0*'
_output_shapes
:€€€€€€€€€
2
Expѕ
UnsortedSegmentSumUnsortedSegmentSumExp:y:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*'
_output_shapes
:€€€€€€€€€
2
UnsortedSegmentSumW
add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *_pЙ02	
add_1/yx
add_1AddV2UnsortedSegmentSum:output:0add_1/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2
add_1d
GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_3/axisЄ

GatherV2_3GatherV2	add_1:z:0strided_slice_5:output:0GatherV2_3/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*'
_output_shapes
:€€€€€€€€€
2

GatherV2_3m
truedivRealDivExp:y:0GatherV2_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€
2	
truedivo
dropout/IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€
2
dropout/Identity
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stackГ
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_7/stack_1Г
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_7/stack_2Ю
strided_slice_7StridedSlicedropout/Identity:output:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*+
_output_shapes
:€€€€€€€€€
*
ellipsis_mask*
new_axis_mask2
strided_slice_7d
GatherV2_4/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2_4/axis≈

GatherV2_4GatherV2Reshape_1:output:0strided_slice_6:output:0GatherV2_4/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*+
_output_shapes
:€€€€€€€€€
2

GatherV2_4z
mul_2Mulstrided_slice_7:output:0GatherV2_4:output:0*
T0*+
_output_shapes
:€€€€€€€€€
2
mul_2ў
UnsortedSegmentSum_1UnsortedSegmentSum	mul_2:z:0strided_slice_5:output:0strided_slice:output:0*
T0*
Tindices0	*
Tnumsegments0	*+
_output_shapes
:€€€€€€€€€
2
UnsortedSegmentSum_1s
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€P   2
Reshape_2/shapeМ
	Reshape_2ReshapeUnsortedSegmentSum_1:output:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€P2
	Reshape_2Z
ReluReluReshape_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€P2
ReluЈ
IdentityIdentityRelu:activations:0^Reshape/ReadVariableOp^transpose/ReadVariableOp^transpose_1/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€P2

Identity"
identityIdentity:output:0*Z
_input_shapesI
G:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€::::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
transpose/ReadVariableOptranspose/ReadVariableOp28
transpose_1/ReadVariableOptranspose_1/ReadVariableOp:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs
Г
ќ
(__inference_model_15_layer_call_fn_82196
inputs_0

inputs	
inputs_1
inputs_2	

inputs_2_0	
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18
identityИҐStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputsinputs_1inputs_2
inputs_2_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18*$
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8В *L
fGRE
C__inference_model_15_layer_call_and_return_conditional_losses_811772
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*ѓ
_input_shapesЭ
Ъ:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€::€€€€€€€€€::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:KG
#
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:MI
#
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/2"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Р
serving_defaultь
9
args_0/
serving_default_args_0:0€€€€€€€€€
=
args_0_11
serving_default_args_0_1:0	€€€€€€€€€
9
args_0_2-
serving_default_args_0_2:0€€€€€€€€€
0
args_0_3$
serving_default_args_0_3:0	
9
args_0_4-
serving_default_args_0_4:0	€€€€€€€€€<
output_10
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:÷Б
Б
att1
att2
	Pool1
	Pool2

decode
norm_layers
d2
	variables
	trainable_variables

regularization_losses
	keras_api

signatures
У__call__
+Ф&call_and_return_all_conditional_losses
Х_default_save_signature"у
_tf_keras_modelў{"class_name": "model", "name": "model_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "model"}}
«	
kwargs_keys

kernel
attn_kernel_self
attn_kernel_neigh
attn_kernel_neighs
dropout
trainable_variables
	variables
regularization_losses
	keras_api
Ц__call__
+Ч&call_and_return_all_conditional_losses"«
_tf_keras_layer≠{"class_name": "GATConv", "name": "gat_conv_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "gat_conv_30", "trainable": true, "dtype": "float32", "activation": "relu", "use_bias": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "channels": 8, "attn_heads": 10, "concat_heads": true, "dropout_rate": 0.9, "return_attn_coef": false, "attn_kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "attn_kernel_regularizer": null, "attn_kernel_constraint": null}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 5]}, {"class_name": "TensorShape", "items": [null, null]}]}
«	
kwargs_keys

kernel
attn_kernel_self
attn_kernel_neigh
attn_kernel_neighs
dropout
trainable_variables
	variables
regularization_losses
	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses"«
_tf_keras_layer≠{"class_name": "GATConv", "name": "gat_conv_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "gat_conv_31", "trainable": true, "dtype": "float32", "activation": "relu", "use_bias": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "channels": 4, "attn_heads": 5, "concat_heads": true, "dropout_rate": 0.8, "return_attn_coef": false, "attn_kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "attn_kernel_regularizer": null, "attn_kernel_constraint": null}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 80]}, {"class_name": "TensorShape", "items": [null, null]}]}
Ћ
trainable_variables
 	variables
!regularization_losses
"	keras_api
Ъ__call__
+Ы&call_and_return_all_conditional_losses"Ї
_tf_keras_layer†{"class_name": "GlobalAvgPool", "name": "global_avg_pool_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_avg_pool_15", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 20]}, {"class_name": "TensorShape", "items": [null]}]}
Ћ
#trainable_variables
$	variables
%regularization_losses
&	keras_api
Ь__call__
+Э&call_and_return_all_conditional_losses"Ї
_tf_keras_layer†{"class_name": "GlobalSumPool", "name": "global_sum_pool_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_sum_pool_15", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 20]}, {"class_name": "TensorShape", "items": [null]}]}
.
'0
(1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
у

+kernel
,bias
-trainable_variables
.	variables
/regularization_losses
0	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses"ћ
_tf_keras_layer≤{"class_name": "Dense", "name": "dense_47", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_47", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 8}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8]}}
ґ
0
1
2
3
4
5
16
27
38
49
510
611
712
813
914
:15
;16
<17
+18
,19"
trackable_list_wrapper
Ц
0
1
2
3
4
5
16
27
38
49
510
611
712
813
+14
,15"
trackable_list_wrapper
 "
trackable_list_wrapper
ќ
=layer_metrics
	variables

>layers
	trainable_variables
?metrics
@layer_regularization_losses
Anon_trainable_variables

regularization_losses
У__call__
Х_default_save_signature
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
-
†serving_default"
signature_map
 "
trackable_list_wrapper
1:/
2model_15/gat_conv_30/kernel
;:9
2%model_15/gat_conv_30/attn_kernel_self
<::
2&model_15/gat_conv_30/attn_kernel_neigh
г
Btrainable_variables
C	variables
Dregularization_losses
E	keras_api
°__call__
+Ґ&call_and_return_all_conditional_losses"“
_tf_keras_layerЄ{"class_name": "Dropout", "name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.9, "noise_shape": null, "seed": null}}
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
Flayer_metrics

Glayers
trainable_variables
	variables
Hmetrics
Ilayer_regularization_losses
Jnon_trainable_variables
regularization_losses
Ц__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
1:/P2model_15/gat_conv_31/kernel
;:92%model_15/gat_conv_31/attn_kernel_self
<::2&model_15/gat_conv_31/attn_kernel_neigh
з
Ktrainable_variables
L	variables
Mregularization_losses
N	keras_api
£__call__
+§&call_and_return_all_conditional_losses"÷
_tf_keras_layerЉ{"class_name": "Dropout", "name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.8, "noise_shape": null, "seed": null}}
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
Olayer_metrics

Players
trainable_variables
	variables
Qmetrics
Rlayer_regularization_losses
Snon_trainable_variables
regularization_losses
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
Tlayer_metrics

Ulayers
trainable_variables
 	variables
Vmetrics
Wlayer_regularization_losses
Xnon_trainable_variables
!regularization_losses
Ъ__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
Ylayer_metrics

Zlayers
#trainable_variables
$	variables
[metrics
\layer_regularization_losses
]non_trainable_variables
%regularization_losses
Ь__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses"
_generic_user_object
ц

1kernel
2bias
^trainable_variables
_	variables
`regularization_losses
a	keras_api
•__call__
+¶&call_and_return_all_conditional_losses"ѕ
_tf_keras_layerµ{"class_name": "Dense", "name": "dense_45", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_45", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 40}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40]}}
х

3kernel
4bias
btrainable_variables
c	variables
dregularization_losses
e	keras_api
І__call__
+®&call_and_return_all_conditional_losses"ќ
_tf_keras_layerі{"class_name": "Dense", "name": "dense_46", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_46", "trainable": true, "dtype": "float32", "units": 8, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
ґ	
faxis
	5gamma
6beta
9moving_mean
:moving_variance
gtrainable_variables
h	variables
iregularization_losses
j	keras_api
©__call__
+™&call_and_return_all_conditional_losses"а
_tf_keras_layer∆{"class_name": "BatchNormalization", "name": "batch_normalization_30", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_30", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
і	
kaxis
	7gamma
8beta
;moving_mean
<moving_variance
ltrainable_variables
m	variables
nregularization_losses
o	keras_api
Ђ__call__
+ђ&call_and_return_all_conditional_losses"ё
_tf_keras_layerƒ{"class_name": "BatchNormalization", "name": "batch_normalization_31", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_31", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 8}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8]}}
*:(2model_15/dense_47/kernel
$:"2model_15/dense_47/bias
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
player_metrics

qlayers
-trainable_variables
.	variables
rmetrics
slayer_regularization_losses
tnon_trainable_variables
/regularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
*:((2model_15/dense_45/kernel
$:"2model_15/dense_45/bias
*:(2model_15/dense_46/kernel
$:"2model_15/dense_46/bias
3:12%model_15/batch_normalization_30/gamma
2:02$model_15/batch_normalization_30/beta
3:12%model_15/batch_normalization_31/gamma
2:02$model_15/batch_normalization_31/beta
;:9 (2+model_15/batch_normalization_30/moving_mean
?:= (2/model_15/batch_normalization_30/moving_variance
;:9 (2+model_15/batch_normalization_31/moving_mean
?:= (2/model_15/batch_normalization_31/moving_variance
 "
trackable_dict_wrapper
_
0
1
2
3
'4
(5
)6
*7
8"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
90
:1
;2
<3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
ulayer_metrics

vlayers
Btrainable_variables
C	variables
wmetrics
xlayer_regularization_losses
ynon_trainable_variables
Dregularization_losses
°__call__
+Ґ&call_and_return_all_conditional_losses
'Ґ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
zlayer_metrics

{layers
Ktrainable_variables
L	variables
|metrics
}layer_regularization_losses
~non_trainable_variables
Mregularization_losses
£__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
'
0"
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
і
layer_metrics
Аlayers
^trainable_variables
_	variables
Бmetrics
 Вlayer_regularization_losses
Гnon_trainable_variables
`regularization_losses
•__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses"
_generic_user_object
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
µ
Дlayer_metrics
Еlayers
btrainable_variables
c	variables
Жmetrics
 Зlayer_regularization_losses
Иnon_trainable_variables
dregularization_losses
І__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
<
50
61
92
:3"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Йlayer_metrics
Кlayers
gtrainable_variables
h	variables
Лmetrics
 Мlayer_regularization_losses
Нnon_trainable_variables
iregularization_losses
©__call__
+™&call_and_return_all_conditional_losses
'™"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
<
70
81
;2
<3"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Оlayer_metrics
Пlayers
ltrainable_variables
m	variables
Рmetrics
 Сlayer_regularization_losses
Тnon_trainable_variables
nregularization_losses
Ђ__call__
+ђ&call_and_return_all_conditional_losses
'ђ"call_and_return_conditional_losses"
_generic_user_object
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
О2Л
(__inference_model_15_layer_call_fn_82196
(__inference_model_15_layer_call_fn_82245і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ƒ2Ѕ
C__inference_model_15_layer_call_and_return_conditional_losses_81787
C__inference_model_15_layer_call_and_return_conditional_losses_82147і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
≤2ѓ
 __inference__wrapped_model_79869К
Л≤З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *zҐw
uҐr
К€€€€€€€€€
@Т='Ґ$
ъ€€€€€€€€€€€€€€€€€€
АSparseTensorSpec
К€€€€€€€€€	
У2Р
+__inference_gat_conv_30_layer_call_fn_82576
+__inference_gat_conv_30_layer_call_fn_82590≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
…2∆
F__inference_gat_conv_30_layer_call_and_return_conditional_losses_82407
F__inference_gat_conv_30_layer_call_and_return_conditional_losses_82562≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
У2Р
+__inference_gat_conv_31_layer_call_fn_82935
+__inference_gat_conv_31_layer_call_fn_82921≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
…2∆
F__inference_gat_conv_31_layer_call_and_return_conditional_losses_82907
F__inference_gat_conv_31_layer_call_and_return_conditional_losses_82752≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
№2ў
2__inference_global_avg_pool_15_layer_call_fn_82947Ґ
Щ≤Х
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
annotations™ *
 
ч2ф
M__inference_global_avg_pool_15_layer_call_and_return_conditional_losses_82941Ґ
Щ≤Х
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
annotations™ *
 
№2ў
2__inference_global_sum_pool_15_layer_call_fn_82959Ґ
Щ≤Х
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
annotations™ *
 
ч2ф
M__inference_global_sum_pool_15_layer_call_and_return_conditional_losses_82953Ґ
Щ≤Х
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
annotations™ *
 
“2ѕ
(__inference_dense_47_layer_call_fn_82978Ґ
Щ≤Х
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
annotations™ *
 
н2к
C__inference_dense_47_layer_call_and_return_conditional_losses_82969Ґ
Щ≤Х
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
annotations™ *
 
пBм
#__inference_signature_wrapper_81381args_0args_0_1args_0_2args_0_3args_0_4"Ф
Н≤Й
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
annotations™ *
 
Ї2Јі
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ї2Јі
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ї2Јі
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ї2Јі
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
“2ѕ
(__inference_dense_45_layer_call_fn_82997Ґ
Щ≤Х
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
annotations™ *
 
н2к
C__inference_dense_45_layer_call_and_return_conditional_losses_82988Ґ
Щ≤Х
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
annotations™ *
 
“2ѕ
(__inference_dense_46_layer_call_fn_83016Ґ
Щ≤Х
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
annotations™ *
 
н2к
C__inference_dense_46_layer_call_and_return_conditional_losses_83007Ґ
Щ≤Х
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
annotations™ *
 
™2І
6__inference_batch_normalization_30_layer_call_fn_83085
6__inference_batch_normalization_30_layer_call_fn_83098і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
а2Ё
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_83072
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_83052і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
™2І
6__inference_batch_normalization_31_layer_call_fn_83167
6__inference_batch_normalization_31_layer_call_fn_83180і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
а2Ё
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_83134
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_83154і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 Р
 __inference__wrapped_model_79869л129:6534;<87+,ЭҐЩ
СҐН
КҐЖ
"К
args_0/0€€€€€€€€€
@Т='Ґ$
ъ€€€€€€€€€€€€€€€€€€
АSparseTensorSpec
К
args_0/2€€€€€€€€€	
™ "3™0
.
output_1"К
output_1€€€€€€€€€Ј
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_83052b9:653Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ј
Q__inference_batch_normalization_30_layer_call_and_return_conditional_losses_83072b9:653Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ "%Ґ"
К
0€€€€€€€€€
Ъ П
6__inference_batch_normalization_30_layer_call_fn_83085U9:653Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ "К€€€€€€€€€П
6__inference_batch_normalization_30_layer_call_fn_83098U9:653Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ "К€€€€€€€€€Ј
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_83134b;<873Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ј
Q__inference_batch_normalization_31_layer_call_and_return_conditional_losses_83154b;<873Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ "%Ґ"
К
0€€€€€€€€€
Ъ П
6__inference_batch_normalization_31_layer_call_fn_83167U;<873Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ "К€€€€€€€€€П
6__inference_batch_normalization_31_layer_call_fn_83180U;<873Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ "К€€€€€€€€€£
C__inference_dense_45_layer_call_and_return_conditional_losses_82988\12/Ґ,
%Ґ"
 К
inputs€€€€€€€€€(
™ "%Ґ"
К
0€€€€€€€€€
Ъ {
(__inference_dense_45_layer_call_fn_82997O12/Ґ,
%Ґ"
 К
inputs€€€€€€€€€(
™ "К€€€€€€€€€£
C__inference_dense_46_layer_call_and_return_conditional_losses_83007\34/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "%Ґ"
К
0€€€€€€€€€
Ъ {
(__inference_dense_46_layer_call_fn_83016O34/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€£
C__inference_dense_47_layer_call_and_return_conditional_losses_82969\+,/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "%Ґ"
К
0€€€€€€€€€
Ъ {
(__inference_dense_47_layer_call_fn_82978O+,/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€х
F__inference_gat_conv_30_layer_call_and_return_conditional_losses_82407™|Ґy
rҐo
iЪf
"К
inputs/0€€€€€€€€€
@Т='Ґ$
ъ€€€€€€€€€€€€€€€€€€
АSparseTensorSpec
p
™ "%Ґ"
К
0€€€€€€€€€P
Ъ х
F__inference_gat_conv_30_layer_call_and_return_conditional_losses_82562™|Ґy
rҐo
iЪf
"К
inputs/0€€€€€€€€€
@Т='Ґ$
ъ€€€€€€€€€€€€€€€€€€
АSparseTensorSpec
p 
™ "%Ґ"
К
0€€€€€€€€€P
Ъ Ќ
+__inference_gat_conv_30_layer_call_fn_82576Э|Ґy
rҐo
iЪf
"К
inputs/0€€€€€€€€€
@Т='Ґ$
ъ€€€€€€€€€€€€€€€€€€
АSparseTensorSpec
p
™ "К€€€€€€€€€PЌ
+__inference_gat_conv_30_layer_call_fn_82590Э|Ґy
rҐo
iЪf
"К
inputs/0€€€€€€€€€
@Т='Ґ$
ъ€€€€€€€€€€€€€€€€€€
АSparseTensorSpec
p 
™ "К€€€€€€€€€Pх
F__inference_gat_conv_31_layer_call_and_return_conditional_losses_82752™|Ґy
rҐo
iЪf
"К
inputs/0€€€€€€€€€P
@Т='Ґ$
ъ€€€€€€€€€€€€€€€€€€
АSparseTensorSpec
p
™ "%Ґ"
К
0€€€€€€€€€
Ъ х
F__inference_gat_conv_31_layer_call_and_return_conditional_losses_82907™|Ґy
rҐo
iЪf
"К
inputs/0€€€€€€€€€P
@Т='Ґ$
ъ€€€€€€€€€€€€€€€€€€
АSparseTensorSpec
p 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ќ
+__inference_gat_conv_31_layer_call_fn_82921Э|Ґy
rҐo
iЪf
"К
inputs/0€€€€€€€€€P
@Т='Ґ$
ъ€€€€€€€€€€€€€€€€€€
АSparseTensorSpec
p
™ "К€€€€€€€€€Ќ
+__inference_gat_conv_31_layer_call_fn_82935Э|Ґy
rҐo
iЪf
"К
inputs/0€€€€€€€€€P
@Т='Ґ$
ъ€€€€€€€€€€€€€€€€€€
АSparseTensorSpec
p 
™ "К€€€€€€€€€–
M__inference_global_avg_pool_15_layer_call_and_return_conditional_losses_82941VҐS
LҐI
GЪD
"К
inputs/0€€€€€€€€€
К
inputs/1€€€€€€€€€	
™ "%Ґ"
К
0€€€€€€€€€
Ъ ®
2__inference_global_avg_pool_15_layer_call_fn_82947rVҐS
LҐI
GЪD
"К
inputs/0€€€€€€€€€
К
inputs/1€€€€€€€€€	
™ "К€€€€€€€€€–
M__inference_global_sum_pool_15_layer_call_and_return_conditional_losses_82953VҐS
LҐI
GЪD
"К
inputs/0€€€€€€€€€
К
inputs/1€€€€€€€€€	
™ "%Ґ"
К
0€€€€€€€€€
Ъ ®
2__inference_global_sum_pool_15_layer_call_fn_82959rVҐS
LҐI
GЪD
"К
inputs/0€€€€€€€€€
К
inputs/1€€€€€€€€€	
™ "К€€€€€€€€€©
C__inference_model_15_layer_call_and_return_conditional_losses_81787б129:6534;<87+,°ҐЭ
ХҐС
КҐЖ
"К
inputs/0€€€€€€€€€
@Т='Ґ$
ъ€€€€€€€€€€€€€€€€€€
АSparseTensorSpec
К
inputs/2€€€€€€€€€	
p
™ "%Ґ"
К
0€€€€€€€€€
Ъ ©
C__inference_model_15_layer_call_and_return_conditional_losses_82147б129:6534;<87+,°ҐЭ
ХҐС
КҐЖ
"К
inputs/0€€€€€€€€€
@Т='Ґ$
ъ€€€€€€€€€€€€€€€€€€
АSparseTensorSpec
К
inputs/2€€€€€€€€€	
p 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Б
(__inference_model_15_layer_call_fn_82196‘129:6534;<87+,°ҐЭ
ХҐС
КҐЖ
"К
inputs/0€€€€€€€€€
@Т='Ґ$
ъ€€€€€€€€€€€€€€€€€€
АSparseTensorSpec
К
inputs/2€€€€€€€€€	
p
™ "К€€€€€€€€€Б
(__inference_model_15_layer_call_fn_82245‘129:6534;<87+,°ҐЭ
ХҐС
КҐЖ
"К
inputs/0€€€€€€€€€
@Т='Ґ$
ъ€€€€€€€€€€€€€€€€€€
АSparseTensorSpec
К
inputs/2€€€€€€€€€	
p 
™ "К€€€€€€€€€Ё
#__inference_signature_wrapper_81381µ129:6534;<87+,зҐг
Ґ 
џ™„
*
args_0 К
args_0€€€€€€€€€
.
args_0_1"К
args_0_1€€€€€€€€€	
*
args_0_2К
args_0_2€€€€€€€€€
!
args_0_3К
args_0_3	
*
args_0_4К
args_0_4€€€€€€€€€	"3™0
.
output_1"К
output_1€€€€€€€€€