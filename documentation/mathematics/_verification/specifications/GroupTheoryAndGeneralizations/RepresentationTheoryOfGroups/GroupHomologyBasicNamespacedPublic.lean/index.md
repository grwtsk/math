# Verification target: Group Homology Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "791c0b8ce71663f51cdb711579fa4a151591c5e9",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantf35b0b6cf25f7333a8a08c4baa686547ec4731637264f0c2430050ee248a3b12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `791c0b8ce71663f51cdb711579fa4a151591c5e9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantf35b0b6cf25f7333a8a08c4baa686547ec4731637264f0c2430050ee248a3b12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantf35b0b6cf25f7333a8a08c4baa686547ec4731637264f0c2430050ee248a3b12.lean.json)

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
| 1 | `abbrev` | [HomologicalComplex.coinvariantsTensorObj](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/declarations/coinvariantstensorobj.md) | 98 | `declaration-track:2bd2f0edf796c7003afbd617f0a800011bed2ec055c4f08f5ca7df32f9469a6e` |
| 2 | `def` | [Tor](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/declarations/tor.md) | 107 | `declaration-track:a1346656f77e9431e0d59ab6a24a11dcb085adb7a56025a5d8490cf0b44703ea` |
| 3 | `abbrev` | [torIso](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/declarations/toriso.md) | 114 | `declaration-track:a69fbb685e7314722a6a2676d36d2737e2be9c510eb620225ab9c938140e3422` |
| 4 | `lemma` | [isZero_Tor_succ_of_projective](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/declarations/iszero-tor-succ-of-projective.md) | 119 | `result-track:586d5f0f3b9789ebbb526905382053abbb4ea958213310c005090163ebaafb00` |
| 5 | `def` | [d](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/declarations/d.md) | 135 | `declaration-track:ec44358747296aa7981c95d472c48bfd2650e2541fb420e0ab5ae4f4bc2c7803` |
| 6 | `theorem` | [d_single](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/declarations/d-single.md) | 142 | `result-track:dcf708796f38134e96a16b6093988c95eca8533108c0dda5f388aa6fcc86fc37` |
| 7 | `theorem` | [d_eq](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/declarations/d-eq.md) | 151 | `result-track:2d41600192d28e18a03135ce6b212669f7ab2a92e856d74543bbd4c90889803d` |
| 8 | `abbrev` | [inhomogeneousChains](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/declarations/inhomogeneouschains.md) | 164 | `declaration-track:a218ce19521573a62ab0fbe37ef63933ca19bf53d28bc93eaa38b132e5560178` |
| 9 | `theorem` | [inhomogeneousChains.ext](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/declarations/inhomogeneouschains-ext.md) | 178 | `result-track:a4ad7ddb77dfc9266b2a0e33dcc71179393271c40ad6d6b68fc1d95abbbb8366` |
| 10 | `theorem` | [inhomogeneousChains.d_def](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/declarations/inhomogeneouschains-d-def.md) | 182 | `result-track:6c09398e020f0eff8a00c2deb11ef3812e170059a2b6a35b97345da2ac67a0b3` |
| 11 | `theorem` | [inhomogeneousChains.d_comp_d](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/declarations/inhomogeneouschains-d-comp-d.md) | 187 | `result-track:fe2e74bcb21be3d804a110d0848706c8d3b0cb51c862a5e6c8c6c18beb7ce66e` |
| 12 | `def` | [inhomogeneousChainsIso](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/declarations/inhomogeneouschainsiso.md) | 193 | `declaration-track:5d8091a1992d6ed68da804b29f09af39809db8679cbb0e414c5303f456f5bb5c` |
| 13 | `abbrev` | [cycles](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/declarations/cycles.md) | 203 | `declaration-track:d932161234b59ded4713b0a2b272714917849b8620a13075b1437f239ec95e49` |
| 14 | `abbrev` | [cyclesMk](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/declarations/cyclesmk.md) | 211 | `declaration-track:f871fe3cb207b68446e536de4f5a9d978f3c6ec424dc8f32f1f25d33a0d8a7d6` |
| 15 | `abbrev` | [iCycles](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/declarations/icycles.md) | 216 | `declaration-track:9cc04d3ee89643e8f1da4ae600585faeacd50720cf2ea97b88345e69dde2e113` |
| 16 | `theorem` | [iCycles_mk](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/declarations/icycles-mk.md) | 220 | `result-track:2963c6e3d442a5bc25e135233043d3f63f66eb4158f10e6fff0043311811600e` |
| 17 | `abbrev` | [toCycles](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/declarations/tocycles.md) | 227 | `declaration-track:9a6d49b1d31c99a3480a0017773e30c325acde396ec5de704b46df68689c83d8` |
| 18 | `def` | [groupHomology](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/declarations/grouphomology.md) | 238 | `declaration-track:306641675784a1aaaa16da002ef319e3ebb9d3e0d2d319d5d944805511ad3b72` |
| 19 | `abbrev` | [groupHomology.π](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/declarations/grouphomology-source-edition-2.md) | 243 | `declaration-track:6ace33471c88d004f4b4f9bbd1772a5ad2d04389946aa424ff2aa7feee400485` |
| 20 | `theorem` | [groupHomology_induction_on](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/declarations/grouphomology-induction-on.md) | 250 | `result-track:ea9faf5c7270cca025da2b5f7dd3a54b8c3ae83a88ac92f8c8ec18c7f89326ac` |
| 21 | `def` | [groupHomologyIsoTor](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/declarations/grouphomologyisotor.md) | 258 | `declaration-track:b371f1b7ce59e39a703a3804112edd6e4aa12736d728a78e20819f186b15f127` |
| 22 | `def` | [groupHomologyIso](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/declarations/grouphomologyiso.md) | 266 | `declaration-track:67118c42a5bcf3f1f53a9164ca8529d0802864300ccd25969eb17db891a8c4f5` |
| 23 | `lemma` | [isZero_groupHomology_succ_of_subsingleton](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicNamespacedPublic.lean/declarations/iszero-grouphomology-succ-of-subsingleton.md) | 271 | `result-track:45ba251af4dde30cca1af7c17829d684a258440e39f2e875ddb638abb97053f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12cada9ac78700df36ac4aa51374148eda7032d4a4d427d90d5f751aaa157cc5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantf35b0b6cf25f7333a8a08c4baa686547ec4731637264f0c2430050ee248a3b12.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantf35b0b6cf25f7333a8a08c4baa686547ec4731637264f0c2430050ee248a3b12.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
