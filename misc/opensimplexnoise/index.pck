GDPC                                                                            	   <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex             �y�.'�T�ۄ��?(   res://OpenSimplexNoise_Viewer.gd.remap  �/      2       �Уs1���F���k�$   res://OpenSimplexNoise_Viewer.gdc   �      �      !g�#,�5��WXm��$   res://OpenSimplexNoise_Viewer.shader�      o      L�6���\rS�JC��M$   res://OpenSimplexNoise_Viewer.tres         �       �@F�0��f-j���s$   res://OpenSimplexNoise_Viewer.tscn  �      #      ��#m�rw���d��}   res://icon.png  �/      �      �x�s�$���v+��ㅍ   res://icon.png.import   0-      �      �����%��(#AB�   res://project.binary�=      �      �����,�����J�e��    GDSC   $      G   8     ������ڶ   ��������Ӷ��   ��������Ӷ��   ����Ӷ��   ���������������Ӷ���   �������������������Ӷ���   ������Ӷ   �����϶�   �����������������Ķ�   ����������ζ   ����Ӷ��   ����������������ζ��   ���������϶�   ������������ζ��   �����Ҷ�   �����������������ζ�   ����������Ӷ   �������������ζ�   ������Ŷ   ���������������������Ŷ�   ���ض���   ���ζ���   ��������ڶ��   �������ڶ���   ���������������۶���    ������������������������������Ҷ   �嶶   ���������ض�    ���������������������������Ҷ���    ����������������������������Ҷ��$   ����������������������������������Ҷ    ������������������������������Ҷ(   �����������������������������������Ҷ���$   �������������������������������Ҷ���$   �������������������������������Ҷ���$   �������������������������������Ҷ���               	   min_value      	   max_value      J   https://docs.godotengine.org/en/latest/classes/class_opensimplexnoise.html       �                                                        	      
          !      "      (      )      4      ?      J      U      `      a      b      f      g      h      n      o      z      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8     9     :     ;     <     =     >     ?     @   !  A   %  B   &  C   '  D   .  E   2  F   6  G   3YYYY;�  Y;�  YYY5;�  V�  W�  T�  T�  YYYY0�  PQV�  �  W�  �	  T�
  �  T�)  �  W�  �  T�
  �  T�  �  W�  �  T�
  �  T�  �  W�  �  T�
  �  T�  �  W�  �  T�
  �  T�  Y�  �  �  PQYYY0�  PQV�  �  ;�  P�  Q�  �  ;�  P�  Q�  �  ;�  W�  T�  �  �  T�  P�  R�  Q�  �  T�  P�  R�  QYYY0�  PQV�  �  �  T�  P�  QYYY0�  PQV�  W�  �	  T�
  �  P�(  P�  R�  QQYYY0�  P�
  QV�  �  T�)  �
  YYY0�  P�
  QV�  �  T�  �
  YYY0�  P�
  QV�  �  T�  �
  YYY0�   P�
  QV�  �  T�  �
  YYY0�!  P�
  QV�  �  T�  �
  YYY0�"  P�
  QV�  �  �
  �  �  PQYYY0�#  P�
  QV�  �  �
  �  �  PQY` shader_type canvas_item;

uniform float min_value = -1;
uniform float max_value = 1;

void fragment() {
	// Get the color.
	vec4 color = texture(TEXTURE, UV);

	// Compare the value.
	float gray = color.x;
	if (gray < min_value) {
		color = vec4(0, 0, 0, 1);
	} else if (gray > max_value) {
		color = vec4(1, 1, 1, 1);
	}

	// Write back the color.
	COLOR = color;
}
 [gd_resource type="ShaderMaterial" load_steps=2 format=2]

[ext_resource path="res://OpenSimplexNoise_Viewer.shader" type="Shader" id=1]

[resource]
shader = ExtResource( 1 )
shader_param/min_value = -1.0
shader_param/max_value = 1.0
      [gd_scene load_steps=5 format=2]

[ext_resource path="res://OpenSimplexNoise_Viewer.gd" type="Script" id=1]
[ext_resource path="res://OpenSimplexNoise_Viewer.tres" type="Material" id=2]

[sub_resource type="OpenSimplexNoise" id=1]

[sub_resource type="NoiseTexture" id=2]
noise = SubResource( 1 )

[node name="OpenSimplexNoise Viewer" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = 24.0
margin_top = 24.0
margin_right = -24.0
margin_bottom = -24.0
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="SeamlessNoiseTexture" type="TextureRect" parent="."]
material = ExtResource( 2 )
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -196.0
margin_top = -256.0
margin_right = 316.0
margin_bottom = 256.0
grow_horizontal = 2
grow_vertical = 2
texture = SubResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ButtonsContainer" type="VBoxContainer" parent="."]
anchor_left = 1.0
anchor_right = 1.0
margin_left = -137.0
margin_bottom = 44.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="DocumentationButton" type="Button" parent="ButtonsContainer"]
margin_right = 137.0
margin_bottom = 20.0
grow_horizontal = 0
text = "API Documentation"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="RandomSeedButton" type="Button" parent="ButtonsContainer"]
margin_top = 24.0
margin_right = 137.0
margin_bottom = 44.0
grow_horizontal = 0
text = "Random Seed"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ParameterContainer" type="VBoxContainer" parent="."]
margin_right = 280.0
margin_bottom = 136.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="SeedSpinBox" type="SpinBox" parent="ParameterContainer"]
margin_right = 280.0
margin_bottom = 24.0
min_value = -2.14748e+09
max_value = 2.14748e+09
allow_greater = true
allow_lesser = true
prefix = "Seed:"

[node name="LacunaritySpinBox" type="SpinBox" parent="ParameterContainer"]
margin_top = 28.0
margin_right = 280.0
margin_bottom = 52.0
step = 0.1
allow_greater = true
prefix = "Lacunarity:"

[node name="PeriodSpinBox" type="SpinBox" parent="ParameterContainer"]
margin_top = 56.0
margin_right = 280.0
margin_bottom = 80.0
min_value = -100000.0
max_value = 100000.0
allow_greater = true
prefix = "Period:"

[node name="PersistenceSpinBox" type="SpinBox" parent="ParameterContainer"]
margin_top = 84.0
margin_right = 280.0
margin_bottom = 108.0
max_value = 1000.0
allow_greater = true
prefix = "Persistance:"

[node name="OctavesSpinBox" type="SpinBox" parent="ParameterContainer"]
margin_top = 112.0
margin_right = 280.0
margin_bottom = 136.0
min_value = 1.0
max_value = 9.0
value = 1.0
prefix = "Octaves:"

[node name="ClipContainer" type="VBoxContainer" parent="."]
anchor_top = 1.0
anchor_bottom = 1.0
margin_top = -52.0
margin_right = 280.0
grow_vertical = 0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="MinClipSpinBox" type="SpinBox" parent="ClipContainer"]
margin_right = 280.0
margin_bottom = 24.0
min_value = -1.0
max_value = 1.0
step = 0.01
value = -1.0
prefix = "Min:"

[node name="MaxClipSpinBox" type="SpinBox" parent="ClipContainer"]
margin_top = 28.0
margin_right = 280.0
margin_bottom = 52.0
min_value = -1.0
max_value = 1.0
step = 0.01
value = 1.0
prefix = "Max:"

[connection signal="pressed" from="ButtonsContainer/DocumentationButton" to="." method="_on_DocumentationButton_pressed"]
[connection signal="pressed" from="ButtonsContainer/RandomSeedButton" to="." method="_on_RandomSeedButton_pressed"]
[connection signal="value_changed" from="ParameterContainer/SeedSpinBox" to="." method="_on_SeedSpinBox_value_changed"]
[connection signal="value_changed" from="ParameterContainer/LacunaritySpinBox" to="." method="_on_LacunaritySpinBox_value_changed"]
[connection signal="value_changed" from="ParameterContainer/PeriodSpinBox" to="." method="_on_PeriodSpinBox_value_changed"]
[connection signal="value_changed" from="ParameterContainer/PersistenceSpinBox" to="." method="_on_PersistenceSpinBox_value_changed"]
[connection signal="value_changed" from="ParameterContainer/OctavesSpinBox" to="." method="_on_OctavesSpinBox_value_changed"]
[connection signal="value_changed" from="ClipContainer/MinClipSpinBox" to="." method="_on_MinClipSpinBox_value_changed"]
[connection signal="value_changed" from="ClipContainer/MaxClipSpinBox" to="." method="_on_MaxClipSpinBox_value_changed"]
             GDST@   @           �  PNG �PNG

   IHDR   @   @    `�U   sRGB ���  �IDATh���O�dYv���{/��2"�OeVu��{�c���l�B� B��`#XB��鲄`�����]-� BBb�K$�d1�Ć�G�a�U����3���x�XtvWuwu�Gk�6��չ�s�����
��?�_��Qg�sx=�~�/J��t~rp��گ�-��������a�-2����"�j�H�NV��������샻ùk?6�Phصcc��]L�d
������y�3�����pc������"]m;R�Ի�2u�F-�2we|R?�?�' ��Q���Q�б�9�̕2�]]�TK��R���LSnj�V�;~��������,����>��Z:�m��HϾw�
4Dr����Ln��n�9w+�9
N��uѿ�ʟ����b���Z��iefab�[�@*sg�ܭ��P"�T��[[��?�����U*_����ht���4���m�\�mhGO���VH^�h*Z[vmlt�:�2���G����௎^���2+�w�m+�6r�Pj�D[Cf�V�k����$:j=-����织�nx#��$ej=ks����b����������L�P�Z���7��z�J�����_�z�	�>�G�z ���/�LT6�M�TzZr����D��Rky�=m�]�𶡙�P,����G_V��	���?�7��ֲoOC*�X���i����ZBcw2���h���̜�XZ���_���_���P~�(��-�5�t��rM�\n�o_ �ԓ���SK-��J�5|S�k�b��Z������(>i�VZX�8��vfm.�V83���#K?�C�����*��[�yᩩB&�RZj�9��kf��	O��*ck��hٶ25�̕T-��ecf#����xK�V(7�T(ݺ��ӵ�Q�O�������Gg.P��X�ݺiiڒ�ֳ��KT���3wr�@SS,U�p�в%P����:�b����1��0Ѷ�\%�Z�l�����%vl,�l4DR��+���Wb��H�)i�����~��p��K/%����$��T��%Ӓ�p�Rnd_n�����hY�
�r�Ե���L�����=�_��'_��䃩���X�+ն�ca��!�#��ܸ�x���t 51���h�R��{`(���s���S��G�7F��/ݘ�j��P_O�S��jc3O=��(=P�ʵ�M��4ȥ��L��e2�==����G��E :J�{�\~��Ie��Sc�;	6Z:b�b��պJ�=���J�Jh�26�C���ɑ_H�R;rs7fz�v����*��TS�΅�]]��V"�Eb=Dh�R+�eGKWfa�E��a��N$��T��Z�Ub�;���DhǞ������RGCl_O�L��+�Ė=MS�
���f�?8껓�	�6j����D�+���;�P%���%��<�$�m��X!76�H�VSOC�ع�ʍ��v�ߎ��Q۵J�i�֔,���P�Fö����R�L)��R	�
����Ե����=V� �c��e1����c��R�/P�̩k+}]M�Śv�*�pea��(��sK�&��*�ZjM�--���~���XG�BClK�̝��r��U��+�ȝB��X�ƹ���-mk�����Zn`W�­���B��z&�+d�� .��m����D��R�TC�i�T�tD
���L鑎�ƍ���B�!�s��pc��'��!s���U*=�rw&*������ĩ���J���АX�=���[*�M�V�M�\Y[+�-]*�u0��ʂ�
3k�J�Riz(��rf#˕Hmj�P�o��\��X����LG��X�Z�+t����5��ҳ't����(ܡR��J=��Jaf�[J�Zf�Tee�B*�Kdf���J��W ���R(���2�#RZ�Yj[i�Qi��Y�-e���:v�΅�}%hZ�iY�����XX��1"��~�27����^�J��B���B$Ֆ��j/]	%"��CM����ʎ���Dj/\���7�J�̙�����r3�6b]���-m�J�'��P�#�,U�X�2p�Le,ն�c��4���3���D_-�43��h�Wkj(T�U�ĵ�T�Z%�2Ѵr��ɵ
K���ܕs�H&��ґ���X��8�N������Jj�076�?Vo<�tc�!���1��R&�s7V*��JK��J�Ɲ�P`׮w������U�ө;-��4-��tL��6z�n��u|CS`��܅R��Ԕ�T�UkX�H�B�ܖ_�ЁصkS��������d.t���rkc��ZC�i�ۚ
]MW�R�Bm�Rh[[G ב
��2�kז�ԥ�ʎ�>~�>0<�gBs�:�@ab�������x˞���č�X�ڭ;��ԝ���l����:b��
��/����0��P�Gؕ[Y�1Ȕ��j����FO(�2���kZJ��K�XG��[J,�ǟȎ=YXXX�Ҳm�F��1cl�ZK��*�JK�J����mc���s�H-�Iej��� �����ԇ��R������H`%S���b3�Ԯm��X&�%QIt�k|Gdbf��DG��́G�6'��s \?n�`n-�x�;bs�������B�������\�д-P��(Eb<��B�!�g)�g��o��񧺟����ć�ʮ���Gr�ml[{.�]}}��=M��B�L!��Qi�+l[����Ғ���|��K ��8�A.0��k��Ў�S7�7ݕ��Ў�J)��FKW�R��P�(\�ZB��Pێ��ǯT_�<:~�w��i�m]���m}��������B�hj	���\b�)7SJ�:ձ�ky��_�~�?�z?9�R3��@��X%��T[�h��:��>���g������m�H&Vh���:�~���4?�#����}�Uƞ�V��Dfn!��ܙY�дt�ʙ�D��TGj!T����Z������/�O_���������4L��������Hj[˞}SSj���Bמ[��ɱV�t�څJi���o|�9�/�	��?eGK�L��bt��]�D�n�΄�2��Le�B_)��0�X[���_�{C��3=mj)B�������J%�oXf�L��U^:��;7�h�$�oȍ�ƭ�8����Wt��í�Xal�@Ol�Թ;���;O����
l���"=�-4������o��U�������h�V����K����;�����M�̴��t4e2��������ƹ��,������:b�H���mc���ХʮK��=}m����������[G�'��Hm�%ƕ��J�P��lT��<u��mKM�����,�'�l�;
��w4��5s��Ė�'��=]{���}lf.���S�:������	�V���Av8t珝�ұp�%��-�޻o��?2Wh=�9i=���vh���χ���KW�*/-u���-M��G�SO�R��I���Y��>]ǣ�����a��j��s::X[̌OzǷ�oJ�?5�������G��oy[(X�ܝ�O�N��rt�g�~�����#2�t'�    IEND�B`�[remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://OpenSimplexNoise_Viewer.gdc"
              �PNG

   IHDR   @   @    `�U  hIDATx���[�myz���8�1�<�9�a��fuw�z��`6�x�(�.V5���H#R�"�!ӈ��; ����W��\�z
��������:��s����ݝSAt��/�x����~��������N���������:T	ϓ����?u�G��fקw���J��Ƒ�Za���֝N���yq����ŗ�_����@`����nJ{_[y)Wϓ��ٳ�O?���_���������V(���W���4*#�J�r��(l�W����݇�}�����ɳ��Fjh+W�\y�V�%vZ}\Ʉ���TV
ݼ��_<{��o^�� �<���nV	����j�G:K�X�2�٫T��'�X[�y`x̿��;g?�_}v��/��xl(hu���K�>X���(UhE&z6BGƳ���~��Ob��<;-l�l�xO�8tl��*��2��J=�@_���Ri��c��ߚ}��� ���^��&r�F�;�iTJ�J(sli �[�U)����\j�3��N��8����8<�f����F���VI$"=[��D��X��#{L��Y������,=��8��?����c�K#�kC��X�����v�*�B�o�	'��l�b�|��?����@���lz��ЁJ�Xf(҉��Ae�P+R��5Z��2�b�����;�N-��O���[O_��w����626�����^,��T�}_5�:щ���֭O�[��s��}��g?�����@!�^�ЉNaoc�S{e�r`j�ﱝ�G�����Y[ZX��r}����g���]���`F���ޭ	��V>q%�	=�WZ+UJc�N�c�J�
U�vj�[�r��J�l���?����ӭ�Dcm)0t�5���2G"�O��>�q�N�@OO"S�T��t{�X+����??� ���4p�V&��:��2��jwr�C�Xi�P�E2��K�[��Nߍ+�D)��D�N>������|�T.�9�Le^Z�wy�/���Be摑�#K;�F��J�S�d�݊������N�������򣕵��Dg$3p`hko,V9)T7��>Q;�x,�t(��F��J�XO�C)����dz��kp�wf����-��yh�okmlj��N.�PI�j�U����u���:�9PX92���s�w/� :�<��k���y ���B�V�rwR�����$b���i���$
}�С����1J�SϿ =��l�X9V�H�*���ΝK[FFL��"��EcD��jS��:�7��Z�0@<��݉dJ�Hkd��J+Q�S��R�c���J��P,����Z�V��%vcC����j��7����Ӊ;��P�����H5^��ܺK�Z���H%��Tޗw �[�U�#t�g,[x�R����O���=@4��J�luzR��F*��݈YY�m5�����V(TKm-�V�;6�X��
+������T�ј�x%116QZ虘�܊k5^��zzJ��@�����ab�x��NO�����X
��lgC[�ā�+w���t�O����;���J��kk=�Z����Ne�D�ҭ���Z��D�R��V�rH�ɵJ������J,ҳ��D�"[�J,��x�P�t�'�������Xk=�ȭ���C3��5�U��������.�o�J���il�R[�CO�*{�jK��k+�+{{���7jC,�o_�C���V+�j�<��*�R
%*2�Z�
Ľ�֢��!������Z��+���ׄ�ժ� �=}c�n���]�jwh��Fl,(�֎��y�o-�ȴ
��P%�[K�FZ��޼H��vB��ȁ��c�����@!v��1�J��z&����^���Iг��W(
TƦBǶ�o�"A����߁܍�}_��	e�2�P����:�N�SWB�H`��֡޽P�����KWo���yi�Q˽��[��v��X��TZ��LO���}b�������S���Z���5��p{����v��*K}�tzb�ֵV*������i�
K=�7��J_���S�\y���*�*k+�#�����4ZY)d�j���z�;7b������O�R/�q��jd
}}K��ҝB(p��W�g�S~�����ʝ�Wzv^�-evJc�7�&F�����#��K��@�'�F�D�ojo)s(�U�IO<��vm%�z[��q�^㵝r������X'��9��H�ԕ�L��Yy#td`(P���q�ā��+�c�>��{�𼛯�6Z���R��H�H'��
��ҍ�D�ڭ;��ʝco<�@��Zi(84�(]�ҩ�?x����yh�
�=t�R�;6�5b��Fn�4���bC����\ ��HuZ�����Vs� ��g[����}G)U:C+�@��^�1�:�؉m�k��=6��Ul��tB�L��d?�.��y7��5j����
�F���X�dN<6*%r��Vjt?�"Kk�7��2��{ǁ�@y�s?��?�wc/����Jl�2���O]ɄNLd���f��ƥ�#����R#��'�"��;��&&V�>�=��ߜp��k�S屮P:RXx!��G�z:{��+�H`�Xk`�6u`a'�w���������?J��a��J`�����K�c���_���Ρc�B#�N�o$Ԫ�u�j��2}��@h�X�������:<�Hgm��@���P�'QXb/�Y��Z���Pr��+C}���ȡNpG��=�3�?�(����,���(7Z����B�ԓ�M�|�7���S�}��"�D���P�������8��/������ΧjC}7v��v�W�,u��ȝK��֍F*��zdhg���c���韻�}<�_8�O��v^	ur}[76��-�k���đ[��;�؍;c7�����N,\۹5U��������ͧ�6�OwR�K�.%��k��F*ƭ[�WB;��V��qi�Q�,\޻-{����|�_z������P(6+j�V$ш��,%�q)�Ty t$�J�*�J[[�^$O��S�̧���=c���#[��{�&���+��F_d��;v�b�����x��_Ԫ}v�_�����i��=�%���
wB[}c���k-B��{9	Tg��_�����_~�o=[024��LU:w����^e����K���S�V����7��y�x�W��g��Dg%č+{���N�ӿw�K��n�{��N��b����~��俞}�<|6<��Y{me�@`�z`(0ӓJ�46V�����]?���?Df��/���烏F�Cw
{=[��@���M�F{/MG���u�%�f��7~k�������Z;��^+s��@��HLd����Ͽ��~��7�f����f�����N�����"8<�ݞ}��.���s��G��Y5��F���R`~w19�\��?���w�q�g������+���    IEND�B`�               ECFG
      application/config/name          OpenSimplexNoise Viewer    application/config/descriptionx      m   This is a sample project which allows the user to tweak
different parameters of an OpenSimplex noise texture.      application/run/main_scene,      "   res://OpenSimplexNoise_Viewer.tscn     application/config/icon         res://icon.png     display/window/dpi/allow_hidpi            display/window/stretch/mode         2d     display/window/stretch/aspect         expand  $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2                       