Ł
íĐ
9
Add
x"T
y"T
z"T"
Ttype:
2	

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T"
Ttype:
2	"
use_lockingbool( 

ArgMax

input"T
	dimension"Tidx
output"output_type"
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
A
Equal
x"T
y"T
z
"
Ttype:
2	

4
Fill
dims

value"T
output"T"	
Ttype
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
7
FloorMod
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
+
Log
x"T
y"T"
Ttype:	
2
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
<
Mul
x"T
y"T
z"T"
Ttype:
2	
-
Neg
x"T
y"T"
Ttype:
	2	
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
4

Reciprocal
x"T
y"T"
Ttype:
	2	
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
8
Softmax
logits"T
softmax"T"
Ttype:
2
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
9
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
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
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.4.02
b'unknown'
l
myInputPlaceholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
\
zerosConst*
dtype0*
valueB	
*    *
_output_shapes
:	

~
Variable
VariableV2*
shared_name *
shape:	
*
	container *
dtype0*
_output_shapes
:	


Variable/AssignAssignVariablezeros*
_class
loc:@Variable*
_output_shapes
:	
*
use_locking(*
T0*
validate_shape(
j
Variable/readIdentityVariable*
_class
loc:@Variable*
_output_shapes
:	
*
T0
T
zeros_1Const*
dtype0*
_output_shapes
:
*
valueB
*    
v

Variable_1
VariableV2*
shape:
*
shared_name *
_output_shapes
:
*
	container *
dtype0

Variable_1/AssignAssign
Variable_1zeros_1*
validate_shape(*
_output_shapes
:
*
_class
loc:@Variable_1*
T0*
use_locking(
k
Variable_1/readIdentity
Variable_1*
_output_shapes
:
*
T0*
_class
loc:@Variable_1

MatMulMatMulmyInputVariable/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙

U
addAddMatMulVariable_1/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

I
SoftmaxSoftmaxadd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
n
PlaceholderPlaceholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
dtype0*
shape:˙˙˙˙˙˙˙˙˙

O
myOutputIdentitySoftmax*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
E
LogLogSoftmax*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
N
mulMulPlaceholderLog*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
W
Sum/reduction_indicesConst*
value	B :*
_output_shapes
: *
dtype0
q
SumSummulSum/reduction_indices*
T0*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims( 
=
NegNegSum*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
O
ConstConst*
_output_shapes
:*
dtype0*
valueB: 
V
MeanMeanNegConst*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0
R
gradients/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
T
gradients/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
\
gradients/Mean_grad/ShapeShapeNeg*
out_type0*
T0*
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*

Tmultiples0
^
gradients/Mean_grad/Shape_1ShapeNeg*
out_type0*
T0*
_output_shapes
:
^
gradients/Mean_grad/Shape_2Const*
valueB *
_output_shapes
: *
dtype0

gradients/Mean_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:*.
_class$
" loc:@gradients/Mean_grad/Shape_1
Ć
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: *.
_class$
" loc:@gradients/Mean_grad/Shape_1

gradients/Mean_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: *.
_class$
" loc:@gradients/Mean_grad/Shape_1
Ę
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*

Tidx0*.
_class$
" loc:@gradients/Mean_grad/Shape_1*
_output_shapes
: *
	keep_dims( *
T0

gradients/Mean_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :*.
_class$
" loc:@gradients/Mean_grad/Shape_1
˛
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: *.
_class$
" loc:@gradients/Mean_grad/Shape_1
°
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*.
_class$
" loc:@gradients/Mean_grad/Shape_1*
T0*
_output_shapes
: 
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
h
gradients/Neg_grad/NegNeggradients/Mean_grad/truediv*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
[
gradients/Sum_grad/ShapeShapemul*
out_type0*
T0*
_output_shapes
:

gradients/Sum_grad/SizeConst*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :*
_output_shapes
: *
dtype0

gradients/Sum_grad/addAddSum/reduction_indicesgradients/Sum_grad/Size*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
: *
T0
Ą
gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*
_output_shapes
: *+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/Shape_1Const*+
_class!
loc:@gradients/Sum_grad/Shape*
valueB *
dtype0*
_output_shapes
: 

gradients/Sum_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: *+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: *+
_class!
loc:@gradients/Sum_grad/Shape
Ď
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
:*

Tidx0

gradients/Sum_grad/Fill/valueConst*
dtype0*
_output_shapes
: *+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :
¨
gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
T0*
_output_shapes
: *+
_class!
loc:@gradients/Sum_grad/Shape
ú
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*+
_class!
loc:@gradients/Sum_grad/Shape*
N*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Sum_grad/Maximum/yConst*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0*
_output_shapes
: *
value	B :
Ŕ
gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*+
_class!
loc:@gradients/Sum_grad/Shape
Ż
gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*+
_class!
loc:@gradients/Sum_grad/Shape*
T0*
_output_shapes
:

gradients/Sum_grad/ReshapeReshapegradients/Neg_grad/Neg gradients/Sum_grad/DynamicStitch*
Tshape0*
T0*
_output_shapes
:

gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

c
gradients/mul_grad/ShapeShapePlaceholder*
out_type0*
T0*
_output_shapes
:
]
gradients/mul_grad/Shape_1ShapeLog*
out_type0*
T0*
_output_shapes
:
´
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
m
gradients/mul_grad/mulMulgradients/Sum_grad/TileLog*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


gradients/mul_grad/SumSumgradients/mul_grad/mul(gradients/mul_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0

gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
Tshape0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

w
gradients/mul_grad/mul_1MulPlaceholdergradients/Sum_grad/Tile*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
Ľ
gradients/mul_grad/Sum_1Sumgradients/mul_grad/mul_1*gradients/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:

gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
Ú
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*-
_class#
!loc:@gradients/mul_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ŕ
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*/
_class%
#!loc:@gradients/mul_grad/Reshape_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


gradients/Log_grad/Reciprocal
ReciprocalSoftmax.^gradients/mul_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


gradients/Log_grad/mulMul-gradients/mul_grad/tuple/control_dependency_1gradients/Log_grad/Reciprocal*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

t
gradients/Softmax_grad/mulMulgradients/Log_grad/mulSoftmax*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
v
,gradients/Softmax_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ś
gradients/Softmax_grad/SumSumgradients/Softmax_grad/mul,gradients/Softmax_grad/Sum/reduction_indices*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims( *

Tidx0
u
$gradients/Softmax_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   
Ť
gradients/Softmax_grad/ReshapeReshapegradients/Softmax_grad/Sum$gradients/Softmax_grad/Reshape/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0

gradients/Softmax_grad/subSubgradients/Log_grad/mulgradients/Softmax_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

z
gradients/Softmax_grad/mul_1Mulgradients/Softmax_grad/subSoftmax*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

^
gradients/add_grad/ShapeShapeMatMul*
_output_shapes
:*
T0*
out_type0
d
gradients/add_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:
´
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ľ
gradients/add_grad/SumSumgradients/Softmax_grad/mul_1(gradients/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:

gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0*
Tshape0
Š
gradients/add_grad/Sum_1Sumgradients/Softmax_grad/mul_1*gradients/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 

gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
Ú
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*-
_class#
!loc:@gradients/add_grad/Reshape
Ó
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
_output_shapes
:
*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
T0
ť
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyVariable/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(*
T0
Ž
gradients/MatMul_grad/MatMul_1MatMulmyInput+gradients/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	

n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
ĺ
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul
â
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1*
_output_shapes
:	

b
GradientDescent/learning_rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 

4GradientDescent/update_Variable/ApplyGradientDescentApplyGradientDescentVariableGradientDescent/learning_rate0gradients/MatMul_grad/tuple/control_dependency_1*
use_locking( *
_output_shapes
:	
*
T0*
_class
loc:@Variable
˙
6GradientDescent/update_Variable_1/ApplyGradientDescentApplyGradientDescent
Variable_1GradientDescent/learning_rate-gradients/add_grad/tuple/control_dependency_1*
use_locking( *
_output_shapes
:
*
_class
loc:@Variable_1*
T0

GradientDescentNoOp5^GradientDescent/update_Variable/ApplyGradientDescent7^GradientDescent/update_Variable_1/ApplyGradientDescent
2
initNoOp^Variable/Assign^Variable_1/Assign
R
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
x
ArgMaxArgMaxSoftmaxArgMax/dimension*
T0*
output_type0	*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
ArgMax_1/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 

ArgMax_1ArgMaxPlaceholderArgMax_1/dimension*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0*
output_type0	
N
EqualEqualArgMaxArgMax_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0	
P
CastCastEqual*

DstT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

SrcT0

Q
Const_1Const*
_output_shapes
:*
valueB: *
dtype0
[
Mean_1MeanCastConst_1*
_output_shapes
: *
	keep_dims( *
T0*

Tidx0
P

save/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0

save/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_e0107623b0b74b33a5b68d0ee914758c/part*
dtype0
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
_output_shapes
: *
N
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
\
save/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
u
save/SaveV2/tensor_namesConst*
_output_shapes
:*)
value BBVariableB
Variable_1*
dtype0
g
save/SaveV2/shape_and_slicesConst*
valueBB B *
_output_shapes
:*
dtype0

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariable
Variable_1*
dtypes
2

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*
_output_shapes
:*
N*

axis 
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
l
save/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBVariable
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2

save/AssignAssignVariablesave/RestoreV2*
_class
loc:@Variable*
T0*
use_locking(*
validate_shape(*
_output_shapes
:	

p
save/RestoreV2_1/tensor_namesConst*
_output_shapes
:*
valueBB
Variable_1*
dtype0
j
!save/RestoreV2_1/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
˘
save/Assign_1Assign
Variable_1save/RestoreV2_1*
T0*
_output_shapes
:
*
validate_shape(*
_class
loc:@Variable_1*
use_locking(
8
save/restore_shardNoOp^save/Assign^save/Assign_1
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"
trainable_variables|z
7

Variable:0Variable/AssignVariable/read:02zeros:0
?
Variable_1:0Variable_1/AssignVariable_1/read:02	zeros_1:0"
	variables|z
7

Variable:0Variable/AssignVariable/read:02zeros:0
?
Variable_1:0Variable_1/AssignVariable_1/read:02	zeros_1:0"
train_op

GradientDescent*
predictx
,
myInput!
	myInput:0˙˙˙˙˙˙˙˙˙,
myOutput 
	Softmax:0˙˙˙˙˙˙˙˙˙
tensorflow/serving/predict