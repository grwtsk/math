# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Imo2008Q2.Varianta4e483993e15941232439247c1c452321e6004c5840b2f5f93d8352ce70bbe03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cde32a220a6e823b3e190dc9aa076b4dabc4d649",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Imo2008Q2/Varianta4e483993e15941232439247c1c452321e6004c5840b2f5f93d8352ce70bbe03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FoundationsLogicAndTypeTheory/Imo2008Q2/Varianta4e483993e15941232439247c1c452321e6004c5840b2f5f93d8352ce70bbe03.lean/index.md) · [Full source](../../../../../FoundationsLogicAndTypeTheory/Imo2008Q2/Varianta4e483993e15941232439247c1c452321e6004c5840b2f5f93d8352ce70bbe03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cde32a220a6e823b3e190dc9aa076b4dabc4d649`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Imo2008Q2/Varianta4e483993e15941232439247c1c452321e6004c5840b2f5f93d8352ce70bbe03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Imo2008Q2/Varianta4e483993e15941232439247c1c452321e6004c5840b2f5f93d8352ce70bbe03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [subst_abc](../../../../../FoundationsLogicAndTypeTheory/Imo2008Q2/Varianta4e483993e15941232439247c1c452321e6004c5840b2f5f93d8352ce70bbe03.lean/declarations/subst-abc--096c9fbb69ff0bc1b1ebc369.md) | 42 | `result-track:096c9fbb69ff0bc1b1ebc36966fd719192b1e9e5ed1052c315c13d8134d0b6bc` |
| 2 | `theorem` | [imo2008_q2a](../../../../../FoundationsLogicAndTypeTheory/Imo2008Q2/Varianta4e483993e15941232439247c1c452321e6004c5840b2f5f93d8352ce70bbe03.lean/declarations/imo2008-q2a--4fe239b51e639abd83c42fc7.md) | 52 | `result-track:4fe239b51e639abd83c42fc74aa3f523acd9e72fda5ced3db0c729fd0bef8226` |
| 3 | `def` | [rationalSolutions](../../../../../FoundationsLogicAndTypeTheory/Imo2008Q2/Varianta4e483993e15941232439247c1c452321e6004c5840b2f5f93d8352ce70bbe03.lean/declarations/rationalsolutions--e3aa57fe4d535878c37ed09b.md) | 65 | `declaration-track:e3aa57fe4d535878c37ed09b46003038c4f7b863ec4e658a82cc610eb3dc3f15` |
| 4 | `theorem` | [imo2008_q2b](../../../../../FoundationsLogicAndTypeTheory/Imo2008Q2/Varianta4e483993e15941232439247c1c452321e6004c5840b2f5f93d8352ce70bbe03.lean/declarations/imo2008-q2b--5903d7013d5ab808ae40df66.md) | 70 | `result-track:5903d7013d5ab808ae40df66a5c47684448b5e62bc60c09f9b1074fdcbddd360` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8eccb40480b1b1b19e8490a46452bedc8062fdb02e5a54cf0a9c2ac06dd50d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Imo2008Q2/Varianta4e483993e15941232439247c1c452321e6004c5840b2f5f93d8352ce70bbe03.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Imo2008Q2/Varianta4e483993e15941232439247c1c452321e6004c5840b2f5f93d8352ce70bbe03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
