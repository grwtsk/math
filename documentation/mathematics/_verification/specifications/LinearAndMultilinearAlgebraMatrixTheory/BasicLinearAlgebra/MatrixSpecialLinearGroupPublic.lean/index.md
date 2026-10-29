# Verification target: Matrix Special Linear Group Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d914df37d8f5cc56decaa61e4c4d66345ce4c4a3",
  "lexical_observation_count": 114,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variant599adc0a91fd1a4751e5064f8a6104be942c11270d2029449440851e1018e2aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d914df37d8f5cc56decaa61e4c4d66345ce4c4a3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variant599adc0a91fd1a4751e5064f8a6104be942c11270d2029449440851e1018e2aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SpecialLinearGroup/Variant599adc0a91fd1a4751e5064f8a6104be942c11270d2029449440851e1018e2aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SpecialLinearGroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/speciallineargroup.md) | 70 | `declaration-track:7e3733298e1920df5dcf7f40dd6ef0ed5e573e96b7313522fc1e10b020204646` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/instance-source-edition-4.md) | 83 | `declaration-track:5e5f682c1ef7afa31013263741137d684784bef254a003b091383faf696c3b34` |
| 3 | `instance` | [hasCoeToMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/hascoetomatrix.md) | 85 | `declaration-track:41501031fa71797fc9c29ab11f27bfc88b542487a31bd566721952c2611126ff` |
| 4 | `instance` | [instCoeFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/instcoefun.md) | 99 | `declaration-track:ea81904d896ab8b551aff445f4ffb93061b90b5f1a456fc3f918278a162abf99` |
| 5 | `theorem` | [ext_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/ext-iff.md) | 103 | `result-track:acfc6399b46b120b13c5267bfdac32248180b4284299dda5374d257c22fd8ec8` |
| 6 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/ext.md) | 107 | `result-track:515538ad1711e3172eb914000400ee6fc5f4cb731fc0581fec99075f1b56fd8b` |
| 7 | `instance` | [subsingleton_of_subsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/subsingleton-of-subsingleton.md) | 110 | `declaration-track:90db7aad59d2956bc379894405bffc47812acafb51f33b9eecdaf78c4f60fbdb` |
| 8 | `instance` | [hasInv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/hasinv.md) | 117 | `declaration-track:5dc0e9809a187297252c52cff34dad1e3283667c99995e47b4df6069ff038d96` |
| 9 | `instance` | [hasMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/hasmul.md) | 120 | `declaration-track:37065aaccf52764f0d06f59cb0b2435041b338c17f88f1c87a522203ace77880` |
| 10 | `instance` | [hasOne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/hasone.md) | 123 | `declaration-track:acb0c17acf2d8825c10250a71822b2f283b694e83e19d2bd02e86dff66343d94` |
| 11 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/instance-source-edition-8.md) | 126 | `declaration-track:d0acd628583bcadbe7dc955cac25d1f431b50e7bbf0dcf86e67a17dc66740bdc` |
| 12 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/instance-source-edition-3.md) | 129 | `declaration-track:40016e6cdda948829bc6cc5a28ad17dfa73ae2761fb50962ba0802927fd7675d` |
| 13 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/instance-source-edition-5.md) | 132 | `declaration-track:7c92a1f01776565a73c20f6618a76db2cb5093a75d1cab967e6b02efa350ac4e` |
| 14 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/instance-source-edition-9.md) | 133 | `declaration-track:f8772fd7a20fcc2985f8e704289778c7425e94a03be3744b94d30ecd1397b268` |
| 15 | `def` | [transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/transpose.md) | 136 | `declaration-track:b0cc7265c7cf982e817924b5fa61b3d1b4586c5a8934f09d520a9dee4e3c73bb` |
| 16 | `theorem` | [coe_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/coe-mk.md) | 146 | `result-track:2f34f264eb39dede65464226f487cea7e0c5caf02dcf5dcbbc51858ea313d34a` |
| 17 | `theorem` | [coe_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/coe-inv.md) | 150 | `result-track:fbdced5786d903b6ec11c323e9ba14cfc2befe5b62b9ff48c67d974ee6d82db5` |
| 18 | `theorem` | [coe_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/coe-mul.md) | 154 | `result-track:d9573a802a14f118361acbe41ab1098a7d313a9d71d8dd7c5247ebe0264436f9` |
| 19 | `theorem` | [coe_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/coe-one.md) | 158 | `result-track:d418a6a316b8ae104a9644ef92195859962c123c169e7ec26bcb7ee0f18d965c` |
| 20 | `theorem` | [det_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/det-coe.md) | 162 | `result-track:3637b8c0ba065f2956c005c18027d25880255cd967f5e6439f3238493b3d4751` |
| 21 | `theorem` | [coe_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/coe-pow.md) | 166 | `result-track:dac352f272b3d2a04831d6e44bc610bc8f78fe10ca61c4a02e353460d3bcc252` |
| 22 | `lemma` | [coe_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/coe-transpose.md) | 170 | `result-track:24cc844a648edc364f0c321b6c1e8725af4fecb711a757998b43ce5ff3e0d5ee` |
| 23 | `theorem` | [det_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/det-ne-zero.md) | 173 | `result-track:38e8ae89d180e14e404ea07e4c1a2a3fec475ec9c9898eef43819e19afb3c0c8` |
| 24 | `theorem` | [row_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/row-ne-zero.md) | 177 | `result-track:191d9d71e2f1c94c9c423d2c1b84cdfdcb97464f954a4944f72d02a0b967d055` |
| 25 | `instance` | [monoid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/monoid.md) | 182 | `declaration-track:bb995ab4aa82341adc0336f0f3d2b28bcc56e5f4824c68711ccf129c977bd969` |
| 26 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/instance-source-edition-7.md) | 185 | `declaration-track:ba30f8ce1ecb085b8ad9a75eae33ce3541851715a33219b03a1c5d7e1705dc18` |
| 27 | `def` | [toLin'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/tolin.md) | 192 | `declaration-track:24fde910ca72c8b5318e852740ff1c3913646262b5f98dc765b922f06bf9c6da` |
| 28 | `theorem` | [toLin'_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/tolin-apply.md) | 200 | `result-track:06e90f1f8cadfb6d06222729747803c76982c1e5510eccd7f70d0637d3dc8c70` |
| 29 | `theorem` | [toLin'_to_linearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/tolin-to-linearmap.md) | 204 | `result-track:8e31fe3eb06f6d32ed9db40e4d1494f79dac2f71436e72617aef66d6e2b46db7` |
| 30 | `theorem` | [toLin'_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/tolin-symm-apply.md) | 208 | `result-track:4ea1e841230fe260461925526e063d4df7a42337a10d3165d43380deec4d967a` |
| 31 | `theorem` | [toLin'_symm_to_linearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/tolin-symm-to-linearmap.md) | 212 | `result-track:123dfbe8813265b96989bf1aa10f70cb666fdb9495ce6be7cd135516947dcfe8` |
| 32 | `theorem` | [toLin'_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/tolin-injective.md) | 216 | `result-track:bbfb708b6e65d88abdbffcb6cb6e9d3763b7a169c547cf2a28f2611eec1d6066` |
| 33 | `def` | [map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/map.md) | 225 | `declaration-track:8155324c88a35b6315e9b4944c87fabe49400323f5bec836fd72ac5392792f8b` |
| 34 | `theorem` | [center_eq_bot_of_subsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/center-eq-bot-of-subsingleton.md) | 238 | `result-track:777d944d47e80a4ca61ef15d698ac435fa514deb74c107830a2441f039194a8b` |
| 35 | `theorem` | [scalar_eq_self_of_mem_center](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/scalar-eq-self-of-mem-center.md) | 242 | `result-track:20b7d638d363331452625ecc7097e8ad34cf5e40461164079ec9fcad5a7956cd` |
| 36 | `theorem` | [scalar_eq_coe_self_center](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/scalar-eq-coe-self-center.md) | 249 | `result-track:b3a3c42af25de72ed241df22db3e8e515feddb1f59adf7dc50b3943f906077a7` |
| 37 | `theorem` | [mem_center_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/mem-center-iff.md) | 256 | `result-track:4c24a02a4dbdd87dc4c8c5446c53243d35f9915c1acf8f3cb6b18cb166876065` |
| 38 | `def` | [center_equiv_rootsOfUnity'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/center-equiv-rootsofunity.md) | 269 | `declaration-track:356a3d00c5efafca3d7ac8fde87d5b42b5cb6fee3a7ffbd85a435f4f9c85270d` |
| 39 | `def` | [center_equiv_rootsOfUnity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/center-equiv-rootsofunity-source-edition-2.md) | 297 | `declaration-track:3c063d6041e083366bc2606339bed6d7503a0593b64c71b9891c5fb6ff67d6fd` |
| 40 | `theorem` | [eq_scalar_center_equiv_rootsOfUnity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/eq-scalar-center-equiv-rootsofunity.md) | 308 | `result-track:ba866e9672d620a9a0f8d773fc87907e47b3ea1879699b717d581e6ec2b76377` |
| 41 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/instance-source-edition-6.md) | 326 | `declaration-track:b4c847fe6ab6c1ce14794a9a32fcad2dc537bb06fc2b816e7019d57d55984a47` |
| 42 | `theorem` | [coe_matrix_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/coe-matrix-coe.md) | 329 | `result-track:9a04fdcb82ab2f81f6841830c71fdea01481960e980d0f8a1e9c0e9a259864b6` |
| 43 | `lemma` | [map_intCast_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/map-intcast-injective.md) | 333 | `result-track:2e35c644dd439f4144394b2f666687a5f941968b078973ae20527b53bb2511e5` |
| 44 | `lemma` | [map_intCast_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/map-intcast-inj.md) | 340 | `result-track:668ed5c4e80c41b46c2ac4d9e0837e3237e2357d8573f4e99a73fa9589d791bf` |
| 45 | `instance` | [instNeg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/instneg.md) | 352 | `declaration-track:d6aec260ba1d72ced45cd0fc5b05785a197fef0c398ca45104c651fa873edbf9` |
| 46 | `theorem` | [coe_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/coe-neg.md) | 358 | `result-track:2f73b7586c670db227fa1170f060c6f2233cfb94e643539eeab89c707de9966d` |
| 47 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/instance-source-edition-10.md) | 361 | `declaration-track:fbf8204330d85beacc84b2cc4565736c44ca9b68d4796b60726a624de97d123e` |
| 48 | `theorem` | [coe_int_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/coe-int-neg.md) | 365 | `result-track:5fb60aa45dd94d45c5413077c25cf0f98b0626d878328eb38b3850c621418c33` |
| 49 | `theorem` | [SL2_inv_expl_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/sl2-inv-expl-det.md) | 375 | `result-track:a4f0dc22d5e9c8aa2f794f7e6f23f8983df19c9a316bbb499443e1818eb8674e` |
| 50 | `theorem` | [SL2_inv_expl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/sl2-inv-expl.md) | 379 | `result-track:4696ea0f3fba35a6874c849e2d66181297330bc03a29daeb3e6540e291dbdc1d` |
| 51 | `theorem` | [fin_two_induction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/fin-two-induction.md) | 387 | `result-track:70cf7c7496ff00c3e8e282689a516272b5227aecea80d4e61ae6824c413bdd8b` |
| 52 | `theorem` | [fin_two_exists_eq_mk_of_apply_zero_one_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/fin-two-exists-eq-mk-of-apply-zero-one-eq-zero.md) | 395 | `result-track:9328f63cec83bb5653e667db9efe5ee04fd514fcd2a019cb1214a832d021f169` |
| 53 | `lemma` | [isCoprime_row](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/iscoprime-row.md) | 404 | `result-track:ad78d1127e86c8409143f16123205e38edbe8f6f5cffc8512b66243d773260e9` |
| 54 | `lemma` | [isCoprime_col](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/iscoprime-col.md) | 411 | `result-track:3092ddb9fa816c245de9162c12fff9a68928d50bf3043aee8844619241fe8088` |
| 55 | `lemma` | [exists_SL2_col](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/exists-sl2-col.md) | 434 | `result-track:5903104526839d857a244b5951e872c59583a53c3770b5b003a43a49dc8cee27` |
| 56 | `lemma` | [exists_SL2_row](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/exists-sl2-row.md) | 445 | `result-track:addbfb5091a72590c233610cd5199be7df49f94566cc4462742b03398dd2abeb` |
| 57 | `lemma` | [vecMulSL](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/vecmulsl.md) | 456 | `result-track:5a4bf0bc551dac6948373ac11f5ae367f751007d6125676618adb46a71b6f46d` |
| 58 | `lemma` | [mulVecSL](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/mulvecsl.md) | 464 | `result-track:1d461b4f075a15b23325d70c0597bd1e3cf2982f5b6a2d71d734152752feb0c4` |
| 59 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/instance.md) | 476 | `declaration-track:0eee7b95ac9ec32527fdd05d4ef9f62bb7c19c82a0171ce14e1a1adb0e65a341` |
| 60 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/instance-source-edition-2.md) | 483 | `declaration-track:34b57ad91a7286ef706a39204cca53e571976955aecf19928ffc139ef015af51` |
| 61 | `lemma` | [SpecialLinearGroup.smul_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/speciallineargroup-smul-def.md) | 486 | `result-track:5c1969cd69b4b73288d74023408ba3c85d45a5f207a0698210fd5d554f1c026b` |
| 62 | `def` | [SpecialLinearGroup.transvection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/speciallineargroup-transvection.md) | 498 | `declaration-track:1ea8f24ebab912a86eb9597e333cff91f2b2c9b836534c44cd80f1e6e98fe745` |
| 63 | `lemma` | [transvection_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/transvection-coe.md) | 504 | `result-track:947b4fc195f0da7cb2f3c3f2ded3a9bf5fe0dab6ef7a0dc9444a37b6324f2608` |
| 64 | `lemma` | [transvection_coeff_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/transvection-coeff-zero.md) | 508 | `result-track:3ececef3a7bdeecb6e81da0ac09ad20b8055c3d29812b22f6a6d9d0aee64d554` |
| 65 | `lemma` | [transvection_smul_single_fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/transvection-smul-single-fst.md) | 512 | `result-track:1d1ab2c4cca623eae432cf822a697b1e39afa9d98e00356eed382fd6bad53623` |
| 66 | `lemma` | [transvection_mulVec_single_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/transvection-mulvec-single-self.md) | 518 | `result-track:072d5cc26430f3c942d005227f4f770a5d4069ee2d39d1253996fb617b4b3bf4` |
| 67 | `lemma` | [transvection_smul_single_snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/transvection-smul-single-snd.md) | 524 | `result-track:5b479b662e1b4d6c3d4264b986e060223d2a327cbd6424420387f72301075fa2` |
| 68 | `lemma` | [transvection_mulVec_single_other](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/transvection-mulvec-single-other.md) | 530 | `result-track:cd782a6da965314cf022dff21d81e9563873ac11ba714e21e50f909f9875d717` |
| 69 | `lemma` | [transvection_mul_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/transvection-mul-neg.md) | 536 | `result-track:06cab5db9175b14102b800a0f13e7efd6464861308519d30c062bbd505c992d4` |
| 70 | `lemma` | [transvection_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/transvection-inv.md) | 541 | `result-track:f7978e7b27468057b264036a5ec219e0389db836cdc6d87a91434f8401ada19a` |
| 71 | `lemma` | [transvection_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/transvection-add.md) | 545 | `result-track:1b5a9565abfb3b5e98b20e1aa350ff07797b52364b1cbb977ca0836802eced96` |
| 72 | `lemma` | [transvection_mem_center_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/transvection-mem-center-iff.md) | 550 | `result-track:ac5541e3a0cc6c2e3667fa858b57838048281b7bdec707b9d71005d82922a88b` |
| 73 | `def` | [toSpecialLinearGroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/tospeciallineargroup.md) | 564 | `declaration-track:6c18d88defaf883d180309dce775e1be0291774495fc61e20e4cdeea755fec0c` |
| 74 | `lemma` | [toSpecialLinearGroup_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/tospeciallineargroup-def.md) | 568 | `result-track:9f179d45bbe36ddbb97ffab2f86cc2aa65cc0a944096b6379230018a036e6150` |
| 75 | `lemma` | [toSpecialLinearGroup_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/tospeciallineargroup-coe.md) | 572 | `result-track:a44ff74e332e55f872586c20a7c0006b20751da32e5891e5d4bb21b4dd295dc6` |
| 76 | `lemma` | [toSpecialLinearGroup_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/tospeciallineargroup-mk.md) | 576 | `result-track:6dbc7dccb2042f40f13df80e4d829cd764c57be9340a885e0a69a13b54d933f4` |
| 77 | `def` | [diag2n](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/diag2n.md) | 594 | `declaration-track:60c665067ecda7f1991e8e765159a2118fed50d31ab540e3631b604fe6f66125` |
| 78 | `lemma` | [diag2n_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/diag2n-coe.md) | 600 | `result-track:75cb894dd90f1dbb1a4fbb2dd1dbaba499b82af2e1cff76f1f644778b1af9d95` |
| 79 | `abbrev` | [diag2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/diag2.md) | 606 | `declaration-track:0a5a11f1c5cc84d8f4227bfb8ae651d8b066e4b5fb54342c8220c87682f84989` |
| 80 | `lemma` | [diag2_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/diag2-def.md) | 609 | `result-track:4a878bfacbf6d771d08b69d2390a706325723ed542072e920cf4a2eda80ee097` |
| 81 | `lemma` | [diag2_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/diag2-coe-source-edition-2.md) | 611 | `result-track:8364b5a261acdc3aba3073fc17508e5ce74b177cb6806868ac2cedb5a391dd42` |
| 82 | `lemma` | [diag2_coe'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/diag2-coe.md) | 614 | `result-track:6929b0967e82f900cc3fd93dea5ab691b4af14b58a434876462020b40306d1af` |
| 83 | `lemma` | [diag2_smul_single_i₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/diag2-smul-single-i-source-edition-2.md) | 619 | `result-track:caebe0f7e5f28cf224db1ed901fb5229b2791481c58b9c89b84f835de1563a55` |
| 84 | `lemma` | [diag2_smul_single_i₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/diag2-smul-single-i.md) | 623 | `result-track:a7d5518f532db0e00c1059702717952540e011817d4cf566fbe75f0de618b7e3` |
| 85 | `lemma` | [diag2_mul_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/diag2-mul-inv.md) | 627 | `result-track:a316c0e1874c52f84a3498aabc89cb830359d8f31fb3e1dca3f1d0bd0798ca46` |
| 86 | `lemma` | [diag2_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/diag2-inv.md) | 631 | `result-track:7e50f7ecd7beadb7e4b793419f4a05ae9ff16b5c55149e5cb76904a08f419baf` |
| 87 | `def` | [coeMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/coemonoidhom.md) | 641 | `declaration-track:2b42d1b0c83493dd35be94516a67c946ccbd479c648a5b669985677ec5b20765` |
| 88 | `lemma` | [coeMonoidHom_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/coemonoidhom-apply.md) | 647 | `result-track:154ca5e8a08e16625b2909a419a4e1f61b6fdd4dee1a7953191ec4aeebdf1f41` |
| 89 | `lemma` | [coeMonoidHom_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/coemonoidhom-injective.md) | 649 | `result-track:08b7add1fdfbc9010dd637d298d0192986b5e232550b5893b16f45fcf9931e97` |
| 90 | `lemma` | [diag_decompose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/diag-decompose.md) | 652 | `result-track:1c8b73bd0f5281cac18e0066083344649650c712f4610fdb738afba4adb5c40a` |
| 91 | `lemma` | [diagonal_neZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/diagonal-nezero.md) | 663 | `result-track:501c592971290bdaa2869b1b8f2e70bcba2dd55a5edcce34977bac15c7cf4b89` |
| 92 | `lemma` | [diag_commute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/diag-commute.md) | 670 | `result-track:3c66729a18aa17b5afbd38115f251afa6a55dd02952e72f9c96446cd5bbd5030` |
| 93 | `lemma` | [diag_eq_diag2n_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/diag-eq-diag2n-prod.md) | 679 | `result-track:1ae018d478a1517f15d8d4da0021aef986c624907dfc54a55b59484284c47c79` |
| 94 | `theorem` | [exists_list_transvec_mul_diagonal_mul_list_transvec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/exists-list-transvec-mul-diagonal-mul-list-transvec.md) | 699 | `result-track:4fd25465fe3233c9917181079dd70870175de779f6ca8a8f5246abbe842554e8` |
| 95 | `theorem` | [diagonal_transvection_induction'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/diagonal-transvection-induction.md) | 708 | `result-track:a52ed1f1c1bb86da3d0b504def8ed8e7eb7cad7fba8de0e92399846d7d87dd9f` |
| 96 | `lemma` | [commutator_diag2_transvection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/commutator-diag2-transvection.md) | 736 | `result-track:a9484322789edc7c93ebd14e277c2d19ffacc91d7b70336a5b22586fa37d6372` |
| 97 | `lemma` | [transvection_mem_commutator₀](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/transvection-mem-commutator-source-edition-2.md) | 748 | `result-track:8f424fd3856e330c8827dbcc09c6b272fe63289f9da633b8ddb2a5dbf01874fb` |
| 98 | `lemma` | [transvection_mem_commutator₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/transvection-mem-commutator.md) | 754 | `result-track:8b633526fd0fc4e4dfa4fde6a7324aa3acdccf066c0aa4e97eb0adc85a9b4fb6` |
| 99 | `lemma` | [transvection_mem_commutator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/transvection-mem-commutator-source-edition-3.md) | 769 | `result-track:e1e0343a3d2339b038a56e4457aba23ce6408ee2cc0cbae681f0026d4b88ea6a` |
| 100 | `lemma` | [diag2_decompose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/diag2-decompose.md) | 777 | `result-track:a6339e8d229dad90c5a6eb9c98c6c9c0ac9776952e99793776a303f585b1599d` |
| 101 | `theorem` | [SL2.transvection_induction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/sl2-transvection-induction.md) | 788 | `result-track:de0ac57fdf6e63f1e753c94f7512fd07c3c702a58ae64cb1fe67024135c65742` |
| 102 | `lemma` | [SL2.commutator_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/sl2-commutator-eq-top.md) | 804 | `result-track:cdc7bf04bbca4defd7146137b369be1172edb6478ed5ffab6f6235da84caef78` |
| 103 | `def` | [S](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/s.md) | 825 | `declaration-track:30200bdd153161792c515496503041007a65c24735a691384994dd28b2acf80e` |
| 104 | `def` | [T](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/t.md) | 829 | `declaration-track:92eca5d43d30941426c85fce451fc12ddef3d2058b5ada09e77fc8081b05d2fe` |
| 105 | `theorem` | [coe_S](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/coe-s.md) | 833 | `result-track:f1b1ca9688b3ef07571e5249f09ba61291a5d167b189809eaeda4db9a9fb1164` |
| 106 | `lemma` | [S_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/s-inv.md) | 836 | `result-track:6d1c88ef98f05ba6376b8fee1a4baaec8b7fbad23aef590057d7dbe8ad14d5a2` |
| 107 | `theorem` | [coe_T](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/coe-t.md) | 839 | `result-track:2bbf79963a52c8aeec33857323a928a42810b9145a5e5fde8d9297a1b0512531` |
| 108 | `theorem` | [coe_T_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/coe-t-inv.md) | 842 | `result-track:eb78694bf8c3892e3b1954835410ccfb53ac22e083fcc05c6ca2f036aac2007f` |
| 109 | `theorem` | [coe_T_zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/coe-t-zpow.md) | 844 | `result-track:a3a432925a92cf289544065acf9e9110501e1e531ae6365aecde8eec9f071db9` |
| 110 | `theorem` | [T_pow_mul_apply_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/t-pow-mul-apply-one.md) | 856 | `result-track:38b0258d0c6b61f7fb35205947a46cad8094c0c5332ae7adeefe9d5683ab9ab8` |
| 111 | `theorem` | [T_mul_apply_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/t-mul-apply-one.md) | 861 | `result-track:feea91879b749530ab3d07bfe6e1e38f2bfb3aaf91a2aa80097148da2c894315` |
| 112 | `theorem` | [T_inv_mul_apply_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/t-inv-mul-apply-one.md) | 865 | `result-track:c80a9932a38239f7ce349226080b528965779fdff7e2e1c63167f57328fa0961` |
| 113 | `lemma` | [S_mul_S_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/s-mul-s-eq.md) | 868 | `result-track:62b0bba118d70e763525e3aad677b9ab7bb498cd40089afb9912433034b96f63` |
| 114 | `lemma` | [T_S_rel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSpecialLinearGroupPublic.lean/declarations/t-s-rel.md) | 874 | `result-track:f16d12ea2e06d4387c548232defcc0e79ced708a375f15ffe49b1a2769736d26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=802f4a0234940a59a140233422f9bebe3425a1acd40a8d366e831ce42e8f0050 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variant599adc0a91fd1a4751e5064f8a6104be942c11270d2029449440851e1018e2aa.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/SpecialLinearGroup/Variant599adc0a91fd1a4751e5064f8a6104be942c11270d2029449440851e1018e2aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
