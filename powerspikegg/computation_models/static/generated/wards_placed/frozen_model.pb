
4
placeholderPlaceholder*
dtype0*
shape: 
[
BatchNorm/betaConst*
dtype0*5
value,B*" |�nB|�n�n�|�n�|�nB}�n�~�nB{�n�
[
BatchNorm/beta/readIdentityBatchNorm/beta*!
_class
loc:@BatchNorm/beta*
T0
b
BatchNorm/moving_meanConst*
dtype0*5
value,B*" �D�@֢�@
K$APC���A�ZHL��E%�?
p
BatchNorm/moving_mean/readIdentityBatchNorm/moving_mean*(
_class
loc:@BatchNorm/moving_mean*
T0
f
BatchNorm/moving_varianceConst*
dtype0*5
value,B*" ���A�'&A�p
B:�E�H�D�O��K⌽?
|
BatchNorm/moving_variance/readIdentityBatchNorm/moving_variance*,
_class"
 loc:@BatchNorm/moving_variance*
T0
V
(BatchNorm/moments/Mean/reduction_indicesConst*
dtype0*
valueB: 
{
BatchNorm/moments/MeanMeanplaceholder(BatchNorm/moments/Mean/reduction_indices*
T0*
	keep_dims(*

Tidx0
O
BatchNorm/moments/StopGradientStopGradientBatchNorm/moments/Mean*
T0
\
-BatchNorm/moments/sufficient_statistics/ShapeShapeplaceholder*
out_type0*
T0
{
,BatchNorm/moments/sufficient_statistics/CastCast-BatchNorm/moments/sufficient_statistics/Shape*

DstT0*

SrcT0
d
6BatchNorm/moments/sufficient_statistics/Gather/indicesConst*
dtype0*
valueB: 
�
.BatchNorm/moments/sufficient_statistics/GatherGather,BatchNorm/moments/sufficient_statistics/Cast6BatchNorm/moments/sufficient_statistics/Gather/indices*
validate_indices(*
Tparams0*
Tindices0
[
-BatchNorm/moments/sufficient_statistics/ConstConst*
dtype0*
valueB: 
�
-BatchNorm/moments/sufficient_statistics/countProd.BatchNorm/moments/sufficient_statistics/Gather-BatchNorm/moments/sufficient_statistics/Const*
T0*
	keep_dims( *

Tidx0
h
+BatchNorm/moments/sufficient_statistics/SubSubplaceholderBatchNorm/moments/StopGradient*
T0
�
9BatchNorm/moments/sufficient_statistics/SquaredDifferenceSquaredDifferenceplaceholderBatchNorm/moments/StopGradient*
T0
o
ABatchNorm/moments/sufficient_statistics/mean_ss/reduction_indicesConst*
dtype0*
valueB: 
�
/BatchNorm/moments/sufficient_statistics/mean_ssSum+BatchNorm/moments/sufficient_statistics/SubABatchNorm/moments/sufficient_statistics/mean_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
n
@BatchNorm/moments/sufficient_statistics/var_ss/reduction_indicesConst*
dtype0*
valueB: 
�
.BatchNorm/moments/sufficient_statistics/var_ssSum9BatchNorm/moments/sufficient_statistics/SquaredDifference@BatchNorm/moments/sufficient_statistics/var_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
E
BatchNorm/moments/ShapeConst*
dtype0*
valueB:
t
BatchNorm/moments/ReshapeReshapeBatchNorm/moments/StopGradientBatchNorm/moments/Shape*
Tshape0*
T0
�
#BatchNorm/moments/normalize/divisor
Reciprocal-BatchNorm/moments/sufficient_statistics/count0^BatchNorm/moments/sufficient_statistics/mean_ss/^BatchNorm/moments/sufficient_statistics/var_ss*
T0
�
(BatchNorm/moments/normalize/shifted_meanMul/BatchNorm/moments/sufficient_statistics/mean_ss#BatchNorm/moments/normalize/divisor*
T0
u
 BatchNorm/moments/normalize/meanAdd(BatchNorm/moments/normalize/shifted_meanBatchNorm/moments/Reshape*
T0
�
BatchNorm/moments/normalize/MulMul.BatchNorm/moments/sufficient_statistics/var_ss#BatchNorm/moments/normalize/divisor*
T0
_
"BatchNorm/moments/normalize/SquareSquare(BatchNorm/moments/normalize/shifted_mean*
T0
y
$BatchNorm/moments/normalize/varianceSubBatchNorm/moments/normalize/Mul"BatchNorm/moments/normalize/Square*
T0
v
BatchNorm/AssignMovingAvg/decayConst*
dtype0*(
_class
loc:@BatchNorm/moving_mean*
valueB
 *���=
�
BatchNorm/AssignMovingAvg/subSubBatchNorm/moving_mean/read BatchNorm/moments/normalize/mean*(
_class
loc:@BatchNorm/moving_mean*
T0
�
BatchNorm/AssignMovingAvg/mulMulBatchNorm/AssignMovingAvg/subBatchNorm/AssignMovingAvg/decay*(
_class
loc:@BatchNorm/moving_mean*
T0
�
BatchNorm/AssignMovingAvg	AssignSubBatchNorm/moving_meanBatchNorm/AssignMovingAvg/mul*(
_class
loc:@BatchNorm/moving_mean*
use_locking( *
T0
|
!BatchNorm/AssignMovingAvg_1/decayConst*
dtype0*,
_class"
 loc:@BatchNorm/moving_variance*
valueB
 *���=
�
BatchNorm/AssignMovingAvg_1/subSubBatchNorm/moving_variance/read$BatchNorm/moments/normalize/variance*,
_class"
 loc:@BatchNorm/moving_variance*
T0
�
BatchNorm/AssignMovingAvg_1/mulMulBatchNorm/AssignMovingAvg_1/sub!BatchNorm/AssignMovingAvg_1/decay*,
_class"
 loc:@BatchNorm/moving_variance*
T0
�
BatchNorm/AssignMovingAvg_1	AssignSubBatchNorm/moving_varianceBatchNorm/AssignMovingAvg_1/mul*,
_class"
 loc:@BatchNorm/moving_variance*
use_locking( *
T0
�
BatchNorm/IdentityIdentity BatchNorm/moments/normalize/mean^BatchNorm/AssignMovingAvg^BatchNorm/AssignMovingAvg_1*
T0
�
BatchNorm/Identity_1Identity$BatchNorm/moments/normalize/variance^BatchNorm/AssignMovingAvg^BatchNorm/AssignMovingAvg_1*
T0
F
BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *o�:
X
BatchNorm/batchnorm/addAddBatchNorm/Identity_1BatchNorm/batchnorm/add/y*
T0
D
BatchNorm/batchnorm/RsqrtRsqrtBatchNorm/batchnorm/add*
T0
O
BatchNorm/batchnorm/mulMulplaceholderBatchNorm/batchnorm/Rsqrt*
T0
X
BatchNorm/batchnorm/mul_1MulBatchNorm/IdentityBatchNorm/batchnorm/Rsqrt*
T0
W
BatchNorm/batchnorm/subSubBatchNorm/beta/readBatchNorm/batchnorm/mul_1*
T0
[
BatchNorm/batchnorm/add_1AddBatchNorm/batchnorm/mulBatchNorm/batchnorm/sub*
T0
�
hidden1/weightsConst*
dtype0*�
value�B�2"�(�n��m��nBܚnB�n¦Mnzn���nBo�Z�nBUoBd�nB@�n��nBo�|�noB�n�(oB{�n�K�n��\nBY�nB��nBYo�H�n$oB�YnB�QnBb=nB�Fo��nB0sn�ƙn�=n��n¨�nB��nBo1n�d�nB��m#oB�^nB�!nBj�nvn�*tnBnnBoBChnB��n�'n�3�nBr�mB�xnB�Ko�V�nB��nB�CnB:�n�n�?XnB@�nB �nB�n�(&oB��no�D�n�L0nBS?o�X�mB�en���n�~�n��pnB��nB��nB0XoB��nB��n�%Xn��An�>Xn�X�nB��m�<�nBzo�Q8n��dnB�do���m��nB�Sn�wnB2�nB��n'n��nBl�nBiInB�jn�jo��gn®�n�nB��n,n��nBo�4�n�!�n�Ԋn«\oBgn��nB�nB�GnB|�n�پnB2hn¨Ro�b�n�nB��n��{nB�nBa�n�V�n���n�v]nBR�n»�nB��n�z�n�2�nB�4oB"�n��o��)nB|�mB��mB.�n�nB�oB��nB�7oB!�n��.n�:,n�JoB�Xn��m�J�n�{	n��nB]}n�2<nBbVn��nBen��*nB>nBrnB6^n�phndnB�n�dvn�n�&WnB=�n��o�aRn�ثnhn��n��n�KnBLnB�JnB>oB\o�XnB�5nBI�n��2n�@in´�nB��n}nB�@n¤�nB
:oB|�m��nB�9o�uYnB}xn�~jn�Mn���n�I	nB��nBVn��2n�SnB��nB!�nB�$nB�nBJ�nB��n��n¦0nBxmnB-�n��nª}nB�/nB'QnB�'oB2SoB�`nB6�n�X�nB��nB�pn��nB��nB�JnBdDnB��nB�pn�n´>n¼Kn��9nB4�n���nBAn�>7nB�nB��nBB�nB��n�p'nB,�n�l�nBabo�6�n�^Eo���n���nB��n���nB��nB��nB�o·OnB�6nBN�nBP�nBڽnBW�n¨�n�X:nB�pn�5�nB��n��Zn��n�rVnB�an��n�ɦn��;n�~�n��nB��nBpnn��nB�zn�i�nª�mBbn=noB��n�X$n�}nB��nBCpnB��nBNVn� 5o�[�nB�nB�~nB��n�n�h�nB\�n�nBpln�nYn�W#n�ҠnB@�n���n�nB��n�Nkn}n�n���mB(�nB��n�DMnB �nB�0nB�TnBWUnBsnBc@n�nB��nBn�n�>�nBz�mªWnBp1nB�vnB��n¯�n¥�n�(<nB�bnB��n�J�nB>�n��gnB7oB��mB�nBhn��;nB��n¤�nB�o���m¢�nB��n�:�n¬0o�nB�o�n�nB\�nB#~nB�pnB�GnB��n�)�nBl�n���n���nB��n�fnB�o�[�n­7n­nB�QnB��n�n��n�knmnBK�n�y�nB��nB� nBA0nBR�n��+o�9�m�
SnB�n�n��nBf�nBl|nB�nB�o©n�ynBU�nBen�Ro�
^
hidden1/weights/readIdentityhidden1/weights*"
_class
loc:@hidden1/weights*
T0
�
hidden1/biasesConst*
dtype0*�
value�B�2"�|�n�|�n�|�n�x�nB~�nBw�nB~�nB{�n�|�nB}�nB|�nB~�nB~�nB~�n�}�n�|�nB�nB~�nB|�n�|�n�|�nBv�nB|�n�|�n�|�nB~�n�~�n�nB~�n�~�n�~�n�|�n�{�nB{�nB~�nB~�n�|�nB~�n�|�nB}�n�|�nBz�n�~�n�x�n�|�n�|�n��n�{�n�~�n�x�n�
[
hidden1/biases/readIdentityhidden1/biases*!
_class
loc:@hidden1/biases*
T0
x
hidden1/MatMulMatMulBatchNorm/batchnorm/add_1hidden1/weights/read*
transpose_b( *
transpose_a( *
T0
@
hidden1/addAddhidden1/MatMulhidden1/biases/read*
T0
*
hidden1/ReluReluhidden1/add*
T0
�
BatchNorm_1/betaConst*
dtype0*�
value�B�2"�|�nB{�nBd�nB{�nBz�nB{�n�~�n�|�n�}�nB|�n�p�n�E�nB{�nB{�nB|�n�|�nBx�nBx�nB|�n�z�n�{�n�y�n�{�n�z�n�{�n�r�nBx�nBv�nB{�n�u�n�z�n�|�nBv�nB|�nB|�nB|�n�y�nB}�n�|�n�|�n�x�n�|�n�w�n�t�nBx�n�~�nB|�n�z�n�y�n�y�nB
a
BatchNorm_1/beta/readIdentityBatchNorm_1/beta*#
_class
loc:@BatchNorm_1/beta*
T0
�
BatchNorm_1/moving_meanConst*
dtype0*�
value�B�2"����4�I�E��ZF�]F`&C]�4�ݲB�1�B<��4i4�B]Fmf4��m4E�4��ZF�-�E���4�OC��ZFE�Eƺ\F֍�Flb[F��ZF���E�'�E� [Fʙ�E��BF�DBm�A�q�E]'�E蚒4.(�4�$�Bd��E
�ZF��CK0[F���4���E�`�B��EBR��El�q4I��E���3��ZF3M�E
v
BatchNorm_1/moving_mean/readIdentityBatchNorm_1/moving_mean**
_class 
loc:@BatchNorm_1/moving_mean*
T0
�
BatchNorm_1/moving_varianceConst*
dtype0*�
value�B�2"�+��7��F��`F�YG�إF���7Z�F��F�-�7� �F�1PG���7�7@Q�7�;SG�"<G�W�7��GDPG$	<G���F7�F&PG�5�F��G�<G�GX�F�&�F�[�E���D&�G+G��7��7���Fڿ�F�PG���F��GH��7c�!G/%�FL(F��;G��7!�!G���7DG�ՓF
�
 BatchNorm_1/moving_variance/readIdentityBatchNorm_1/moving_variance*.
_class$
" loc:@BatchNorm_1/moving_variance*
T0
^
0hidden1/BatchNorm/moments/Mean/reduction_indicesConst*
dtype0*
valueB: 
�
hidden1/BatchNorm/moments/MeanMeanhidden1/Relu0hidden1/BatchNorm/moments/Mean/reduction_indices*
T0*
	keep_dims(*

Tidx0
_
&hidden1/BatchNorm/moments/StopGradientStopGradienthidden1/BatchNorm/moments/Mean*
T0
e
5hidden1/BatchNorm/moments/sufficient_statistics/ShapeShapehidden1/Relu*
out_type0*
T0
�
4hidden1/BatchNorm/moments/sufficient_statistics/CastCast5hidden1/BatchNorm/moments/sufficient_statistics/Shape*

DstT0*

SrcT0
l
>hidden1/BatchNorm/moments/sufficient_statistics/Gather/indicesConst*
dtype0*
valueB: 
�
6hidden1/BatchNorm/moments/sufficient_statistics/GatherGather4hidden1/BatchNorm/moments/sufficient_statistics/Cast>hidden1/BatchNorm/moments/sufficient_statistics/Gather/indices*
validate_indices(*
Tparams0*
Tindices0
c
5hidden1/BatchNorm/moments/sufficient_statistics/ConstConst*
dtype0*
valueB: 
�
5hidden1/BatchNorm/moments/sufficient_statistics/countProd6hidden1/BatchNorm/moments/sufficient_statistics/Gather5hidden1/BatchNorm/moments/sufficient_statistics/Const*
T0*
	keep_dims( *

Tidx0
y
3hidden1/BatchNorm/moments/sufficient_statistics/SubSubhidden1/Relu&hidden1/BatchNorm/moments/StopGradient*
T0
�
Ahidden1/BatchNorm/moments/sufficient_statistics/SquaredDifferenceSquaredDifferencehidden1/Relu&hidden1/BatchNorm/moments/StopGradient*
T0
w
Ihidden1/BatchNorm/moments/sufficient_statistics/mean_ss/reduction_indicesConst*
dtype0*
valueB: 
�
7hidden1/BatchNorm/moments/sufficient_statistics/mean_ssSum3hidden1/BatchNorm/moments/sufficient_statistics/SubIhidden1/BatchNorm/moments/sufficient_statistics/mean_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
v
Hhidden1/BatchNorm/moments/sufficient_statistics/var_ss/reduction_indicesConst*
dtype0*
valueB: 
�
6hidden1/BatchNorm/moments/sufficient_statistics/var_ssSumAhidden1/BatchNorm/moments/sufficient_statistics/SquaredDifferenceHhidden1/BatchNorm/moments/sufficient_statistics/var_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
M
hidden1/BatchNorm/moments/ShapeConst*
dtype0*
valueB:2
�
!hidden1/BatchNorm/moments/ReshapeReshape&hidden1/BatchNorm/moments/StopGradienthidden1/BatchNorm/moments/Shape*
Tshape0*
T0
�
+hidden1/BatchNorm/moments/normalize/divisor
Reciprocal5hidden1/BatchNorm/moments/sufficient_statistics/count8^hidden1/BatchNorm/moments/sufficient_statistics/mean_ss7^hidden1/BatchNorm/moments/sufficient_statistics/var_ss*
T0
�
0hidden1/BatchNorm/moments/normalize/shifted_meanMul7hidden1/BatchNorm/moments/sufficient_statistics/mean_ss+hidden1/BatchNorm/moments/normalize/divisor*
T0
�
(hidden1/BatchNorm/moments/normalize/meanAdd0hidden1/BatchNorm/moments/normalize/shifted_mean!hidden1/BatchNorm/moments/Reshape*
T0
�
'hidden1/BatchNorm/moments/normalize/MulMul6hidden1/BatchNorm/moments/sufficient_statistics/var_ss+hidden1/BatchNorm/moments/normalize/divisor*
T0
o
*hidden1/BatchNorm/moments/normalize/SquareSquare0hidden1/BatchNorm/moments/normalize/shifted_mean*
T0
�
,hidden1/BatchNorm/moments/normalize/varianceSub'hidden1/BatchNorm/moments/normalize/Mul*hidden1/BatchNorm/moments/normalize/Square*
T0
�
'hidden1/BatchNorm/AssignMovingAvg/decayConst*
dtype0**
_class 
loc:@BatchNorm_1/moving_mean*
valueB
 *���=
�
%hidden1/BatchNorm/AssignMovingAvg/subSubBatchNorm_1/moving_mean/read(hidden1/BatchNorm/moments/normalize/mean**
_class 
loc:@BatchNorm_1/moving_mean*
T0
�
%hidden1/BatchNorm/AssignMovingAvg/mulMul%hidden1/BatchNorm/AssignMovingAvg/sub'hidden1/BatchNorm/AssignMovingAvg/decay**
_class 
loc:@BatchNorm_1/moving_mean*
T0
�
!hidden1/BatchNorm/AssignMovingAvg	AssignSubBatchNorm_1/moving_mean%hidden1/BatchNorm/AssignMovingAvg/mul**
_class 
loc:@BatchNorm_1/moving_mean*
use_locking( *
T0
�
)hidden1/BatchNorm/AssignMovingAvg_1/decayConst*
dtype0*.
_class$
" loc:@BatchNorm_1/moving_variance*
valueB
 *���=
�
'hidden1/BatchNorm/AssignMovingAvg_1/subSub BatchNorm_1/moving_variance/read,hidden1/BatchNorm/moments/normalize/variance*.
_class$
" loc:@BatchNorm_1/moving_variance*
T0
�
'hidden1/BatchNorm/AssignMovingAvg_1/mulMul'hidden1/BatchNorm/AssignMovingAvg_1/sub)hidden1/BatchNorm/AssignMovingAvg_1/decay*.
_class$
" loc:@BatchNorm_1/moving_variance*
T0
�
#hidden1/BatchNorm/AssignMovingAvg_1	AssignSubBatchNorm_1/moving_variance'hidden1/BatchNorm/AssignMovingAvg_1/mul*.
_class$
" loc:@BatchNorm_1/moving_variance*
use_locking( *
T0
�
hidden1/BatchNorm/IdentityIdentity(hidden1/BatchNorm/moments/normalize/mean"^hidden1/BatchNorm/AssignMovingAvg$^hidden1/BatchNorm/AssignMovingAvg_1*
T0
�
hidden1/BatchNorm/Identity_1Identity,hidden1/BatchNorm/moments/normalize/variance"^hidden1/BatchNorm/AssignMovingAvg$^hidden1/BatchNorm/AssignMovingAvg_1*
T0
N
!hidden1/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *o�:
p
hidden1/BatchNorm/batchnorm/addAddhidden1/BatchNorm/Identity_1!hidden1/BatchNorm/batchnorm/add/y*
T0
T
!hidden1/BatchNorm/batchnorm/RsqrtRsqrthidden1/BatchNorm/batchnorm/add*
T0
`
hidden1/BatchNorm/batchnorm/mulMulhidden1/Relu!hidden1/BatchNorm/batchnorm/Rsqrt*
T0
p
!hidden1/BatchNorm/batchnorm/mul_1Mulhidden1/BatchNorm/Identity!hidden1/BatchNorm/batchnorm/Rsqrt*
T0
i
hidden1/BatchNorm/batchnorm/subSubBatchNorm_1/beta/read!hidden1/BatchNorm/batchnorm/mul_1*
T0
s
!hidden1/BatchNorm/batchnorm/add_1Addhidden1/BatchNorm/batchnorm/mulhidden1/BatchNorm/batchnorm/sub*
T0
�N
hidden2/weightsConst*
dtype0*�N
value�NB�N22"�N8�n�oB`nnB~pnB��nBq�nBXo�~<o�Jo«�nº�n�3�n�n��nB#oBl�n�n�nB��nBSznB%anBcRn�;^nB<@n�ϥn� �n���n¦
nB�_nBAo�$�n���nBFGnB�n�}�n��hnB�rnLn¶�mB" oB��nB�4n���n�:;nB�%n�DnB09n�B�n®�n�O�n �n�"n��En��n� o�u�m�PinB�qnB��nB��nBT-n��n�H�n���n���mB�`n��gnB�n�v�n�v�n���n�h3nB�o��n��RnBN�n��oBݖn�0�nB��n�ϦnB�oVn8o�&Fn�y�n���n���n��hnBzo�#nBJnB��nB�n�,�n�)�m��oB�2nB�hnB�yn¨�nB�BnB�{n��o�nB�dnB��n�k(o��n�w�n��n�cnBbdnBPJnBx�m�n�oBn�n�.�n¥�nBboB�snB��nB�oB։n®oB��nB�nB��n��n�Ȭn��hnB�nB~cnB%nB��n�I�mBV�nBƓn�n�s�n��n�x5oB�@nB�*o�1�nB�n�Go�ZLnB��nB��n�(�nBz~nB�oB� nB6�nBloB�%n�Fvn�<�n�T$n��6n�g$nBZ�n6nB�rnBl�n¸oB��mBL�mB![nBʤn��nB��n�e�n�kin���n��OoBןnB��n��#n�E�nB1%n���n�y�nB�=oB��n�(On��oB��nB��mBfo�](o�danB)OnBaSnBf�nºIn�z	o�n���n�j�nB��nB��n�{�nBQ�n�?nB�5nB8oB7[n��n��nBjnB��n�+nB��n��7oB�enB��n¾�nBx�nB�zn�jnB{hn�^jn�H=oB�n�oB�nB��n�q�n�"n¾�nBjgn�@�nB�TnB��n�D)n�GooBE�n�T�n��n��pn�(�nB
9o°/n�>�n�B�n GnB*�n��nB&oBF�nBoB��nB?�n��o�A�n��n� @n�`in�5oB�n�PAoB��nB��n�nB��nB��nB<oB�n��1nB�4o���n�{�n�gn�=�n��enB�Po�A�n�nBtnB�rn�&�mB7�nBGo�X�n�d�nB�nBu�mBS�n���n>nBvRnB�;nBP�n���n�)zn�h�n�lnB�Gn�n�(Nn»�nB��nB�rnBhoB`�m��Snª[n��nB�m�Ln�:6n�m��On�m·YnB�Ln­>noB<{nBZ�nB��n�d�nBqXnBPn��nB,/nB�Sn�?�nB�Pn¿�nBM�nBP-n�2�nB��nBV�nBtln�"�n®�n�n�n�@o�Ӟn�:�n��n�nB�cnBڙn��nºnnBsoPn�n��mB۩nB��nB��nB�n¥�noB"Vn���mB�cnB6�nB��nB;pn~nBTyn�I�n��Hn���n¦�nBԘn��en�E�n�̃nBILnBL�nB�bn�r'n�)�n(n�ގnª�n¬�n��:nB�mnBT@nBjnB�nB�*o� oBS�n��nB�QnBJn� :n�^�nB�<nB�o�BZoB�tn�G�m�Ao��n�	�nB*oBt�nBxoB��nBznB��n��oB3�nB�o��]nB4�n�n� �nB� ooB�n�gLoBo�VAn�l�n´�n�&oB�oBrCn²vn¾en�jnBn�nBn�nB��n�~�nBttn�(nB�_n� n�L�nnB&�m°�m��qnBg�n²�nB��mB��n��ZnBq'oB�0nBw�n�%�mB��n�(2o�8enBr�nB��nBN�n�} oo�g�nn�½nB@WnBB�nB�/oB@oB~nBBJn�F�nBUEn½'oB)�n��NnB@�n�nB�oB>�nB�inB�\nB��nBd]nBb�no�
�n��co��n��n�?�n�l�nB�n�o��9nBkKnB��nB�'nB4�n��n¶enB�cn�r�nB��mB��n�_o��jn�nB��nB�o�zoBDyn��n+o�[Lo�B�nB�3nBYknBZKnB��nB�kn�֜nB$unBRRnB�n¸/n¯�n¤`nB��mB�XnB�nB�Io�<nB��nB�Nn¼(n�hn�/�n�#o�J�n� dn9nB1�n`n��	nBT�nB��n� �n�JoB��mB'nn�z�n�t�nB* nB�lnB��n�X:n�oB߭nB�n�^
nBf�nBP�nBϣnB7&nB��nB	�m�B�n�%�n��mB�Bo�WnnBtn�o�n���nB��nB�n�PKn���n�M5n¶�nBi^oB��nB\6n�u�nB\�nB��n��nB=n�zn��nB4oª�nº�nNno½�nB�n�u�n�~�nBx�n���n�n��o°nBC�nB_�nB�(nB��n�M�nB��n�dSnB3�n�h9nª;n�JJn��n�<�nBh#n���nB0nnBs>n�nB"�n�w�n©HnBY�nB�On�*�n�n�n�edn��@nB�oB��nB��nB��nB��nB�nB�?n«�n��/n��n�T�n��o�*oBs�nBf�nRn��;n���n�R�nKn'n©%n��,nB~�nB��nB��nB�n�Ron7oBYnBP�mBT�nB�o���n��"n��InB��m�bOn��nnBfun�X�nB)�n�"�m�Ҥn¹DnBƧn°znB%n�]�n�t8n�m�j�n£�nB �nB��nB��mB�oB&an���m+n�%4n���nB��n`n�~�n�@�n�9�n���nBB�n�nB��n��nB>tnBr{nB�)oBX)nBH�n�A�nTn�>�nB'AnB7�n¸Mnªxnn��nB�n��m�I�nB��n�'unB<o�b�n�&7oB��nBo���nº�n�n�y�n��`n�1o�N�nBinB/�nB��nB��n�;In�@pn�J�n���n� �nBcnBFtn���nB.�nn��"n��!o��o���n�ֆnB��mB}|nBƮnB��nB��nBmboB6o�2�nB<�ngn�B�n��n±o�|�nBj5o²7nB&�nB��n�~�n��^n��n���nB�CnB�)oBso��ynB7n�ЗnB��m�j�nB2o�$n�`�n�nB!�nB{Yn��Mn�H{n�oB�,oBՅnBvnB�n��n�T�nBtynB��n��n¾oBE�mB��nBn�n�|�n�Xo¯�nB)Jo�5GnB-o@nB��nB��m�$�nB�o�Gn�*nBȍn��n���nB�7n��7n�֌nB
ynB��n�H:oRn�;�n�`�nBA"o�in°�n� �nB��nBD!nznB��mB�nB��mB�tn��n��n���n¿5o¥RnB�:nB��n�n��nB�nBz�n�n���n¼|nmnB�`n��dnB��nB�znB��n�`�n�y�nB\{nBxnB��nB#�nB�WnB��nB�o�_\nB(nB��nB�n�tMn��'n�nB�nBInB��mB��nBeoBm�nB��m� �n�~�n�аn�%o�xn�(in��nBZ-o�~�n�p_nB�oBoB>�nBK*o� Jn�u�nB.�n�F�nB�o�L�n¿?o³Go�n�0�nBT!nB��nB4�n¾�noB�*nB�nB,}nBnqn�H%nBK�nin�"�nB��nB*�nB\n�<�n�(�n��nB�nB<jnB0�nB�jnB�n���ncoBXn��n�o`o��mnB�n��?n��o�l�n�^�nB�oB.�nB��nBȝn���nB\hn���nkn�TTn���nBK9nBMInB+oB��nB�dnBؒn�U�nB�7o�ySn�1�nBMoUoB��nBd�n�nB|n�Jn�Nn�;�nBj(o�2�m�YoB��nB{"o[nByyn��^nB�\nB��mB�Fnan�?�n1nB�)n�k�nBU�m�{.nBg�n�A�n��nB�pn�D?o�.�nB��n�d;oB>Qn�'Rn��n�(Kn�A�m �nBrnB�]n��/n�nBPnBU�nB�Fn�=nBqoBs�nB��nBKenB@�n���n�*3oB|bn�
�n�V�n�Z�m�n�@5nB�oBroB22o�vn�nB�n��n��nB`DnBG�nBan�n�XnB��m�͡nB]2n�k�n�R&nB��n��Bn�P�nBZXoB�nBu!oB�1nB�{n�crnSo�n���n�^|n�j�n�nBL�nB�0o§�mnB@oB�>nBt_oB�n�L�nB�sn���n�e�n�)Cn��5nB��nB��n�Ifn¦DnB��nB�Xn�9oB�nBg�n���n�Pn�(rnB΋nB��m��n��nBB!oBY=oBn��,o�p6n��nyn��n�nB�;nB�:o��n�nB��nB��nB��nB�SnB�lnB��nB�n�n�x�nBJoB�-n�nYn��nB��n��n�n¯UnB��nBbn�FEn�t�n���n�ޣnB��nB{n�+�n��dn��n��nBjnB�FnB��nB�[oB��nB@BnBd%o�RQn�TUoBv�n�D2o�n�@�nB�mBc<n²�nB�yn��|nª
o�D8o�RCn��Jn���nB,�nB�nB��n¤�n�UnBpn�@'oB8n�N�nB��n§�nB��nB��mBl�no��GnBظn¬�n�4n��nB��mB-�nB.nB��mB�o�n\nB7_n�l�n��nB��n��\nBS�nB�nB��nB��n©�nB4LnB��nB�#oB��n��pn�o�>Oo��mnB��n�,cn�?�n�(wnº�nB"nB��nB�oBv�n���mB�n�mBQ�n�<�n� �nB��n��Hn��AnB��n`oB'=nB0o�mB99n�~3n��EoB��mB-n� }n��n���n�q�nB��nB�pnB
MnB?�nB*�nBr=nB*xn�n�1�n�ҏn��n�h�n±�nBH�mBN�nB�!n��Mn�m�mB�Wn�V�n�"�n�;�n�[nB=nB��nBA�nBV�nB�-nB��n�v�nBn�nrn���nB��n�OKn�nB-�nB��nB��n�nB�(n�nB:�n²nB�2n8nBfjn¦lnB��nB�oBْnB��nB�n�x-nn�l6nBKEn£�nAo¿bnB�eno�N�nB��nBVrn�%�nBjnB��n�nBt�n�>�nB��nB)QnBb�n�[o��n��nB]n�7�nB�Hn´*oB�UnB�)o«�nB�=nB��n���nB�?n��Vn\nBXn��n�HcnB��nBQUn�n�ܟnB��n�3�nB(oB �n��9n�[�nB��nB�o��n�*Pn&nB�nB��m��Un½�n�*�n��qnB/"oB�[nB&onB�Mn�L?nB�n�ߌn�4oBnB�GnB�Mn��nB&�nB��n��Do�mxnB	n��nB$�n�nB�	oB�vnB�3nB��n��nB�Pn�R1nB��n��Jn�n�>6nB��n�d[nB��nB �nBdpnBQ�nB��n�оnB3�n��lnB;o�p�nBn@nB��n��ln<nBEoBջn��sn�B�n��n�n¤Dn��nB`�nBRnB��mB��n�<�nBO�nB�n��n�GknBirnB�(n±�m�R�nBӻn¢�n��m��SnBd�nB'oB�n�+|n§�n�nBGnBpsn�CXn��n�n²�mBr�n��hnB�nB��n���nB�nB�nBмn��`nB�o�ignB��mB�AoBz�n��+oln³=nB��nBX�n�³n��oB" nB��nB�^oBDo���nµXnB�*n�xynBʅnB��nB��nB�in���nB��nB��n�fo�Ȩn�C?n���nB9en�O�n��nB�\nB��n�9�n¼�n�n�so��
oB��n�w2o�&�nB��nB|nB�|nBN�m�-�nB��nB�0n� �n�dZnen¬n�D1nB�rnB@8o�6�nBntn�,o¢gn��n¡�mB�?nB��mB�nBnB��nBP�n���nB��m��n�nB:mn�q-n��nnB��n�%�nB��n�,on�`o�R�m¯�n��nB�WnB3�nB�n�CnBq:n�^JnBPmnB��nBvo»<nB�mn��m�@Vn
o���n�v�nB��n��n�rVnBl�nBx}nBumnB<�m¤�n�poB��n�In�iOn�ƫn¸�nB.�n��Yn�4�nBn�nB�pn�Tpn���n¬�nB��n��oBznB�nBH+oB@�nB�n��lnB�n��nB�EnB��mBrn�6�nBeoB�XnB��nB�nBz�n�nB�eo��}n¹�n�%�n��nB��nB��n��;oB��nB��nBN�nB�,nB�nB�	o�"�n��o��n�F�n��nB{hnB��nB&�nBF�nB�lnBStnB�InB%o�blnB��nB��n7o�#qnB?Sn�nnBKo¼#oB��nB�xnBj�n���m�f�n¢�nBznB	n��)n°�n�P0o¸�nB��n�9tnB%�nBԜn��oB��nBenBYo�$�n�*�n¼�n�nB,�nB�XoBf]oBr!o�";n�n��n�4�n�vAn��nB)�nB�ZnBhxnB0nB�	oB�FnB%�n¬oB4Xn�_�n�Ђn·o��o�m�nBH�n¶{nB,�nB�NnCo��n��Bn�6�nB�7oB%�n��n�1DoB��m��LoB�_nB^QnB��nB(n�	�n�ܙnB�nB�n��-o��{n�l!n�_nB�KnB�]nB�]nB*1n¡	n� $nB@Rn��o��_nhnB��nB�n�cnBM�nB��nBνnªo hnBr�nB��n�UhnB�Mn�`un�%oBO�n¢�nB��n� �n�x�nB�n��5o�w]nB�JoBKtn�z�n�m���n«OnBоnB��nBG�nB�"nB,o��snB�Wn�4�n���nB|�n�Øn�f�n)oB�SnB�`n�l�n��eo�[�nwn�؜n���nB�
oB��nB��nB�n��nBEdnBX�nB}�n��nB�5nB��n�n��&nB-�n�N�nB"�n�@�nB�pnB��nB�bo�n�zOnwnB]�nB��n��:n��o�ZYo�0HnB�@n�?�nB��nB��m��nBFnBOnByn®sn�Q�n�үnB�)nBh�nB�nB6Tn��dnBD�n¤�n¿nBc�n�<�m��n�܇nB��nBP0o�2�n�nB��nB<inB}�nB� nB��nB��n�^�mB�FnB'n��Dn�n��nB��nB��n£�n�L�nBF�nBn�^vnBnB�o®'o¢HnBԲn�j�n¡ynB��n�I�nB=4nBD�nBܮnBԆn�pnB��nB:oBön�o�>n®�nBt�n��n�ЩnB~�nB�n���n�Q�njn��nBR�n�@o�ZnBQunB�o���n(nB�}nB�oBdnB�fn�L�nB3�n�Ƚn�G�n¾ o��#nB��n�nª.n��rnBT�nB��mB^o�6SoB�8o��n�p�nB��n®�nB�o�n�n��nB� n�h�nB"Po3o®�nB5�nB��nBP�n/nBɔn�o6n�P�nB��nB~�nB�n��
o�@�nB�ZoBH�n}n�c�n�nB�0o�X�n�e�nB�ynBV{nB�oB�xnB��n�ՍnB@Co¤�nB�nB�
oB��n�R�nB{�n§�nB@�nB0�nB�KnBZ�nB�"o�5sn�
�n��n�VZnB�nº>nB8�n�y�n�|�n��nB�nB��n®�nB�,nB/�n�y�nB$�n�n�nB�QoB�_n®@n´�n¨�n��nB��n��/oB:�nB�oBڭnB�\o�r�nB��mB}n���mB�n�n��nB�ln�I�n��}nBs6nBl�n���n��o�|�n�ħnB�9nB�Oo�:�n�=nB��nB\Gn�דn�,�n«�nB�%oB�n/o�E�n�ҏn��ynBE�nº�nBIqnBv�n�חnBA�nB�nB��n��In�^�n¹�m�XSn���mB1@n��-oB˒n�@�n��nBp�nB�^nB�nB�n�@�nB��nmn£6n���n¢)oB�EnB��n�Aqn�m�X�nB��n�nB@�nB�o���n��Mn'nB�nB��n�Ȩn�bOoB�&nB �n�^in�:6n��)n��@nB�nB0oB�*n¬}n�}WnBs�n�oB�@nB2oBbOn�D�n���mB�nBqo¿�m��n��n¿oBh�n�p�nBDnBMHnBXpnB��nB��n"nBѯn�[HnB��n:nB}o�(�nB��nB�oBoB`�mB�nB`�nB7
n�(�n��n��Cn¸�nB��n��wn'n�=�n��n��nB\�nBa�n�2n¨�n��YnB�o�N�nB��n�6�nBh�n�r�n�3nB�nB�n�"Un���nBDInBпnB�EnB��nB��n�@�n�prnB�.n��n��nBN�n�8fnB�n©
n��n�x�nB��m�mBD�n�B9n�z�n�nB��n�v�nB	nBYnBIo�27n�n�'n��!n¾zn�0n�~enBr�n�nºoB��n��nBʥn�&on¢�n��mB�(nB��nB�n�nB٬nB1�n�ƨn�9�n��n�m�[�noB%oB��nBǼnB��nB-�nB3�n��VnB��nB�n�
DnB"@oB+�mB��mB��n5nB�n�zQo��n�n�d�nB��nB��nB��nB Co�$�nB�nB:�nB�XnB��n�jsn��nB Pn�18n�@�m�en��an��Un¾0nB��nBp@nB��m�OVn�ƏnBpnB[TnB��nB�[nB7:n�nB:oBy�nBjo¿�n�̠nB�9nB:!o�nKnB�n�`�n�'oBc�nB2�n�^o���mB��n�n��nB��n�A�nBѴnB�nB�nB@Cn��nB�*nBinB�oBƖn�.�n�Z�n�9rnB�pnBM�n�F�nB4n��nB2Ln��LnB5xn3o�֠n�n�nBf<n��nBT�nB#cnBL*n�4[n¾�nlnBPn��n��n�,�nB��n�߭nB�n�n�
1o��n�̉n�nB�wn�qSn�~n��ZnBӹnBғnBi�nB0oB��mB� oB$�nBn,oB�o�jJn�G&n�n²�n�Իn^n��?n�8Vn�n��*n�m�nBJ�nBoJnB@�nBgWo�mHnBs�nB�#oB�nB o�Cn�n�n�$�nB�n�j�n¢TnB�m�X�nB�sn»o��oB&unB��n»o�'o���n��nB��no�:�nB�#oBR�nB�wnB�,n�s&n�:�n��n�Δn��nBn�nB��n�b�nB��n�:�n�8�n[o¸o�)nB�+nB�nBZ[nBEnBO#oB��nB;�nB�\n�
�mB��n�̬n��"n� 3o¹�n¹�nB�=oB�OoB*�nB��nBn���n©&njnBd�mBOoB�n�?�nB�{nB��nB&�nB8nB�nB�zn�*=n�nB�nB%un�o�n�Gn¸�n��oBClnB,gnB�n��n¿hnBpnB�In�ZJn��nBk�nBD�nBeKnB�n���n�ŷnB��n�FDnB��n�q�nB��nB�in��nBG2nº�n�mBf�m��`nB�bnB��n¨�n��nBoBWo�7n�vfn�Q�n�R�nBnn¥oLo­�mB��n²GnB��nBNoBҤnB�DoB�Jo�nB0$nBE�n��Do��WnB�n��#n���n���n¸�n�/�n���n���nB�HnB�nB�1oB�lnB��nB�:n��nBj>o´�n�S=n�^n�n�{�nB��n�nB��nB�Sn� o���n�X�n�e�nB�nB��mº�n�2�nB�6o��nBi�nnB�@nB�nBnB`oBd�nBx~n%n���n�O�nBV"nB3oB_nB
^
hidden2/weights/readIdentityhidden2/weights*"
_class
loc:@hidden2/weights*
T0
�
hidden2/biasesConst*
dtype0*�
value�B�2"�{�nB~�nB|�nB|�n�o�nBH�n��nB|�n�|�n�z�nB{�nB|�nBx�nB�nB|�n�x�n�n�z�n�v�nB{�nBz�n�|�n�|�n�{�nB~�nB�nBn�n�~�nB|�nB}�nB~�nB}�nBw�n�x�nB}�nBv�n�w�nB|�nB|�n�z�nBz�nBI�nB|�nB~�nB~�nB}�nB�nBy�nB{�n�|�nB
[
hidden2/biases/readIdentityhidden2/biases*!
_class
loc:@hidden2/biases*
T0
�
hidden2/MatMulMatMul!hidden1/BatchNorm/batchnorm/add_1hidden2/weights/read*
transpose_b( *
transpose_a( *
T0
@
hidden2/addAddhidden2/MatMulhidden2/biases/read*
T0
*
hidden2/ReluReluhidden2/add*
T0
�
BatchNorm_2/betaConst*
dtype0*�
value�B�2"�z�n�~�n�{�n�|�nBx�n�z�nBw�n�s�nB|�n�h�n�|�nBy�n�v�n�r�n��nBv�n�z�n�y�nBz�n�z�n�s�nB{�nBx�n�{�nB^�n�z�n�{�n�x�nBy�nB|�n�x�n�|�nBy�n�z�n�z�nB}�nB|�n�|�nBz�n�t�n�y�n�y�nBu�n�}�n�z�n�z�n�z�nBx�n�x�n�|�nB
a
BatchNorm_2/beta/readIdentityBatchNorm_2/beta*#
_class
loc:@BatchNorm_2/beta*
T0
�
BatchNorm_2/moving_meanConst*
dtype0*�
value�B�2"�t�	G�%�4c��C=�EHYC�%CT�*5 05ZL�F��E���E怅5-2�FY��F�8�5C�4#ZF���4�Dq5_l�4��,5B��E���E���F�4܅�E p[F&!]F\�\Fг�5�'�4dx5��T5{{�E��E`�25�߁C�^F<�5�}]F
�Q5��	GA�	G-�ZC�Q85�Z�F�*�F�O]FgS5}�E
v
BatchNorm_2/moving_mean/readIdentityBatchNorm_2/moving_mean**
_class 
loc:@BatchNorm_2/moving_mean*
T0
�
BatchNorm_2/moving_varianceConst*
dtype0*�
value�B�2"���H�H�75#�G@,�G��F'u%G���74Y�7�w�H���G�/H�k�7�	H�M�H���7���7�^�Gԡ�7Oh�7{)�7���7���H�=H���G';�7��sG��H��G,��G�&�7~`�7���7C��7���G��GAX�7[��GZ�4H���7�˶GA��7^&H��qGϕ�G���7��FGE%H�u�G`��7�rH
�
 BatchNorm_2/moving_variance/readIdentityBatchNorm_2/moving_variance*.
_class$
" loc:@BatchNorm_2/moving_variance*
T0
^
0hidden2/BatchNorm/moments/Mean/reduction_indicesConst*
dtype0*
valueB: 
�
hidden2/BatchNorm/moments/MeanMeanhidden2/Relu0hidden2/BatchNorm/moments/Mean/reduction_indices*
T0*
	keep_dims(*

Tidx0
_
&hidden2/BatchNorm/moments/StopGradientStopGradienthidden2/BatchNorm/moments/Mean*
T0
e
5hidden2/BatchNorm/moments/sufficient_statistics/ShapeShapehidden2/Relu*
out_type0*
T0
�
4hidden2/BatchNorm/moments/sufficient_statistics/CastCast5hidden2/BatchNorm/moments/sufficient_statistics/Shape*

DstT0*

SrcT0
l
>hidden2/BatchNorm/moments/sufficient_statistics/Gather/indicesConst*
dtype0*
valueB: 
�
6hidden2/BatchNorm/moments/sufficient_statistics/GatherGather4hidden2/BatchNorm/moments/sufficient_statistics/Cast>hidden2/BatchNorm/moments/sufficient_statistics/Gather/indices*
validate_indices(*
Tparams0*
Tindices0
c
5hidden2/BatchNorm/moments/sufficient_statistics/ConstConst*
dtype0*
valueB: 
�
5hidden2/BatchNorm/moments/sufficient_statistics/countProd6hidden2/BatchNorm/moments/sufficient_statistics/Gather5hidden2/BatchNorm/moments/sufficient_statistics/Const*
T0*
	keep_dims( *

Tidx0
y
3hidden2/BatchNorm/moments/sufficient_statistics/SubSubhidden2/Relu&hidden2/BatchNorm/moments/StopGradient*
T0
�
Ahidden2/BatchNorm/moments/sufficient_statistics/SquaredDifferenceSquaredDifferencehidden2/Relu&hidden2/BatchNorm/moments/StopGradient*
T0
w
Ihidden2/BatchNorm/moments/sufficient_statistics/mean_ss/reduction_indicesConst*
dtype0*
valueB: 
�
7hidden2/BatchNorm/moments/sufficient_statistics/mean_ssSum3hidden2/BatchNorm/moments/sufficient_statistics/SubIhidden2/BatchNorm/moments/sufficient_statistics/mean_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
v
Hhidden2/BatchNorm/moments/sufficient_statistics/var_ss/reduction_indicesConst*
dtype0*
valueB: 
�
6hidden2/BatchNorm/moments/sufficient_statistics/var_ssSumAhidden2/BatchNorm/moments/sufficient_statistics/SquaredDifferenceHhidden2/BatchNorm/moments/sufficient_statistics/var_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
M
hidden2/BatchNorm/moments/ShapeConst*
dtype0*
valueB:2
�
!hidden2/BatchNorm/moments/ReshapeReshape&hidden2/BatchNorm/moments/StopGradienthidden2/BatchNorm/moments/Shape*
Tshape0*
T0
�
+hidden2/BatchNorm/moments/normalize/divisor
Reciprocal5hidden2/BatchNorm/moments/sufficient_statistics/count8^hidden2/BatchNorm/moments/sufficient_statistics/mean_ss7^hidden2/BatchNorm/moments/sufficient_statistics/var_ss*
T0
�
0hidden2/BatchNorm/moments/normalize/shifted_meanMul7hidden2/BatchNorm/moments/sufficient_statistics/mean_ss+hidden2/BatchNorm/moments/normalize/divisor*
T0
�
(hidden2/BatchNorm/moments/normalize/meanAdd0hidden2/BatchNorm/moments/normalize/shifted_mean!hidden2/BatchNorm/moments/Reshape*
T0
�
'hidden2/BatchNorm/moments/normalize/MulMul6hidden2/BatchNorm/moments/sufficient_statistics/var_ss+hidden2/BatchNorm/moments/normalize/divisor*
T0
o
*hidden2/BatchNorm/moments/normalize/SquareSquare0hidden2/BatchNorm/moments/normalize/shifted_mean*
T0
�
,hidden2/BatchNorm/moments/normalize/varianceSub'hidden2/BatchNorm/moments/normalize/Mul*hidden2/BatchNorm/moments/normalize/Square*
T0
�
'hidden2/BatchNorm/AssignMovingAvg/decayConst*
dtype0**
_class 
loc:@BatchNorm_2/moving_mean*
valueB
 *���=
�
%hidden2/BatchNorm/AssignMovingAvg/subSubBatchNorm_2/moving_mean/read(hidden2/BatchNorm/moments/normalize/mean**
_class 
loc:@BatchNorm_2/moving_mean*
T0
�
%hidden2/BatchNorm/AssignMovingAvg/mulMul%hidden2/BatchNorm/AssignMovingAvg/sub'hidden2/BatchNorm/AssignMovingAvg/decay**
_class 
loc:@BatchNorm_2/moving_mean*
T0
�
!hidden2/BatchNorm/AssignMovingAvg	AssignSubBatchNorm_2/moving_mean%hidden2/BatchNorm/AssignMovingAvg/mul**
_class 
loc:@BatchNorm_2/moving_mean*
use_locking( *
T0
�
)hidden2/BatchNorm/AssignMovingAvg_1/decayConst*
dtype0*.
_class$
" loc:@BatchNorm_2/moving_variance*
valueB
 *���=
�
'hidden2/BatchNorm/AssignMovingAvg_1/subSub BatchNorm_2/moving_variance/read,hidden2/BatchNorm/moments/normalize/variance*.
_class$
" loc:@BatchNorm_2/moving_variance*
T0
�
'hidden2/BatchNorm/AssignMovingAvg_1/mulMul'hidden2/BatchNorm/AssignMovingAvg_1/sub)hidden2/BatchNorm/AssignMovingAvg_1/decay*.
_class$
" loc:@BatchNorm_2/moving_variance*
T0
�
#hidden2/BatchNorm/AssignMovingAvg_1	AssignSubBatchNorm_2/moving_variance'hidden2/BatchNorm/AssignMovingAvg_1/mul*.
_class$
" loc:@BatchNorm_2/moving_variance*
use_locking( *
T0
�
hidden2/BatchNorm/IdentityIdentity(hidden2/BatchNorm/moments/normalize/mean"^hidden2/BatchNorm/AssignMovingAvg$^hidden2/BatchNorm/AssignMovingAvg_1*
T0
�
hidden2/BatchNorm/Identity_1Identity,hidden2/BatchNorm/moments/normalize/variance"^hidden2/BatchNorm/AssignMovingAvg$^hidden2/BatchNorm/AssignMovingAvg_1*
T0
N
!hidden2/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *o�:
p
hidden2/BatchNorm/batchnorm/addAddhidden2/BatchNorm/Identity_1!hidden2/BatchNorm/batchnorm/add/y*
T0
T
!hidden2/BatchNorm/batchnorm/RsqrtRsqrthidden2/BatchNorm/batchnorm/add*
T0
`
hidden2/BatchNorm/batchnorm/mulMulhidden2/Relu!hidden2/BatchNorm/batchnorm/Rsqrt*
T0
p
!hidden2/BatchNorm/batchnorm/mul_1Mulhidden2/BatchNorm/Identity!hidden2/BatchNorm/batchnorm/Rsqrt*
T0
i
hidden2/BatchNorm/batchnorm/subSubBatchNorm_2/beta/read!hidden2/BatchNorm/batchnorm/mul_1*
T0
s
!hidden2/BatchNorm/batchnorm/add_1Addhidden2/BatchNorm/batchnorm/mulhidden2/BatchNorm/batchnorm/sub*
T0
�N
hidden3/weightsConst*
dtype0*�N
value�NB�N22"�N��nB�8nB	oB�n� �n�Z:n�}�n�MnDnBFMo�]�nB�o��nB��nBX?n�nBk`n�4Gn�n��~n�Y�n�͇nBl>n�ەn�ΉnB�nB�tnB�?nB��n��n-n�On�MxnB�o��n`nBݽnBz�n��Po�+�nB1�nB�nBB�nB�nB�n���nB� oB��nB\nB�InBlnBn�~�n�F8n�_�n�P�n�� n�ƍn�p�n���n�An�#�nB[�n�nBuNn¹�n�l�n��{n«snB|Pn°�mnnB�o��nB�oBd�nB0�n	nBl�nBعn�Їn�n�Z�nB
UnB��nBv�nB��nBn���n�a�n\oknBnB��nBp-n�8�nB+�nB�ToBnBp�n�RoB�n��AnB8o¬�n���n�)�nB�\n�`oB�anBT�n���n�I�nB`[nBcPn�4�nB$�n�&�n�y�nB@,nWn�/�n��n���nB��nBւnBFnB�!oBI9n�ern�PtnBn�؈nBYmnB"<nB�zn¸�nB.!o�*n��Sn��WnoB�o�S&oBoB�`nB�nB�#o�n>oBo�InB�m²�n�~HnB�mn�bn��nB�dn�F�n���nBdCnBR!nBO�n¤nB�$n�^mn��mB~[n�nB�o��in�nBu�n�|�nB8nB�An�k�nB�$oBAoB��n��ao�n�:�nB��n¬XnBAoB�nBzn¢�n��ln�d�n�� nB�UnBa�m��Sn�4�n�nBJ$nB$�nBh,o�h�n�Z#nB�aoJnB��m��n�5�nnB�pn�ڑnB�InB�hnB�noB}6n�Ln�,�nB�(oB��n½DoB�oB]nB.�nBHZn4nB�Jn�UnB��nB�oB�gn��n�]o�90nB�o�Tln�3�nB|*nBT�nB�mB�oº�nBAnB�JnB(9n¶�n��n¾�nB4;oB��nB��n©}nB�,n���n�v�n�n�c nBz5o��o�	�n�on�~"o�Yn�rnB��nBFn�kTnB��n��%nBYo��nB1}nB�	oB*nB PnB1�nBi^n�oB�SnB��nB׉nBK�nB�nB"\nBV�mBB�nB�gn�<�n�<�nB��n�BwnB��nB33n�nBN�n�}QnB��nB.�mBEn�E�n�N�nB�)o�L�n��o� Yn�Ƣn��nB�~n��3o¬�n¦~nB��n��nB.�nBa�n¾�m���n� �n��nB>9oB�Uo�|�nB57o��nB`�nB)�nB,&o��/nB��m�Z�m�� oB�yn¿nBdmnBd	oB�nBC�n�4n�Qgn���n�nB�nB�^nB�nB�TnB�]nB^�nB��nBd�nBo���nBq
o�nB`�n��nBAnB�nBcn���nBd?oB�(o��o��n��vnB��nB��nB�n�,!n�(snBfnn®�njnB=oº9nBsoB�#oBz�n�RZnBB�n��Jn��oB��nB�nB0Rn�v�nB�n�y�nBr�m¦�n¬�n³�n�nB�oB��nB�In�I�nB<�n¥�nB>'oBJn��oB��n��n�HOn�P�n�nB��n��,o	oºo�Qn¾�n¥�n�9GnBnB�o��nB��n��VnB�$oB�JoB$nBrEnB��nB@�nB� nB��n�Y*nB��nBrnB�rnB"�n�8�nB�vnB�znB��nB8�n���n�q�nBjn�J�nB�nB��n�c�nB¬nB�tnBӃnB�oB��n�fan���nB��n�GnB�~n¿Co�|�nB��nB?gnBi�n�-nB��n�n��o·'nB{.nB�yn� 6nB�oB��nBYrnB�~n�!oª�n�}nB2�nB�UnB��nEn���mB�$nB�nB�&o��AnBP�nB�.nBan�t�n��nB7anB�nn¼XnB�#nBNo�ފn�AYnB�n��nBFCn�Co���n�~eo�in��n�/�n�A�n�nBtdn»Fn�h�m�O�n�n��coB2�n�,en�<nnB�n��knBX�n��oB)In��tnB�@oBuTnB��nB��n¶n�:�nª�nBj�nB=�nB�^nBAynB��nB��nB��nB4oB�mnBK�n��n�;o�
�n���nB�n��oB�qn�T�nB�yn�mn��n���n��n��~nB��n��Wo�>�n�n�cunBTon��,oB��n�B=nB��n½nB2o��n�@inB2o�A�n°�n�b�n�#o��WoBbo��en¡�n�V�n�f�nB�oBqo�ȭn�#n�ځn¯�n�QYn�9o�2YnB�nB��n�گn���nBC>oB$kn�U-nB|oB�WnBֲnB��mB��nB�oB��mB�*nB�In¶}n�A�n�z�nB��nB4�n�TBn���mBc�n�3�n�F�n��nB�n$nBȱnB��nB,>o¼�n�H�mJnB;�n�hdn�pn�n���mB��n�:.nB�n�,�mB�fnBc�n��nB9oB��nB��nBp�n�Bbn��nB��nB�nB��n�,nB��nBT<n�nB2gnB�nB5�n�lnB4�nB��n�B.n�7o�L�n)o�/�n�n� n�un��%oB�nBQn�}�n���n�?vn�ޞn�d n�.=nB��n·�nB �mB6�nB��nBqdoB��n¬�n½oB��nBMco�n�qn�.UnB@nB9�nBy�nBS�nBէn���n�}n­(o���nB��nB��nB(�nB�nB� oBv8n��7oB[fn³)nBoB.�n��#nB�Mn�7n��!o�ҹnBNco��nB��nB�`nB0�n�Z(oB�n��rn�uSnB��nBӳnªunB}�nBZ	oB~�mCn�8�nB�n�E�nB)�n�r�nB��n�{�n�c7n»�nB��m�$n�~�nB�nB�nB&=nBønB�zn��boB��nB��n�n
n©�nOnB�nB�oBnBNFnB �n¾|nB��n�7InBLnB� n¸�n���nB]hn�]�n6n oB.Pn��<nBz�nBjAn�X/n¢n�+n�n�.�n�an�h�n�Sxn��^nB��n�nB��m�R�n��>nB#n�F�nBߘn¤{nBpo �nB�kn�:Mn���nB�o�`�n��#nB�nB��n�\pnB��n�v3nB��nB�+nBS�mB�nB�Yn½nB��n�y�m���nB��nBNtn¤8nB�n���n���n�t<nB�nBP�n�nB�NnB��nB4�nBv�nB%�nB�cn�`�nB �nB�<oB#�n�ʡn�*TnB�nB_�nB�o��oB�VoBa>nB�n�:o½�nB��nB�Uo��oBrBnB�n�jYn���mB+bn�enB�Hn�>�n�T�n­�nB
gn©�nªSnB}nB�nª�n�
�n�<eoB4sn�j�n�Cn�nB?7nª�nB˔nB~�nB�nB�n�3nB��nBpAn��
n�!�n�`n�J o�K�n�qn�}�n�RnB�UnB�n�R�mBt�nB#oB4n�R�n�8oB��m^nB��n¾�n�Z1o��n�&hnBt
o�K�nB=|n�g?nB5�nBbvn��!nB�dnB��nn�+�nB�+nB n��3n�D�nB�AoBm5oB 	nBin��n�`<n�n�<�n«�nB/n¢�n�СnB0oB�>nB��nB�`n� oB�nB)�m�ƈn�W�n�\nBn�n���n�c�nB��nB�BoB}Pnzn�n���n�N\nBRGo�nB��n��nB�zn��gnB�4n�(�n�%�nB��m���n�@oBVn�:�nB�=o�kUnBH�n��]nB��n�61oB��n¥6oB�oBc�n��nB�nB�nnBf$n���nBf�nB��m�>YnB��nBʼnB�n�r�n�Z�nB��mB�nnB�n��nB`�nB�<nB��mB��n¾rnB
bnBVo¬rn��MnBXpnB��n�Xo�\kn�85nBs�nBt�n�n��zn�H�nB�Zn�)'o��m��n�.�nBTCn��Dn�e�n��%oBz^nB.=n���n���n�v�m��UnBt�n�uOnB6n��InB��nBnhnB�nB��nB��n�n�nB-znBYhn��&n�ݘn�^�nB��n���n��oB��mBy�mBtn���n�=�n�^�nª�nBkoB�vnB�0n�nB&7oBp�nB�nBc�n�^�nB��nB��n��Mn�xpnB zn��	o¬9o��nB�o��nB|n��5oB��n���n�D�nB�n´%n���n�|3nBLonB��nBv�nB�n��In��wn�|�nB(nB��n�Uo��.o��n�PnB�lnB�o°�nBZ7n��;n��nB��nB��nB�m�foBHfnB��nB�nB+qnB�o�n}nB2MoB�)oBgo�8oB��n�NoB�nB��nB�qn�p�nB�fn|n��Xo�nB��n�5�n�,ZnBR�n��+n�1�n���m��n�n�
aoB�o�̜n�k�n¬�m�mBR�n�tnBnBJ,nB)�n�n�H�nBm*o�52oB�8o�j2n¾oB�n�<�n�n�inBRo��mnB��m¸)nB	�n�nBBYn� �n�e�nB�zn�L/nBPunB��nBj�n±�n¬?n�0Pn���nB��nBr~n��9nBb;n��oBln�i�nB��n��pnB�kn��xnB�nB2�n¬�n�K�ninB�:n�5�nB��mB�nB;�nB6�m�`�nBQ�n�.xnBC�n�l�nn�I�n�jo�n���nB�n��TnBY#o��nB�o!oB�\n�6oBL�nB3{n�>nB]�nB`'n�n�
InB@�n�lnB��n��nB�n��oB=�nB�n�9�n�9+n�<�n�7�m�S�n�|�nB�cn���n«o£o��LnB�2oo¥�n��)nB��nB%�m���n��n�t?nB�nBH�nB�@nBuMnBi�n��nB��nB&nB�.oB.�n·�mBl�nBQnB`UnB��n��nB�cnhnB`nB6nB�!o�9GnBpo�.�nBx"o�inBC�nB��nB�;oB�n�U}n��)n�uoB6UoBy�n�o�nB�n�u'n��nBdNn�nBmZn��8nB��nB��nB�nBP�n�n��fnBźn �noB�nBn�nB�o���mBƃnBFnB��nBJ�nµ�nB�Mn��nB�\nB�bo��n��vn�>Mn¶In��m��nBv�n��n�n°�n�:kn�z0o��nB$�n�m���nB�pnB�o�DlnB�nBfQnB�n���nB��n�Ho��\nB.�nBجnB�fn�1�nB��nB�oBԡn��n�fn´�nB\7n�$ln¸vn��nB��m�u�nBi6oB�=oByoBɛn¶�nB�Mn�ɽn�|ZoB~*nBFn��oBn[nBu
oB`5n�'nB�|n�$
n��n�mB�%o�HnB��nB�En�n�|�n��nB}�nB��m��{n�!o�vYn�>�n �nBgnB߳n��
oB�2n��!oB�/n�<unB�3o�kgn��nB��n��.n�oBK�n�l n�Sln¬unB�oB*�nB2bn¦tnB��n�d�nB�	oB3�n®�nBX%n�U%nB�nB��n�,�non�~�n�y�n��nBpn��n���nB�Jn�n�n½�nBܩn��n��rnBx�nB�nB�nB�n�+kn�nB�LnBk�nB�:nB�nB��nBn�n���nB��nB�	oB�yn���n.n�m�:�mBG�mB��nB��n�[oBH�n�znB��n���n��n��nB�OnB��n���n¶]nB-/oB��n��n�:
nB�n��mB�n�n¤onBR�n� �n�9n�R�nB��n�g�n��o�m=nB"oB��nB1&o���nB�nB�@nB�^nB��nBN�nB�In��n�}.nB��n��nBg�n
o¿[n��yn�3�nB�Kn��!oB~>n�FnB�?n��{nB��n �n�#In7nB��n���nB�n��8oB��nB0nB�!n,nB�vn��NoB��nB� on�4�n�{�nB$�n�nB�JnB�nB��n��mnB*	oB�nBΤn¸�nBG�nBS�nB�	nB5�m��n�tRn��DnB4oBoB��nBHo�vEo��o���n�nn�JnB��n�A<nB�n�R�nB�LoB4bn�j�n�nB��nBPn�*qnB�LnB�InB�|n¿�n��!n��oº�nB��nB�n�z�n��"n��Tn�ݢn��nB!�n�HKn�i5n�&oB�wnB�EnB o¦fnBr�nB}�n�qnB��nnB��m�Dsn���nBۜnWnB�o�B�n°un�[�n�4�m�bIo� �nB:�n���nBt�n¡�nB��n��oB�AnB�hn��n�pEoB*^n�vbnB&�nBG�nB�n��nB�n��n��UnB�2oB��nB�o���nB�nB��n�|�nB|�nB'pn�6�n©�nB��nB�rnBt�n�Bo�%�nB�XnBa<oB��n��cnBRnB޴nB��nB�=n�|1nB��nB�nB4�nBaUo�lEn�mn�X�nB�n��nBH�n�sn�C�n�Vn�\�nB�dnBOo���nBGoB5@nBB�n�n�n��n��n�v�nBn���nB��nB.�n���n�Z�n�nB4nB�Mo��nB^�nBx�n�n�o�nB�HnB��n)oB�nBXNnB��n��nB��nBpo�`)n�9o��o®�nB�+n�n¦�n�v�nB��nB4wnB�n�0�n�zon��xn9o���n¤vn���mªon�nB	�n�Cn�Q	o´\n·n YnB��n�dbo�c5nB��n�W�m�&o�
inB}n¬�nB;�nB|NnB��nB��mB�n�.�nBEjnB�2oBJnB��nB*�nB��n��nB/oB�Vn�ִnB�Nn�n³DnªTn���mB�o��'nB8oB�.oB�n�BTn��Zn�j�n���nªLn���n�%�n�n�J�n�H5n�0Sn�t~n�mn���n�<nB��nBeHn¾CoB�n,n�.
o�,mnB�?n�y�nBP=n�rnBx*nBw�n�f\n��$nB��nB�#nB�nB��mB��n�j�n oB^�nB�'n�U�n�f�n�Dn¡�n©�n��*nB'�nµ�nB��nB�YnBNnB��n«LnB�o�n��nB�.nB��n��pnB��nBx�nB�o¥�n��n��
o��oBZ&nB�o�JoB�n��2o�G�n�nB��n��o�:�n�ʥnB�nB�nB��m�g�nB�OnB{�n�M�nB�nB��nB\n�amn��^nB0�n�p�mBΐn��n¤n®�n�<)n�l&o�"�nBh�n�@nB6�nTnBB9o�+fo�oBk�n�ֵnª�mB�Qo�1�n�D�n¬GnB�dn�SnBF�n�hn�m�/TnB{�nB��n°�nB9�nB�n�\sn�X�nB�KnB�oB��n�nB�nrnª&o�7nB��nBJKnBDLoBNoB!(nBz�m� �m�l-n�OoB��nB�n���nB�nBVn�@o�|oB��n�tNnB��n�MGnB�n¾�n²qnBpn�htnB�]o�\�n��nB�XnB>No���nBISn�8^nBn��nB�mB�o���nB��nB6�nB��nB�nB�$nB�n¬.nB~[nBI�n�'SnB�n�+hnB�0nB�tn�|o�&o��n���nB�n��RnB�)nB:�nB<o�v�n�hanBYnBn�1�n�OTn¬wn�51n¸�nBG�n¼�nB*�n��OnB�nenB;ynB�[nBy�n��nB�n�~�n�^�n�I^oB��n�nB'LnB� o�IOn�Rn�{{nBpnB��n�2)oBo�$o�u|nB�)n�|wnB.0n¸pnB��nB�qnB޺nBj,o�nB��n�n$n��0o��	o���nBvoB/�n�%o�Z�nB�:oB<nBd�n�[ZnBf?n��knBf�n���nB~�nB=o�&|nB�nB	�nB�=o¯ oB�Hn��n�,�nB�oB�n��3nB �nB�n��9o��nyn¨eo0n��3n�̜nB6n�,�n��;nB�nB�n�+nB��n�AoB#~n�Xo�rVn���n�w�mBBsn��n���mB�n¹�n�pHn���nB� oznBN�n��nB!Do�&pnB�UnB$�n���m��VnB��n¤~n�mBKnB&�n�N�nB��mB��mB��n��nB�o��fn�%6oBz�nB^�nB��n�R�n�a,nB(�n¨}nB��nBެn�K=nB3�n��nB�pn8o���n���nB�#nB2nB�o�ܞn��nBL�n�*�n�*n���nB��n�+1n�nB.Zn��nB"n�f�nB�n�WMn�$�n���nB��m�hn��	oBC�nBt�n��{n�nB��n�FEnB��n��n�&�nBj�n�v�n��|n�c�nBk�n�n�n�.�nB�LnB6�nB$�m�nBX�nB�anBj�mB*dnBj�nB�Un�<�n¾anB�o�NoB~o�U�n�0o�REn �nB�Yn�nB4�n�{aoB��n�x�nB��n�n¸oB߬nB�nB�|nvnB�nB_oBHjn�n�nB�]nB�oB��n��n�nB�nB<nBN!n�xn�oB��n���m�qnBrPn��OnB��nBb�nB�~nB6NnB�n�{�n��qn�n�n�	�n�k$n�.ln��nBp�n �n�R�n¥�nBW�nBb�nB�fnB��nB�oB2!n�l�nB��nB��n¾�nBn�tsn���n�T�nB�o�doBHGo��n�:�n¤vnBʹn�nB�n��n¢9o�|�nB��m��nBa(oB��nB&tnB�nB�,nBFnB{�n&o�O�nBJcnBz5oB��nB��nB�oBJ�n�h�nB�ynB~@o���n��n�N>o�P�n¾&nB:"o½�nB��nB�nBp�n�B�n¨<no�@�nB��n�n�nBZ�nB��n§�n»*n�×nB��m�<!nB�n��<nB��n�ðnB-�nBV}n;oB*�nB�nBnn¬n�nBsn�]�mBP�nB�nB�n�mOoB��n°�nBY�n�a�nB[7nB@+nBZ�nB�oBT�nB1�nBƱn�^�n�nB^VnB"n�m�X'n¡oB�nB�nB��n��tnB��n�"�nB�o�X�nB�nBA�n� Mn¶7o¯�n�Xo�+�n
o��n�R�nBfBno�(n��8nB��n���n��VoB��nBw�nB5�nB��m²n�<�nB��mB(TnBvPnB�dnB��nB�|n� �n�0<nB�]nBX)n�3�n½�n�apnB�nB�ZnB4
oBh^n¸�nB�zn���nBGn�A�n�Q�n�m	oBz
oB��n��nB��nB\�nB�Gn��fn�v�nB�rn±�nB#�nB�Dn�"Wn�Ҫn�s+o�ܰn�d@nBF7nB)�nBZ�n�{�nB��nBʅnBv?o�UnB��nB_InB�nB6;nCoB\�n�'�n°�nB��n�JoB�0o�^n�l�n�)n�oBzn�GAoB�oº,oB�[nªNnB{Dn¤�n�nB"~nBnB��nsnB�9oB jnB�o��6n7nB�(o­gnnBJ�nB��n�;�n���n¬�n�֣nB<oB�o���n�g�n���nB�_nB��nBلnoB�HnB_rn�rEnB�Cn�J�n�Vo�w�nB�n©�m�n� o��m�JjnB�|nB&�n oB�XnB�oB��n�U�nB�pn�)3njn�@�m���n�T�nBO0o¾�n�)#n��nB��n�ƷnBF�nBg�nB�n��m�"oB�(o�6mnB��nBY�n�6wn0nB�3oB,�nBqn�Yo©�n®�n�߬n©�nB�)o��bn��nBB�nB�n��fn��nB��nB��nB�nB�In�ānBL5nB�nnB[�n��=nen¬GnB�HoB4WnB��nB
^
hidden3/weights/readIdentityhidden3/weights*"
_class
loc:@hidden3/weights*
T0
�
hidden3/biasesConst*
dtype0*�
value�B�2"�z�n�w�nBy�nB{�nBt�nBz�n�z�n�|�nB|�nB~�nB{�nBp�n�N�n�{�nBw�nB{�nB~�n�~�nB|�n�z�n�|�n�x�nBy�n�|�n��n�|�nB{�n�s�n�~�n�~�n�|�n�|�nBv�n�|�nB|�n�{�nB|�n�|�nBz�nBv�nBv�n�|�n�w�n�z�n�z�nB{�n�v�n�y�n�}�n�x�nB
[
hidden3/biases/readIdentityhidden3/biases*!
_class
loc:@hidden3/biases*
T0
�
hidden3/MatMulMatMul!hidden2/BatchNorm/batchnorm/add_1hidden3/weights/read*
transpose_b( *
transpose_a( *
T0
@
hidden3/addAddhidden3/MatMulhidden3/biases/read*
T0
*
hidden3/ReluReluhidden3/add*
T0
�
BatchNorm_3/betaConst*
dtype0*�
value�B�2"�z�nBx�nBy�nBy�nBX�nB|�nBz�n�z�n�{�nB|�n�|�n�z�nB{�nB|�n�Z�n�{�nB|�n�v�nBv�nB|�n�~�nBy�nB|�nBy�n�|�n�s�n�{�n�v�n�z�n�s�n�z�n�x�n�B�nBx�n�w�n�x�n�z�nB|�nB{�n�\�nBw�n�z�nBp�n�z�nBv�n�|�n�|�nB{�n�{�n�y�n�
a
BatchNorm_3/beta/readIdentityBatchNorm_3/beta*#
_class
loc:@BatchNorm_3/beta*
T0
�
BatchNorm_3/moving_meanConst*
dtype0*�
value�B�2"��\5�i5!��4�F%G̊\F�5�*C5�]F�gC�X5�t�FB0	G�T5�UP5ȖC7�5�$G�(�F&K�5�0#5N6�F�
G)u�F>R 5�5h�Z5B�[F�)5��Ea�\5бK5�>%G�#�E1�]F�4�4�&�E�x�B>2�F�A�E�WC'�4��CA��E~%&5)Cx5�15w�ZFGr5��F��	G
v
BatchNorm_3/moving_mean/readIdentityBatchNorm_3/moving_mean**
_class 
loc:@BatchNorm_3/moving_mean*
T0
�
BatchNorm_3/moving_varianceConst*
dtype0*�
value�B�2"����7L��7s�7`��G�SH���7�h�7���G�H���7�UCH#� G���7_��7���FR�7�� H6��G��7#��7��	H���G0#$H1>�7�	�7�g�7��G�(�7H�H�k�7<�7N�H�{H_��Gk��7��G���FM�GU�jHp��Gݘ�7�G�nGH�N�72��7���7
H���7���G��H
�
 BatchNorm_3/moving_variance/readIdentityBatchNorm_3/moving_variance*.
_class$
" loc:@BatchNorm_3/moving_variance*
T0
^
0hidden3/BatchNorm/moments/Mean/reduction_indicesConst*
dtype0*
valueB: 
�
hidden3/BatchNorm/moments/MeanMeanhidden3/Relu0hidden3/BatchNorm/moments/Mean/reduction_indices*
T0*
	keep_dims(*

Tidx0
_
&hidden3/BatchNorm/moments/StopGradientStopGradienthidden3/BatchNorm/moments/Mean*
T0
e
5hidden3/BatchNorm/moments/sufficient_statistics/ShapeShapehidden3/Relu*
out_type0*
T0
�
4hidden3/BatchNorm/moments/sufficient_statistics/CastCast5hidden3/BatchNorm/moments/sufficient_statistics/Shape*

DstT0*

SrcT0
l
>hidden3/BatchNorm/moments/sufficient_statistics/Gather/indicesConst*
dtype0*
valueB: 
�
6hidden3/BatchNorm/moments/sufficient_statistics/GatherGather4hidden3/BatchNorm/moments/sufficient_statistics/Cast>hidden3/BatchNorm/moments/sufficient_statistics/Gather/indices*
validate_indices(*
Tparams0*
Tindices0
c
5hidden3/BatchNorm/moments/sufficient_statistics/ConstConst*
dtype0*
valueB: 
�
5hidden3/BatchNorm/moments/sufficient_statistics/countProd6hidden3/BatchNorm/moments/sufficient_statistics/Gather5hidden3/BatchNorm/moments/sufficient_statistics/Const*
T0*
	keep_dims( *

Tidx0
y
3hidden3/BatchNorm/moments/sufficient_statistics/SubSubhidden3/Relu&hidden3/BatchNorm/moments/StopGradient*
T0
�
Ahidden3/BatchNorm/moments/sufficient_statistics/SquaredDifferenceSquaredDifferencehidden3/Relu&hidden3/BatchNorm/moments/StopGradient*
T0
w
Ihidden3/BatchNorm/moments/sufficient_statistics/mean_ss/reduction_indicesConst*
dtype0*
valueB: 
�
7hidden3/BatchNorm/moments/sufficient_statistics/mean_ssSum3hidden3/BatchNorm/moments/sufficient_statistics/SubIhidden3/BatchNorm/moments/sufficient_statistics/mean_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
v
Hhidden3/BatchNorm/moments/sufficient_statistics/var_ss/reduction_indicesConst*
dtype0*
valueB: 
�
6hidden3/BatchNorm/moments/sufficient_statistics/var_ssSumAhidden3/BatchNorm/moments/sufficient_statistics/SquaredDifferenceHhidden3/BatchNorm/moments/sufficient_statistics/var_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
M
hidden3/BatchNorm/moments/ShapeConst*
dtype0*
valueB:2
�
!hidden3/BatchNorm/moments/ReshapeReshape&hidden3/BatchNorm/moments/StopGradienthidden3/BatchNorm/moments/Shape*
Tshape0*
T0
�
+hidden3/BatchNorm/moments/normalize/divisor
Reciprocal5hidden3/BatchNorm/moments/sufficient_statistics/count8^hidden3/BatchNorm/moments/sufficient_statistics/mean_ss7^hidden3/BatchNorm/moments/sufficient_statistics/var_ss*
T0
�
0hidden3/BatchNorm/moments/normalize/shifted_meanMul7hidden3/BatchNorm/moments/sufficient_statistics/mean_ss+hidden3/BatchNorm/moments/normalize/divisor*
T0
�
(hidden3/BatchNorm/moments/normalize/meanAdd0hidden3/BatchNorm/moments/normalize/shifted_mean!hidden3/BatchNorm/moments/Reshape*
T0
�
'hidden3/BatchNorm/moments/normalize/MulMul6hidden3/BatchNorm/moments/sufficient_statistics/var_ss+hidden3/BatchNorm/moments/normalize/divisor*
T0
o
*hidden3/BatchNorm/moments/normalize/SquareSquare0hidden3/BatchNorm/moments/normalize/shifted_mean*
T0
�
,hidden3/BatchNorm/moments/normalize/varianceSub'hidden3/BatchNorm/moments/normalize/Mul*hidden3/BatchNorm/moments/normalize/Square*
T0
�
'hidden3/BatchNorm/AssignMovingAvg/decayConst*
dtype0**
_class 
loc:@BatchNorm_3/moving_mean*
valueB
 *���=
�
%hidden3/BatchNorm/AssignMovingAvg/subSubBatchNorm_3/moving_mean/read(hidden3/BatchNorm/moments/normalize/mean**
_class 
loc:@BatchNorm_3/moving_mean*
T0
�
%hidden3/BatchNorm/AssignMovingAvg/mulMul%hidden3/BatchNorm/AssignMovingAvg/sub'hidden3/BatchNorm/AssignMovingAvg/decay**
_class 
loc:@BatchNorm_3/moving_mean*
T0
�
!hidden3/BatchNorm/AssignMovingAvg	AssignSubBatchNorm_3/moving_mean%hidden3/BatchNorm/AssignMovingAvg/mul**
_class 
loc:@BatchNorm_3/moving_mean*
use_locking( *
T0
�
)hidden3/BatchNorm/AssignMovingAvg_1/decayConst*
dtype0*.
_class$
" loc:@BatchNorm_3/moving_variance*
valueB
 *���=
�
'hidden3/BatchNorm/AssignMovingAvg_1/subSub BatchNorm_3/moving_variance/read,hidden3/BatchNorm/moments/normalize/variance*.
_class$
" loc:@BatchNorm_3/moving_variance*
T0
�
'hidden3/BatchNorm/AssignMovingAvg_1/mulMul'hidden3/BatchNorm/AssignMovingAvg_1/sub)hidden3/BatchNorm/AssignMovingAvg_1/decay*.
_class$
" loc:@BatchNorm_3/moving_variance*
T0
�
#hidden3/BatchNorm/AssignMovingAvg_1	AssignSubBatchNorm_3/moving_variance'hidden3/BatchNorm/AssignMovingAvg_1/mul*.
_class$
" loc:@BatchNorm_3/moving_variance*
use_locking( *
T0
�
hidden3/BatchNorm/IdentityIdentity(hidden3/BatchNorm/moments/normalize/mean"^hidden3/BatchNorm/AssignMovingAvg$^hidden3/BatchNorm/AssignMovingAvg_1*
T0
�
hidden3/BatchNorm/Identity_1Identity,hidden3/BatchNorm/moments/normalize/variance"^hidden3/BatchNorm/AssignMovingAvg$^hidden3/BatchNorm/AssignMovingAvg_1*
T0
N
!hidden3/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *o�:
p
hidden3/BatchNorm/batchnorm/addAddhidden3/BatchNorm/Identity_1!hidden3/BatchNorm/batchnorm/add/y*
T0
T
!hidden3/BatchNorm/batchnorm/RsqrtRsqrthidden3/BatchNorm/batchnorm/add*
T0
`
hidden3/BatchNorm/batchnorm/mulMulhidden3/Relu!hidden3/BatchNorm/batchnorm/Rsqrt*
T0
p
!hidden3/BatchNorm/batchnorm/mul_1Mulhidden3/BatchNorm/Identity!hidden3/BatchNorm/batchnorm/Rsqrt*
T0
i
hidden3/BatchNorm/batchnorm/subSubBatchNorm_3/beta/read!hidden3/BatchNorm/batchnorm/mul_1*
T0
s
!hidden3/BatchNorm/batchnorm/add_1Addhidden3/BatchNorm/batchnorm/mulhidden3/BatchNorm/batchnorm/sub*
T0
�N
hidden4/weightsConst*
dtype0*�N
value�NB�N22"�N��mBznBb�n�)nB�nBp�n�_n�գnB5�n�>.nB;�nB��nB�nBnB�n�U�n�2nB��nBanB�Xn�}�nBтn�g�n¶�nB7�n�b�n±�nBM�n�ԄnB��n��n�ҽnB�tnB��nBz^n�s�n��$oB�n�(HnB�n �n�nB�oBr�n���n®Pn��nB,.o|n��Jn��HnB�n���n��n���n´1o�n��n�@Sn�[&nB�}n��tn�Nfn tnB��n�W�nB�6o��n�4�n�nznB��nºWnB�Pn�hUn�"$n©&oB�]nB�oB��n�nBR�n�4�n���nB��n��oB,Vnº=nB �n��nBf�nB�n�B�nB��n�>nB��nB.�n£o��nB��n��LnB<hn�HInBA�n�ϡnB��nB��nBP�n���nB�3nB�oBMnB�nB�nBT�n�[an��Vn�R�mB!�n­�m�jvnB.SnBΖn�ǆn�nnB^�n�v�n�7�nBOqn¶�nBԃn�r[nBVdnB�o��n���n�@�n�4|n�"oB, n�xjnB�oBgPn�޶nB�n�n���n��nB�n�n�Z�mn¢MnB'�nB	oBkoB��nB�AnBP"n�6'n�[Ko��@nB��nBc~nBt�nB6n�(#oB�#nB�wnB�>n�*�m�F�nBb�nB��n©�nB�[nB��mBO�nB�n�.�n�.kn5n�nB��nB�en�
�nB:}nB�o�[�n�v$oB�inBWn¦{nB��n²)n�>oBU&nBHn�*�m�2oB��nB��nB�pn��n�`�m±�n�[Bn�r�n¶�nB�<nB�WoB��mBrn�zn�nB .nB��n5o��kn�8�n°�nB�nB��n�XInB�'n��yn�.�nBânBX�nB�nB�pnB�BnBD�n��mnBH
o��nB��n�n�nB'!nHnB��nB��nB��nB��nB�^n�H*oµ�nB��m�W�n�o�nBBEoBRGn®�nB�nB̐nBV�nB��n��znBV�n��[nB$*oB�unBO�nB6XnB@n��3nB��n�n�>n�cnBcn���nB�nB�Mn�gdn�g6n�:�n��,nB6Gn�ƓnB�n�	�n�@Pn�WKn��mnBcsn©lnB��n�nB�oBnoB�\n��nB[n�{�nB��nB�Vn�_�n�	n¢�nB<�nB;an�n�:/nB��n��2n?nBɘnB2oB�ToBAEnB4oB3EnB��nB��n�z�nB�4n£�nB��n�nB��m�<�n�@n�ǘn�ۮn�w�mB�n�ńnB�n���n�T�nB�+nBnB�n�]rn�r�nB3�n��5nB�^n³�n���nB�n�]"oBtn�0�n���n��7n��n�~�n�;o�nB��nhn�%�n�Y$n�to�|:n��nB[nB�6n���n�8�n��5nB��n�8AnBu_n��nBr�nB�'nB3oB8tn��n�hn·0o���nB�nB�en��Ro�7�nB"�nBXyn��nBm`nB��m¢ n�!o¤Jn��xn�x�n�~PnB�hnB��nBaoB�o¤�n�x�nB
�nB�jn�	o�h�n�$o��n��n�ݳnB��n�<�nBd�n¯1oB�vnBG0oB�LoB�.o��%nB'-oBۦn�tPnB�{nBv�nBonB�n��onB6�nBh)n�P:n��Zn�8QnB+nB��n�>0nBK�n��n��-oB4�n�%o¿�nB��n�1�n�T�n���nBI�n��Nn�BVnBr0n�>vn�DnB��n�Ǫn��n�`vnB<�nQo� �nª�n�h�nB1�n�	(nB�m���n§Ko�f3n�r�n��n�ؗn �n� o³!n���n¨�nB$n�|�nBi�n�U�n�/&o�,�nB]�n�o�nB�nB�tnB�
o�UnB��nB'~n¡pnB�rn�8�nBx noBs�nBNo�^�nB�o�X�nB_�n�Tyn�=dn��n��n���n�$�m¦�nB��nbnB~�nB�yn��n¨5o��oB0oB�<nB��mB?�nBz�nB��nB�MoBvynBv*oo�Nn��oBh�nµ�nB�nBm�n·�nB�nBo�2]nB-n��LoB��nB(ZnB�rn��sn�\�n��n�8�nB>n�*ynB��nB��mB�nB�<nB��nB�9o��nB}n�G�n���n�P8nB ;nBM�n��-oB��nB|LnB�nB��n��nB܃nB��n �nB��nB�_nB�oBn3oB�]nB>^n���n��n��^nB��nB+8n¬[nB$�nB�5nB�nB��nBلn�*=n�P�n��nnB��nBd�m� bnBbnB�vnB��nB<�nB&_nB".n�P`nB�Uo�nB`�nBPGnB}`n�l�n�1dn�h�nB��n�Den�0�nB�nn�n��]n���nB�n¸�n�psn�'yn��an�>�n�G�n�t n�"�nB0�n�bnB>nB��nB��n�oznBsn�hvn»Ln+nB\�n�H�m�1�n�v:oB�Fn�2n�o�nBrHn�vnBt�n��nB>4n�hnB��n��gnB�~n�J�n�m�m��>n¼�m�<�n�;oB0�nB�DoB��nB�ynBI�nB^3oB%oBLJnB��n�unB�o�*in�3�n�nB=<oB�En��*n�sn��n��	ngnª*o�oo���nB�Tn� �nB7�n�Ƴn®�n��n�nB��nB�
o��oB�anB�yn�9�nB{rnB}#oB|~nB$�nB{YoB��n��nB�+o�Ξn]oB�Xn�rxn��nBBoB��n�P"n�nB7~nB��mB|znB�o�!�n�gen�\mnB��nB�n¶/oB�onB.n*nBWnB�'nB�"n�g0oBE�nB�nB�Xn�Oo��m�8_n�*nBn(nBOn�LNn·1o�%�n�a�m�nB��n�8ZnBn��KnnB�fno���nB��nB�nB�nBx�n�w�nª�nBF�nB$in�#�nBqCo�"$nBJ�n�"�nB�enB��n�V�nwn�v)nB��nB&�nB��no�n�nB �nB>	o�X&nB!�nB��m²�nB�oB�n�nB��nBo�6�nB��nB {nB*CnB�vn���nB@�nB{^nBI\nBF`n��(o° n�UMnB��n��Fo¼oBj�nB�;nBĆnB��m�n�d�nB�?n�D�n�h�n«o��$nB� nB�nB�oBa�n��nB �n�r�nBNEn�9!nBf[nBF�mB�Ho��nB#o���nB=�nB�nB2�n���nB�BoB_oBNQoB�[nBz�n�+o�nAn���nwn¬-o�m�n�
�nB��n�nB�nBd(nBh�nBs�m��VnBʀnkn�c�n���n�*mn��n�.�nBl-oB0�n�҇n�1�nB�nB�nB
oB��n�8n¸�nBnBR�nB�nB��nB�oB�n�Śn�#�n�'�nB̗n�@ nBJ�nBpoBIn�n��mB�=n�toºnB��n�hnBP�n���nB�nB�LnB��nBߐn��n��o�P9oBi7n��nB$�nB�cnB�VnB�mB�Kn®gn�b`nB�nB|�n��n�4VnB8Mo��n��>n�޾n�Yn°�n��9oB,o�n�nBI�nBD�nBYn�nBd�n�n��yn���nB^nB�PnB��n�}�n���m�sUn�b�n��an�J�n�0�nB�YnB�%nB��n¢�nB@�nB�nB�?n�{n��nBW?n��nBOo�ٍn�nB�wn�`n¨bo�؎n�k�nB��mB(:n�ȓn�DToBn oB��nBCoB�nB�#oBKn�n�Ɣn��nB*�nB��nB�znB��nB�)nB��nB��nBG�nB�nB��m§�nBv�n�n��mB}�nB�o�VUnB�oB��nB+n»�nBY�nB�nB��mBӂn�nB��mB�unB� oB�LoBo���mB&oB̍n��}nBErnB�oBznn¾�nBnBS�nB��nB�mnB>�nB�{nB�Sn�x(oBfLn�1�n�4n�>"nB�AnB��nB��m�)|nB�*nB��nµnB�|nB{o¶UnB}�nB6�n���nBșnBq�nBogn���n³en�^n�Knª�n�ǘnB�nB&;n�<|nBu%nBH�nB~�mB8�n�$EnnB�dn�dpn�Z�nB5nB�*n�/�nBf{nBH�nB�AnB��n��1o��	o�"n� \n�J"n�r�nBk�n�nBR�n��n Zn��nB��n�+�nB[�n�	�n�Nn�� oB�xn�T�nB�mB�n��n�mB�boBF�nB��n�nBmn��n�MnBC�n�nB�bn�m�nBS4n�;�n�N�nB0zn«=nB��n�DoBÏn��n��LnBS>oB;�n�<hn�nB�dn½�nBt�m�	vn�y�nBln«�nBϤn���n�fo�Gn��;n�*�n²hn���n�b�n�To�x�n�RLoBNn���mB �n�5�nº]n��nBW�n�nB�nBA�nB��n��nB0mnB՚n�EoB@ o��oB��n�MoB(�nBB�nª�nB��n��n��n¡�n�r�n�BTnB�o�G,n�VlnB�9nBR}n��n�HonB��n�Bqn�c�n�*�nB�nB.�n�?�nB��n�uoB��nBzn��nBin¶�n�e�nBpXoBV�n¦�nBm�n�;lnnB<nB�n¼Dn��n¨anB�Ln�TtnB�|nnB>n��nª�nBln�]RnB�inB��nB��nBƴnBIo��Jo�bQoB�o�9�n�	�n�|�n��_n��gnBWn��n�nºDo�n���m���nB��nB!AoB0n0oB�Jo�b�nB�=n UoBjnB�n��an�òn��n�$�n��9n¨<nB��nBr�mB�YnB=nB��nB��mB�fnBڥnB=�n��n��JoB�vn��nB��n� n¬rnB"8nBt�n�ƶnB�dnB�n`n�K#nBRXnB�)noB�oB�lnB�2nB�nB��nBD�nBj�n�nB�oB��nB��nB�nB�n���nB�~nBx�nB��nB��n�i�nBV�nB�in���nB:;n�hYn�N�nB�Yn��nB�rn�`�nB��nB8Xn���nBWo�^}nBv;oB��nB�*oB�nB$�nB�~n�U�n�8�n��n��}non�=GnB�;oB��nB7n�*@o�n�+%n���nB�'o�0�nB<n��"nBK�m�h�n�F;o�<oB�\n�w6o�� n��n���n¹�nB�#n��nBrn�n��o���nB��n�j1nB[oBknB�
oB1o�t4nB��n�~ZnBW�n��nB�[nB�nB��mBC�n��nB�o��nB�o�n��?nB��m�n¤Un�v�n�8nB�GnB�!nB�nBo��n,n�	oB�Mn�t�nB��nB#�nB�_n��_nB>nBnn�nBйnB̟n�<�mB��n�.o�NoB�o���nB��nBV�n¤lnB��n�oB�nB#mnB��nB��mknBӎn�n�J0n[n���n�8#oB�=oB"�m��mB(o�2Dn�u�n���nBCnB��n�nB�anBͨnBx�nB�nDn��Nn�zGoB,bnBX�nB��m�DdnB� o�KdnB^<nB��nB^{nB6�n�nB/�nB]n�>�n� �nB��n�!�nB��nBl�n�KnB%in�&nB��nB��nBN#o��n¶�m�S�n§YnB�gn��m�})nB�nB1oB�^n���nB�In���nBJ�nµznB�EnB�en��?nB�Rn¶�nBh	oB�nB��nB=9oB�-oBߥnBWnBd�nB��nB�unB[nB��n��
nBr�n�j�n�׋n�h(nB ln���nB�/oB��nBdo�l�mBS3nBnBk�n�b�nB��n��n�lpnB��n�;oBp�n¾5nBN_o��oB�nBX+n���n���mB��n��nBo�nB�o��\n�FJn���nB�nBM�n»�mBI?nB:!nB��n�n{n�3)nB�&o�/n¤OnB��nB>�nB�/oBtxn���nB�n�1�n��n���nB|"oB[�nBS�nB�nB� nB��nB�oB/�m�3%n�<0n¶wn���nB�oB(n�nB�oBSWnB2Yn��nB5n�nBwn�2XnB�
oB|�nBX-oB�oB�n�`�nBlznB��nB4�n�@�m���nBD�n¤�n��]n�1�n�>QnB8�nB{�nB�n°�nB��nB��mB�;nBX�nBz�nBX�n�n6n�[nB o�r�n��<nB��nB��nBx�nn�xn�]{nBߊnB�!oB�n��&n�X�nB��n���nBZ�n�b�n�0�nB�nTn®}n�E"o��o�h�n���n�|�n�ԝnB3�nB�\n��nB�nB�@nB��n��nB�nB�nBinBpnBjKnB}�nBDIn��nB��mB�dn��n��n��GnB0�nB�nµ�nB�n��<n�6�nBM�n�$�nB]�n�R�nB/oBznBX�n��_n��nB�oB��nBoB�oB�<n�,oB�nº�n�'6nB n�'n���n���n�L�nB�n��Xn°�n�Uun��kn��n��n�anB1�n�"nB�n¼UoB��n��xnB%#n�$anB��n�F n�oB�#n�n{nB�5n���n�
o���nBi�nB�vnB�qn�ҊnB�Ln��nBY�nB\�n�L oB�#o��;oBz�n�#�nB��nB��nªeoB�jn�h�mB�nB��n�l�n���n�Vn�sqnB��n;nB��n�1nB:�nB�3n�4PnB��n�=�nB�n�^�n��nnBL�nB$.oB�9oB�>n�nB"n��n�nVnB^�nBjnnBIoB:kn��%o��n�.�n�&`n�2En�n�z8n��En�Ʋn�'n��nBbnB�CnB~n�tn�ΠnB7n$nznBJ�m��Tn�dnB��n�Bun�&o n��tnB�_nB�nBH>oB@oBxOnB,Sn·�nB�OoBJ<nBT�n��nBn�nB�gnBlSn� �nBoB��n�F�n���nB�n��nB��nB�enB	Mn�[Pn��nB InBOqn�B�nB�[n�fEn��dnBpnB>�nB%�nB�LnBW�nB$�nBZ�nB�#n��n��n�U�n oB��nB6zn�f2n�zanB:o�'\nB�InB��nB^�nB�n� tn�s�nB�nº�nB:�nB:ZnB�VnBW�nBenByn�T�nB4=nBd�nB��n�W�mBV�n£}nnB0�n���m��n�eZnB8/oB�Lo�* nBQoB�5n�oB��n��nB�RnB=enB��nB�/n�ڑnBt�n�^o��n½\n�nª�n��o��n;o�Y�n�UQnB�nBR�nB��nB�m�ȄnBY�n��MnB��nB�n��n�ɕnB3�n�z�nB�InB�3nB��nBt4n,nB��nB�Rn���n©�nBr�n�tn�nBʑn�n
o°�n���nB��nB�VnBY?o�N�nB�o�n-nB~un�n���nB;nBpnB[JoB�n�Cmn��BnBj�m�27n� unBB�m�Qo�1[oB�Lo��n��o�4XnB�oº'o�&%o�� n�znIn�s�nB&o�V�n�m�fAnB>nBJ�nBRFn�9�nB1xnB�n�nB3oBR�nºinB�4o���nB֟n�w�n�i[n�׶n�ZoB�zn���nB��n�U�mBdn��)nBPo±3n®�n�T�n�z/n��n�b�nB+�n�.7o�Go��jn���nB��n�t�n�Y+o���n¡onB��n��nB��nBLo´Mo��nB�Mn�"�nB��n�|�nBQ�nB:oB|�nDnWn�bo�٘n�)oB�nB�SnB�nB��nB�*nBdXnB�"nB�4nB:`n� �n��nB��n�j�nB�n¨&o��oBWnB�n��unB��n�Mn��m�m�1oBnonB;�nB80n�x�mBpoB��nB�nB��n�|,nB��n*nB�nB�vnB�]nB>�nB�}n�2�nBڤn�rFnsn�oB�oB�nBr�nB�{nB�Dn�Rn��nB�n�֙n��o���n��n��dn®�n��oB'<nB�oB��n��-oB��nBe�n���n�eoB�bn��nBS�nB]o��$o±�m��)oB��nBg*n�KOn�
4nB��nº	o¸�n¶�mBT�nB^�mB�oBMn��EnB,�nB?o�<qnB��n�3�nBnnB&tnB4 o��nBD�m�B-n�trnB��nB�co7n¾�n�vnB,n�w-nB$n�E=n�Ɖn��n�!�n�J<n¼Un��-nB�inB��nB}9oBUo�utn�j�nB�an®�n�&�n�m«�nB^n��nB�oBzEo���nB��n�\|nB�xnB�!n���nB�nB��n�5�nB	o�Y�nBb:n�|n�{�n�8�nB��n�M�mB��nB?-n�*�n+oB)�n���n�`�n�Ldn��kn��.oB�^n�
nB|nB6oSnB�n��n�!DnBƌnln´+nB�n�}�n��nB��nB�,n²=n¼unB �nBD�nB7nBrRnB�oBo�NQoB^�n�HoB�%nB
*oB~�nB�nB�$o�B�m�c�nB�TnB�SnBx�n¥[nB�n��n�j�mB��nB�un�;7nB��nBi�nB`mn�;�nB&�nB�MoBenB��n��[nBRnB?�nBG~nB�=nBJo�pbnB :nB��n�nB��m�T�nB�Sn°�n�_nB��n��oB�InB6�nBHnBƈnAoB&Wn�lnBX<n�M"nB@�nB6/nBx�n�	nBnBУnB~snBU9n�dOn¾�nB"JnBc8nanB'�m�.�n�`�n�`�n��nB+�n�Y�nB��nBQ�n�#n��nB�UoB�	n·"nBHanBwgn���nB�
n��n��o�T�n�ԕn%n�n�k�mB<nB�tn�xwnB�mB�oBX�nB��n��n�v�n­	o»En��^nB�nB:�mB�$n�min�&nB�unB�aoB�!nBt�n��`nB)�nB�Kn°UnB;�n��nBt!oBAo�o°o®�n�*�nBtLoB�nB�n��dnB�knB�?n��nBKwn�,�n�%lnB��nB��m�d�nBqfn¸n��gn��oBB�nB1n��nBC�n�mBJ�nB�Yn�RUn�-hnB�nB]�nB�ZnB��mB{nB/oB��nBznB�nB�nB��nB�Ln��nB��n�X2o�VsnBB�n���n�m�nB��n´#nB)�n�3�mB6�nBGen�aqn�n�\�n�n�:�nB#/n�Jxn�h�nB!XoB�RoB��nB��n���n��nB�qn�m��3n»o���nB5nB��nB��nB3oª�mB�n�p2nBhBn�VcnB��n�rnBlqnJnB�-nB�qn�+qnB^]oLn��nB�Dn��nBnB�in½"nB�gnB�Fn�pnJo�ĎnB\1nB�nB��n��WnB�_nB~Yn�FnB�n�^?n��n��nB��mB��n©�nB,0n���n��Bo�ԌnBnBr�n�&@nBnB�ZnBUoBC_nBFhn�eWnboBd�nBK�nB�Fo¶�nB�onBʳnB��n��!nBtoB�n��nBPoB�sn�V�n�.�mBJ�nB$en�nBlAnB�nBG�n�nB~�nB ln�R�nB�n�8ln�-�m�6gnB��n�(�n�0�nBqpn��fnBd|n�N�nBN�nB�VnB�o°�m�:�n�n���n�'nBrEn��=n�hHnB��mB,�m8o�nB.o�w0o�n¸;oBFIo�)o�7�nBttn�^dn�[-nB��n�^/nB�snBFDo��;nB��n�X/n�tnBn��}nB��n��o���n�~�nB>oBbSnB��nB�3n¹tnB�nB�nBP�n�/�n�\`n��rn�+SnB��nB�nB;�n���nB
^
hidden4/weights/readIdentityhidden4/weights*"
_class
loc:@hidden4/weights*
T0
�
hidden4/biasesConst*
dtype0*�
value�B�2"�{�n�w�n�x�n�{�n�~�n�v�nBy�nBL�nBy�n�w�n�}�n�~�nB|�nBy�n�{�n��n�z�n�n�x�nB{�nB|�n�~�n�w�nBx�n�z�nBx�n�s�n�x�nBv�n�|�nBd�n�z�nB`�n�z�nBy�n�|�n�{�n�x�n�x�n�v�n�{�nBt�n�x�nBz�nB|�nBz�nBϘn�w�nB|�nB{�nB
[
hidden4/biases/readIdentityhidden4/biases*!
_class
loc:@hidden4/biases*
T0
�
hidden4/MatMulMatMul!hidden3/BatchNorm/batchnorm/add_1hidden4/weights/read*
transpose_b( *
transpose_a( *
T0
@
hidden4/addAddhidden4/MatMulhidden4/biases/read*
T0
*
hidden4/ReluReluhidden4/add*
T0
�
BatchNorm_4/betaConst*
dtype0*�
value�B�2"�z�nBp�nBy�n�w�nBz�n�v�n�y�nBh�n�~�n�v�nB~�n�y�n�|�n�|�n�r�nBq�n�{�n�z�nBg�nB|�n�y�n�S�nB{�nBq�n�|�n�z�nBm�nBy�n�z�n�z�nB{�nBc�nB|�nBs�n�x�nBw�nB~�nB|�n�|�nB|�n�y�nB{�nBz�nBp�n�x�n�?�n�r�nB|�nBx�n�z�n�
a
BatchNorm_4/beta/readIdentityBatchNorm_4/beta*#
_class
loc:@BatchNorm_4/beta*
T0
�
BatchNorm_4/moving_meanConst*
dtype0*�
value�B�2"�*v$GUu35p�5�&�4��J5c�$5�y�4�9\G�5���F��F_q5m�15���E>�E5'�C�M5\��E��\FP4%G�	?5��5z1[5C��5>om572�B��E(U�F&]F�ZF ]F�IZFӀ>5[�4��4Z�M54I5�P�Btg�E,T:5Av�F�x\F���E��R5]�X5J��E�"]F
�4H%*5
v
BatchNorm_4/moving_mean/readIdentityBatchNorm_4/moving_mean**
_class 
loc:@BatchNorm_4/moving_mean*
T0
�
BatchNorm_4/moving_varianceConst*
dtype0*�
value�B�2"���Hb��7�I�7<'�7>��7Yq�7]'�7_�)Hh	�7��G
7�FX��7��7��G���7�Gր�7&
UG(GC^F�&�7���7MM�7�[nGɦ�7h=�7`�:G�f!H��kG���G�H�Gg��G��G���7�X�7�f�7���7�T�7��CFхWF��7D�G�+�F�s<GB��7�?�7~��G�!eG�D�7t
�7
�
 BatchNorm_4/moving_variance/readIdentityBatchNorm_4/moving_variance*.
_class$
" loc:@BatchNorm_4/moving_variance*
T0
^
0hidden4/BatchNorm/moments/Mean/reduction_indicesConst*
dtype0*
valueB: 
�
hidden4/BatchNorm/moments/MeanMeanhidden4/Relu0hidden4/BatchNorm/moments/Mean/reduction_indices*
T0*
	keep_dims(*

Tidx0
_
&hidden4/BatchNorm/moments/StopGradientStopGradienthidden4/BatchNorm/moments/Mean*
T0
e
5hidden4/BatchNorm/moments/sufficient_statistics/ShapeShapehidden4/Relu*
out_type0*
T0
�
4hidden4/BatchNorm/moments/sufficient_statistics/CastCast5hidden4/BatchNorm/moments/sufficient_statistics/Shape*

DstT0*

SrcT0
l
>hidden4/BatchNorm/moments/sufficient_statistics/Gather/indicesConst*
dtype0*
valueB: 
�
6hidden4/BatchNorm/moments/sufficient_statistics/GatherGather4hidden4/BatchNorm/moments/sufficient_statistics/Cast>hidden4/BatchNorm/moments/sufficient_statistics/Gather/indices*
validate_indices(*
Tparams0*
Tindices0
c
5hidden4/BatchNorm/moments/sufficient_statistics/ConstConst*
dtype0*
valueB: 
�
5hidden4/BatchNorm/moments/sufficient_statistics/countProd6hidden4/BatchNorm/moments/sufficient_statistics/Gather5hidden4/BatchNorm/moments/sufficient_statistics/Const*
T0*
	keep_dims( *

Tidx0
y
3hidden4/BatchNorm/moments/sufficient_statistics/SubSubhidden4/Relu&hidden4/BatchNorm/moments/StopGradient*
T0
�
Ahidden4/BatchNorm/moments/sufficient_statistics/SquaredDifferenceSquaredDifferencehidden4/Relu&hidden4/BatchNorm/moments/StopGradient*
T0
w
Ihidden4/BatchNorm/moments/sufficient_statistics/mean_ss/reduction_indicesConst*
dtype0*
valueB: 
�
7hidden4/BatchNorm/moments/sufficient_statistics/mean_ssSum3hidden4/BatchNorm/moments/sufficient_statistics/SubIhidden4/BatchNorm/moments/sufficient_statistics/mean_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
v
Hhidden4/BatchNorm/moments/sufficient_statistics/var_ss/reduction_indicesConst*
dtype0*
valueB: 
�
6hidden4/BatchNorm/moments/sufficient_statistics/var_ssSumAhidden4/BatchNorm/moments/sufficient_statistics/SquaredDifferenceHhidden4/BatchNorm/moments/sufficient_statistics/var_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
M
hidden4/BatchNorm/moments/ShapeConst*
dtype0*
valueB:2
�
!hidden4/BatchNorm/moments/ReshapeReshape&hidden4/BatchNorm/moments/StopGradienthidden4/BatchNorm/moments/Shape*
Tshape0*
T0
�
+hidden4/BatchNorm/moments/normalize/divisor
Reciprocal5hidden4/BatchNorm/moments/sufficient_statistics/count8^hidden4/BatchNorm/moments/sufficient_statistics/mean_ss7^hidden4/BatchNorm/moments/sufficient_statistics/var_ss*
T0
�
0hidden4/BatchNorm/moments/normalize/shifted_meanMul7hidden4/BatchNorm/moments/sufficient_statistics/mean_ss+hidden4/BatchNorm/moments/normalize/divisor*
T0
�
(hidden4/BatchNorm/moments/normalize/meanAdd0hidden4/BatchNorm/moments/normalize/shifted_mean!hidden4/BatchNorm/moments/Reshape*
T0
�
'hidden4/BatchNorm/moments/normalize/MulMul6hidden4/BatchNorm/moments/sufficient_statistics/var_ss+hidden4/BatchNorm/moments/normalize/divisor*
T0
o
*hidden4/BatchNorm/moments/normalize/SquareSquare0hidden4/BatchNorm/moments/normalize/shifted_mean*
T0
�
,hidden4/BatchNorm/moments/normalize/varianceSub'hidden4/BatchNorm/moments/normalize/Mul*hidden4/BatchNorm/moments/normalize/Square*
T0
�
'hidden4/BatchNorm/AssignMovingAvg/decayConst*
dtype0**
_class 
loc:@BatchNorm_4/moving_mean*
valueB
 *���=
�
%hidden4/BatchNorm/AssignMovingAvg/subSubBatchNorm_4/moving_mean/read(hidden4/BatchNorm/moments/normalize/mean**
_class 
loc:@BatchNorm_4/moving_mean*
T0
�
%hidden4/BatchNorm/AssignMovingAvg/mulMul%hidden4/BatchNorm/AssignMovingAvg/sub'hidden4/BatchNorm/AssignMovingAvg/decay**
_class 
loc:@BatchNorm_4/moving_mean*
T0
�
!hidden4/BatchNorm/AssignMovingAvg	AssignSubBatchNorm_4/moving_mean%hidden4/BatchNorm/AssignMovingAvg/mul**
_class 
loc:@BatchNorm_4/moving_mean*
use_locking( *
T0
�
)hidden4/BatchNorm/AssignMovingAvg_1/decayConst*
dtype0*.
_class$
" loc:@BatchNorm_4/moving_variance*
valueB
 *���=
�
'hidden4/BatchNorm/AssignMovingAvg_1/subSub BatchNorm_4/moving_variance/read,hidden4/BatchNorm/moments/normalize/variance*.
_class$
" loc:@BatchNorm_4/moving_variance*
T0
�
'hidden4/BatchNorm/AssignMovingAvg_1/mulMul'hidden4/BatchNorm/AssignMovingAvg_1/sub)hidden4/BatchNorm/AssignMovingAvg_1/decay*.
_class$
" loc:@BatchNorm_4/moving_variance*
T0
�
#hidden4/BatchNorm/AssignMovingAvg_1	AssignSubBatchNorm_4/moving_variance'hidden4/BatchNorm/AssignMovingAvg_1/mul*.
_class$
" loc:@BatchNorm_4/moving_variance*
use_locking( *
T0
�
hidden4/BatchNorm/IdentityIdentity(hidden4/BatchNorm/moments/normalize/mean"^hidden4/BatchNorm/AssignMovingAvg$^hidden4/BatchNorm/AssignMovingAvg_1*
T0
�
hidden4/BatchNorm/Identity_1Identity,hidden4/BatchNorm/moments/normalize/variance"^hidden4/BatchNorm/AssignMovingAvg$^hidden4/BatchNorm/AssignMovingAvg_1*
T0
N
!hidden4/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *o�:
p
hidden4/BatchNorm/batchnorm/addAddhidden4/BatchNorm/Identity_1!hidden4/BatchNorm/batchnorm/add/y*
T0
T
!hidden4/BatchNorm/batchnorm/RsqrtRsqrthidden4/BatchNorm/batchnorm/add*
T0
`
hidden4/BatchNorm/batchnorm/mulMulhidden4/Relu!hidden4/BatchNorm/batchnorm/Rsqrt*
T0
p
!hidden4/BatchNorm/batchnorm/mul_1Mulhidden4/BatchNorm/Identity!hidden4/BatchNorm/batchnorm/Rsqrt*
T0
i
hidden4/BatchNorm/batchnorm/subSubBatchNorm_4/beta/read!hidden4/BatchNorm/batchnorm/mul_1*
T0
s
!hidden4/BatchNorm/batchnorm/add_1Addhidden4/BatchNorm/batchnorm/mulhidden4/BatchNorm/batchnorm/sub*
T0
�N
hidden5/weightsConst*
dtype0*�N
value�NB�N22"�NP�n�<Yn�nB�zn(nEnB�/nB�}n��fn�Y7nB��n��n�n�n�Y�nB�anB��nB7Gn�\�nB�nPn�nBR�n�H�nB��n��nB�nB��n�{TnB+�n�RnB�qnmnB)�n¿Kn��nB�n�unBZ�n�ϳnBm1o��cn�an��fn��3n���n�(tn�y�nSn¥�nB��nB��n��Ko��n��n��qn��[n�@.n�{"o�nn��4n��n�-%o«�n�jnBfmn�lWo� �n�_�nB�2oB~�nB@�nB��n���nB_�n¼�nBthnBv�n�u�n��%n�i�n�]�nB��nB��m���n���mB~in�nB��n�H�nB�5nB�mBrDnB�%oB
Tn�|�n¢$n��n� �n�n®nB<fn�h�n�dn�v@n�J]nBp oB��n��]o¬�nB\o�n��n� �n��'nBh�nB�rnB�AninB(Ln�Un��|n�~�n�nSnB��n��snB��n��!o�2%nB#o�nB��m�nB�n��n���n��n�B�nB�fn�oBt�n@n�n�!?n�iDo¦n��in�n�[:n�]�nB��n�?xnB�n��cnB�nBE�n�:n�D�nBR�nB nn�QMnB8#oB�GnB�mn�1�nBo�"�no�.oB./nBy'oBT�nB�GnB�&n�/%nBVnBP|n�܋n��enB��n�;oBηnB��nBҁn��oB��nB�EoB�n��nB�mB`�n¤�nB�nLnB4MnB�n��wnB�n9nnB��mB��n�j!o��nB�n��oB{�nBU�n�n�c�nB5�n�O�nB�n�y�m´�nBJ�nB'�nBUn�U�nB��n�?bnB�o 8o�q�n¡�m³�nB@�n¯�nBGinB|nB8�n�6�n���nB�?n�n�ln�3�n �nBԛn�'�nB�Co�\�n��n�(Dn�A*n�v�no½&o*o7n�J�n���n¬�nB�oBY�n�/�nB�	oB�n�`.nBY�nB�nB�_nB�nB��n���nB�CnBnBF'n��gnB9.n¨'nBS�nSnB#�nB�.nBE�nB�o��5oLnB�LnB=nB�nB��nB&Hn�\oBY�neoB�KnBe�nB�nB�?nB/�nB�n���n��nB��n�&@n�-�n�q�n¯�nB3o��]n�V6o�P'nB�rnB�&nB�Vn�WQoBm�n��(oBv�nsn�(�n�WMo�nB��m��hn�moBÂn��o��nB��n��nB��nB�`nBcn�f�noB>�n�mB�Uo�nB��n�e�n���nB>Ao�F�n�|�nB/�n�|Do�8o¼o¼�nB��nnB�)n���n�n��n�@$n���nB�6nBn�j�n��To�	�nB��n³OnBjnB�n��gnB��nB٤nrnB'nB�TnBJyn�dn�+�nBýn�`�n���n¤BnB*�nB�=n�pn�Yo��yn�q�nBsnB\�mB�nB��n��2nBCRn�Іn�FsnB<"oB�n��mB:o�Rn�osnB�(nB�Zn�onB�Xn��nBCoB(�n���n��n�&}n�Ěn°Ho��[n§o�T�nBe�n�3~n�.�nB��n­�nBfJnBيnB�$n�a�nBoB!�n�%�nB�n»�nB<gn��nBO�nB�Pn�uboB��mFnBD�n�=nB�n�l�n�U2nB��m¾�nB�n�nB�qnBx�n³�nBz�n� n� �n�bn�6oIn¤Pn¿�n�U�nB�*o��un��5nB��nB��nBN-nB�BoB�XnB�]n��n��2oB�qn� �n�%�nBO�nB��n�E7nBg�n¾�nª8n�r�n�nB�nB2Bn��5n�+kn��nBJ o��nBDin�n�n���n�D�n bn�,�n�N�nB�n�� n�R`n�n��n�nfnBڤn�t8nBCn�( nBn�D�nBOoBX�n�W�n�Cn���n�Y�n�6�nB2o�j�nB�-oBSRoB�mB�zn���m�(*nnB��n¦mnBuunB$oBF�nB�m�nB?�n��o­�nBstn� VnB7�nB��nB�nB�nB�]nB o��nBH�nB�nBA�nB�DoBMnBlnB�|n½onB=�nB`MnB�nB�SnBo�P>nB�"oB�n��Xn�nQn�z�n�n�n�!oBv�n��qnBh�nB_�nB�mBKen�go/n��nB�o���nB��nB�nBi�mB.Hn�Kan�R[n�c�nB�FoBFn�T#oB��n��oB��m�v	oBȿnBx�n�,�nB4�nBj�n�6an�ynB�oB]OnB�Kn�"�nB��nBh�nB�nB��nBvn�V�mB�nB��nBH<oBO�nB�CnB4�n�,�nB�n�֞n��nB?�nPn�x�nB��nB��n�H�m�N�nB�oB��nB��nB�jnB&TnB*�n�o�n UnBoBޙn�.oBP�n¥wn�HoB�XoB01nBp�mB�
nB�nB�wn �nBy�nB�<nB<enB�znB0%nB�o¦oB~nB�oBpXn�q�n��|n�R�nBI@nB��nB@�n�tZn��1nBrhn�n  o�H�n��n§^o�.BnBP$n�%�nB�@n�nB&oB��n©knBx�n���nB�;n�;oBI-oB�m�EnB�<n�C�n¦�n®2nB�n¥2n¨�nB|�n���m��5o�nB�;o��n��/n�:fnBgo��n���n�o�-�n��nB��nB�vn�n�n�V�n��m¦�m�.n¯�n���nBd+o��o��n��n�i�mB�	o��o�2�nnB�nBn�n� {nBʝn�^�nB�yn²�nBnB�ln�nBǧn�UoB��n�nB��nxn��nBQLn�/�nB��m�cInB�GnB{bn��nB��nB��n��dn���n¿�m¢n°en�n�b�n��nB�\nBͬn$nB�$nB��n¨qn�ڼnBN�n��<o�YnB��n��nBm�nB�nB�n�e-oB��nB�An��NnB�n¥snB]�n¼nBK
oB�n�"�nB�o«gnBJo�D�nB�n¸)n���n�U�n�0KnBn��@nBn��n��m���n�nn��\n<o��n�8�nB�wn��<n�^n���nBA_nB�nB�QnB�{nB\�n
o�u�nB��n®Pnºo�=�nB�Hn���nB��n�֒nBb�n��Cn´�n¥CnB�wn:nBd�n��n��nBP�nB�nB�n�-n�R�nB��n¶?nB\�nBiun��%n� �nBhjnBXGo�K�n�n� oBxnB�Ro��mB��n���n�9�nB�znB�,n�,n�x�n�n¤^n���n�+n�\;n�|MnBA�n�m�n���nB�on� ]nB�_o��n��Qn��DnB�mnB��n�?�mBpcn��"nB�nB��nB(�nB)�n�nB�zn��nBC�nB}hnB�onn�n?nJo�JnBXhnB9=oB�*n�יn���mBN�n�0�n�unB�n�n��On���m�$|n¸�nB�nB�dn�/�n�m¨rnB �n�^�nB�oBt�m���mB&�nB&�n�ުn�E�nBi�n�Po� �m� �nB6<oB\�n�E_n�,�nBUoBޙn�p�n�5o��o�nn�_nB;�nBU)n�N�n�n�)�n��n��nB��nB��nnB>Nn��vnB�.n�B{n���nBQo�,unBPnoB��nBľnBOUn���n��n�t�n�t�n �n�nB�xn�an�fynB�>nº�nB�tnB�\nB�rn�?�nB��m�F�mB�@nB�>nB��nB�$o��n�//oBr�nBnB�(o�1�n���n¬oB8�n¶�nB��n�,o��n�=LnB��n�n�9nB�nB��nB+o�Jtn�L�n�#dnB7Rn�0�nBh�nB(oBy�nB��mB��n��n�'o�nB(�n�/�mB�dn´KnBqJnB(�nBĲnB�n�
�nB�HnB��mB�n���mB�/nBAo 'nB�gn��nB��n���n�0�mBX^n���nBxn� nB.hn��nB�rnB�8n�psnBEanB>�n�q�n� gnB��m�>bnB8oIn�g�nBxnB�gnB�onB.�nBQ�n|n�m�:�nB��nB��nB�n_nB��n�δnB�on�vn���n�,�n���n��noµ�n�� oBc=nB?�n�j�nB��n�0oB^@nBf�n�Asn��n�+!oB��n£xnB�n�*"oB�n�G]n��-oB��n�nºYnB1n�X�m©�n¦�n�b�nB��n�$�nB��n�6o�n �n�nB��n�}InB��n�+n�f�n�&�nB��n���m���nBqn��Dn�j�n�sn��nB�nB��nB�)n�X�mB�|n¢�n�7n���n��nBޘn�^_nBXnBR�n��KnBj�n��!nB�Ro¢�nB��n¡gn��o��o�N�nB�Nn�͠nBBn��n�n���m��n�
no¶�n»�n¾�nB�n¹�n�t*o��nB�CnB �nB��nDoB��n�ЧnB��n�P�n�'�n���mB�Mo��n�1�n�o¢�nB�rn�n·SnB��n�
�nBF�n���n���nB�Oo�4)oB��n¾�nBJ3n�{�nB¼n�=�n�(�nBM�n�a[n�dCn�nBTtn£un�Ån·�nB��n¾�n¤�n�n�so RnZnB�\n�Pan��n��#o�a�n�`n�lGn�t�n�vUnB��n�<�n�>inrn��nB�onB�n�6"o��nBaFnB�Rn�#�nBT�n�N�nBo�4�nB�oB��n���nB�rn�OInB͡n��oB�o�o���nB�n�-�nB�vn���nB�_n�n�o�RGnB��n�f�n�n�^�n��n�h�m¾�nB��nBFo«�n�aan�n«:nB5�n�0ToB$[n�bhnB��nB�HnBV�nB��nB��nB�&nB!oB��n��o�nB�Ln��`nB�wn� �nB_�m�Nkn�nBS�n��QnB��n¨!oB�cn�{nB�^oBcn��nB�CnB*~nB�ao��oB|KnBioB8�n��nB��n�_BnB��nBPEnB�nB�n��n��nB)�nB��nB��nB�]n��n�n�RYnB��n�.�m¶[no��&nB��n��!o��n��DnB.jnBLlnoB�	o �nBs`n^nB��nB��n�|
nB6Zn�(�nBCKn�&YnB),n�ܹn��nB��m�:oB��m�nB'�n���n�8�n�h�nB��n�p�n�&�nn�`5o�j�n���nB(�mB��nB�<nB>�nB=�nB�,n@oB��nBF-n�z�nB��n��n���nB4�n���n�O�mº}nB֊nB�3nB]Fn¡�nB%znB]�n��8o�1Qn�g�nBd�nB�\n$nB��n��}nº�nB�nB-oB�nB�nB�FoB��n�e�nB�Zn��oB��n��nB]DnB��n�8�nBv"nB�nB�An�6�n��Tn�d�nBC�nBBnBތnB�"oB��n»�n�$�nB�nBg�nB��n¡dn�oBG�nBSsnB�nBOgnB��nBH�n�L1nB��n�T�n�n½jnBդnB&�nBunB�`nB��n��nB"snB^nB��n��nB�o�^lnB��n���nBv(oB��nFo��n2n��n§&n�E�n©�n�>5oB
BnBu�m�~cnB��n���mB�*o�nen¬En��nB��nB��m�enB�nBk�n·]n�=�n�o�nB��mB�SnB�pn±]nB�Mn£8nB4�n���m�nB�on�֤n��vn��nB}n;nB=^n��n��5oB��n¾WoB&�n��nBcoB�Ko�f�nB|>nBn�n³�n���n�@yn£�n���n­Rn®,o�/An�?�n�KoB��nB�n�̼nB��m�զnBBKn¬�mtn�jKno�ڜn��rn�n�<�nB��nBW�n��(nB{zn�:nB�nB��nB<�nBDoGnB=�n�n�6o�wenB�sn���n�oB��n�3�n�n�!�n�n�
Zo��en�nB�,n�a5nB�n��;n�n� �n��n�n�-o�Y�n�WoJnB��m��xn��n�ѬnB��n�
Vn�ܫnBX�n�oB�Hn���n���n�q�mBLoB$�n��enB�in�nBH�nB�vnB}nBB�m�7�nB<5o�MTnB�nnB�*n®�n\n�;o�v�nB��nBQnB��n�j�nB�nB|unBl3nB�an�
o��o�n���n�d�n��vn¯|n¾�nB��nB:(oBWbn��nB�n�3�nB�n� �n�z=n�HNn�2JnB7�n¬�n��n�*oB\�n���n«3oBJncnBgn���nB}�nB�nn¨�mB��n�WnnBBcn�VJnBto2n�)�nB�o���n��o �nB��n¸'o�B/n�1�nB�do�H�n�*Dn�frn�n�6�n�Z�n��n��n�Щn�B�n¹UnB[�n�.Vn��_n��nB�n®�n�h�nBz�m�]�nB��nB��nB�o�D�nB!Lon�>�n�� n�hnB�n�D�nB7�m�n�9�nB�Yn�nB»n�R
oB��n²~nB<�n�,gn��n��nBWgnBtn�mBUVn?n���mB)�n�h�m�9o�{To4n�L�nB��nBv�nB`�n�/^n¼�n�̂n��kn°�nBV�m©oB�wnB̌nB�nBF n�SnB}�mBz�nBސn�nB�wnB��n�
oB�%n�nB�Tn�WAn�nB��n��tnBzo�nB��n��QnBr�mBXrn�nB�^o�n{nB5�nBtoB�onBu�nB��n®�nB��n��oBv#oB0oBY|nB�gn��n�",oB�ToBqqn9oBr>oB$�nB<�n��n§�n«@n�jnnn� n� ,oB�nB��ninBҪn�n��>n¦�n��(nBğn�tn�X�nBL�n�ȍnBS�nB�n�t/o±�nBڻn��o��nB?n��nB}�n���mBb\n�"o��o�n�n��sn���n��4o��nmn¦�mB�mB��nB��nBb/oBb�n�@n§�n�>�n��'nBe�nB۝nB�nB�knB�nBj�nBm�nB�Jn�OPoB�n�KnB:�nB��n��nB��n�R�n��nB�{n�$xnBpn¿oB-�nµnB��noB��nB�m��nBm�nB�8n�;Nn��nB�nB=�nB>nn�x�n®)oBghnBsPnB�tnB��nB�
oBK�nBK�nB�^nB�_n���n��VnB�+o�xoB�oB�VnB�nB�nBA�nB.nBJoB:�n�"�nB��m�Q�nB&�nBT0o�nµ�n��n��TnB�n�YbnB�6n��9nB�nn��2nB�o���nB,oB�!o�2�nB��nBjn�>�n��ZnB��nB"AnBf�nB��nB��mB^^n��knBHCnB��nB:%nBJo�o�0Gn��nn�gun��n�\ n�g�nB��n��o�-oB'�n¹oB6�mBeKn��&n(n��mB�nB8oB�n��oBq�n�j�nB�GnB�.o��MnB��n��jnBr�nB,Jn��Un�9Xn��n�sn���nBLn�+o��WnBG�m��nBUn�ڔn�^ynB�^n�o�n�on�C�nB��m �n`n��nB�nB �nB� oB��nB�pn|nB�o�s�n�nFn��oBo�nB~�nB�o�nB�.n��*o�r�n�:/o���nBno��UnB[�m��2o��=nB��mB_�nB�dn¯�nB��n�Oo��~nB#2ovn�.hn��nB��n«�n���n�׎nB�:o��tn§�n�I�n�>�n�oB�o��n�4�mBo�nSn�
=n�U�n�6�n�.�nBNn���n��nB&�no�&�nBX�nBr�n¾(nB�[oB�n�[WnB`'o�{�nB%�n�ȆnB��nB�^n��n��n�]nBLo¦;o¾�n�d�n�f�n²on�>�nB��n�poB5�n­�n�;�n��~n�>�n��n��$o¶�n��1n��@nB%'nB��n�1Wn�n»(n�g�nª�n���m��n�.MnB�n��n�\nB"rn�nB��nB5TnBp�n�//nB/fn��mB�n��4n�V�nBvFo���nB�o5n�w�nBҝnNnB��n�o��n�T�n¡�n�>�no�&�n·wn� n�<<o��&o�tn�`�n��xn�k�n�Jn�sRn�M�n���n®�n�m�n��n�mQnBw�nB�en¨+nBX&oB��nB��nB��nB~�n��o�o�mB�nB�o�enB�*n�Ȳn�/o9oBb�nBk�nB�@o²knµn�n��n�:.oBg�nB�ynB{n��rnB~�n«wnB. o��znBg�n´�n¤�nB�lnB��n²�nBg�nBƿnB�oB�pn�x�nBk:n�#�n�0�n»�n�n���n��%o¢�n�E�nBD�n�\�n�ѵnB��nBMn��hn�nBFOn�[n���mBwLoB�nB$�mB��mB�nB�nB��nB�oBj-o��o¨xn�"unB�/nB�&oB6�n��n��%oKn�H�nBvoB)n�do�nB�cnB��n¾�n�nBf<oBoCn�nCo�x�n»n.n�d�nB0oBb�nB�%oB��nB�To���n��Io�b�nvn®.n���nB�tnB�~nB�<n�&@nBHon�\*n�@en�{3o�%dnB$�n��hnB��nB�dn�nB
�n��5nBdn�EnBZSo���n�&�nBn�m�o{n�	jn�icnB�n¥�n�:�n�޹nBV�n�(Zn�)o���n�W�n�!oB��n¤�n�Đn�ڈnBk�m�monB�nB|0nB��n��nBZo�x�n��%n�w	n�znB��nB��nBf�m��rnB
�n²:o���n·�n�nB�n�,�nB�Un�n�T
oB��nBQ�nB��m��
nB��m�n�b�nB�n½6n��cn�nBҕn�	Zn��eo��nB
#n�ګn¶�n�"�n�_n�h�n�n��n�b�nB�YnB>oB�nB!
oB�nB�nn�n�n�{�n�n��n�o�X�n¡�nB#o©�nB(�nB�bn�nBo°�nBmUnBa�nB%�nB��n��@nB��n¢o�,�n�n|n�<�n�l�nB!n� oB�n��WnBN*n�m�.n�b�nB�n���nJn��in���n�^	oBD�nB�nB��n�B�n��ln�$�m�d�n��ynnB&n��nBF�nBxUn�ʜnB(n�R�n�_Do�e\oBt�n�k�nB̌nBh�nBu�nB\�n	o�N�nBK�nB�6oBVn�U9n�0n��	oB>	n�nB�oB��nB��nB^8nBD�n���nB� nB�!nB�]nBl�nBt>n¢Gn��=nBy7n�nB�n�n�: oB�Rn¾�m��%oBw�nBšnª�nBm�n�YsnB�en£�n�"GoBwo�c�n���n�o�"�n��nBjnBX�n�H�nBH+o�lRoBvVnB�Pn��nB�9n�F�nB��n�F9nB'Co3nB�Yn�n­�n���n�5-n���ncn��n�	�n���nB�Fn�.Pn�nB%�n���nB�2n�
Nn�lanBs�n��nB�inB��n�,nB<�nB�o�*o§DoB2�n�n�D}nB]�n¾9oBj�nBHPnB��n;nB�n�f�n�B�n,n���nB<@n�>oB�fn�4�n�1�nB7Boª�nB�Bn�w^nB�Cn�jo�~�n��(o�	�nBa2n�nBQo�)�n��o�}kn�n�8%o��n�n���n��Dn�
^
hidden5/weights/readIdentityhidden5/weights*"
_class
loc:@hidden5/weights*
T0
�
hidden5/biasesConst*
dtype0*�
value�B�2"�z�n�t�nB{�n�z�nBz�nBz�n�~�n�z�nBx�nBx�nBy�nB_�n�y�n�{�nB~�n�{�n�a�n�x�nB|�n�y�n�{�n��nB~�nB|�n�n�nBy�n�{�nBd�nBz�n�?�n�^�nBz�n�w�n�x�nBx�nB~�nBw�nBm�n�x�nBh�nBx�n�!�nBz�n�z�nBz�nBo�n�J�nB|�nB|�nB|�n�
[
hidden5/biases/readIdentityhidden5/biases*!
_class
loc:@hidden5/biases*
T0
�
hidden5/MatMulMatMul!hidden4/BatchNorm/batchnorm/add_1hidden5/weights/read*
transpose_b( *
transpose_a( *
T0
@
hidden5/addAddhidden5/MatMulhidden5/biases/read*
T0
*
hidden5/ReluReluhidden5/add*
T0
�
BatchNorm_5/betaConst*
dtype0*�
value�B�2"�z�nBn�nB|�nBz�n�}�n�|�n�z�nB{�n�y�nBz�n�|�nBq�nB~�nBz�nB}�n�z�nB{�nBz�nB{�n�{�nBy�nBz�n�{�nB{�n�z�nB|�n�|�n�t�nB{�n�|�nBm�n�{�nB|�n�x�nBz�nB{�n�z�nB|�nB{�nBy�n�{�nB�nB|�nB|�n�x�nBv�nB[�nBz�nB|�nB|�nB
a
BatchNorm_5/beta/readIdentityBatchNorm_5/beta*#
_class
loc:@BatchNorm_5/beta*
T0
�
BatchNorm_5/moving_meanConst*
dtype0*�
value�B�2"��@�B��4�z>5��5V_C[m59T5��^5���4���F,�h5hD35���E=L)5خE5�W�5(�+5Py�5;�Cv��E�D�B#B�F�1�5)/	G��	G���Ep\F�h5#��BÑZ5�m\F61�E�Z5'q5��5<X^F�X5<na5�2�F&:5��5B~N5�w�F�w]FWZ5%[FO�/5�,E5��H5���E
v
BatchNorm_5/moving_mean/readIdentityBatchNorm_5/moving_mean**
_class 
loc:@BatchNorm_5/moving_mean*
T0
�
BatchNorm_5/moving_varianceConst*
dtype0*�
value�B�2"�G���7��7���7h��Gl��7���7�7h��7Pw�G�U�7!��7o)GX�7���7���7#[�7"��7�rsG5o6G�S�F�D4G��79��G�f)Ha�>G@i�F�P�7�YG:.�7U
Ha�G,J�7��7λ�7?�G^)�7��7�c�GI��7;��7�7�=G�4jG�&�7�k�G_t�7�O�7���7�<�G
�
 BatchNorm_5/moving_variance/readIdentityBatchNorm_5/moving_variance*.
_class$
" loc:@BatchNorm_5/moving_variance*
T0
^
0hidden5/BatchNorm/moments/Mean/reduction_indicesConst*
dtype0*
valueB: 
�
hidden5/BatchNorm/moments/MeanMeanhidden5/Relu0hidden5/BatchNorm/moments/Mean/reduction_indices*
T0*
	keep_dims(*

Tidx0
_
&hidden5/BatchNorm/moments/StopGradientStopGradienthidden5/BatchNorm/moments/Mean*
T0
e
5hidden5/BatchNorm/moments/sufficient_statistics/ShapeShapehidden5/Relu*
out_type0*
T0
�
4hidden5/BatchNorm/moments/sufficient_statistics/CastCast5hidden5/BatchNorm/moments/sufficient_statistics/Shape*

DstT0*

SrcT0
l
>hidden5/BatchNorm/moments/sufficient_statistics/Gather/indicesConst*
dtype0*
valueB: 
�
6hidden5/BatchNorm/moments/sufficient_statistics/GatherGather4hidden5/BatchNorm/moments/sufficient_statistics/Cast>hidden5/BatchNorm/moments/sufficient_statistics/Gather/indices*
validate_indices(*
Tparams0*
Tindices0
c
5hidden5/BatchNorm/moments/sufficient_statistics/ConstConst*
dtype0*
valueB: 
�
5hidden5/BatchNorm/moments/sufficient_statistics/countProd6hidden5/BatchNorm/moments/sufficient_statistics/Gather5hidden5/BatchNorm/moments/sufficient_statistics/Const*
T0*
	keep_dims( *

Tidx0
y
3hidden5/BatchNorm/moments/sufficient_statistics/SubSubhidden5/Relu&hidden5/BatchNorm/moments/StopGradient*
T0
�
Ahidden5/BatchNorm/moments/sufficient_statistics/SquaredDifferenceSquaredDifferencehidden5/Relu&hidden5/BatchNorm/moments/StopGradient*
T0
w
Ihidden5/BatchNorm/moments/sufficient_statistics/mean_ss/reduction_indicesConst*
dtype0*
valueB: 
�
7hidden5/BatchNorm/moments/sufficient_statistics/mean_ssSum3hidden5/BatchNorm/moments/sufficient_statistics/SubIhidden5/BatchNorm/moments/sufficient_statistics/mean_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
v
Hhidden5/BatchNorm/moments/sufficient_statistics/var_ss/reduction_indicesConst*
dtype0*
valueB: 
�
6hidden5/BatchNorm/moments/sufficient_statistics/var_ssSumAhidden5/BatchNorm/moments/sufficient_statistics/SquaredDifferenceHhidden5/BatchNorm/moments/sufficient_statistics/var_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
M
hidden5/BatchNorm/moments/ShapeConst*
dtype0*
valueB:2
�
!hidden5/BatchNorm/moments/ReshapeReshape&hidden5/BatchNorm/moments/StopGradienthidden5/BatchNorm/moments/Shape*
Tshape0*
T0
�
+hidden5/BatchNorm/moments/normalize/divisor
Reciprocal5hidden5/BatchNorm/moments/sufficient_statistics/count8^hidden5/BatchNorm/moments/sufficient_statistics/mean_ss7^hidden5/BatchNorm/moments/sufficient_statistics/var_ss*
T0
�
0hidden5/BatchNorm/moments/normalize/shifted_meanMul7hidden5/BatchNorm/moments/sufficient_statistics/mean_ss+hidden5/BatchNorm/moments/normalize/divisor*
T0
�
(hidden5/BatchNorm/moments/normalize/meanAdd0hidden5/BatchNorm/moments/normalize/shifted_mean!hidden5/BatchNorm/moments/Reshape*
T0
�
'hidden5/BatchNorm/moments/normalize/MulMul6hidden5/BatchNorm/moments/sufficient_statistics/var_ss+hidden5/BatchNorm/moments/normalize/divisor*
T0
o
*hidden5/BatchNorm/moments/normalize/SquareSquare0hidden5/BatchNorm/moments/normalize/shifted_mean*
T0
�
,hidden5/BatchNorm/moments/normalize/varianceSub'hidden5/BatchNorm/moments/normalize/Mul*hidden5/BatchNorm/moments/normalize/Square*
T0
�
'hidden5/BatchNorm/AssignMovingAvg/decayConst*
dtype0**
_class 
loc:@BatchNorm_5/moving_mean*
valueB
 *���=
�
%hidden5/BatchNorm/AssignMovingAvg/subSubBatchNorm_5/moving_mean/read(hidden5/BatchNorm/moments/normalize/mean**
_class 
loc:@BatchNorm_5/moving_mean*
T0
�
%hidden5/BatchNorm/AssignMovingAvg/mulMul%hidden5/BatchNorm/AssignMovingAvg/sub'hidden5/BatchNorm/AssignMovingAvg/decay**
_class 
loc:@BatchNorm_5/moving_mean*
T0
�
!hidden5/BatchNorm/AssignMovingAvg	AssignSubBatchNorm_5/moving_mean%hidden5/BatchNorm/AssignMovingAvg/mul**
_class 
loc:@BatchNorm_5/moving_mean*
use_locking( *
T0
�
)hidden5/BatchNorm/AssignMovingAvg_1/decayConst*
dtype0*.
_class$
" loc:@BatchNorm_5/moving_variance*
valueB
 *���=
�
'hidden5/BatchNorm/AssignMovingAvg_1/subSub BatchNorm_5/moving_variance/read,hidden5/BatchNorm/moments/normalize/variance*.
_class$
" loc:@BatchNorm_5/moving_variance*
T0
�
'hidden5/BatchNorm/AssignMovingAvg_1/mulMul'hidden5/BatchNorm/AssignMovingAvg_1/sub)hidden5/BatchNorm/AssignMovingAvg_1/decay*.
_class$
" loc:@BatchNorm_5/moving_variance*
T0
�
#hidden5/BatchNorm/AssignMovingAvg_1	AssignSubBatchNorm_5/moving_variance'hidden5/BatchNorm/AssignMovingAvg_1/mul*.
_class$
" loc:@BatchNorm_5/moving_variance*
use_locking( *
T0
�
hidden5/BatchNorm/IdentityIdentity(hidden5/BatchNorm/moments/normalize/mean"^hidden5/BatchNorm/AssignMovingAvg$^hidden5/BatchNorm/AssignMovingAvg_1*
T0
�
hidden5/BatchNorm/Identity_1Identity,hidden5/BatchNorm/moments/normalize/variance"^hidden5/BatchNorm/AssignMovingAvg$^hidden5/BatchNorm/AssignMovingAvg_1*
T0
N
!hidden5/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *o�:
p
hidden5/BatchNorm/batchnorm/addAddhidden5/BatchNorm/Identity_1!hidden5/BatchNorm/batchnorm/add/y*
T0
T
!hidden5/BatchNorm/batchnorm/RsqrtRsqrthidden5/BatchNorm/batchnorm/add*
T0
`
hidden5/BatchNorm/batchnorm/mulMulhidden5/Relu!hidden5/BatchNorm/batchnorm/Rsqrt*
T0
p
!hidden5/BatchNorm/batchnorm/mul_1Mulhidden5/BatchNorm/Identity!hidden5/BatchNorm/batchnorm/Rsqrt*
T0
i
hidden5/BatchNorm/batchnorm/subSubBatchNorm_5/beta/read!hidden5/BatchNorm/batchnorm/mul_1*
T0
s
!hidden5/BatchNorm/batchnorm/add_1Addhidden5/BatchNorm/batchnorm/mulhidden5/BatchNorm/batchnorm/sub*
T0
�
hidden6/weightsConst*
dtype0*�
value�B�2"�o�7�n�H�mBHoB2�nB
�nB
JnB5+oB��n��Xn��Ho�n�FYo£&nB[
n��mBh0nB��n¥�nB��mB��n�0oB�Ao²n�r�nVnªWoBa�n¾�nBi�n�n��o��n��|nBMo���nBr�n�9MnBA�mB��nB�pnB��n�:�n���nB��n�҈nB��n���n���n���mB
^
hidden6/weights/readIdentityhidden6/weights*"
_class
loc:@hidden6/weights*
T0
?
hidden6/biasesConst*
dtype0*
valueB*~�n�
[
hidden6/biases/readIdentityhidden6/biases*!
_class
loc:@hidden6/biases*
T0
�
hidden6/MatMulMatMul!hidden5/BatchNorm/batchnorm/add_1hidden6/weights/read*
transpose_b( *
transpose_a( *
T0
@
hidden6/addAddhidden6/MatMulhidden6/biases/read*
T0
*
hidden6/ReluReluhidden6/add*
T0
A
BatchNorm_6/betaConst*
dtype0*
valueB*�@A
a
BatchNorm_6/beta/readIdentityBatchNorm_6/beta*#
_class
loc:@BatchNorm_6/beta*
T0
H
BatchNorm_6/moving_meanConst*
dtype0*
valueB*B�5
v
BatchNorm_6/moving_mean/readIdentityBatchNorm_6/moving_mean**
_class 
loc:@BatchNorm_6/moving_mean*
T0
L
BatchNorm_6/moving_varianceConst*
dtype0*
valueB*���7
�
 BatchNorm_6/moving_variance/readIdentityBatchNorm_6/moving_variance*.
_class$
" loc:@BatchNorm_6/moving_variance*
T0
^
0hidden6/BatchNorm/moments/Mean/reduction_indicesConst*
dtype0*
valueB: 
�
hidden6/BatchNorm/moments/MeanMeanhidden6/Relu0hidden6/BatchNorm/moments/Mean/reduction_indices*
T0*
	keep_dims(*

Tidx0
_
&hidden6/BatchNorm/moments/StopGradientStopGradienthidden6/BatchNorm/moments/Mean*
T0
e
5hidden6/BatchNorm/moments/sufficient_statistics/ShapeShapehidden6/Relu*
out_type0*
T0
�
4hidden6/BatchNorm/moments/sufficient_statistics/CastCast5hidden6/BatchNorm/moments/sufficient_statistics/Shape*

DstT0*

SrcT0
l
>hidden6/BatchNorm/moments/sufficient_statistics/Gather/indicesConst*
dtype0*
valueB: 
�
6hidden6/BatchNorm/moments/sufficient_statistics/GatherGather4hidden6/BatchNorm/moments/sufficient_statistics/Cast>hidden6/BatchNorm/moments/sufficient_statistics/Gather/indices*
validate_indices(*
Tparams0*
Tindices0
c
5hidden6/BatchNorm/moments/sufficient_statistics/ConstConst*
dtype0*
valueB: 
�
5hidden6/BatchNorm/moments/sufficient_statistics/countProd6hidden6/BatchNorm/moments/sufficient_statistics/Gather5hidden6/BatchNorm/moments/sufficient_statistics/Const*
T0*
	keep_dims( *

Tidx0
y
3hidden6/BatchNorm/moments/sufficient_statistics/SubSubhidden6/Relu&hidden6/BatchNorm/moments/StopGradient*
T0
�
Ahidden6/BatchNorm/moments/sufficient_statistics/SquaredDifferenceSquaredDifferencehidden6/Relu&hidden6/BatchNorm/moments/StopGradient*
T0
w
Ihidden6/BatchNorm/moments/sufficient_statistics/mean_ss/reduction_indicesConst*
dtype0*
valueB: 
�
7hidden6/BatchNorm/moments/sufficient_statistics/mean_ssSum3hidden6/BatchNorm/moments/sufficient_statistics/SubIhidden6/BatchNorm/moments/sufficient_statistics/mean_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
v
Hhidden6/BatchNorm/moments/sufficient_statistics/var_ss/reduction_indicesConst*
dtype0*
valueB: 
�
6hidden6/BatchNorm/moments/sufficient_statistics/var_ssSumAhidden6/BatchNorm/moments/sufficient_statistics/SquaredDifferenceHhidden6/BatchNorm/moments/sufficient_statistics/var_ss/reduction_indices*
T0*
	keep_dims( *

Tidx0
M
hidden6/BatchNorm/moments/ShapeConst*
dtype0*
valueB:
�
!hidden6/BatchNorm/moments/ReshapeReshape&hidden6/BatchNorm/moments/StopGradienthidden6/BatchNorm/moments/Shape*
Tshape0*
T0
�
+hidden6/BatchNorm/moments/normalize/divisor
Reciprocal5hidden6/BatchNorm/moments/sufficient_statistics/count8^hidden6/BatchNorm/moments/sufficient_statistics/mean_ss7^hidden6/BatchNorm/moments/sufficient_statistics/var_ss*
T0
�
0hidden6/BatchNorm/moments/normalize/shifted_meanMul7hidden6/BatchNorm/moments/sufficient_statistics/mean_ss+hidden6/BatchNorm/moments/normalize/divisor*
T0
�
(hidden6/BatchNorm/moments/normalize/meanAdd0hidden6/BatchNorm/moments/normalize/shifted_mean!hidden6/BatchNorm/moments/Reshape*
T0
�
'hidden6/BatchNorm/moments/normalize/MulMul6hidden6/BatchNorm/moments/sufficient_statistics/var_ss+hidden6/BatchNorm/moments/normalize/divisor*
T0
o
*hidden6/BatchNorm/moments/normalize/SquareSquare0hidden6/BatchNorm/moments/normalize/shifted_mean*
T0
�
,hidden6/BatchNorm/moments/normalize/varianceSub'hidden6/BatchNorm/moments/normalize/Mul*hidden6/BatchNorm/moments/normalize/Square*
T0
�
'hidden6/BatchNorm/AssignMovingAvg/decayConst*
dtype0**
_class 
loc:@BatchNorm_6/moving_mean*
valueB
 *���=
�
%hidden6/BatchNorm/AssignMovingAvg/subSubBatchNorm_6/moving_mean/read(hidden6/BatchNorm/moments/normalize/mean**
_class 
loc:@BatchNorm_6/moving_mean*
T0
�
%hidden6/BatchNorm/AssignMovingAvg/mulMul%hidden6/BatchNorm/AssignMovingAvg/sub'hidden6/BatchNorm/AssignMovingAvg/decay**
_class 
loc:@BatchNorm_6/moving_mean*
T0
�
!hidden6/BatchNorm/AssignMovingAvg	AssignSubBatchNorm_6/moving_mean%hidden6/BatchNorm/AssignMovingAvg/mul**
_class 
loc:@BatchNorm_6/moving_mean*
use_locking( *
T0
�
)hidden6/BatchNorm/AssignMovingAvg_1/decayConst*
dtype0*.
_class$
" loc:@BatchNorm_6/moving_variance*
valueB
 *���=
�
'hidden6/BatchNorm/AssignMovingAvg_1/subSub BatchNorm_6/moving_variance/read,hidden6/BatchNorm/moments/normalize/variance*.
_class$
" loc:@BatchNorm_6/moving_variance*
T0
�
'hidden6/BatchNorm/AssignMovingAvg_1/mulMul'hidden6/BatchNorm/AssignMovingAvg_1/sub)hidden6/BatchNorm/AssignMovingAvg_1/decay*.
_class$
" loc:@BatchNorm_6/moving_variance*
T0
�
#hidden6/BatchNorm/AssignMovingAvg_1	AssignSubBatchNorm_6/moving_variance'hidden6/BatchNorm/AssignMovingAvg_1/mul*.
_class$
" loc:@BatchNorm_6/moving_variance*
use_locking( *
T0
�
hidden6/BatchNorm/IdentityIdentity(hidden6/BatchNorm/moments/normalize/mean"^hidden6/BatchNorm/AssignMovingAvg$^hidden6/BatchNorm/AssignMovingAvg_1*
T0
�
hidden6/BatchNorm/Identity_1Identity,hidden6/BatchNorm/moments/normalize/variance"^hidden6/BatchNorm/AssignMovingAvg$^hidden6/BatchNorm/AssignMovingAvg_1*
T0
N
!hidden6/BatchNorm/batchnorm/add/yConst*
dtype0*
valueB
 *o�:
p
hidden6/BatchNorm/batchnorm/addAddhidden6/BatchNorm/Identity_1!hidden6/BatchNorm/batchnorm/add/y*
T0
T
!hidden6/BatchNorm/batchnorm/RsqrtRsqrthidden6/BatchNorm/batchnorm/add*
T0
`
hidden6/BatchNorm/batchnorm/mulMulhidden6/Relu!hidden6/BatchNorm/batchnorm/Rsqrt*
T0
p
!hidden6/BatchNorm/batchnorm/mul_1Mulhidden6/BatchNorm/Identity!hidden6/BatchNorm/batchnorm/Rsqrt*
T0
i
hidden6/BatchNorm/batchnorm/subSubBatchNorm_6/beta/read!hidden6/BatchNorm/batchnorm/mul_1*
T0
s
!hidden6/BatchNorm/batchnorm/add_1Addhidden6/BatchNorm/batchnorm/mulhidden6/BatchNorm/batchnorm/sub*
T0
>
logitsIdentity!hidden6/BatchNorm/batchnorm/add_1*
T0