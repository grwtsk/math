# Verification target: Ordinary Hypergeometric Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47b42b5a712c278078e79e70f560033e174236b5",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OrdinaryHypergeometric/Variant26fcc78a14cab6ec7497ea95e3ecd0395eeab113379de7fc9556f35eff2deeae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/OrdinaryHypergeometricPublic.lean/index.md) · [Full source](../../../../SpecialFunctions/OrdinaryHypergeometricPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47b42b5a712c278078e79e70f560033e174236b5`.

Source path: `GRWTSK/Topology/GeneralTopology/OrdinaryHypergeometric/Variant26fcc78a14cab6ec7497ea95e3ecd0395eeab113379de7fc9556f35eff2deeae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OrdinaryHypergeometric/Variant26fcc78a14cab6ec7497ea95e3ecd0395eeab113379de7fc9556f35eff2deeae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ordinaryHypergeometricCoefficient](../../../../SpecialFunctions/OrdinaryHypergeometricPublic.lean/declarations/ordinaryhypergeometriccoefficient.md) | 66 | `declaration-track:2ae2f6818626825df9f55fbc930f4c8d792cb9e93f3697b9246a6a8502401ea2` |
| 2 | `def` | [ordinaryHypergeometricSeries](../../../../SpecialFunctions/OrdinaryHypergeometricPublic.lean/declarations/ordinaryhypergeometricseries.md) | 71 | `declaration-track:23a3685304102fba8b0cb44627e19ebdf12e6ad8db077b733683407f70324d8e` |
| 3 | `def` | [ordinaryHypergeometric](../../../../SpecialFunctions/OrdinaryHypergeometricPublic.lean/declarations/ordinaryhypergeometric.md) | 81 | `declaration-track:cb0233fbf40c674f86469b2101ee4c5906f0b02ea8f54ea0a9fe15d69ce2cb42` |
| 4 | `theorem` | [ordinaryHypergeometricSeries_apply_eq](../../../../SpecialFunctions/OrdinaryHypergeometricPublic.lean/declarations/ordinaryhypergeometricseries-apply-eq-source-edition-2.md) | 87 | `result-track:5ce3f539c0b15f68f97503866b4922e7da1ba3f47032932a075d63f97d85ea4d` |
| 5 | `theorem` | [ordinaryHypergeometricSeries_apply_eq'](../../../../SpecialFunctions/OrdinaryHypergeometricPublic.lean/declarations/ordinaryhypergeometricseries-apply-eq.md) | 94 | `result-track:362bb430a63c404de2a47073250e19a1a6eee8cc1572106006fc26615a61894e` |
| 6 | `theorem` | [ordinaryHypergeometric_sum_eq](../../../../SpecialFunctions/OrdinaryHypergeometricPublic.lean/declarations/ordinaryhypergeometric-sum-eq.md) | 100 | `result-track:2df7583c308bd2ee347964900821ac2c814b13bf949b195446c054dbbee1dfa3` |
| 7 | `theorem` | [ordinaryHypergeometric_eq_tsum](../../../../SpecialFunctions/OrdinaryHypergeometricPublic.lean/declarations/ordinaryhypergeometric-eq-tsum.md) | 105 | `result-track:3a50c62f0bfd2f2466f365491c40f3cc5172e586aa52330101c8016d1ce104c9` |
| 8 | `theorem` | [ordinaryHypergeometricSeries_apply_zero](../../../../SpecialFunctions/OrdinaryHypergeometricPublic.lean/declarations/ordinaryhypergeometricseries-apply-zero.md) | 110 | `result-track:3924510a490c4daecf8a1a06fb14962d2275c60b81c56ff43258b901e0f66b56` |
| 9 | `theorem` | [ordinaryHypergeometric_zero](../../../../SpecialFunctions/OrdinaryHypergeometricPublic.lean/declarations/ordinaryhypergeometric-zero.md) | 116 | `result-track:a4cb82982644af2858a2d65e1095fc42bf9d15dc847836699675f25e5f1b8c43` |
| 10 | `theorem` | [ordinaryHypergeometricSeries_symm](../../../../SpecialFunctions/OrdinaryHypergeometricPublic.lean/declarations/ordinaryhypergeometricseries-symm.md) | 120 | `result-track:59065cbbddc91f4faa8d198e6d668bf786f4b637ee43d1d58eaab6dc02680404` |
| 11 | `lemma` | [ordinaryHypergeometricSeries_eq_zero_of_neg_nat](../../../../SpecialFunctions/OrdinaryHypergeometricPublic.lean/declarations/ordinaryhypergeometricseries-eq-zero-of-neg-nat.md) | 130 | `result-track:b66d7305f023ce6d8497e2bec56a9237577fd33c920efed08842405a0c089edd` |
| 12 | `theorem` | [ordinaryHypergeometric_radius_top_of_neg_nat₁](../../../../SpecialFunctions/OrdinaryHypergeometricPublic.lean/declarations/ordinaryhypergeometric-radius-top-of-neg-nat-source-edition-2.md) | 149 | `result-track:5f305048fa3921ba56c66f2cbc6e8633a1eeb101e5b07bb5ba380fe81b89de53` |
| 13 | `theorem` | [ordinaryHypergeometric_radius_top_of_neg_nat₂](../../../../SpecialFunctions/OrdinaryHypergeometricPublic.lean/declarations/ordinaryhypergeometric-radius-top-of-neg-nat.md) | 154 | `result-track:1c18356b8654e6b62842b79d3b2dbc61c7edcafa2b293884942ed65f643a7eed` |
| 14 | `theorem` | [ordinaryHypergeometric_radius_top_of_neg_nat₃](../../../../SpecialFunctions/OrdinaryHypergeometricPublic.lean/declarations/ordinaryhypergeometric-radius-top-of-neg-nat-source-edition-3.md) | 160 | `result-track:61fbc9efcaa2349bcb74c84c386d163ac82d7b91565fc214feda343624dff8a9` |
| 15 | `lemma` | [ordinaryHypergeometricSeries_eq_zero_iff](../../../../SpecialFunctions/OrdinaryHypergeometricPublic.lean/declarations/ordinaryhypergeometricseries-eq-zero-iff.md) | 166 | `result-track:10150f6f6ceb7f6ff5d76b7caef50c249a25e1337a3bc92734e38c0195c8aa77` |
| 16 | `theorem` | [ordinaryHypergeometricSeries_norm_div_succ_norm](../../../../SpecialFunctions/OrdinaryHypergeometricPublic.lean/declarations/ordinaryhypergeometricseries-norm-div-succ-norm.md) | 179 | `result-track:6fdbbd0a8e7e132a6452cb7815f283003931a8b4d48723d6b60f553b2c118d5e` |
| 17 | `theorem` | [ordinaryHypergeometricSeries_radius_eq_one](../../../../SpecialFunctions/OrdinaryHypergeometricPublic.lean/declarations/ordinaryhypergeometricseries-radius-eq-one.md) | 204 | `result-track:c64814069495a3a78bb4cee58cf5089cd8e776df186345368135914b57b17254` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86ddff3c81c08573d1afd27cb1e32160be921dbfa43f5305b13314aa334dde60 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/OrdinaryHypergeometric/Variant26fcc78a14cab6ec7497ea95e3ecd0395eeab113379de7fc9556f35eff2deeae.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/OrdinaryHypergeometric/Variant26fcc78a14cab6ec7497ea95e3ecd0395eeab113379de7fc9556f35eff2deeae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
