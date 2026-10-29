# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Loop.Variantee39f25b924241f5218fcebda3df262ffd37df4f4c5cdc16d89cc2283dc9cb31

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7c3b6af3fd3458177e55b56d3062c7ad4601838",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variantee39f25b924241f5218fcebda3df262ffd37df4f4c5cdc16d89cc2283dc9cb31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variantee39f25b924241f5218fcebda3df262ffd37df4f4c5cdc16d89cc2283dc9cb31.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variantee39f25b924241f5218fcebda3df262ffd37df4f4c5cdc16d89cc2283dc9cb31.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7c3b6af3fd3458177e55b56d3062c7ad4601838`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variantee39f25b924241f5218fcebda3df262ffd37df4f4c5cdc16d89cc2283dc9cb31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variantee39f25b924241f5218fcebda3df262ffd37df4f4c5cdc16d89cc2283dc9cb31.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Monadic.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IterM.Equiv.forIn_eq](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variantee39f25b924241f5218fcebda3df262ffd37df4f4c5cdc16d89cc2283dc9cb31.lean/declarations/iterm-equiv-forin-eq--439b4e5cabe7469ac895cd8a.md) | 18 | `result-track:439b4e5cabe7469ac895cd8a67b68a2e51e5565edb08a0811750dea449e35288` |
| 2 | `theorem` | [IterM.Equiv.foldM_eq](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variantee39f25b924241f5218fcebda3df262ffd37df4f4c5cdc16d89cc2283dc9cb31.lean/declarations/iterm-equiv-foldm-eq--d46d83b21c4d3dee830a5ea7.md) | 50 | `result-track:d46d83b21c4d3dee830a5ea78389c3c70ff632b02296c68e06e4fa9f34fa2e8d` |
| 3 | `theorem` | [IterM.Equiv.fold_eq](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variantee39f25b924241f5218fcebda3df262ffd37df4f4c5cdc16d89cc2283dc9cb31.lean/declarations/iterm-equiv-fold-eq--6ed13dc241e96419c6ffbb4c.md) | 60 | `result-track:6ed13dc241e96419c6ffbb4c531e7a3e2de238c89431eccd1d7ad7c5c1e881e6` |
| 4 | `theorem` | [IterM.Equiv.drain_eq](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variantee39f25b924241f5218fcebda3df262ffd37df4f4c5cdc16d89cc2283dc9cb31.lean/declarations/iterm-equiv-drain-eq--d414e889d8611b377da4c419.md) | 70 | `result-track:d414e889d8611b377da4c419b88d5adc5c97194bd444144db69dbcbde863ac7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd89502e18316c1b5ae69b2787252c9980c0c2796c54efcbe9093e599df7ebba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variantee39f25b924241f5218fcebda3df262ffd37df4f4c5cdc16d89cc2283dc9cb31.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variantee39f25b924241f5218fcebda3df262ffd37df4f4c5cdc16d89cc2283dc9cb31.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
