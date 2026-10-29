# Verification target: Codec Left Inverse Codec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86b5bba51d09e998df3d5a8c27cc5c4fa9b3b862",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Codec/Variant8136e4b65fdd2b32c0a6c3485ceef6e5dc6876cec11df03ccdbeff9110e9fadd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CodecLeftInverseCodec.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CodecLeftInverseCodec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86b5bba51d09e998df3d5a8c27cc5c4fa9b3b862`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Codec/Variant8136e4b65fdd2b32c0a6c3485ceef6e5dc6876cec11df03ccdbeff9110e9fadd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Codec/Variant8136e4b65fdd2b32c0a6c3485ceef6e5dc6876cec11df03ccdbeff9110e9fadd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Defs` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LeftInverseCodec](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CodecLeftInverseCodec.lean/declarations/leftinversecodec.md) | 21 | `declaration-track:522b295596cc5297958ab15f586dabe180ba27803824efcb204cc7893a4c7ee7` |
| 2 | `theorem` | [encode_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CodecLeftInverseCodec.lean/declarations/encode-injective.md) | 31 | `result-track:ecf47d8b961bd8d79e38e5cade3cd06db3d739d1f4ae175ca93590a84a102919` |
| 3 | `def` | [ValidOutput](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CodecLeftInverseCodec.lean/declarations/validoutput.md) | 39 | `declaration-track:b4ed80331a589a9119ee234dfa2dd3301618fa7ad336926691b3efe37c9445b3` |
| 4 | `def` | [ValidOutputType](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CodecLeftInverseCodec.lean/declarations/validoutputtype.md) | 46 | `declaration-track:600c0748185ae9c8341131309888b16584c0d816d6ef33208e5de8f98c2ba3c0` |
| 5 | `theorem` | [encode_decode_of_valid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CodecLeftInverseCodec.lean/declarations/encode-decode-of-valid.md) | 51 | `result-track:a8bb9acdfe75304437fb47f28a4cb972eea893c11fc3d69c6b3916c85ca15912` |
| 6 | `def` | [sourceEquivValidOutput](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CodecLeftInverseCodec.lean/declarations/sourceequivvalidoutput.md) | 60 | `declaration-track:8d70bdb17d64331eeb46cec0ff2c7cbc3f577f7cdddb680ebe2205ebce1758f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7743c17f07531b9761a1fda9ce234a817bd0ae3952a00339e1e324a318033595 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Codec/Variant8136e4b65fdd2b32c0a6c3485ceef6e5dc6876cec11df03ccdbeff9110e9fadd.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Codec/Variant8136e4b65fdd2b32c0a6c3485ceef6e5dc6876cec11df03ccdbeff9110e9fadd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
