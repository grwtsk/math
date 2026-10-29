# Verification target: Henselian Is Local Ring Hom Of Le Jacobson Bot

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c9697135ee6db770569f271070c71c865a013c4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Henselian/Variant766050d94e061d2085b4f96c3c40d3757d98c71578d4ab7eeb2fa984141dfd54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/HenselianIsLocalRingHomOfLeJacobsonBot.lean/index.md) · [Full source](../../../../CommutativeAlgebra/HenselianIsLocalRingHomOfLeJacobsonBot.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c9697135ee6db770569f271070c71c865a013c4`.

Source path: `GRWTSK/Algebra/Henselian/Variant766050d94e061d2085b4f96c3c40d3757d98c71578d4ab7eeb2fa984141dfd54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Henselian/Variant766050d94e061d2085b4f96c3c40d3757d98c71578d4ab7eeb2fa984141dfd54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Taylor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.LocalRing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AdicCompletion` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isLocalRingHom_of_le_jacobson_bot](../../../../CommutativeAlgebra/HenselianIsLocalRingHomOfLeJacobsonBot.lean/declarations/islocalringhom-of-le-jacobson-bot.md) | 65 | `result-track:fb2a1264587886e9ccc4c5f0161d80364e08faa55e23566526f5afbfd2559182` |
| 2 | `class` | [HenselianRing](../../../../CommutativeAlgebra/HenselianIsLocalRingHomOfLeJacobsonBot.lean/declarations/henselianring.md) | 93 | `declaration-track:bbf414957392165325edd5f8c4f0c369b343a64172779a6fd4213ec76f8ccbe9` |
| 3 | `class` | [HenselianLocalRing](../../../../CommutativeAlgebra/HenselianIsLocalRingHomOfLeJacobsonBot.lean/declarations/henselianlocalring.md) | 108 | `declaration-track:fddc741a91b32b5275ee47b05cc81083cba7657588dec5b9386f008d7b51f65e` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HenselianIsLocalRingHomOfLeJacobsonBot.lean/declarations/instance.md) | 115 | `declaration-track:8b1d3df9ab976e1ef3623e31a8f7e6be7e5f28b1437bb604ca766fc6f9a03888` |
| 5 | `theorem` | [HenselianLocalRing.TFAE](../../../../CommutativeAlgebra/HenselianIsLocalRingHomOfLeJacobsonBot.lean/declarations/henselianlocalring-tfae.md) | 121 | `result-track:ec81c7bb81dede00905f6f1260eed689610ff6f5369a0d5d24dcd69cff0c5159` |
| 6 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HenselianIsLocalRingHomOfLeJacobsonBot.lean/declarations/instance-source-edition-2.md) | 159 | `declaration-track:8e87acde217261806e1d6516ca4fe5a646d1f948dd0dfed76cdf6d24ae0bec03` |
| 7 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HenselianIsLocalRingHomOfLeJacobsonBot.lean/declarations/instance-source-edition-3.md) | 175 | `declaration-track:bb886241117a3a528b0b3a54b3229a533393471be48818f72c97a55428664d76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a47fddee9282f7fa6d7d3bdfd06e7a2d597403d4f656c84ff1b928833d8d1fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Henselian/Variant766050d94e061d2085b4f96c3c40d3757d98c71578d4ab7eeb2fa984141dfd54.lean","GRWTSK/_verification/specifications/Algebra/Henselian/Variant766050d94e061d2085b4f96c3c40d3757d98c71578d4ab7eeb2fa984141dfd54.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
