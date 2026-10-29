# Verification target: Multiset Lattice Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d7c374a74e83a7865b5fb04f09e17fd3bff93ea",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variantbc87a42e257917a981670839a3ef7a72882fdbbe009640e02ec138e12bba5906.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d7c374a74e83a7865b5fb04f09e17fd3bff93ea`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variantbc87a42e257917a981670839a3ef7a72882fdbbe009640e02ec138e12bba5906.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lattice/Variantbc87a42e257917a981670839a3ef7a72882fdbbe009640e02ec138e12bba5906.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.FinsetOps` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Fold` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sup](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/sup.md) | 35 | `declaration-track:9943d177b984a103410293398ba2a2991f079e51e8113f4e10bcaa329c707eaf` |
| 2 | `theorem` | [sup_coe](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/sup-coe.md) | 39 | `result-track:a51106762bc7622a7e4cb0f71629b7017efc3053bed11a02d07df4b133285638` |
| 3 | `theorem` | [sup_zero](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/sup-zero.md) | 43 | `result-track:029dc69bf1e8f579c4628ff8352c3dc1ec1a6331a908a9459b2dae9f25bd76e1` |
| 4 | `theorem` | [sup_cons](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/sup-cons.md) | 47 | `result-track:bc8f3c3de1c781f66995143467f6accf1f7557101b7dea198e5cdf872215e421` |
| 5 | `theorem` | [sup_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/sup-singleton.md) | 51 | `result-track:29fdf9219f6c2512a2cd411ddd5c8a48a47fd3e2e50343a9cbd2e6ba4eabfd01` |
| 6 | `theorem` | [sup_add](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/sup-add.md) | 54 | `result-track:5a540ce4f4282cb5fe302b1b4886d80c6f78d310d3944926f828c1630843e390` |
| 7 | `theorem` | [sup_le](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/sup-le.md) | 58 | `result-track:c73ac1da63848e43aca59e064b8c1bd6d61fface84ffe9daf237137e3a0a6f63` |
| 8 | `theorem` | [le_sup](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/le-sup.md) | 62 | `result-track:edd19abc1d07f2e2f52780d8bebf4ce23d6c48c6e8ea41a6b33b17a1d5fbdcf9` |
| 9 | `theorem` | [sup_mono](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/sup-mono.md) | 66 | `result-track:e0aa917cf0eacad50f8ed1d2fee32ae2a19aab5c9aedb6a72ec72d49c12af3cc` |
| 10 | `theorem` | [sup_dedup](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/sup-dedup.md) | 72 | `result-track:50ba0e297a56da704092a7e834fb7d5798f1aa5d28a397c56d9dffd3bc1b43a0` |
| 11 | `theorem` | [sup_ndunion](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/sup-ndunion.md) | 76 | `result-track:10f97052d0e741833ad351edab17424e7a61c922e48e6874a517d6574b2aace0` |
| 12 | `theorem` | [sup_union](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/sup-union.md) | 80 | `result-track:51214f7b19882bc5636724f01e0ce7129bd691ddf4d0f11535b1cd49c978b59e` |
| 13 | `theorem` | [sup_ndinsert](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/sup-ndinsert.md) | 84 | `result-track:8e1704f929b716bc6cd1207b59ec0f64ce95fd31576cc569255ed6a84b2b7f08` |
| 14 | `theorem` | [nodup_sup_iff](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/nodup-sup-iff.md) | 87 | `result-track:64d69fb1f65a8a8a2b3995e13a9413eb5d48138bf257314fb1e5ce9ceb444f4d` |
| 15 | `def` | [inf](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/inf.md) | 104 | `declaration-track:bed3ace075acb67b7a0659e7169a21aa0b145d983344ce848aeea18ccaaf78d6` |
| 16 | `theorem` | [inf_coe](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/inf-coe.md) | 108 | `result-track:a81d8fc35bb57aa0d7b48c6f0441a85c1b96da10fe43d8fa4a629ad39a9d834a` |
| 17 | `theorem` | [inf_zero](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/inf-zero.md) | 112 | `result-track:64d33d8368abbf7f344a67ed155b0b1b0e130d0e86d2783471d3c2ef33bc295e` |
| 18 | `theorem` | [inf_cons](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/inf-cons.md) | 116 | `result-track:37bcd7755954411ed86a86f3c9f8785aae35a333c2320427f63ab49cae4e336f` |
| 19 | `theorem` | [inf_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/inf-singleton.md) | 120 | `result-track:8efdc177624f577f5e467644bc4a6a2d991d063c535764d7ea307c10bc110dc9` |
| 20 | `theorem` | [inf_add](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/inf-add.md) | 123 | `result-track:a5098da9d2637b07a147241c2c2fe38a5eaf7f3f1cbf5ae2e92f65855db9fa8d` |
| 21 | `theorem` | [le_inf](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/le-inf.md) | 127 | `result-track:7d714424adf124ab105661ebd8d1a95bdaeabe1c9b1aea851b5fac994a8bc4d4` |
| 22 | `theorem` | [inf_le](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/inf-le.md) | 131 | `result-track:a7b50f2b2c263ece60ddcb69840634a8ffd637b4ac0f0e2d8fdb3edfe5d89b49` |
| 23 | `theorem` | [inf_mono](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/inf-mono.md) | 135 | `result-track:bbb339db8e3d05184e0bdee2178fae4187433ecef9b871594b9e8f28c065e482` |
| 24 | `theorem` | [inf_dedup](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/inf-dedup.md) | 141 | `result-track:1eda742d7503782705f3a48383681e5eda7afe5efb33797acc36d2385f67a098` |
| 25 | `theorem` | [inf_ndunion](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/inf-ndunion.md) | 145 | `result-track:f19b5a53150721330633341861e8a31a9c50eee6014df832cf30931e73976061` |
| 26 | `theorem` | [inf_union](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/inf-union.md) | 149 | `result-track:af7fdcad1b87584cca11d415779d7fef8ed39ab63f7b401c8bcadbc82c9fb312` |
| 27 | `theorem` | [inf_ndinsert](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetLatticeNamespaced.lean/declarations/inf-ndinsert.md) | 153 | `result-track:8a6c2368e59ba22051e3fa373fdd1f2e3e60f759bdf82cf8cf240f368ae8307b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=464c32477105720c984e0b85d02a6657004148266f00cffaa10dc2747a6c8c68 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variantbc87a42e257917a981670839a3ef7a72882fdbbe009640e02ec138e12bba5906.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Lattice/Variantbc87a42e257917a981670839a3ef7a72882fdbbe009640e02ec138e12bba5906.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
