# Verification target: Finset Finsupp

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff8084cf68c2cbc765842fdb51591e83edaeca25",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finsupp/Variant341d5348edbc5103263a90c4b1eec7c6056d6a9facf41f2c38bc5e83ffe306ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFinsupp.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFinsupp.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff8084cf68c2cbc765842fdb51591e83edaeca25`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finsupp/Variant341d5348edbc5103263a90c4b1eec7c6056d6a9facf41f2c38bc5e83ffe306ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finsupp/Variant341d5348edbc5103263a90c4b1eec7c6056d6a9facf41f2c38bc5e83ffe306ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Finsupp.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Indicator` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finsupp](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFinsupp.lean/declarations/finsupp.md) | 42 | `declaration-track:3040cc9f4acec2e391c6741e7acb7defbedbfd92bc886e581d38924ba904107c` |
| 2 | `theorem` | [mem_finsupp_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFinsupp.lean/declarations/mem-finsupp-iff.md) | 45 | `result-track:9bcef8109ababf8b333c9115fbb06344e48d03622e66d9c72ca501fc11f16347` |
| 3 | `theorem` | [mem_finsupp_iff_of_support_subset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFinsupp.lean/declarations/mem-finsupp-iff-of-support-subset.md) | 59 | `result-track:77818a8b5a0e500d718492a4d4418725d608eedec3c344aaf798c7af787edbc6` |
| 4 | `theorem` | [card_finsupp](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFinsupp.lean/declarations/card-finsupp.md) | 74 | `result-track:4a9a83471886ac250ae14be93566cb4c41cadf50955d7a711ba420d44aa6edee` |
| 5 | `def` | [pi](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFinsupp.lean/declarations/pi.md) | 85 | `declaration-track:ae4f2e5eb004c5ed3dd78c7d389ef630bb63ffe7af57362403ff9cb5fffb9997` |
| 6 | `theorem` | [mem_pi](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFinsupp.lean/declarations/mem-pi.md) | 89 | `result-track:d77539f5c686a533d341faf66d655bed5868649decb04dff86da04f08245424f` |
| 7 | `theorem` | [card_pi](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetFinsupp.lean/declarations/card-pi.md) | 93 | `result-track:bc9890b3a02ec8c2b1bcbe19c4bc06ce250a01cee1109e2f5aba34779d8cd37e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd32af685f558a727d736ddbee826cf90f1a3efae5d6c1c151e867eb12a14b1b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finsupp/Variant341d5348edbc5103263a90c4b1eec7c6056d6a9facf41f2c38bc5e83ffe306ca.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Finsupp/Variant341d5348edbc5103263a90c4b1eec7c6056d6a9facf41f2c38bc5e83ffe306ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
