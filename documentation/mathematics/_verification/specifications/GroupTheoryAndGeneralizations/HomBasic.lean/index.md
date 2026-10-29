# Verification target: Hom Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0193a2c9cf329b4ed3c7d141ec0d2166141e586",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Varianteaa75b830586c7edffde9518af2f7126af3beb2557097bfca98de9c0b05c46b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0193a2c9cf329b4ed3c7d141ec0d2166141e586`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Varianteaa75b830586c7edffde9518af2f7126af3beb2557097bfca98de9c0b05c46b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Varianteaa75b830586c7edffde9518af2f7126af3beb2557097bfca98de9c0b05c46b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powMonoidHom](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/powmonoidhom.md) | 34 | `declaration-track:69bdeb02216cf5711c76481f7161ad8fbfb9f62f6604a20c0bdd71ae901174df` |
| 2 | `def` | [zpowGroupHom](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/zpowgrouphom.md) | 49 | `declaration-track:444e99f4af935f8c533e6ca8e6f89e6ac88667c79c75d7658a06ef01cc8bafbd` |
| 3 | `def` | [invMonoidHom](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/invmonoidhom.md) | 57 | `declaration-track:215c6b553a872e4af9a97c8d9bdf1951fd51048b8dde99967930e2040a98b113` |
| 4 | `theorem` | [coe_invMonoidHom](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/coe-invmonoidhom.md) | 63 | `result-track:46b728bb60c4f142996d191c92c850f2a175c7cb9b580e950c0b46925228fe1e` |
| 5 | `theorem` | [invMonoidHom_apply](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/invmonoidhom-apply.md) | 66 | `result-track:85cda28727e0b0308c702ddd96a49badab735ba6f61e285fc80bf7225e519ae0` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/instance.md) | 76 | `declaration-track:4fcf0573e1951e4e90a8a8a0e3e176505e9e61c3a607dd578b4c2dfb5b5cb20a` |
| 7 | `theorem` | [mul_apply](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/mul-apply.md) | 84 | `result-track:537faf509d30e40a9679a4bb15c5e7d80a3cf70e28d78945287ee911995fddba` |
| 8 | `theorem` | [mul_comp](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/mul-comp-source-edition-2.md) | 88 | `result-track:8f1e6ae484310e3965c86198f63c2d12847e84af15a7295ce28ff4afb8e3370f` |
| 9 | `theorem` | [comp_mul](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/comp-mul.md) | 92 | `result-track:8027e202040e81bad6b1e300f46b24ff4289f33f4073ec0d4ac3146029d6539b` |
| 10 | `theorem` | [_root_.injective_iff_map_eq_one](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/root-injective-iff-map-eq-one.md) | 109 | `result-track:53b94ce1955ad5e585d30d16fcfd33a4deaa3eb6ae1e3380915a5cf0d830b37b` |
| 11 | `theorem` | [_root_.injective_iff_map_eq_one'](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/root-injective-iff-map-eq-one-source-edition-2.md) | 122 | `result-track:fba499579d07c7544b329ecd248ab61cbdf17f1c4b25317be7a356d7848062c0` |
| 12 | `def` | [ofMapMulInv](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/ofmapmulinv.md) | 135 | `declaration-track:d16135a14c56e313d0bf15e0ea41c627831c6ac6109d8599a4c2544b7291614c` |
| 13 | `theorem` | [coe_of_map_mul_inv](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/coe-of-map-mul-inv.md) | 146 | `result-track:5bbb2d98568709cace222d999ade1d9c07314123cda0c2f9b7cc49d95f2a1a41` |
| 14 | `def` | [ofMapDiv](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/ofmapdiv.md) | 152 | `declaration-track:dbd124ad83f4f3a98785ac221f9f1d45c4ede23eebd082fc33ec6f5560e2397b` |
| 15 | `theorem` | [coe_of_map_div](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/coe-of-map-div.md) | 156 | `result-track:3c3a26233bf1c73c5f0ad2d835660b1e79315aaaf6d72c0ea2e1e702f66a0c1d` |
| 16 | `instance` | [mul](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/mul.md) | 167 | `declaration-track:e4e09552a7e73700deb03982b722fee2b41920aea5aa791c1fa8cb062813700d` |
| 17 | `lemma` | [mul_apply](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/mul-apply-source-edition-2.md) | 178 | `result-track:cba90f9334a1bd33c3937579e83fd0ad8163bfbf338794f56561078b243b99ac` |
| 18 | `lemma` | [mul_comp](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/mul-comp.md) | 181 | `result-track:79caa13e67412da330b687562d284e667c75823ff95bac0aac1fe0343a12819c` |
| 19 | `lemma` | [comp_mul](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/comp-mul-source-edition-2.md) | 185 | `result-track:aa90c965374f6330019dd3ac80bc0747d192961503739c5440c65bab246f4f7b` |
| 20 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/instance-source-edition-3.md) | 198 | `declaration-track:a8090e40aae403c5164163611fd9c33787053e4a461875fd33e254eea06ae9ac` |
| 21 | `lemma` | [inv_apply](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/inv-apply.md) | 201 | `result-track:0143e875840f8f6264ab2326492078ba85b9b5e139889f4853db7010edd51f41` |
| 22 | `theorem` | [inv_comp](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/inv-comp.md) | 204 | `result-track:8bf9175688c16b494756f35156ffa2eb6eba68e73d5a8c9c127a26f92b549a2a` |
| 23 | `theorem` | [comp_inv](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/comp-inv.md) | 207 | `result-track:18af0895d463756361c1d722e4bff6e0e3715bfcfe46f3c831fceb4a544ced3a` |
| 24 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/instance-source-edition-2.md) | 215 | `declaration-track:680e774e251f1786815c6c3d03a14de22dc004e70e25f6fa8b8bc35af5159bf2` |
| 25 | `lemma` | [div_apply](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/div-apply.md) | 219 | `result-track:39ed347d55a2b7c09d12db83ecbec6641967c8b6471755c3e2d577abdeb0dda6` |
| 26 | `lemma` | [div_comp](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/div-comp.md) | 222 | `result-track:1787489f39c1606e639bc7dbcf3b1e951abde6e906090540f19c96e30f9fb24b` |
| 27 | `lemma` | [comp_div](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/comp-div.md) | 225 | `result-track:38d9d01a8f1655330ed8408ae52cddda036d25895d50b3f7e35bb6f16b863ffa` |
| 28 | `def` | [commGroupOfInjective](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/commgroupofinjective.md) | 231 | `declaration-track:5aef4404d7182d3dc378c48578a1d003a0996fdc468400de6b4dc44232cb1942` |
| 29 | `def` | [commGroupOfSurjective](../../../../GroupTheoryAndGeneralizations/HomBasic.lean/declarations/commgroupofsurjective.md) | 236 | `declaration-track:e89fe073ac71516b04f167e61770e97848af36081c76250314b5ed94120ef52d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e96e5b72a741755264c75fb97fe40712ed1881675ff708f97d1da0f050988b13 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Varianteaa75b830586c7edffde9518af2f7126af3beb2557097bfca98de9c0b05c46b1.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Varianteaa75b830586c7edffde9518af2f7126af3beb2557097bfca98de9c0b05c46b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
