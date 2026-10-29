# Verification target: Div Mod

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3600ee786c12fccf78c964d3c3fb33806aefb82b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/DivMod/Variantdb280442789231abba87ddd0007d80e4500f1698a82689216132de47d103c9b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/DivMod.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/DivMod.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3600ee786c12fccf78c964d3c3fb33806aefb82b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/DivMod/Variantdb280442789231abba87ddd0007d80e4500f1698a82689216132de47d103c9b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/DivMod/Variantdb280442789231abba87ddd0007d80e4500f1698a82689216132de47d103c9b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_ediv_le_mul_ediv_assoc](../../../../../NumberTheory/ElementaryNumberTheory/DivMod.lean/declarations/mul-ediv-le-mul-ediv-assoc.md) | 18 | `result-track:43d6cab509d36cdf19fcaaf8a3d7e4ee5ed86183effd1f14a63825d975ad1e4e` |
| 2 | `theorem` | [ediv_ediv_eq_ediv_mul](../../../../../NumberTheory/ElementaryNumberTheory/DivMod.lean/declarations/ediv-ediv-eq-ediv-mul.md) | 25 | `result-track:de4bd692322abe88e26ae5b73b4da697edfb6908a287c0ab76a641c40d89e2fb` |
| 3 | `theorem` | [fdiv_fdiv_eq_fdiv_mul](../../../../../NumberTheory/ElementaryNumberTheory/DivMod.lean/declarations/fdiv-fdiv-eq-fdiv-mul.md) | 49 | `result-track:d98b17059c6cd805e8f9754e21d6b3d4a56c7765464e0a5a041a022deec5aa87` |
| 4 | `theorem` | [emod_eq_sub_self_emod](../../../../../NumberTheory/ElementaryNumberTheory/DivMod.lean/declarations/emod-eq-sub-self-emod.md) | 58 | `result-track:de6eb98f8a06c3f1529ba13cc556933b73bbafd0f41866eef8c5938e14067b49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90783a2305d11b8b0fba9061af7ef614465c119e9168a63304427268ec418430 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/DivMod/Variantdb280442789231abba87ddd0007d80e4500f1698a82689216132de47d103c9b6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/DivMod/Variantdb280442789231abba87ddd0007d80e4500f1698a82689216132de47d103c9b6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
