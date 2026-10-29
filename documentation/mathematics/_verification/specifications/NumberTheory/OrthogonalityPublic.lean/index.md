# Verification target: Orthogonality Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "333bdc9aaeb5c94814f2e11f01910c1e9f1b7566",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantba96083a937400718ea8e03217034f7135cfa6c03bed3a72dbeb775f6a479f10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/OrthogonalityPublic.lean/index.md) · [Full source](../../../../NumberTheory/OrthogonalityPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `333bdc9aaeb5c94814f2e11f01910c1e9f1b7566`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantba96083a937400718ea8e03217034f7135cfa6c03bed3a72dbeb775f6a479f10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantba96083a937400718ea8e03217034f7135cfa6c03bed3a72dbeb775f6a479f10.lean.json)

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
| 1 | `instance` | [fintype](../../../../NumberTheory/OrthogonalityPublic.lean/declarations/fintype.md) | 26 | `declaration-track:1968935e6b53eba2d9f26ad9208a65baa3860694fd3e052c34795d04821bc094` |
| 2 | `lemma` | [mulEquiv_units](../../../../NumberTheory/OrthogonalityPublic.lean/declarations/mulequiv-units.md) | 34 | `result-track:2401ce068a74adf0b80c5a56dcac32a7af46142f50ce7672c25847d720578b43` |
| 3 | `lemma` | [card_eq_totient_of_hasEnoughRootsOfUnity](../../../../NumberTheory/OrthogonalityPublic.lean/declarations/card-eq-totient-of-hasenoughrootsofunity.md) | 39 | `result-track:27ab6062ea8c3e730000f7495c84911ff761541681b8a7dceccd206eade4614e` |
| 4 | `theorem` | [exists_apply_ne_one_of_hasEnoughRootsOfUnity](../../../../NumberTheory/OrthogonalityPublic.lean/declarations/exists-apply-ne-one-of-hasenoughrootsofunity.md) | 49 | `result-track:81d3a9e7e96bc3c47d96e17cd85d93267d33f9e696dd204d8175e407547078ee` |
| 5 | `theorem` | [sum_characters_eq_zero](../../../../NumberTheory/OrthogonalityPublic.lean/declarations/sum-characters-eq-zero.md) | 58 | `result-track:8e7b941e1b174635a7ee965a1510b3a0364ade5c0b16e476a8079279e34a2071` |
| 6 | `theorem` | [sum_characters_eq](../../../../NumberTheory/OrthogonalityPublic.lean/declarations/sum-characters-eq.md) | 68 | `result-track:da5aeaed91479c5c65a86055d739d743763d386a09e91ccd51a1d3bbaebcefe3` |
| 7 | `theorem` | [sum_char_inv_mul_char_eq](../../../../NumberTheory/OrthogonalityPublic.lean/declarations/sum-char-inv-mul-char-eq.md) | 79 | `result-track:ed0ee0f3d17e6ce95534c937e3b81b75056d68f348dc461498d02baca8f86647` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a1edeef07ae4f536e275c1f14e924e2bd6a512d82afce226c05b3fcbf500179 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantba96083a937400718ea8e03217034f7135cfa6c03bed3a72dbeb775f6a479f10.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Orthogonality/Variantba96083a937400718ea8e03217034f7135cfa6c03bed3a72dbeb775f6a479f10.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
