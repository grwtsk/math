# Verification target: Of Fn Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0ccd43c2c7413b283d5004bc5f09211749102a5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/OfFn/Variant3c656c3c92be21fdf304fa9285658084eb1639d040e7eba406d1aff452e4842d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespacedPublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0ccd43c2c7413b283d5004bc5f09211749102a5`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/OfFn/Variant3c656c3c92be21fdf304fa9285658084eb1639d040e7eba406d1aff452e4842d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/OfFn/Variant3c656c3c92be21fdf304fa9285658084eb1639d040e7eba406d1aff452e4842d.lean.json)

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
| 1 | `def` | [toFn](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespacedPublic.lean/declarations/tofn.md) | 42 | `declaration-track:62005f51508fdbba48b7c0b1838e1f383f2bc9ec4d7bb37f8b9e9eade9746b5e` |
| 2 | `theorem` | [toFn_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespacedPublic.lean/declarations/tofn-zero.md) | 44 | `result-track:136f348385e42b25ffa2af51843d34c2606dccdb007134d613f5094ca3f4dcb1` |
| 3 | `def` | [ofFn](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespacedPublic.lean/declarations/offn.md) | 52 | `declaration-track:1c64af46168a41aaff5ab1b2b1c2c325d96784091d25d19f93041eb5aa10e53d` |
| 4 | `theorem` | [ofFn_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespacedPublic.lean/declarations/offn-zero-source-edition-2.md) | 65 | `result-track:95bf1ca84aeed626482cbaeacadabc722058ead738923af701bf2b42febf6d7c` |
| 5 | `theorem` | [ofFn_zero'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespacedPublic.lean/declarations/offn-zero.md) | 68 | `result-track:7c8a55efde67668607baf9fb93dc8ab25e9865f53b50b0d15d3a31567c855d9e` |
| 6 | `lemma` | [ne_zero_of_ofFn_ne_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespacedPublic.lean/declarations/ne-zero-of-offn-ne-zero.md) | 70 | `result-track:3598f3968a7b704c43aaec7666aa772204619c9d7b4d2522e7764195dfa2b151` |
| 7 | `theorem` | [ofFn_coeff_eq_val_of_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespacedPublic.lean/declarations/offn-coeff-eq-val-of-lt.md) | 77 | `result-track:262a1acee4214e6ddd40da9d90d0436e78fc1b74377f14f124f491942df8d182` |
| 8 | `theorem` | [ofFn_coeff_eq_zero_of_ge](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespacedPublic.lean/declarations/offn-coeff-eq-zero-of-ge.md) | 83 | `result-track:f589de7c49ed6c8f0f0478557ebe725cacbdeaee80ebcf0f5f668dfc90b5987e` |
| 9 | `theorem` | [ofFn_natDegree_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespacedPublic.lean/declarations/offn-natdegree-lt.md) | 88 | `result-track:c3e6edf36fa02ed97180c4e93b7377ed94542d0794174e8a8a98325de3467755` |
| 10 | `theorem` | [ofFn_degree_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespacedPublic.lean/declarations/offn-degree-lt.md) | 93 | `result-track:f411819b5cb60fceb95463f713302a9b81441aa7862fdbbe0f17c5289fb3962e` |
| 11 | `theorem` | [ofFn_eq_sum_monomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespacedPublic.lean/declarations/offn-eq-sum-monomial.md) | 100 | `result-track:861bd6cd2331ca12e9029358dae023ab86ed98ae31357e031de10d0c402d6df9` |
| 12 | `theorem` | [toFn_comp_ofFn_eq_id](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespacedPublic.lean/declarations/tofn-comp-offn-eq-id.md) | 108 | `result-track:f127d74d615294fd4f1ad3512b48c4dbf8af0e969da35c1082ea226408894b7c` |
| 13 | `theorem` | [injective_ofFn](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespacedPublic.lean/declarations/injective-offn.md) | 111 | `result-track:f61827312ee221d29bc6ad7bbd77070efbdfd60f99d08be9817223b7a2f38367` |
| 14 | `theorem` | [surjective_toFn](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespacedPublic.lean/declarations/surjective-tofn.md) | 115 | `result-track:37998818cc483e98e4b5c1f49cb878cad7b0a4f407b93b276ca50171a8131877` |
| 15 | `theorem` | [ofFn_comp_toFn_eq_id_of_natDegree_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/OfFnNamespacedPublic.lean/declarations/offn-comp-tofn-eq-id-of-natdegree-lt.md) | 119 | `result-track:ec4e8c07eeac52ed1265e654c5dc34c27aec4cb704ee949ebc62627cdb4e2324` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57d1ea7548f0f6bf33c91f1ad5d2b0995a5b6cf83c392b974a740e9ccdffc17f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/OfFn/Variant3c656c3c92be21fdf304fa9285658084eb1639d040e7eba406d1aff452e4842d.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/OfFn/Variant3c656c3c92be21fdf304fa9285658084eb1639d040e7eba406d1aff452e4842d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
