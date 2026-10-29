# Verification target: Roots Of Unity Basic Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2385f5b436375d6ececb67ae95b83f0b0b9d9942",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant919a19ca71d7764d5c96bc2321ea5d029fc1f339d07053b6a93fa6c71a6289f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2385f5b436375d6ececb67ae95b83f0b0b9d9942`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant919a19ca71d7764d5c96bc2321ea5d029fc1f339d07053b6a93fa6c71a6289f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant919a19ca71d7764d5c96bc2321ea5d029fc1f339d07053b6a93fa6c71a6289f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Reduced` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralDomain` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rootsOfUnity](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/rootsofunity.md) | 59 | `declaration-track:8c4afb0fe8c52299e36b1e57fdc45aefcbcc58c4c9bddd4af2cb0e8d9d088726` |
| 2 | `theorem` | [mem_rootsOfUnity](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/mem-rootsofunity-source-edition-2.md) | 66 | `result-track:a4d2640df8488904ebb7563c94f5f404068d6437ba530672112ef0583c6d50d8` |
| 3 | `theorem` | [mem_rootsOfUnity'](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/mem-rootsofunity.md) | 70 | `result-track:483c6b8c5bfb4278de4d9b29f729319ea77c8d9a0950c6a1df8fc6ab1211e4fd` |
| 4 | `theorem` | [rootsOfUnity_one](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/rootsofunity-one.md) | 74 | `result-track:f9deded78450db83b951acfc360ab6c3bcc423a981e45c0ee0e2cf5ff58e7cbf` |
| 5 | `lemma` | [rootsOfUnity_zero](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/rootsofunity-zero.md) | 79 | `result-track:d829d9fcae6fe62c82a74aad03c2f0af2b0f9183fa5c7ecfeb60d396962040e4` |
| 6 | `theorem` | [rootsOfUnity.coe_injective](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/rootsofunity-coe-injective.md) | 83 | `result-track:09ae832f5275d7acc52be9fd453c8f5f03cceec157d9ccd15482921a5836725e` |
| 7 | `def` | [rootsOfUnity.mkOfPowEq](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/rootsofunity-mkofpoweq.md) | 90 | `declaration-track:9d0c16782fd7945dcd6e0625b687a7cd115ac0cd574fc58ce4a77ca1816a4862` |
| 8 | `theorem` | [rootsOfUnity.coe_mkOfPowEq](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/rootsofunity-coe-mkofpoweq.md) | 94 | `result-track:7455a0e5343156608012b089141913ca74532afac964037834efe61e3b85a564` |
| 9 | `theorem` | [rootsOfUnity_le_of_dvd](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/rootsofunity-le-of-dvd.md) | 98 | `result-track:b3c5be5cda282a5c2d2e9e4b246052b347d61e2053e04a5b5da438a997e09c36` |
| 10 | `theorem` | [map_rootsOfUnity](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/map-rootsofunity.md) | 103 | `result-track:aec036f6cd44aba0886fd9b51b2a7eca332d7b27b266060c512c4554bada3ed2` |
| 11 | `theorem` | [rootsOfUnity.coe_pow](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/rootsofunity-coe-pow.md) | 108 | `result-track:4ce6eb41a87e917c02b07cf54e89fd9c3037ada7e8eeedeb9f35e3b6f69424da` |
| 12 | `def` | [rootsOfUnityUnitsMulEquiv](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/rootsofunityunitsmulequiv.md) | 114 | `declaration-track:a9e093303ac7ffd018a0276bf46d4329f58c732895de8cad204f00e781e81663` |
| 13 | `def` | [restrictRootsOfUnity](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/restrictrootsofunity.md) | 129 | `declaration-track:3b50c245e43391e11e8abe5e34d5eac69643e4cdb446ee05763180444f605051` |
| 14 | `theorem` | [restrictRootsOfUnity_coe_apply](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/restrictrootsofunity-coe-apply.md) | 139 | `result-track:43168c53b1cd752b238b2162f66115f49c36adc31e2ee7214e9f681a83a982c2` |
| 15 | `def` | [MulEquiv.restrictRootsOfUnity](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/mulequiv-restrictrootsofunity.md) | 144 | `declaration-track:9c8bf4d0b68119eb027f1c602b107b33aa8ac9be92e7ffa955095af0023a8025` |
| 16 | `theorem` | [MulEquiv.restrictRootsOfUnity_coe_apply](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/mulequiv-restrictrootsofunity-coe-apply.md) | 153 | `result-track:b723258332ade13cb7b7549f261b07fd2e77b9c8c4d85a155ab9537ebbb1e50e` |
| 17 | `theorem` | [MulEquiv.restrictRootsOfUnity_symm](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/mulequiv-restrictrootsofunity-symm.md) | 158 | `result-track:f3c67a3f8259e2b97f3520a2d776a9936124e5632bb1c37240e36da090674359` |
| 18 | `theorem` | [mem_rootsOfUnity_iff_mem_nthRoots](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/mem-rootsofunity-iff-mem-nthroots.md) | 169 | `result-track:aca5d623ae3bb772dc6947d10194c3698eeacc91ff6f75bb84f2d1c5d5159208` |
| 19 | `def` | [rootsOfUnityEquivNthRoots](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/rootsofunityequivnthroots.md) | 181 | `declaration-track:bdb5e19b83e556bf641f5230db1bdf4ba56450da4b04873b4f5c4b3d3cc5f638` |
| 20 | `theorem` | [rootsOfUnityEquivNthRoots_apply](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/rootsofunityequivnthroots-apply.md) | 195 | `result-track:ac058cc2cb6b77ba9abbe5702f0ac2250e986c9ede6c44f6e3a93b3c6f901bf0` |
| 21 | `theorem` | [rootsOfUnityEquivNthRoots_symm_apply](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/rootsofunityequivnthroots-symm-apply.md) | 200 | `result-track:a002dcfed9d4071fb7f58c274984799cbb03f353255153d482ea1f29f01f79b5` |
| 22 | `instance` | [rootsOfUnity.fintype](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/rootsofunity-fintype.md) | 206 | `declaration-track:341cdf6f8cb16934683798a057f0dcc42d646571ffd3cd2c7047cab934e11577` |
| 23 | `instance` | [rootsOfUnity.isCyclic](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/rootsofunity-iscyclic.md) | 210 | `declaration-track:0c7aebd2f8faa3b1444896e9b0c5e122ecc5820bf5d4b37fdbf61b29f07a0725` |
| 24 | `theorem` | [card_rootsOfUnity](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/card-rootsofunity.md) | 213 | `result-track:691a10cbfff664d3ece2904c2e5a95b2c186c1417d2de69c84ec09c88efa1d0e` |
| 25 | `theorem` | [map_rootsOfUnity_eq_pow_self](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/map-rootsofunity-eq-pow-self.md) | 224 | `result-track:54b48dbf527990db44f522e76f6449f7dacf3406ce2b539a20c1628dad041bd2` |
| 26 | `theorem` | [mem_rootsOfUnity_prime_pow_mul_iff](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/mem-rootsofunity-prime-pow-mul-iff-source-edition-2.md) | 240 | `result-track:695ba1955d04f178fd1536a3b0bdab88bd6aee2c019bd3de22063c910d45762c` |
| 27 | `theorem` | [mem_rootsOfUnity_prime_pow_mul_iff'](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/mem-rootsofunity-prime-pow-mul-iff.md) | 246 | `result-track:58ee9f9ee771c77e5915a24ef13893d75c71c351c37a88f39589f2d0b3c949c3` |
| 28 | `def` | [monoidHomMulEquivRootsOfUnityOfGenerator](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/monoidhommulequivrootsofunityofgenerator.md) | 262 | `declaration-track:a4f4c0e467eb6a585827f95751b4074f3eb342291ab9ee8269251f2c604c34d2` |
| 29 | `lemma` | [monoidHom_mulEquiv_rootsOfUnity](../../../../CommutativeAlgebra/RootsOfUnityBasicNamespacedSourceEdition1.lean/declarations/monoidhom-mulequiv-rootsofunity.md) | 281 | `result-track:d14c0598c44929fcc59c4e36eac52a3918aa05cdade74b4086aa822a741d3bbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ede3d9110ce0bbc156ced321e5999bd24deec96de3396b39031a9521cc18be61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant919a19ca71d7764d5c96bc2321ea5d029fc1f339d07053b6a93fa6c71a6289f3.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant919a19ca71d7764d5c96bc2321ea5d029fc1f339d07053b6a93fa6c71a6289f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
