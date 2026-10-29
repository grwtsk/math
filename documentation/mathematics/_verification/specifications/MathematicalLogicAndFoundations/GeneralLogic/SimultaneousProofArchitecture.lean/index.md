# Verification target: GRWTSK.Logic.SimultaneousProofArchitecture

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e10da1269d04b918e3cb7940037e97d20958605",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/SimultaneousProofArchitecture.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SimultaneousProofArchitecture.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SimultaneousProofArchitecture.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e10da1269d04b918e3cb7940037e97d20958605`.

Source path: `GRWTSK/Logic/SimultaneousProofArchitecture.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/SimultaneousProofArchitecture.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TargetDisposition](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SimultaneousProofArchitecture.lean/declarations/targetdisposition.md) | 10 | `declaration-track:cb7db2a1fbcb675868a4d6f0f33695cd673adfbe0621e294e7acbb0c55b00f24` |
| 2 | `def` | [proof?](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SimultaneousProofArchitecture.lean/declarations/proof.md) | 22 | `declaration-track:23fbc5f22c99d592c2a53be969a13367aca6cc3e78077f79c8fad38b44aa6074` |
| 3 | `def` | [refutation?](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SimultaneousProofArchitecture.lean/declarations/refutation.md) | 29 | `declaration-track:3bb76732c9eb6c303ec4941050bf0f61c3c8405b50a540233075a1b45024fb17` |
| 4 | `theorem` | [unresolved_proof?](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SimultaneousProofArchitecture.lean/declarations/unresolved-proof.md) | 37 | `result-track:af298fb5e9bab4006189d549c76a4c40dca5a4d742b3db77a916c4d371f8528a` |
| 5 | `theorem` | [unresolved_refutation?](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SimultaneousProofArchitecture.lean/declarations/unresolved-refutation.md) | 42 | `result-track:f34bf02688cd78540d0807abd811759d8ce8312f20ba16689bb92e03b4183ae2` |
| 6 | `theorem` | [conditional_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SimultaneousProofArchitecture.lean/declarations/conditional-apply.md) | 46 | `result-track:aa387cc39ddfaf7a9ee873159792a2cde98e873e818a9b871b9f56f4042c38f8` |
| 7 | `structure` | [SimultaneousProofBundle](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SimultaneousProofArchitecture.lean/declarations/simultaneousproofbundle.md) | 54 | `declaration-track:7327b844dc0a0e64cd421576b0eb87ff9aa502c3c344b0d76bb0d5ab605f39cf` |
| 8 | `theorem` | [local](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SimultaneousProofArchitecture.lean/declarations/local.md) | 64 | `result-track:6a8ef32f25f054039278f1b71a4ccec63d3e7c871d433e7ae9af9a1a49b6dcd5` |
| 9 | `def` | [retarget](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SimultaneousProofArchitecture.lean/declarations/retarget.md) | 69 | `declaration-track:6ac345dfdce3d226798493857d3f4db76a9ba756d14e8bc143bd93122dcebbf0` |
| 10 | `theorem` | [retarget_local](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SimultaneousProofArchitecture.lean/declarations/retarget-local.md) | 76 | `result-track:2d2d0d9dfef7bc97a31b782faf92ab62a9198daabae5cb953cac85a69f4015c7` |
| 11 | `inductive` | [LocalIndex](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SimultaneousProofArchitecture.lean/declarations/localindex.md) | 86 | `declaration-track:111d77cbee8d91ca11a2dd0bf6d00d863519433aeafac8ffa7d218fa645fe135` |
| 12 | `def` | [localClaim](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SimultaneousProofArchitecture.lean/declarations/localclaim.md) | 92 | `declaration-track:f1b39ef1e943459b8e896e883fc90e0c3b751780b4c07d99b0efad2d96213224` |
| 13 | `def` | [refutedTargetBundle](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SimultaneousProofArchitecture.lean/declarations/refutedtargetbundle.md) | 95 | `declaration-track:d4ea38ec6933f32da227ba94d87e9549fcbdc6d2ba45aee4e4e5db7ca5a490af` |
| 14 | `theorem` | [local_survives_refuted_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SimultaneousProofArchitecture.lean/declarations/local-survives-refuted-target.md) | 100 | `result-track:f9520ad3d60d254d512d1d739e042a70ecf62e7b13db1e6f42a8777188c1061f` |
| 15 | `def` | [unresolvedTargetBundle](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SimultaneousProofArchitecture.lean/declarations/unresolvedtargetbundle.md) | 104 | `declaration-track:1e4fbf572019b0dda8916df4b65df143c9bc4ca670cc1a0e0425df930fb54027` |
| 16 | `theorem` | [local_survives_unresolved_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SimultaneousProofArchitecture.lean/declarations/local-survives-unresolved-target.md) | 109 | `result-track:64c247c38afb2eacfbf60817ec2b2cd43627e453c9a9ddf59d1010cb0f8535cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78a52285be5181a5343f18f132962797017face723fd5c76a355b18c90080e0b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Logic/SimultaneousProofArchitecture.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofArchitecture.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
