# Verification target: Orthogonality Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65b76094977e81a6fc9c04daa21bf0b51cc56340",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variant134e6c9dc1c2bf5bf0f1b70ed64bc5d6e921ee35dd44c46182851bafd6bafb5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/OrthogonalityNamespacedPublic.lean/index.md) · [Full source](../../../../NumberTheory/OrthogonalityNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65b76094977e81a6fc9c04daa21bf0b51cc56340`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variant134e6c9dc1c2bf5bf0f1b70ed64bc5d6e921ee35dd44c46182851bafd6bafb5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variant134e6c9dc1c2bf5bf0f1b70ed64bc5d6e921ee35dd44c46182851bafd6bafb5d.lean.json)

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
| 1 | `instance` | [fintype](../../../../NumberTheory/OrthogonalityNamespacedPublic.lean/declarations/fintype.md) | 34 | `declaration-track:28e6a996ed9791536b5aebe92913fbb03c7fe0c9cb318661684fa95100ea5b39` |
| 2 | `lemma` | [mulEquiv_units](../../../../NumberTheory/OrthogonalityNamespacedPublic.lean/declarations/mulequiv-units.md) | 42 | `result-track:e606e468307fc8b7da387aa848b426f33cc7849d4f1dd30402cf569e5ff1555d` |
| 3 | `lemma` | [card_eq_totient_of_hasEnoughRootsOfUnity](../../../../NumberTheory/OrthogonalityNamespacedPublic.lean/declarations/card-eq-totient-of-hasenoughrootsofunity.md) | 47 | `result-track:6f675d9ae52746fbafda7d51b525650d56f80036bf674e08c12235af4f6c862a` |
| 4 | `theorem` | [exists_apply_ne_one_of_hasEnoughRootsOfUnity](../../../../NumberTheory/OrthogonalityNamespacedPublic.lean/declarations/exists-apply-ne-one-of-hasenoughrootsofunity.md) | 57 | `result-track:b81831eba44e470c75935a7b1d507adbd7b83416c11049424cde352bb503d2ed` |
| 5 | `theorem` | [sum_characters_eq_zero](../../../../NumberTheory/OrthogonalityNamespacedPublic.lean/declarations/sum-characters-eq-zero.md) | 66 | `result-track:bff382e9e20ca1458efbfcbafbf91554a340f45291e2f51a676ba8f364fb00b9` |
| 6 | `theorem` | [sum_characters_eq](../../../../NumberTheory/OrthogonalityNamespacedPublic.lean/declarations/sum-characters-eq.md) | 76 | `result-track:59e2003cffe719ea2a7229c1e9e6a682d0fa3567e6bc3ef7c8113ece9410b901` |
| 7 | `theorem` | [sum_char_inv_mul_char_eq](../../../../NumberTheory/OrthogonalityNamespacedPublic.lean/declarations/sum-char-inv-mul-char-eq.md) | 87 | `result-track:4c30b4f89fa80ca566bbf7aa56be96cfc01580a0c2e4b5074306584dd24286e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c16859a167d796720d66554c20a0a4b1144a91a3be1117cb1aa877d06e8bd456 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variant134e6c9dc1c2bf5bf0f1b70ed64bc5d6e921ee35dd44c46182851bafd6bafb5d.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variant134e6c9dc1c2bf5bf0f1b70ed64bc5d6e921ee35dd44c46182851bafd6bafb5d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
