# Verification target: Basic Finite Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bad0329f34ea74bdd858dbb9d8cad53c38740683",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantef08fd8b4a632b55f3657ea8d1e30bff4fc757179421ac9291bc76f31b20f6ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bad0329f34ea74bdd858dbb9d8cad53c38740683`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantef08fd8b4a632b55f3657ea8d1e30bff4fc757179421ac9291bc76f31b20f6ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantef08fd8b4a632b55f3657ea8d1e30bff4fc757179421ac9291bc76f31b20f6ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [inductive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/inductive.md) | 109 | `declaration-track:cfa3f2b684a91945dfee7f5269b1f76677bdfe6ec8242c7f6fe152d24d4a4e6b` |
| 2 | `theorem` | [finite_iff_exists_equiv_fin](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/finite-iff-exists-equiv-fin.md) | 112 | `result-track:1964f76c14de09507f13ec426e89f0dc918445eb81dbf81e563902bdd0603cfa` |
| 3 | `theorem` | [Finite.exists_equiv_fin](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/finite-exists-equiv-fin.md) | 115 | `result-track:954b4441b6054fb1f83864227d8f0e7f17327fc70cb258aa59541193a6020204` |
| 4 | `theorem` | [Finite.of_equiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/finite-of-equiv.md) | 118 | `result-track:1056d90f206e520748e9e4d4feebdfed9d0d388c91bb7166a410ac136b0a997c` |
| 5 | `theorem` | [Equiv.finite_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/equiv-finite-iff.md) | 121 | `result-track:572147d87ec2af76cbc0caddbbd1af808dec964ff566f64e5e0ec6520f58eb27` |
| 6 | `theorem` | [Function.Bijective.finite_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/function-bijective-finite-iff.md) | 124 | `result-track:ffad2dd5d25fc0e6716f1b4d0f65870535d77c7c05d4680776b2b83a2834aab5` |
| 7 | `theorem` | [Finite.ofBijective](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/finite-ofbijective.md) | 127 | `result-track:36282e8f3b6745f329e5d9fd247c0888b1acdde6169a5cb4a384af83e9d134f7` |
| 8 | `theorem` | [Finite.nonempty_decidableEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/finite-nonempty-decidableeq.md) | 131 | `result-track:668a4ea9f9662253b8394e10c3d9cddcde065f59ae207c9b73f44f9af0dd9d75` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/instance.md) | 134 | `declaration-track:665df51d6d8d57aa7ec32c056c1b1e89be3e86411e680a55fa3c8a773cfc3a24` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 137 | `declaration-track:f7fe9103a2427b2ec23b68e5a8db6b3882e4a02c363ea86d6e7c1fedd903f0c4` |
| 11 | `class` | [Infinite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/infinite.md) | 142 | `declaration-track:23a7506644f666a0c2aa0d10ea7fa1dc20465b97b6b75738e2071ce017832b06` |
| 12 | `theorem` | [not_finite_iff_infinite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/not-finite-iff-infinite.md) | 147 | `result-track:9bf1b0a2769c21c2719d529f756148f4d2fd606192fa1bb83ba5e27e4c78ee62` |
| 13 | `theorem` | [not_infinite_iff_finite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/not-infinite-iff-finite.md) | 151 | `result-track:bbddb073ed4226be4f6058509af465070a4f6d2f3f7a9126d5121edfc6f7eb29` |
| 14 | `theorem` | [Equiv.infinite_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/equiv-infinite-iff.md) | 154 | `result-track:70127c1f17b6471f1f2e8d29b0e41f9c92bab3e0405290d5d3d0048055e2a376` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 157 | `declaration-track:d90882d50da000074c40bef48b286978a891bf146233e4091a25cb5350538fc8` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 160 | `declaration-track:bdaed2d1ce71a96a95a4732f76f2272d118b715c9c9c0cd9dd14e786b71f1682` |
| 17 | `theorem` | [finite_or_infinite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/finite-or-infinite-source-edition-2.md) | 163 | `result-track:512da7c08ddafcec109385e09e5963ab83e4f65d47dfa4de2689777ac332316b` |
| 18 | `theorem` | [not_finite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/not-finite-source-edition-2.md) | 167 | `result-track:c3f00798eaad61bcf2f12099b2d806aac05042220dc048e0e831ceab1ecc1ba0` |
| 19 | `theorem` | [Finite.false](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/finite-false.md) | 170 | `result-track:a5910b899c3e45db39bb3b9ff5b04cd86e45a778976c3311066d9752a74f7b6a` |
| 20 | `theorem` | [Infinite.false](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/infinite-false.md) | 173 | `result-track:0908512ad29d1d39c1622a7b0fd3348a825aec34090a4f513c79704053d0842f` |
| 21 | `instance` | [Bool.instFinite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/bool-instfinite.md) | 178 | `declaration-track:02b74361030b34ff3b573f7ea0dfbc8a925ef08301ad211dd7cca81021fd55c3` |
| 22 | `instance` | [Prop.instFinite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/prop-instfinite.md) | 179 | `declaration-track:a94d4707c1935002f49353b140ab5a175ab1a15f4e69b9ef8d3478c20a29eef4` |
| 23 | `def` | [Finite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/finite.md) | 193 | `declaration-track:be68e5e3ec0cf7c9315598c45d5b4afdf2f739b93d5d4c95e9b996a03219d46b` |
| 24 | `theorem` | [finite_coe_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/finite-coe-iff.md) | 200 | `result-track:6e5d290c085432852921baae72a8f46108ce4fbe452052f11894003032283dd9` |
| 25 | `theorem` | [toFinite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/tofinite.md) | 203 | `result-track:6cfd37f4f25e7663a549929e4dc4cc254a73bda728c33d3880f05b9a51175883` |
| 26 | `theorem` | [Finite.to_subtype](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/finite-to-subtype.md) | 208 | `result-track:fb49018000edf560c76d98622a184d9a2fcf7f4f82129d4848c56d8f88b32f20` |
| 27 | `def` | [Infinite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/infinite-source-edition-2.md) | 213 | `declaration-track:7f278de33ed18207b04328ffd0a7665497c6f746efb58a2f38c28129b69b0d60` |
| 28 | `theorem` | [not_finite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/not-finite.md) | 217 | `result-track:ade524a8b587ced016b88dcf75695b41536a5918146fc4c4d8790c3591fa03a8` |
| 29 | `theorem` | [not_infinite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/not-infinite.md) | 220 | `result-track:7445d355f3bca75b6b4117653d8cb160608e0b9e4b7ea5136ac584ac1ce8e5be` |
| 30 | `lemma` | [Infinite.not_finite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/infinite-not-finite.md) | 225 | `result-track:d2439e0d9f0fdd4d9ecee5b098e48d803776467009d42ed34d7c0e6b5e6c47a1` |
| 31 | `theorem` | [finite_or_infinite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/finite-or-infinite.md) | 230 | `result-track:346ba218a0551896220dbf2c2540b3c1026c57236889e11ae943140e38fd6c02` |
| 32 | `theorem` | [infinite_or_finite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/infinite-or-finite.md) | 233 | `result-track:38cf33e6897db595135b1799f102713149806d8f8f352b054e64c9a77db532c7` |
| 33 | `theorem` | [Equiv.set_finite_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/equiv-set-finite-iff.md) | 238 | `result-track:afa5d9faebb1d43ce41349d5aaeeea6a1b8bfbe86248d30cf7639d97796e73c3` |
| 34 | `theorem` | [infinite_coe_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicFiniteDefsNamespacedPublic.lean/declarations/infinite-coe-iff.md) | 247 | `result-track:c9fe69d9f885b569d9480078a64a7aa387860170e4ab9d0748f9e334369f39ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a5314e21f27fdd200d5c973a1194b7202ed3e390e03883d0414b6543d1c56b2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantef08fd8b4a632b55f3657ea8d1e30bff4fc757179421ac9291bc76f31b20f6ea.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantef08fd8b4a632b55f3657ea8d1e30bff4fc757179421ac9291bc76f31b20f6ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
