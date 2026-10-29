# Verification target: GRWTSK.Algebra.QuotientRing.Variant4b30caf518415d010d36e297194d8c7f13d6accab6865d715b511a8726d15331

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0d9298b876fee11a1f828df0326e72241f4329b",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuotientRing/Variant4b30caf518415d010d36e297194d8c7f13d6accab6865d715b511a8726d15331.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Algebra/QuotientRing/Variant4b30caf518415d010d36e297194d8c7f13d6accab6865d715b511a8726d15331.lean/index.md) · [Full source](../../../../../Algebra/QuotientRing/Variant4b30caf518415d010d36e297194d8c7f13d6accab6865d715b511a8726d15331.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0d9298b876fee11a1f828df0326e72241f4329b`.

Source path: `GRWTSK/Algebra/QuotientRing/Variant4b30caf518415d010d36e297194d8c7f13d6accab6865d715b511a8726d15331.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuotientRing/Variant4b30caf518415d010d36e297194d8c7f13d6accab6865d715b511a8726d15331.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Int.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.ZMod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientSpanNatEquivZMod](../../../../../Algebra/QuotientRing/Variant4b30caf518415d010d36e297194d8c7f13d6accab6865d715b511a8726d15331.lean/declarations/quotientspannatequivzmod--840666248530bd3e4384f8be.md) | 33 | `declaration-track:840666248530bd3e4384f8be49f22b2f633334dba09413dba8e3642db5d31e1c` |
| 2 | `def` | [quotientSpanEquivZMod](../../../../../Algebra/QuotientRing/Variant4b30caf518415d010d36e297194d8c7f13d6accab6865d715b511a8726d15331.lean/declarations/quotientspanequivzmod--7572b1bbf0c50de35a05d65b.md) | 39 | `declaration-track:7572b1bbf0c50de35a05d65bd7c694c68439e41d4f5fa434a7d0e481ace8bb85` |
| 3 | `def` | [ZMod.prodEquivPi](../../../../../Algebra/QuotientRing/Variant4b30caf518415d010d36e297194d8c7f13d6accab6865d715b511a8726d15331.lean/declarations/zmod-prodequivpi--0d6be4c2f48b744c7eaeef94.md) | 50 | `declaration-track:0d6be4c2f48b744c7eaeef9445c1335190f63fe5bc049e2eed5e0ef254162ddb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a98a9da392392b62ddfacf91d8c46875aae712b5a7ac0b6d4a1bab7bad6b06f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/QuotientRing/Variant4b30caf518415d010d36e297194d8c7f13d6accab6865d715b511a8726d15331.lean","GRWTSK/_verification/specifications/Algebra/QuotientRing/Variant4b30caf518415d010d36e297194d8c7f13d6accab6865d715b511a8726d15331.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
