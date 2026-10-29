# Verification target: Iso Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "849b30a5687865da1ee5778697009f61b732e796",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Iso/Variantc029b14c59e0b9c16c8f418172cb7c7e2822f8edc4d533f77806a53ea71991bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/IsoNamespacedPublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/IsoNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `849b30a5687865da1ee5778697009f61b732e796`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Iso/Variantc029b14c59e0b9c16c8f418172cb7c7e2822f8edc4d533f77806a53ea71991bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Iso/Variantc029b14c59e0b9c16c8f418172cb7c7e2822f8edc4d533f77806a53ea71991bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [diagonalSuccIsoTensorTrivial](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/IsoNamespacedPublic.lean/declarations/diagonalsuccisotensortrivial.md) | 47 | `declaration-track:4daa6dbfcf3ed6d729d6620ccfa74093642a14835b6656b41236a6976923004d` |
| 2 | `abbrev` | [diagonalSuccIsoFree](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/IsoNamespacedPublic.lean/declarations/diagonalsuccisofree.md) | 57 | `declaration-track:061186c1dd8b64f6c8597aa65428665c7da9f861854b3e2c69aafd55aac34717` |
| 3 | `abbrev` | [diagonalHomEquiv](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/IsoNamespacedPublic.lean/declarations/diagonalhomequiv.md) | 64 | `declaration-track:6c2c82ae90374caddef0ecdbfd8fda08aabcab0750bab692bb2ea3a0c0e55a40` |
| 4 | `theorem` | [to_Module_monoidAlgebra_map_aux](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/IsoNamespacedPublic.lean/declarations/to-module-monoidalgebra-map-aux.md) | 81 | `result-track:3fc39fa9fb5b9d0b961a743369adee75dbf69bde99903ee0e0713a798b640062` |
| 5 | `def` | [toModuleMonoidAlgebraMap](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/IsoNamespacedPublic.lean/declarations/tomodulemonoidalgebramap.md) | 96 | `declaration-track:f51b66c49ca92ae4d0d6114c3e309d6181ea25d630118da070f12829b34dc8ca` |
| 6 | `def` | [toModuleMonoidAlgebra](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/IsoNamespacedPublic.lean/declarations/tomodulemonoidalgebra.md) | 104 | `declaration-track:a7383d47fe01d02ff0e55d8a332b79d4be7278a605cfeebf921017d3c3f9fbbe` |
| 7 | `def` | [ofModuleMonoidAlgebra](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/IsoNamespacedPublic.lean/declarations/ofmodulemonoidalgebra.md) | 110 | `declaration-track:8b5298c8ea4608eb9931bed44c2459dbf7adaec61731b34e214f5bf70923034f` |
| 8 | `theorem` | [ofModuleMonoidAlgebra_obj_coe](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/IsoNamespacedPublic.lean/declarations/ofmodulemonoidalgebra-obj-coe.md) | 118 | `result-track:9d8e7b0da123c16ae24285748f67ca9d583eea707c62a3bae7206ddb39b5c2aa` |
| 9 | `theorem` | [ofModuleMonoidAlgebra_obj_ρ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/IsoNamespacedPublic.lean/declarations/ofmodulemonoidalgebra-obj.md) | 122 | `result-track:063e4d442bf5ab98984a481edf09f9ab1f0cbea6a3eecc4a999311b7b8b150b2` |
| 10 | `def` | [counitIsoAddEquiv](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/IsoNamespacedPublic.lean/declarations/counitisoaddequiv.md) | 127 | `declaration-track:73384ce37095d63a3a1c470c51f8705f4cd612be6ebc9402462ca9995037ef16` |
| 11 | `def` | [unitIsoAddEquiv](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/IsoNamespacedPublic.lean/declarations/unitisoaddequiv.md) | 135 | `declaration-track:d767f5f11184bbb48904835164e151a30c2bb78a4be77dc550e6880a4916e0c1` |
| 12 | `def` | [counitIso](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/IsoNamespacedPublic.lean/declarations/counitiso.md) | 142 | `declaration-track:1138cf546877526e6817ceb8e9b77dbc9c94f39fca11793c86a29e9d6f472b53` |
| 13 | `theorem` | [unit_iso_comm](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/IsoNamespacedPublic.lean/declarations/unit-iso-comm.md) | 151 | `result-track:c8b066e6e765a047f370b8d89395f55bc6cfb7eee688e0e9c5a1437c88a802a8` |
| 14 | `def` | [unitIso](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/IsoNamespacedPublic.lean/declarations/unitiso.md) | 158 | `declaration-track:e2009b720e033c663a01c51264e45dbd8b76a03c8a983e9879764e39b464d6fc` |
| 15 | `def` | [equivalenceModuleMonoidAlgebra](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/IsoNamespacedPublic.lean/declarations/equivalencemodulemonoidalgebra.md) | 167 | `declaration-track:f6df097ebc2a97f9c7046f12d74472958bae3e9ad74b980c9e0712a9e616a9c0` |
| 16 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/IsoNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 173 | `declaration-track:32b836a7750a58eed37a68a7a8f3a99953cd35e2ef37aad2cf53f850035d0a93` |
| 17 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/IsoNamespacedPublic.lean/declarations/instance.md) | 176 | `declaration-track:271549454d07e94791869a8310db748bf48ef68e937033e26d68b9dee42c832c` |
| 18 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/IsoNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 182 | `declaration-track:3776c9f9bbfe78de862eb0750ce9a0e1d7a6c7f0303be5721a6621e98b6a0a49` |
| 19 | `instance` | [free_projective](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/IsoNamespacedPublic.lean/declarations/free-projective.md) | 185 | `declaration-track:cda4066441c3037c0f5140a91e53fcec8f40f543fac4c924045a3266bd3d7ddc` |
| 20 | `instance` | [diagonal_succ_projective](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/IsoNamespacedPublic.lean/declarations/diagonal-succ-projective.md) | 196 | `declaration-track:8738591f40d651414fa6aa9a60cc511b647c05c621730f70202bff63f137aa48` |
| 21 | `instance` | [leftRegular_projective](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/IsoNamespacedPublic.lean/declarations/leftregular-projective.md) | 200 | `declaration-track:529e4b6abea08b66bbfc85a0ab4acf4cb7d743c4304fd4d968a801f4519e3364` |
| 22 | `instance` | [trivial_projective_of_subsingleton](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/IsoNamespacedPublic.lean/declarations/trivial-projective-of-subsingleton.md) | 204 | `declaration-track:94d3d29b2652b1474988276287d736ca7cb81a0c68b13db9e85e867a2c8e12a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ab97e6c1f9916b25586bc0bca639ddff33f282de617fc8f5e882f9d2cddc4fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Iso/Variantc029b14c59e0b9c16c8f418172cb7c7e2822f8edc4d533f77806a53ea71991bd.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Iso/Variantc029b14c59e0b9c16c8f418172cb7c7e2822f8edc4d533f77806a53ea71991bd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
