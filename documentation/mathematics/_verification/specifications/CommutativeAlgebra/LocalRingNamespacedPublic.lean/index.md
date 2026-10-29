# Verification target: Local Ring Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44757b59a49db134747b0ee04ad3523cea44f43d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LocalRing/Variante6ca6ddf49214285becf03635c4dc2d38ef5fddc0e54badd2e5a88d5acb8c736.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/LocalRingNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/LocalRingNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44757b59a49db134747b0ee04ad3523cea44f43d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LocalRing/Variante6ca6ddf49214285becf03635c4dc2d38ef5fddc0e54badd2e5a88d5acb8c736.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LocalRing/Variante6ca6ddf49214285becf03635c4dc2d38ef5fddc0e54badd2e5a88d5acb8c736.lean.json)

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
| 1 | `theorem` | [isLocalRing_of_isAdicComplete_maximal](../../../../CommutativeAlgebra/LocalRingNamespacedPublic.lean/declarations/islocalring-of-isadiccomplete-maximal.md) | 57 | `result-track:fc0b5cbe7e9ed2c709a60e9bb6632561f98629ea45a64694bf478c3912df9e6b` |
| 2 | `lemma` | [isAdicComplete_self](../../../../CommutativeAlgebra/LocalRingNamespacedPublic.lean/declarations/isadiccomplete-self.md) | 69 | `result-track:4e97787016a60cf02baa003fb1d0db34e1fbe1c55bfcc2f6eb60e75f154f2cf9` |
| 3 | `lemma` | [isMaximal_map_of_le](../../../../CommutativeAlgebra/LocalRingNamespacedPublic.lean/declarations/ismaximal-map-of-le.md) | 73 | `result-track:d4c4abc060d171516c23eda8c70341c3a5caf50b1fd7c920bf73c322161f8119` |
| 4 | `lemma` | [isLocalRing_of_fg](../../../../CommutativeAlgebra/LocalRingNamespacedPublic.lean/declarations/islocalring-of-fg.md) | 86 | `result-track:e667fbebe0599335df31f18d8231c6fa0512b6946f8d9677c4de6e376392abe6` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalRingNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 93 | `declaration-track:b132788fb963e4ca3c63371fd53d36864a1e6da1db4cf2d33b8329de126054ed` |
| 6 | `lemma` | [maximalIdeal_eq_map_of_fg](../../../../CommutativeAlgebra/LocalRingNamespacedPublic.lean/declarations/maximalideal-eq-map-of-fg.md) | 96 | `result-track:95c6e01b3f8dce47a5351a61841514f2dd602037249c401a530c4f68a418fe42` |
| 7 | `lemma` | [maximalIdeal_eq_map](../../../../CommutativeAlgebra/LocalRingNamespacedPublic.lean/declarations/maximalideal-eq-map.md) | 103 | `result-track:2503a203d512fd6260ad3804399f9807094e5175a40ad0464bc4e19a9a03a108` |
| 8 | `lemma` | [mem_maximalIdeal_iff_eval_one_eq_zero](../../../../CommutativeAlgebra/LocalRingNamespacedPublic.lean/declarations/mem-maximalideal-iff-eval-one-eq-zero.md) | 109 | `result-track:fb49a28f9a404e51f3cd0a644fbf49ca29989bf1f708264438e59755f324a6dd` |
| 9 | `lemma` | [algebraMap_isLocalHom_of_fg](../../../../CommutativeAlgebra/LocalRingNamespacedPublic.lean/declarations/algebramap-islocalhom-of-fg.md) | 118 | `result-track:0fbdf82c590da15abb6238391385678cfe92be220db52d53271d206407ea77bc` |
| 10 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalRingNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 124 | `declaration-track:e29df2d2d39be96b259c106f85a3c726478f836ed20ec952dd08964178a61a40` |
| 11 | `lemma` | [isAdicComplete_of_fg](../../../../CommutativeAlgebra/LocalRingNamespacedPublic.lean/declarations/isadiccomplete-of-fg.md) | 128 | `result-track:1ee5c4d23db258afee0ef6f75974f1091fb144e761402e4a9c1c237be6b6b067` |
| 12 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalRingNamespacedPublic.lean/declarations/instance.md) | 135 | `declaration-track:5806e7c01a130af15ee6098d227132b448ceaf67b4d1312ddbc6dc47efde931f` |
| 13 | `lemma` | [residueField_map_bijective_of_fg](../../../../CommutativeAlgebra/LocalRingNamespacedPublic.lean/declarations/residuefield-map-bijective-of-fg.md) | 139 | `result-track:c752274245ad62e0278df8704168fdf873654a4ea6c254c2e8071ca1773039ff` |
| 14 | `lemma` | [residueField_map_bijective](../../../../CommutativeAlgebra/LocalRingNamespacedPublic.lean/declarations/residuefield-map-bijective.md) | 159 | `result-track:54086519ad75cec60a7f8e2e73695405e9723b862b799c842e51ce384a6bcfd2` |
| 15 | `lemma` | [spanFinrank_maximalIdeal_eq](../../../../CommutativeAlgebra/LocalRingNamespacedPublic.lean/declarations/spanfinrank-maximalideal-eq.md) | 164 | `result-track:8cf5c7f8cc48cc1142154a3e1a955c8d5bb63ebe89758306ab07d376f9901b76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5a0bf16649eb6442a455655287a17f08659c8297154ea8099d19bdc516d0b1a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/LocalRing/Variante6ca6ddf49214285becf03635c4dc2d38ef5fddc0e54badd2e5a88d5acb8c736.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/LocalRing/Variante6ca6ddf49214285becf03635c4dc2d38ef5fddc0e54badd2e5a88d5acb8c736.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
