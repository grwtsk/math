# Verification target: Boolean Function Data And Xor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce08f055cf06b354716146300329e5750cdf0182",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanStructures/ChosenBooleanStreamEquivalences/Variant77b29b7f44ac3561/BooleanFunctionDataAndXor.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/BooleanFunctionDataAndXor.lean/index.md) · [Full source](../../../../Combinatorics/BooleanFunctionDataAndXor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce08f055cf06b354716146300329e5750cdf0182`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanStructures/ChosenBooleanStreamEquivalences/Variant77b29b7f44ac3561/BooleanFunctionDataAndXor.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanStructures/ChosenBooleanStreamEquivalences/Variant77b29b7f44ac3561/BooleanFunctionDataAndXor.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.Address` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BitStream](../../../../Combinatorics/BooleanFunctionDataAndXor.lean/declarations/bitstream.md) | 32 | `declaration-track:08131fe5b3b3610b75ab00c4320227b658ee661c58d3ac1a6c4b46c419c8908c` |
| 2 | `abbrev` | [BooleanState](../../../../Combinatorics/BooleanFunctionDataAndXor.lean/declarations/booleanstate.md) | 35 | `declaration-track:5fefb8853366948f4b50a3b57d69d0e482f4ccaddf685265a02e3d3052c782af` |
| 3 | `def` | [xorBit](../../../../Combinatorics/BooleanFunctionDataAndXor.lean/declarations/xorbit.md) | 38 | `declaration-track:ae105d94d424d087c5e8ebdd414d648b684f3795f7f605b35b3b3ad924323f35` |
| 4 | `theorem` | [xorBit_self](../../../../Combinatorics/BooleanFunctionDataAndXor.lean/declarations/xorbit-self.md) | 41 | `result-track:ae6498c66994229bbdc8f5dd441a7ab00fc304f57fbb8052a6a184db4623fe3b` |
| 5 | `theorem` | [xorBit_false_right](../../../../Combinatorics/BooleanFunctionDataAndXor.lean/declarations/xorbit-false-right.md) | 45 | `result-track:71889259c1110cf81ab18ee31e63b468a9d2e2d6b7af45a7b55d8112dcbfc5e1` |
| 6 | `theorem` | [xorBit_cancel_left](../../../../Combinatorics/BooleanFunctionDataAndXor.lean/declarations/xorbit-cancel-left.md) | 49 | `result-track:ad2882dfeb8788d37af14c8dc4c1b653c65f7973551926707b6001bbc5493389` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=25251724caa9dccd85b4546dba5eef838a29d21c617f9e40b3ad5b285dc9160e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanStructures/ChosenBooleanStreamEquivalences/Variant77b29b7f44ac3561/BooleanFunctionDataAndXor.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanStructures/ChosenBooleanStreamEquivalences/Variant77b29b7f44ac3561/BooleanFunctionDataAndXor.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
