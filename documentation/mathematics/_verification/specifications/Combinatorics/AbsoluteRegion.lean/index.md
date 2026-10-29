# Verification target: Absolute Region

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe91b341c0cd920f2ceffea467110294e0346c56",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AbsoluteRegion/Variantab752fd6da225254d4fc1a25f8e7adfd09c04bf7593243399b0aea8158af1d37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/AbsoluteRegion.lean/index.md) · [Full source](../../../../Combinatorics/AbsoluteRegion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe91b341c0cd920f2ceffea467110294e0346c56`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/AbsoluteRegion/Variantab752fd6da225254d4fc1a25f8e7adfd09c04bf7593243399b0aea8158af1d37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/AbsoluteRegion/Variantab752fd6da225254d4fc1a25f8e7adfd09c04bf7593243399b0aea8158af1d37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Terrain.GlobalReference` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AbsoluteRegion](../../../../Combinatorics/AbsoluteRegion.lean/declarations/absoluteregion.md) | 18 | `declaration-track:9411ce6226c79914b7f4e6385b5b9796734110809852ce736bee745d653e20a0` |
| 2 | `def` | [univ](../../../../Combinatorics/AbsoluteRegion.lean/declarations/univ.md) | 26 | `declaration-track:889b1f1dfa621b37a6d3e136127515c2c80e1a44771d22b45c63b6471e7ce1cf` |
| 3 | `def` | [empty](../../../../Combinatorics/AbsoluteRegion.lean/declarations/empty.md) | 31 | `declaration-track:89ac9640d58dc8b08ed5eaab88030d74f66f6f35916285d7eb283bab9ee7a3f8` |
| 4 | `theorem` | [coordinates_univ](../../../../Combinatorics/AbsoluteRegion.lean/declarations/coordinates-univ.md) | 35 | `result-track:1c1ba9b4d52d77a8a7a7f28b2d5e804a70ab403e2e1d69fbf4ecb502b2fa8c51` |
| 5 | `theorem` | [coordinates_empty](../../../../Combinatorics/AbsoluteRegion.lean/declarations/coordinates-empty.md) | 44 | `result-track:80b86fb702e83d624a6a54c3c7b116476be83d56e1ef8b79199e41dcd3bc867d` |
| 6 | `abbrev` | [LocalCoord](../../../../Combinatorics/AbsoluteRegion.lean/declarations/localcoord.md) | 49 | `declaration-track:182be00133d288be7768925fdbc18cf9666be6a560b96bd331cec48a925ebaf5` |
| 7 | `def` | [globalCoord](../../../../Combinatorics/AbsoluteRegion.lean/declarations/globalcoord.md) | 53 | `declaration-track:0eb45b72dc83589f03a29930daa0079b59673371ed0ff90bd6314788049d4e40` |
| 8 | `theorem` | [globalCoord_injective](../../../../Combinatorics/AbsoluteRegion.lean/declarations/globalcoord-injective.md) | 56 | `result-track:5a30f6fee8dad781f09d126c46f9551769f71d868d3275bfd8e45dc4d0be034d` |
| 9 | `def` | [localDecidableEq](../../../../Combinatorics/AbsoluteRegion.lean/declarations/localdecidableeq.md) | 61 | `declaration-track:7096919ec2c6bf7a1ade29478b76cbcbb18d95743bf5530302870d4e537e3c2e` |
| 10 | `def` | [localFintype](../../../../Combinatorics/AbsoluteRegion.lean/declarations/localfintype.md) | 66 | `declaration-track:734c08db1f55837ae5846b7e1c4e3dde5e457a2b50138c792c10a8fe7f7cace0` |
| 11 | `def` | [restrictSignal](../../../../Combinatorics/AbsoluteRegion.lean/declarations/restrictsignal.md) | 72 | `declaration-track:f585c525e014816d3cf4e90750f8e34c773ebe98f4052294afdfa8f02c2d7bcb` |
| 12 | `def` | [extendSignal](../../../../Combinatorics/AbsoluteRegion.lean/declarations/extendsignal.md) | 77 | `declaration-track:b3cef4d9451d0b38715cc91a63fc40f7a8cd8ce94d7b819a3208c0ae31472f36` |
| 13 | `theorem` | [restrictSignal_extendSignal](../../../../Combinatorics/AbsoluteRegion.lean/declarations/restrictsignal-extendsignal.md) | 84 | `result-track:28880464e19f3e3bf5fef92960221f041dcba5d47b2d0680dc555405b0441ef8` |
| 14 | `theorem` | [extendSignal_eq_zero_of_not_mem](../../../../Combinatorics/AbsoluteRegion.lean/declarations/extendsignal-eq-zero-of-not-mem.md) | 91 | `result-track:f25b4a01c8cf8c50919d4243657f3c9c3cde4c322b832edb7b591d0311a1cf25` |
| 15 | `def` | [projectSignal](../../../../Combinatorics/AbsoluteRegion.lean/declarations/projectsignal.md) | 99 | `declaration-track:168d51756e994a91bee17b22077b4661079211f7229af9e64e4bfe11e4c380b7` |
| 16 | `theorem` | [projectSignal_apply_mem](../../../../Combinatorics/AbsoluteRegion.lean/declarations/projectsignal-apply-mem.md) | 104 | `result-track:b897ecfd2512e355a54dd2b3ceb96026e82b086984d477199ca73ba222485a00` |
| 17 | `theorem` | [projectSignal_apply_not_mem](../../../../Combinatorics/AbsoluteRegion.lean/declarations/projectsignal-apply-not-mem.md) | 111 | `result-track:2c3a1f717d936638d94f3200387cdb8a0c8ad867b6cb6b68d35ec2cd1c89adb6` |
| 18 | `theorem` | [projectSignal_idempotent](../../../../Combinatorics/AbsoluteRegion.lean/declarations/projectsignal-idempotent.md) | 120 | `result-track:7d7879e7019b95f032469dffb02358a6c750faf98d34b3ad15b6e8365338631b` |
| 19 | `def` | [inducedRelation](../../../../Combinatorics/AbsoluteRegion.lean/declarations/inducedrelation.md) | 130 | `declaration-track:5b05cc599994e5af6bb0960f0988d49e5f273884421c72d9e283498208da4ee2` |
| 20 | `theorem` | [inducedRelation_iff](../../../../Combinatorics/AbsoluteRegion.lean/declarations/inducedrelation-iff.md) | 136 | `result-track:4a04504c519ebb8978f51d787b307211a326ef57cf99c312492fb9d5972f6b95` |
| 21 | `def` | [Subregion](../../../../Combinatorics/AbsoluteRegion.lean/declarations/subregion.md) | 143 | `declaration-track:2c546646f783da60eb5b25d68f972b7d9caad803b32cbe9c7e6ab65da4603efa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bbec606a3f1f4e282e63d56e6075e914faefff4975130f3c0ae408bb8bbb30ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/AbsoluteRegion/Variantab752fd6da225254d4fc1a25f8e7adfd09c04bf7593243399b0aea8158af1d37.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/AbsoluteRegion/Variantab752fd6da225254d4fc1a25f8e7adfd09c04bf7593243399b0aea8158af1d37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
