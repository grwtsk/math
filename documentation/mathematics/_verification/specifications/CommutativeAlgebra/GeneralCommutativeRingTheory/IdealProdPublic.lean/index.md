# Verification target: Ideal Prod Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afa0e0c1703ebb29a751e144aa472a98fe94b4e4",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afa0e0c1703ebb29a751e144aa472a98fe94b4e4`.

Source path: `GRWTSK/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean.json)

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
| 1 | `def` | [prod](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/prod.md) | 29 | `declaration-track:2fee6205d1299a7d9c769df518e3255beca3025089c2d616fdc5d6492dcce66e` |
| 2 | `theorem` | [coe_prod](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/coe-prod.md) | 32 | `result-track:2c252f140595988acf2c9d119a378b5a030a7a59425b0e60ea6b0709ca2af70d` |
| 3 | `theorem` | [mem_prod](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/mem-prod.md) | 36 | `result-track:f585294575b4cc58c3913a9c149d36f8ada01a88ee23d4e005b762445b59a89e` |
| 4 | `theorem` | [_root_.RingHom.ker_prodMap](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/root-ringhom-ker-prodmap.md) | 40 | `result-track:2d34f442fe6b0ace6561dbb41724e88692ccc12dd2a52d6b38deb3c621c8cb04` |
| 5 | `theorem` | [prod_top_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/prod-top-top.md) | 45 | `result-track:76e1a7fe866dc61b98918213f32954802dfbe1111e3ce8db9f73bad2e83b62e8` |
| 6 | `theorem` | [prod_bot_bot](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/prod-bot-bot.md) | 49 | `result-track:d95de7b0a144508b9042c79abb0dedddc55f05496c3d1a930cfff5ca3cef9a86` |
| 7 | `theorem` | [prod_mono](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/prod-mono.md) | 53 | `result-track:d4d1b92e24f7db456ac9d84d4559178339c78d010c0b8f072d4aaa3ec1c5b670` |
| 8 | `theorem` | [prod_mono_left](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/prod-mono-left.md) | 57 | `result-track:9e52300638037c03b7b7a19f13be08a90433db8bcdf2c7bfa69f4e7404858422` |
| 9 | `theorem` | [prod_mono_right](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/prod-mono-right.md) | 60 | `result-track:638398b942843f9d845679d59b81dbba72817c9cf7681c0510bb0914729113c6` |
| 10 | `theorem` | [ideal_prod_eq](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/ideal-prod-eq.md) | 65 | `result-track:9d904193f26783a42cdb251a418433a3bca82417b329bf3961848b4e5b9ed476` |
| 11 | `theorem` | [map_fst_prod](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/map-fst-prod.md) | 76 | `result-track:31c431ace004bd8e6468a013df0b161ff8e063562499c4b788a098d52b4db078` |
| 12 | `theorem` | [map_snd_prod](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/map-snd-prod.md) | 85 | `result-track:9c8a187823aec193a6849eaed93327981e35f62f27841348006073a479c67a23` |
| 13 | `theorem` | [map_prodComm_prod](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/map-prodcomm-prod.md) | 94 | `result-track:b497b1dc275b3be898dc15c184d93eba9705f8c6a72d093bd7787703802952d8` |
| 14 | `def` | [idealProdEquiv](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/idealprodequiv.md) | 101 | `declaration-track:341d4a1549d483c727597a7e10b9552f168f1986834fcbef5690f8289f013bcf` |
| 15 | `theorem` | [idealProdEquiv_symm_apply](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/idealprodequiv-symm-apply.md) | 113 | `result-track:d22986e125ea068769f6d3a488b71f2fa3689e3b1e4edd90cfda2977c4eaafa6` |
| 16 | `theorem` | [span_prod_le](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/span-prod-le.md) | 117 | `result-track:d22b98a155578083ac6faec9459010dbebae3781c12b340e1159395e7e9be9ba` |
| 17 | `theorem` | [span_prod](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/span-prod.md) | 124 | `result-track:209ae76b0f2b34ca164f66cbbe6450071f4befa4fe614e9afda80f8bfdd6b51b` |
| 18 | `theorem` | [prod_inj](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/prod-inj.md) | 137 | `result-track:2bcae43765a73b4eec5c77da8c0fc57d88c3023532b2654719a88eba096f3c99` |
| 19 | `theorem` | [prod_eq_bot_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/prod-eq-bot-iff.md) | 142 | `result-track:c5d8d14802419090781af8d779a643628338d2aa950d1a7864adf90cede908b8` |
| 20 | `theorem` | [prod_eq_top_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/prod-eq-top-iff.md) | 147 | `result-track:b1360090d89059e09d18fe5a964981c307773b6e4dd4d1defe34d86bef07a981` |
| 21 | `theorem` | [isPrime_of_isPrime_prod_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/isprime-of-isprime-prod-top-source-edition-2.md) | 151 | `result-track:b3afffa27a49ddab8ae51d874b63431f2fef90d952e39248c2d018e83f01299c` |
| 22 | `theorem` | [isPrime_of_isPrime_prod_top'](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/isprime-of-isprime-prod-top.md) | 163 | `result-track:4cccbe6807dff52ec6f37a3e60eab75dc88c86043b942e3f6efce51514a46f06` |
| 23 | `theorem` | [isPrime_ideal_prod_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/isprime-ideal-prod-top-source-edition-2.md) | 170 | `result-track:6e8cd345e402ed933c410b6a8a7d8eedcf4ee474aa23615eeeef12315d269961` |
| 24 | `theorem` | [isPrime_ideal_prod_top'](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/isprime-ideal-prod-top.md) | 174 | `result-track:5da750c923f56a90df10ca7529e8713bdec8e8f53015d0296fb6d77f505352e7` |
| 25 | `theorem` | [ideal_prod_prime_aux](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/ideal-prod-prime-aux.md) | 180 | `result-track:0ac0351d07370ece45711136bc4ab201be2e77e2c16cd43750be4edfff62c13d` |
| 26 | `theorem` | [ideal_prod_prime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/ideal-prod-prime.md) | 188 | `result-track:12cfb25486e23bb0d8f948fa513eaf13185949690ee80f5c3687a179bfdee898` |
| 27 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/IdealProdPublic.lean/declarations/instance.md) | 209 | `declaration-track:8e813af2c366442a1126c48ff8dfa7ee9de45ad6cdfeba05716fc3eb325bbc7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=08501bb287f5fe46a8177966ac868f5d25b1bb927d783501889ea3c8a207a0f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean","GRWTSK/_verification/specifications/Algebra/Prod/Variant8f40c9c3ba2043071a3169c0ffc2dc7dc35232f37842a521ca92bf8809be4280.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
