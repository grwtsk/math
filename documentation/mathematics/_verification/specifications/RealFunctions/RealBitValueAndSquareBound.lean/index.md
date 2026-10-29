# Verification target: Real Bit Value And Square Bound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f1fb18a821f103316d4fdb84d32485641d083f5",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/RealFunctions/FiniteBinaryCarrierMathematics/Variant5f4638f32c21802d/RealBitValueAndSquareBound.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/RealBitValueAndSquareBound.lean/index.md) · [Full source](../../../../RealFunctions/RealBitValueAndSquareBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f1fb18a821f103316d4fdb84d32485641d083f5`.

Source path: `GRWTSK/Analysis/RealAnalysis/RealFunctions/FiniteBinaryCarrierMathematics/Variant5f4638f32c21802d/RealBitValueAndSquareBound.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/RealFunctions/FiniteBinaryCarrierMathematics/Variant5f4638f32c21802d/RealBitValueAndSquareBound.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Carrier.BinaryMatrixStream` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bitValue](../../../../RealFunctions/RealBitValueAndSquareBound.lean/declarations/bitvalue.md) | 41 | `declaration-track:807ee520273d55b4bfa7230cdcb8e279572fbd7fdc687558c819bc2706639b0b` |
| 2 | `def` | [bitNormSq](../../../../RealFunctions/RealBitValueAndSquareBound.lean/declarations/bitnormsq.md) | 44 | `declaration-track:178635015337fa640bb39c66d5b2ef5b7ce48fd7701662076ebb528ecde6d789` |
| 3 | `theorem` | [bitNormSq_le_one](../../../../RealFunctions/RealBitValueAndSquareBound.lean/declarations/bitnormsq-le-one.md) | 47 | `result-track:284f591d87e7828293768098be7d37111786dd7ceec88257c45ce0976fc2fa59` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=461941fa22d714b14ef70d2d26af1772616d5f084a209b215d64b45681e9ee3f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/RealFunctions/FiniteBinaryCarrierMathematics/Variant5f4638f32c21802d/RealBitValueAndSquareBound.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/RealFunctions/FiniteBinaryCarrierMathematics/Variant5f4638f32c21802d/RealBitValueAndSquareBound.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
