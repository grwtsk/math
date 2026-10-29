# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFourTermRectangle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52d2386b65c86fbb033eb7cc78346303c0ef0d7c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFourTermRectangle.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52d2386b65c86fbb033eb7cc78346303c0ef0d7c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFourTermRectangle.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripFourTermRectangle.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFourTermWitness`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermWitness.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalCover`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripRationalCover.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sample_lower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/declarations/sample-lower.md) | 30 | `result-track:2bcca372be6b50a0143323cdcc98673ce8d63f384045d0505574b56493734e36` |
| 2 | `def` | [enlargedDisk](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/declarations/enlargeddisk.md) | 36 | `declaration-track:d1f9496865ee6d49897675b8268fe689c8eb1712910cc9ff61295734aa20099a` |
| 3 | `lemma` | [disk_radius](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/declarations/disk-radius.md) | 38 | `result-track:e5f89f7e4d9f001fa24058dc3c19e94b6864d11a975f912e2be3d9c5cb0d3b0f` |
| 4 | `lemma` | [disk_real_lower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/declarations/disk-real-lower.md) | 42 | `result-track:286da13631412ce18105d672a3b52b530eafad797737ddefd6fa2d2dd694b1a2` |
| 5 | `lemma` | [disk_norm_le_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/declarations/disk-norm-le-one.md) | 48 | `result-track:ac66435d2389d53cf0c059086917e5d67d21193a9bc67531c4bbc9683c61bc50` |
| 6 | `lemma` | [derivative_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/declarations/derivative-bound.md) | 57 | `result-track:8b3d1b5d73c22f86c52ecc21fbe6e4a887d77a168aba8a130c675cc02a03dd06` |
| 7 | `def` | [enlargedPatch](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/declarations/enlargedpatch.md) | 65 | `declaration-track:5e838551da5d753e0b250cc6466741220dc40b15e9cb5375ecc59f70bc35ae20` |
| 8 | `theorem` | [norm_lower_on_enlargedDisk](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/declarations/norm-lower-on-enlargeddisk.md) | 77 | `result-track:d4fb137b8cca0d585ee908d561baf278a9f42c53d3b4043d71f7cdbed4a4c4db` |
| 9 | `theorem` | [oldDisk_subset](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/declarations/olddisk-subset.md) | 85 | `result-track:4338df8f40650286b7c664793cf3601ed62e1a9698dc26df2642245e9def3fb4` |
| 10 | `def` | [box](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/declarations/box.md) | 91 | `declaration-track:f57e367d9e48b4bffcd80e739b0ae58bbdca03f08d7e06dbc303ebb2af2c2acf` |
| 11 | `def` | [rationalDisk](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/declarations/rationaldisk.md) | 97 | `declaration-track:1355dee485bd626c0a35ff598269425f689809384dc6336d34de94842da1417c` |
| 12 | `def` | [disks](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/declarations/disks.md) | 102 | `declaration-track:be47cff81a4915e5e5fd3c0d9cd4c9ee55e51f9f6316adb7665eb228eb4fbd35` |
| 13 | `lemma` | [rationalDisk_carrier](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/declarations/rationaldisk-carrier.md) | 104 | `result-track:615c5afc10f9447e37a940ae10df306fee5d148912bb419dc90f4c217c7cd491` |
| 14 | `def` | [tree](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/declarations/tree.md) | 108 | `declaration-track:9cccddb156d8f32962358e84c62167216a9375e51eceecbc771ca96a3f4004b3` |
| 15 | `lemma` | [tree_accepted](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/declarations/tree-accepted.md) | 114 | `result-track:96d33d23503b71efb96eb93aba1584548c6e414fcde8051daede06821166c7ce` |
| 16 | `lemma` | [tree_leaves](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/declarations/tree-leaves.md) | 119 | `result-track:51c4aae9880512d4a02ace26ea1ee8e6999056e670ea00cb469571beddf4b32a` |
| 17 | `lemma` | [box_wellFormed](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/declarations/box-wellformed.md) | 121 | `result-track:193b933d969624faa843cc13eebc40d54a0725a646a6b45c44ac42cdce32f7c7` |
| 18 | `lemma` | [box_nonempty](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/declarations/box-nonempty.md) | 123 | `result-track:94aeb90733bd17088aac75f3d77ecfc40e9a2e96b6c7a4bd719d88a05a2362ad` |
| 19 | `def` | [cover](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/declarations/cover.md) | 126 | `declaration-track:2a49316830ade47f612f7a897594b1386841a7b7e8fb3b7d89c57e040407e394` |
| 20 | `theorem` | [box_subset_enlargedDisk](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/declarations/box-subset-enlargeddisk.md) | 131 | `result-track:dc941e66fe3d96ffa4e2e115c39c91217b8eef6367e618645e7aa61278a7e141` |
| 21 | `theorem` | [norm_lower_on_box](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/declarations/norm-lower-on-box.md) | 136 | `result-track:f065f8af8fc8a7c43581eb339a680d7217980bf9aa4d6358907e66d14bbdf669` |
| 22 | `theorem` | [noTargetZero_box](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/declarations/notargetzero-box.md) | 140 | `result-track:7b946e33f6b9b2e48a3eaec389ef5a8744decaa2974526e2ea5880483c784645` |
| 23 | `theorem` | [box_extends_oldDisk](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/declarations/box-extends-olddisk.md) | 145 | `result-track:adb6d0de102494b15186cd9ee0d14a114730e0e49497e16aae3c572c93fe5516` |
| 24 | `theorem` | [box_above_old_seed](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFourTermRectangle.lean/declarations/box-above-old-seed.md) | 155 | `result-track:1bda153fe8ad5d38b8751b6edb58553162d0dcd1da7ca91b2d93f933be596626` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba263ac39f7a3ece8b63fe55923ef1562b7ca60fc84c26eaf2eeb36886023708 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFourTermRectangle.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CriticalStripFourTermRectangle.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
