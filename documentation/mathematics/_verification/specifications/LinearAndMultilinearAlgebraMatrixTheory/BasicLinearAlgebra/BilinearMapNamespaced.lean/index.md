# Verification target: Bilinear Map Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "342bce9749585263a416138b12fb2cc6dca22392",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BilinearMap/Variantb07f7d798180e9af72d5f3216f80d164fcbfcfd4c030113a4ca214e8e6fc4e58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `342bce9749585263a416138b12fb2cc6dca22392`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BilinearMap/Variantb07f7d798180e9af72d5f3216f80d164fcbfcfd4c030113a4ca214e8e6fc4e58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BilinearMap/Variantb07f7d798180e9af72d5f3216f80d164fcbfcfd4c030113a4ca214e8e6fc4e58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mk₂'ₛₗ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/mk.md) | 85 | `declaration-track:2fc01a7f3c244e4a3f4a0ecfb7cd0d2c854db9f13e73ae0d2b9fdd72e8703108` |
| 2 | `theorem` | [mk₂'ₛₗ_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/mk-apply-source-edition-2.md) | 101 | `result-track:43f3d1394bea61f1a2045a61e258818056917cd92ea0a42fa3e8ef2d554d61e2` |
| 3 | `def` | [mk₂'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/mk-source-edition-3.md) | 109 | `declaration-track:8218d0fcb9629b8a77f9ba65763ded12f53bbbeb93b79125de598e82db29a2cd` |
| 4 | `theorem` | [mk₂'_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/mk-apply-source-edition-3.md) | 119 | `result-track:bf5b2a8f55502dcacb5f4aec81b04e638111882dfdae6f44789023f3433c518d` |
| 5 | `theorem` | [ext₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/ext.md) | 123 | `result-track:cca0234bee6b0635150be50746bcc41505e45148181205f79dcf5c6cb3e8499e` |
| 6 | `theorem` | [congr_fun₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/congr-fun.md) | 127 | `result-track:5bbe3cdeb468ad3e9f425ac976dd69d881efeeae10e0af98b5514786816d718f` |
| 7 | `def` | [flip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/flip.md) | 137 | `declaration-track:542a08fc3de20d060892e8386f5c7253dd8722f465730be50eb7184f92962306` |
| 8 | `theorem` | [flip_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/flip-apply.md) | 147 | `result-track:03c9d6179de27fdf2267d331746bfec24eceed78bbcd3b865c065c85d92dab71` |
| 9 | `theorem` | [flip_flip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/flip-flip.md) | 153 | `result-track:accfc0c8a8982c65c4c4c3ee68251b4d0a9d53c9848ef5b876dd9871108b26eb` |
| 10 | `theorem` | [flip_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/flip-inj.md) | 159 | `result-track:858f4fc0527ef231b7865c8a6d1372b4e7c673a338cc3a2b0c17c0debf4c03c8` |
| 11 | `theorem` | [map_zero₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/map-zero.md) | 163 | `result-track:2469979a605d391f3b410a21dfdfb204803dc964bac0b5651992bd32cd3f8172` |
| 12 | `theorem` | [map_neg₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/map-neg.md) | 167 | `result-track:3136b5750cf41a0608c6186869548e5ebace4f54a12c486529b05f5496b94130` |
| 13 | `theorem` | [map_sub₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/map-sub.md) | 171 | `result-track:937889d07b3dcd3b18f5b4deee27448b668d66519bef1499e5e4209482164d3c` |
| 14 | `theorem` | [map_add₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/map-add.md) | 175 | `result-track:81b72b4ef4349e01fef8af427f05d4fcb7223c0578f2f51c092ca914b681bf29` |
| 15 | `theorem` | [map_smul₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/map-smul-source-edition-2.md) | 179 | `result-track:a562d00a22f000b903d7c623253489cfa198622c9fc4faa50a5d327a987cdcbb` |
| 16 | `theorem` | [map_smulₛₗ₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/map-smul.md) | 183 | `result-track:7ef7214cce7a356891869f6172b8ebe15acc1aafa253cf61425c1763eee7e182` |
| 17 | `theorem` | [map_sum₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/map-sum.md) | 187 | `result-track:1cc92a077fae181bee2bdb5b8bd175f1b9799d52de4cc2d8dd8208b8edc9504e` |
| 18 | `def` | [domRestrict₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/domrestrict-source-edition-2.md) | 193 | `declaration-track:657cf0b53df8282464d01aa0c71635826da5b58712b8a555db5653127e3fbe66` |
| 19 | `theorem` | [domRestrict₂_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/domrestrict-apply.md) | 201 | `result-track:13c0be086e9e1780cda02962f2370b709c023997cc325dcea510b19a6449d4d6` |
| 20 | `def` | [domRestrict₁₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/domrestrict.md) | 206 | `declaration-track:5839557e060049127150b9c7b08f5fca25f76bfce45d778e9f2dd6a0a068aef8` |
| 21 | `theorem` | [domRestrict₁₂_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/domrestrict-apply-source-edition-2.md) | 211 | `result-track:36b582f66aa43e49afd4ce0a9e6c62b8ba0574d29f95a822ed0f28883ce0dfa3` |
| 22 | `def` | [mk₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/mk-source-edition-2.md) | 248 | `declaration-track:726d41e2d58e0809e28187f2074a10075438d9adcbfc32bb726bd61305865980` |
| 23 | `theorem` | [mk₂_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/mk-apply.md) | 256 | `result-track:20e53fc80cdba3c7fa4a6c339de3f551791d404b4a0cbfb1d75f3286ce6ea849` |
| 24 | `def` | [lflip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/lflip.md) | 264 | `declaration-track:c676f6fb341b9624ef64e2fde672d6b9fa0b0aa92d9b9c8af0f0d37c52d507ec` |
| 25 | `theorem` | [lflip_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/lflip-apply.md) | 274 | `result-track:2fa8d6449446368ff40149933dcf9d63b5f8a26e2da0bd5f6ad93879f1fa57b9` |
| 26 | `def` | [lcomp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/lcomp-source-edition-2.md) | 280 | `declaration-track:aea240fd50e66f3d0a405635c8ad4e8107c07929e9f4368756a445123cf0364c` |
| 27 | `theorem` | [lcomp_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/lcomp-apply-source-edition-3.md) | 287 | `result-track:d9a3658c6ec3cbe722e416bc5f95da899a9db57465c593c4ed566b6686f51cbb` |
| 28 | `theorem` | [lcomp_apply'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/lcomp-apply-source-edition-2.md) | 290 | `result-track:492e20bcf5dd9b26a52d740d6febbaaa6217f6085b440973bfdc719c5f6be1e7` |
| 29 | `def` | [lcompₛₗ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/lcomp.md) | 297 | `declaration-track:9486b9c6d020ccfbe5966fe3c1568ce8965f7d0eebd6de1f1096b1b02b76c5a8` |
| 30 | `theorem` | [lcompₛₗ_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/lcomp-apply.md) | 304 | `result-track:3b2fb081e8a0d5d1022829f9108f0b37b070f9cefd78810d731f14fcf892b652` |
| 31 | `def` | [llcomp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/llcomp.md) | 311 | `declaration-track:a2dc22542792f14556b2be13062d8b7ae8ae4bdfd8263ec2c3ae42f3c5c20b6e` |
| 32 | `theorem` | [llcomp_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/llcomp-apply-source-edition-2.md) | 323 | `result-track:c0c96253fadae1ca2a5ffd8910702eaebe3d5a7d59ccaaa9ac7aded0aa6f73d8` |
| 33 | `theorem` | [llcomp_apply'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/llcomp-apply.md) | 327 | `result-track:0396f53f82ed3d7be4519e856f5f73434a60a56fecf583e49a04b7839613731b` |
| 34 | `def` | [compl₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/compl-source-edition-2.md) | 334 | `declaration-track:621ac8dae60cd0d80f267d7c279c02a6de99e5704448f0925186c12ce2bb15bf` |
| 35 | `theorem` | [compl₂_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/compl-apply-source-edition-2.md) | 339 | `result-track:cd7770ef9d6c656dcc4fc9d8df7bd15a78ecbe48975c3669d67fc53076ef9229` |
| 36 | `theorem` | [compl₂_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/compl-id.md) | 343 | `result-track:f368a8433f13063505786df10edb8e8547d425eb51b45b7b22bf60cc936c9725` |
| 37 | `def` | [compl₁₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/compl.md) | 350 | `declaration-track:48857de2e261c8ff40a9eced145042803cc409a769499a4460983c40f3d9a3a5` |
| 38 | `theorem` | [compl₁₂_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/compl-apply.md) | 356 | `result-track:459f827afb842f1d2df1ed38a012acc4abfeae2a7f471adfbb82cf1181030197` |
| 39 | `theorem` | [compl₁₂_id_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/compl-id-id.md) | 361 | `result-track:4acfc4bffde1e5d7eb90ca8fbcbeb31e8adf7f16008637b2d8cf8c272a966c4a` |
| 40 | `theorem` | [compl₁₂_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/compl-inj.md) | 366 | `result-track:cefaa3b8186894ce26c8cafd42bfab397f3f58662cd653701a7fc04340f4fc1f` |
| 41 | `def` | [compr₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/compr.md) | 383 | `declaration-track:0cfe9fa9de0d43442a2cb29172aec85a97e2824deb4a7ddf92c4f6aff4a8d987` |
| 42 | `theorem` | [compr₂_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/compr-apply.md) | 388 | `result-track:424a3deefe8279d5c0753f4ae8570a64d04cc7be52030fb53f559401e99d22db` |
| 43 | `def` | [lsmul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/lsmul.md) | 395 | `declaration-track:ba2dd64783c1673786ce23536c9320f03880066481aece845013480347d68432` |
| 44 | `theorem` | [lsmul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/lsmul-apply.md) | 403 | `result-track:490eac3ba91907d102252c9525b857946bdce1b331fc6f7204d1268fa2f938ef` |
| 45 | `theorem` | [lsmul_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/lsmul-injective.md) | 422 | `result-track:f4b32620ef02314203c3c100a15bc980831256749a584faeee0d0bffe756f033` |
| 46 | `theorem` | [ker_lsmul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BilinearMapNamespaced.lean/declarations/ker-lsmul.md) | 427 | `result-track:d4f827550b8ad4017d612834d6ef6f3a0f2858e684ea31477c8b6c05414e17f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e9b242e920d287fa2a346b1f0e3c97bfc1123f934b4d05a5417a15a1b2c93afa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BilinearMap/Variantb07f7d798180e9af72d5f3216f80d164fcbfcfd4c030113a4ca214e8e6fc4e58.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/BilinearMap/Variantb07f7d798180e9af72d5f3216f80d164fcbfcfd4c030113a4ca214e8e6fc4e58.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
