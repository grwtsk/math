# Verification target: Group Homology Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f5a69a1b47c91a081f3572bfd37759d68784cdf",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Varianta6cad0e91388a2d6f186dfb085f96064165d5cdb05f85e42a15ce36e36a0224e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f5a69a1b47c91a081f3572bfd37759d68784cdf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Varianta6cad0e91388a2d6f186dfb085f96064165d5cdb05f85e42a15ce36e36a0224e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Varianta6cad0e91388a2d6f186dfb085f96064165d5cdb05f85e42a15ce36e36a0224e.lean.json)

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
| 1 | `abbrev` | [HomologicalComplex.coinvariantsTensorObj](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/declarations/coinvariantstensorobj.md) | 90 | `declaration-track:56136990f04f7b68de49ae430534a9239d5cd1261626c9f42cb76df87d7d9ad3` |
| 2 | `def` | [Tor](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/declarations/tor.md) | 99 | `declaration-track:aa62f4f3bd6a5f8c58353ea59869ca4e952ab291deee7c0dc29028d767e6ffe3` |
| 3 | `abbrev` | [torIso](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/declarations/toriso.md) | 106 | `declaration-track:7fbed529fc6f4245e154fe19009d50e060b9bd79daa23f6b20b2dbf69742883f` |
| 4 | `lemma` | [isZero_Tor_succ_of_projective](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/declarations/iszero-tor-succ-of-projective.md) | 111 | `result-track:4c98e5f34f60222c9f49b96fc510dfbb619e7c7ca1c7985b92113a4e7ffc62ac` |
| 5 | `def` | [d](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/declarations/d.md) | 127 | `declaration-track:a66ba7a74b2287e4147ddb47adbbfd4ef021af2f6b10d72b2604afc34525fb9c` |
| 6 | `theorem` | [d_single](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/declarations/d-single.md) | 134 | `result-track:be6e10f62181f048bd301ab688687e73d6bd70cc6e54473245b203f4cc808d3c` |
| 7 | `theorem` | [d_eq](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/declarations/d-eq.md) | 143 | `result-track:dd8df06e64e3b4731429b2e2a1cded8108b328475ea117670485428077bac4a1` |
| 8 | `abbrev` | [inhomogeneousChains](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/declarations/inhomogeneouschains.md) | 156 | `declaration-track:e1951e84cc0d036ae91a5c280f534924f3c2e76e48c52fd2d7b56fe3c3af95c2` |
| 9 | `theorem` | [inhomogeneousChains.ext](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/declarations/inhomogeneouschains-ext.md) | 170 | `result-track:a5174e254168da6dbaa7566635a99839b5d303c31615b0e3ce48713abcd0d6da` |
| 10 | `theorem` | [inhomogeneousChains.d_def](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/declarations/inhomogeneouschains-d-def.md) | 174 | `result-track:95fc4e0674d16a402d4bff4e323b3c6d00f609c0d9df7b7826ea356f038e65f5` |
| 11 | `theorem` | [inhomogeneousChains.d_comp_d](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/declarations/inhomogeneouschains-d-comp-d.md) | 179 | `result-track:3300ff3af0807d48c92c2794bda884a9a77e3efa9d747358750316638bd9dd77` |
| 12 | `def` | [inhomogeneousChainsIso](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/declarations/inhomogeneouschainsiso.md) | 185 | `declaration-track:1e4f5205731b31714971d4bf7c153acb6623477ddde97e6af157fe6e2ab3a769` |
| 13 | `abbrev` | [cycles](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/declarations/cycles.md) | 195 | `declaration-track:8f0e50aaabd80735d7fc7336c563d6f5f8cade7e88e11e377790f4c41c17a574` |
| 14 | `abbrev` | [cyclesMk](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/declarations/cyclesmk.md) | 203 | `declaration-track:1b1f2bcc1c2b802052c5bdba6731a75dbc312584ce1a32a8d3c04386c5d99215` |
| 15 | `abbrev` | [iCycles](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/declarations/icycles.md) | 208 | `declaration-track:352f4a3146c5b6aa3b684ec88de58dccfe9e420d5168d5154313afa6afc12e77` |
| 16 | `theorem` | [iCycles_mk](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/declarations/icycles-mk.md) | 212 | `result-track:6c48b301e0a7a783ff2daf0ee7a542bc5adfb0b35fcc4f8f91e03b6d796a11e7` |
| 17 | `abbrev` | [toCycles](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/declarations/tocycles.md) | 219 | `declaration-track:66732cf23da03e43261421ff6ef117c724858f86b184a8765572d18b42efce69` |
| 18 | `def` | [groupHomology](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/declarations/grouphomology-source-edition-2.md) | 230 | `declaration-track:853eb0c0832abcce64a1b3d62ff103b3190d65d92dc56160a45bb34d8cbde3bb` |
| 19 | `abbrev` | [groupHomology.π](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/declarations/grouphomology.md) | 235 | `declaration-track:2af4e9b4a75a7f98cff1e85292677c706ec678a98610bc46835a993d483f351b` |
| 20 | `theorem` | [groupHomology_induction_on](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/declarations/grouphomology-induction-on.md) | 242 | `result-track:5600d1a118161d96408bb8a48d994c98abba10bacd1f6f5f17474310078b12d0` |
| 21 | `def` | [groupHomologyIsoTor](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/declarations/grouphomologyisotor.md) | 250 | `declaration-track:1a8d87e3a38475fe326d5dada33bd5136cf9f1e3b8964b2d8882f2821592452d` |
| 22 | `def` | [groupHomologyIso](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/declarations/grouphomologyiso.md) | 258 | `declaration-track:1f26571796a30597c5fea1a18a6d251ec358149ecb31108132a3d421b24a796f` |
| 23 | `lemma` | [isZero_groupHomology_succ_of_subsingleton](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/GroupHomologyBasicPublic.lean/declarations/iszero-grouphomology-succ-of-subsingleton.md) | 263 | `result-track:8aaefdac727860dfbb2eb796b73f1cb061193eceeff8c0e5dbdbeef9608ef3db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb6899476551096ea535a72f2a2201dc754f5b641989455115a91eed4caeed0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Varianta6cad0e91388a2d6f186dfb085f96064165d5cdb05f85e42a15ce36e36a0224e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Varianta6cad0e91388a2d6f186dfb085f96064165d5cdb05f85e42a15ce36e36a0224e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
