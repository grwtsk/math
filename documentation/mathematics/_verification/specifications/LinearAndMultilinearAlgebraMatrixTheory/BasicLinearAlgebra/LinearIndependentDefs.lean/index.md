# Verification target: Linear Independent Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65c0f70672df92efe72305f67e696fb08b3d81a9",
  "lexical_observation_count": 92,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variante1dc56008165c969a9d1534ba1366062845074c1b0abb2c3c719460f1c4d9014.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65c0f70672df92efe72305f67e696fb08b3d81a9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variante1dc56008165c969a9d1534ba1366062845074c1b0abb2c3c719460f1c4d9014.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variante1dc56008165c969a9d1534ba1366062845074c1b0abb2c3c719460f1c4d9014.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Finsupp.LinearCombination` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr.ExtraRecognizers` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LinearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent.md) | 88 | `declaration-track:ee61ada459e602f063cbdd51301ce558ff1f30ff172e36d63a2426ffa2949aed` |
| 2 | `def` | [delabLinearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/delablinearindependent.md) | 98 | `declaration-track:c4106d7fd4c7c9bd22766652e4484b179c3cf5a95ae4a351e4ddcad57b6cab04` |
| 3 | `def` | [LinearIndepOn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon.md) | 113 | `declaration-track:2437bc43ed4dd8ae6293f04ba6a983f921076ca5af888128cbe340b2948dba7f` |
| 4 | `theorem` | [LinearIndepOn.linearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-linearindependent.md) | 117 | `result-track:8cbf4b7fcaa90d5b446e09def645fd981a57c23e7952b3ac01e5b570cb6fb3f2` |
| 5 | `theorem` | [linearIndependent_iff_injective_finsuppLinearCombination](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-iff-injective-finsupplinearcombination.md) | 120 | `result-track:cb60dc38859f1bcd3c166b444b2993c6b3962a496765daebdcecb87fa7fbb3b0` |
| 6 | `theorem` | [linearIndependent_iff_injective_fintypeLinearCombination](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-iff-injective-fintypelinearcombination.md) | 134 | `result-track:7eee90532d6b8f6c28639db5d4a43fab707f8709fff92e214c158313e2282807` |
| 7 | `theorem` | [LinearIndependent.injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-injective.md) | 145 | `result-track:d7395ccd6a9395bac0f47d07cefdcb1d8cc6f76463412f59a4394c851aa76ef8` |
| 8 | `theorem` | [LinearIndepOn.injOn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-injon.md) | 149 | `result-track:23709d5036ff69cc3cbcbdb028c0290fb2c93846af6f67fce5c599312cc343a6` |
| 9 | `theorem` | [LinearIndependent.smul_left_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-smul-left-injective.md) | 152 | `result-track:b472337905afe93ff11e60fae46e166c36f7742b424e66233baf9e44726a4baa` |
| 10 | `theorem` | [LinearIndependent.ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-ne-zero.md) | 155 | `result-track:8647b60fe620550bdba645c2237e2d5a778543f1a4983982716459873443713e` |
| 11 | `theorem` | [LinearIndepOn.ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-ne-zero.md) | 161 | `result-track:a1702eb6c2702f88004af64692ad35b877352c9b6cb0b871b5c76afa639233c8` |
| 12 | `theorem` | [LinearIndepOn.zero_notMem_image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-zero-notmem-image.md) | 165 | `result-track:aaa938513ee439c5e5187e2627b4ab682e23be66ff141ba32fe6b03f22f0641d` |
| 13 | `theorem` | [linearIndependent_empty_type](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-empty-type.md) | 171 | `result-track:f722b13fc2a8f8a1b67ef5daf1251dfc597994b796aacb0277fafd799020b3db` |
| 14 | `theorem` | [linearIndependent_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-zero-iff.md) | 175 | `result-track:a16dfe0a3a4c4c1da0536e5d2097924833d75b3650b12e357ce567994e872b43` |
| 15 | `theorem` | [linearIndepOn_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-zero-iff.md) | 180 | `result-track:79c7b36eadbc2ca916d7ac7c803ef48edf1b49c7f8ebe102ef4764034beedf26` |
| 16 | `theorem` | [linearIndependent_subsingleton_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-subsingleton-iff.md) | 184 | `result-track:f309b3f151513f449f218fa75f0c19ffc993716adc56ccfb94a1f9605cca375d` |
| 17 | `theorem` | [linearIndependent_empty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-empty.md) | 189 | `result-track:2f6fb8226ccc8b6a8bd8ddea4fd93db0974b4320d11767f92deda0bc1751ac7e` |
| 18 | `theorem` | [linearIndepOn_empty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-empty.md) | 194 | `result-track:287a14d23bfdb85fb227e99a4740a49317788c39b032536b1b57133b0b181319` |
| 19 | `theorem` | [linearIndependent_set_coe_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-set-coe-iff.md) | 197 | `result-track:67b737f10b60f936e8cf2fac77e77d93186362bccad25f4b2ea0698421a0243c` |
| 20 | `theorem` | [linearIndependent_subtype_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-subtype-iff.md) | 203 | `result-track:edc555af0014f8fcc9514c2d0a8821fd0fbb86dd5e1bf56d766c97f1190b0950` |
| 21 | `theorem` | [linearIndependent_comp_subtype_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-comp-subtype-iff.md) | 206 | `result-track:d03d6c4f4b3603fbf84142ad50ccc5fdd494474930671dab54b5dfcd8963d220` |
| 22 | `theorem` | [LinearIndependent.comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-comp.md) | 211 | `result-track:6a5011286c5139387ff555c90afad3e5541b66cc51c38884a506209cc6edecbe` |
| 23 | `lemma` | [LinearIndepOn.mono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-mono.md) | 215 | `result-track:df16eca33602be6d45046923736b5b3372c74a9e373264aefac4134aa9673580` |
| 24 | `theorem` | [linearIndependent_iffₛ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-iff-source-edition-6.md) | 219 | `result-track:e835b6262bc69d5622c9d24989f3d2a10b28170bf481ae95c719d744334f9394` |
| 25 | `theorem` | [linearIndependent_iff'ₛ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-iff-source-edition-5.md) | 225 | `result-track:e179f9d0300d5dafc53b89587ba128e4d2e3be98200eff17eaca99a75a0e4ced` |
| 26 | `theorem` | [linearIndependent_iff''ₛ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-iff-source-edition-3.md) | 254 | `result-track:7ba05882fdeda7c152974f2fdbc81f58f57b6ff6db86d797c50ef0286a7d7a77` |
| 27 | `theorem` | [not_linearIndependent_iffₛ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/not-linearindependent-iff.md) | 268 | `result-track:2d5134478781d68c053774cd2346ad0d29ae987650586c3e3312d685c4e1b25f` |
| 28 | `theorem` | [Fintype.linearIndependent_iffₛ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/fintype-linearindependent-iff-source-edition-2.md) | 274 | `result-track:f42536aa1ab775becb3d1a1879e1d575439ecb3953c33de8a55a847c3f691427` |
| 29 | `theorem` | [Fintype.not_linearIndependent_iffₛ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/fintype-not-linearindependent-iff-source-edition-2.md) | 279 | `result-track:e79f5df7132661990867abf6daf2575d5c92b76b235cd7a757948627b055a570` |
| 30 | `lemma` | [linearIndepOn_finset_iffₛ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-finset-iff.md) | 283 | `result-track:004b1d251ce42feb0d3974b672c2628daad58d803de100d4ca56c8b5c42d4fd0` |
| 31 | `lemma` | [not_linearIndepOn_finset_iffₛ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/not-linearindepon-finset-iff.md) | 296 | `result-track:84725f8c0bcdccf4440a759fc1c3b47ec25abb623a9a742e25786d0c89b563fa` |
| 32 | `theorem` | [linearIndependent_iff_finset_linearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-iff-finset-linearindependent.md) | 303 | `result-track:6bba685c1678a525cc4b960cce46d4770bb279c3b117fb69664e5e317faca008` |
| 33 | `lemma` | [linearIndepOn_iff_linearIndepOn_finset](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-iff-linearindepon-finset.md) | 309 | `result-track:7bfd04e586bff909797888d7a956638c57c8e603fcb392811ae648af5f101c1f` |
| 34 | `theorem` | [LinearIndependent.of_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-of-comp.md) | 319 | `result-track:2d5dcf1e5bc11518878edb439619dcc358eda4f666d1715c5e8ad48f459b0283` |
| 35 | `theorem` | [LinearIndepOn.of_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-of-comp.md) | 324 | `result-track:190f36accfb30509e21d95ab1dea9fe0098c8a82841fe4a74817d30590540914` |
| 36 | `theorem` | [LinearMap.linearIndependent_iff_of_injOn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearmap-linearindependent-iff-of-injon.md) | 332 | `result-track:ceacf27582ac93e9363d2257208a177c23a4db0be36542f48dc01fc4e39da1e9` |
| 37 | `theorem` | [LinearMap.linearIndepOn_iff_of_injOn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearmap-linearindepon-iff-of-injon.md) | 339 | `result-track:4093123ce5d24eceb652a13834e8d412d7c21d836f100045f0454c8787eb3017` |
| 38 | `theorem` | [linearIndependent_of_subsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-of-subsingleton.md) | 346 | `result-track:a2505d1508f0c1e133a43e9cb22d91778902408bbc56e458ca4c142e9704f2a6` |
| 39 | `theorem` | [LinearIndepOn.of_subsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-of-subsingleton.md) | 350 | `result-track:28eb997d700ef1b6b3c77e3158a025c876c22ae9c3e2f12289702498ed4dd09a` |
| 40 | `theorem` | [linearIndependent_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-equiv-source-edition-2.md) | 353 | `result-track:a06c521015756508980305fadabf3ef8aeabad053155d0067a6053ee90b191cd` |
| 41 | `theorem` | [linearIndependent_equiv'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-equiv.md) | 358 | `result-track:55c130acf8c936a337a63f73630176b6e49bf64fe99993281acb9224f069a904` |
| 42 | `theorem` | [linearIndepOn_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-equiv.md) | 362 | `result-track:b72bdf10227091d1f60b0e04f63b6624e2e642b337b5f20cafa00d9d2a5a4a03` |
| 43 | `theorem` | [linearIndepOn_univ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-univ.md) | 367 | `result-track:3f65888506699f541fcb5d18d3a4913c3ab6e8da124c28888a59a6de7e408897` |
| 44 | `theorem` | [linearIndepOn_iff_image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-iff-image.md) | 372 | `result-track:d3d3ad9d0c6a290b37fd6888e6af80d8ded1c90f1e8795be92bd2a9cbdeea608` |
| 45 | `theorem` | [linearIndepOn_range_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-range-iff.md) | 378 | `result-track:2deb202ebf9d8484a5ea116e868f5b76fe0f1147f8b44715f929fb4947299297` |
| 46 | `theorem` | [linearIndepOn_id_range_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-id-range-iff.md) | 384 | `result-track:b89621033622612836fbaf48d07788ff3ce5405d8e383832752e0c9e031f66e5` |
| 47 | `theorem` | [LinearIndependent.linearIndepOn_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-linearindepon-id-source-edition-2.md) | 396 | `result-track:4d3f2fac081ee90e6e2d8fd45660727cb66f8d0870a0776a0322fb8a806a4bb5` |
| 48 | `theorem` | [LinearIndependent.linearIndepOn_id'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-linearindepon-id.md) | 408 | `result-track:1afd455ba9d4f598c9c870dff9e9977e8aee02cbfb64de923da49acd976fe6ee` |
| 49 | `theorem` | [linearIndepOn_iffₛ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-iff-source-edition-2.md) | 417 | `result-track:24c9061bb68b5320a5c454ede8151e0d8521533ead5ea57aa491ae59edbc2c2c` |
| 50 | `theorem` | [linearDepOn_iff'ₛ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/lineardepon-iff.md) | 435 | `result-track:2082ba75a3cdb87a4dbeff3c87373346d56dc22bcc77b68fd4cc620c6cda88bf` |
| 51 | `theorem` | [linearDepOn_iffₛ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/lineardepon-iff-source-edition-4.md) | 443 | `result-track:bab94d4a1edabc5402554f236c136ef0cf83fac55fa9b5cd8ba3b945b23a212f` |
| 52 | `theorem` | [linearIndependent_restrict_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-restrict-iff.md) | 452 | `result-track:109678ca3de4cbf5a378607e63f4ca86894831ee1ecec4b2443615c75d0ef533` |
| 53 | `theorem` | [LinearIndepOn.linearIndependent_restrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-linearindependent-restrict.md) | 455 | `result-track:78eb6abbf8919756ac6d1752da053756b578ff21cd9e6cf113a82399bda2fd06` |
| 54 | `theorem` | [linearIndepOn_iff_linearCombinationOnₛ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-iff-linearcombinationon.md) | 462 | `result-track:3437bfc93a659832618908926be64b3dfbfca1e7e8ce95d127dae1fd94560fdc` |
| 55 | `def` | [LinearIndependent.linearCombinationEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-linearcombinationequiv.md) | 477 | `declaration-track:0d1c51e652eb7e0fb58a327596f97af7e46563ff8caa3d4482f939a2fd19d400` |
| 56 | `theorem` | [LinearIndependent.linearCombinationEquiv_apply_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-linearcombinationequiv-apply-coe.md) | 489 | `result-track:e11e3356d4b187b17109d9a2af6594f4a0ce702711b79c6c6c4b644895ddcfaf` |
| 57 | `def` | [LinearIndependent.repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-repr.md) | 497 | `declaration-track:4ba4637c734463f8a569876186bac949b21259358925c0c146bb05d2a38da5c1` |
| 58 | `theorem` | [LinearIndependent.linearCombination_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-linearcombination-repr.md) | 503 | `result-track:f68c7677399ea26a12e41b439abcd929798e2b37fefd1a975dc7906f8485b6b7` |
| 59 | `theorem` | [LinearIndependent.linearCombination_comp_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-linearcombination-comp-repr.md) | 507 | `result-track:29e706e4849e4ec5455a7ffcef4bfc45eb640e79575d20b828e57fbb8edd1c74` |
| 60 | `theorem` | [LinearIndependent.repr_ker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-repr-ker.md) | 511 | `result-track:5d1be1671607a0e423c9dd4d9940a866c0f06ce0cf6f34b073ec77a0f02928f8` |
| 61 | `theorem` | [LinearIndependent.repr_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-repr-range.md) | 514 | `result-track:30a0c83fad67ceaa87e7792253753e442550dfbb678d6b51ace24d3e6a6c0a7a` |
| 62 | `theorem` | [LinearIndependent.repr_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-repr-eq.md) | 517 | `result-track:f89fc98b0e4b59eace5893768b9d60d976879fa654747f3a483f88c4501ec39b` |
| 63 | `theorem` | [LinearIndependent.repr_eq_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-repr-eq-single.md) | 530 | `result-track:8e3bc6813e66615c686a21ad4c528b2d34fffb8df604d057952d2aa02eca49b9` |
| 64 | `theorem` | [LinearIndependent.span_repr_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-span-repr-eq.md) | 535 | `result-track:0cde2ce4489f9e8bbebc5bdfdcfd928836e39ee200a52c698721bfc460d4c10d` |
| 65 | `theorem` | [LinearIndependent.eq_zero_of_smul_mem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-eq-zero-of-smul-mem-span.md) | 549 | `result-track:09b0c1e5d6e96321c1977c451b943aba74e0e0b70a22b02ffd27c62cf96f0a17` |
| 66 | `lemma` | [LinearIndepOn.eq_zero_of_smul_mem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-eq-zero-of-smul-mem-span.md) | 560 | `result-track:c461a8c2db8c9fe1b62619dc887aedab687ba93f8e01ce8f8acca77830932d8c` |
| 67 | `lemma` | [LinearIndependent.notMem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-notmem-span.md) | 567 | `result-track:712bb07898599dd31ae4d4447c2cc0adeb4d73c403230724926e0f9a33dd2147` |
| 68 | `lemma` | [LinearIndepOn.notMem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-notmem-span.md) | 574 | `result-track:90d9fda5835be40a8465d70674c046cf22f2eedca3745ef917c3b8cb8070bbab` |
| 69 | `lemma` | [LinearIndepOn.notMem_span_of_insert](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-notmem-span-of-insert.md) | 580 | `result-track:568b7dec2bb5db9355e346c2a48d3fb66f492612f505f1b4e000be67e56d6e6a` |
| 70 | `def` | [LinearIndependent.Maximal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-maximal.md) | 596 | `declaration-track:693235fcd15a4123bf3d6b440031fa51f0913df01b5d79e7ae35954a30d6915f` |
| 71 | `theorem` | [LinearIndependent.maximal_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-maximal-iff.md) | 603 | `result-track:e3a0d706197e50bed53f369dba2373de902d0db74816d88ae336dc63cb16aecf` |
| 72 | `theorem` | [linearIndependent_iff_ker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-iff-ker.md) | 634 | `result-track:cc6fa13256b1216b1eb3f43ebd04591c97aa55d98c6945e2c89e5d349665d0a2` |
| 73 | `theorem` | [linearIndependent_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-iff-source-edition-4.md) | 638 | `result-track:8f33b9e90ec4cd9dde14dd12f1f490da3e2b2ab22913ba9faa23c17563dc3bac` |
| 74 | `theorem` | [linearIndependent_iff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-iff.md) | 643 | `result-track:44bb7375faa45357ca30b45a1066966e595e74d46365292d5b291fd775437722` |
| 75 | `theorem` | [linearIndependent_iff''](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-iff-source-edition-2.md) | 654 | `result-track:769fea6c2ec467109bf6aa83529e48fdef674514f43e004c975a8414426d3d88` |
| 76 | `theorem` | [linearIndependent_add_smul_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-add-smul-iff.md) | 665 | `result-track:a21cbf21aa03e1532728967266ced9285fdec1484556ab0adad23fcba67e6461` |
| 77 | `theorem` | [not_linearIndependent_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/not-linearindependent-iff-source-edition-2.md) | 670 | `result-track:fda0ba83f854cf1c79ece3d8ba0291271c1e21d2550a785d4e8c346ca85e9d9a` |
| 78 | `theorem` | [Fintype.linearIndependent_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/fintype-linearindependent-iff.md) | 676 | `result-track:9879badd3310f4e2bf27194c5a70e69b3f37f0a6811ffb876a7a3d9c28cd01b5` |
| 79 | `theorem` | [Fintype.not_linearIndependent_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/fintype-not-linearindependent-iff.md) | 685 | `result-track:e2e3d48ba19ce50fe681bdc8172467edc285a0c02b4ca9f92c230813329a4257` |
| 80 | `lemma` | [linearIndepOn_finset_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-finset-iff-source-edition-2.md) | 689 | `result-track:397a77cfe24a7e9fedf8ca2075b5508c37533fd2667a35c06d1e835402465b5c` |
| 81 | `lemma` | [not_linearIndepOn_finset_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/not-linearindepon-finset-iff-source-edition-2.md) | 701 | `result-track:f12f089b75be1c7f82061e087f65ec062b27e6cccf9606243bf9097f04ee0422` |
| 82 | `theorem` | [LinearMap.linearIndependent_iff_of_disjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearmap-linearindependent-iff-of-disjoint.md) | 708 | `result-track:8838b10ec3064751881eca0413e425ea9a1aacb806abf8e31996b265c7dcd5d3` |
| 83 | `theorem` | [linearIndepOn_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-iff-source-edition-4.md) | 717 | `result-track:b4ce0e5f20527aa81d357b00c083f6133a893584140357bbca49882f1d2295f1` |
| 84 | `theorem` | [linearDepOn_iff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/lineardepon-iff-source-edition-3.md) | 728 | `result-track:9809b4e87bb97aab277006f1d095e8f6d3a82dae1b2ae532b2b12ef0f86ea3c3` |
| 85 | `theorem` | [linearDepOn_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/lineardepon-iff-source-edition-2.md) | 735 | `result-track:56af9f2df7f92eee7e08d96c53c1480cc5ee31cfc03c14d0d772bacf124fa6dc` |
| 86 | `theorem` | [linearIndepOn_iff_disjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-iff-disjoint.md) | 741 | `result-track:3dae64b893bb29c4c886f7ce7c4af5dd2a5bf0b8eef08c92f9ded84525b0077e` |
| 87 | `theorem` | [linearIndepOn_iff_linearCombinationOn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-iff-linearcombinationon-source-edition-2.md) | 751 | `result-track:c804a896929b96484ea00d75279ab43411b0e62e47c716c78c79db1417e53a0f` |
| 88 | `lemma` | [linearIndepOn_iff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-iff-source-edition-3.md) | 760 | `result-track:7a1e86084fbd25fc13a2798e670400d9e54de1374a117a21030908f0453a9771` |
| 89 | `lemma` | [linearIndepOn_iff''](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-iff.md) | 775 | `result-track:1e2c0ed3e849637e28640fd3ac2b9804f9d801491876178d7a8cc92e4455e814` |
| 90 | `theorem` | [linearIndependent_iff_eq_zero_of_smul_mem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-iff-eq-zero-of-smul-mem-span.md) | 796 | `result-track:583d4c4fcc87519433f9323c7391c7dca53953642fa4e8672fd3b2541ec23c20` |
| 91 | `theorem` | [linearIndependent_iff_notMem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindependent-iff-notmem-span.md) | 828 | `result-track:470b998b54f2bd7fded5ab394bfab1bee09833221ff53f516e4f2bfd757f99ac` |
| 92 | `lemma` | [linearIndepOn_iff_notMem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentDefs.lean/declarations/linearindepon-iff-notmem-span.md) | 841 | `result-track:24ad64ad52d0065744a953e812b8ed64343bd4c41b18e156b824c71559a50f5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6827992c3772d8f5c655eb150465b7fd27a5b4d6b716bbd39ad1d66774e3740e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variante1dc56008165c969a9d1534ba1366062845074c1b0abb2c3c719460f1c4d9014.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Variante1dc56008165c969a9d1534ba1366062845074c1b0abb2c3c719460f1c4d9014.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
