# Verification target: Complemented Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "643fbdb4c83232a0b2605877ecc10f88be967aeb",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Complemented/Variant6cc20e58a03657aaa2c2684ab671c6d9a4b7ca9bdac908e3dceca020d3db323d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ComplementedPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ComplementedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `643fbdb4c83232a0b2605877ecc10f88be967aeb`.

Source path: `GRWTSK/Topology/GeneralTopology/Complemented/Variant6cc20e58a03657aaa2c2684ab671c6d9a4b7ca9bdac908e3dceca020d3db323d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Complemented/Variant6cc20e58a03657aaa2c2684ab671c6d9a4b7ca9bdac908e3dceca020d3db323d.lean.json)

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
| 1 | `def` | [equivProdOfSurjectiveOfIsCompl](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ComplementedPublic.lean/declarations/equivprodofsurjectiveofiscompl.md) | 59 | `declaration-track:b475647f0ef5a169abeba55d7e92786e1c5f032e4a0fd8fff1ba6b58a85daa19` |
| 2 | `theorem` | [coe_equivProdOfSurjectiveOfIsCompl](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ComplementedPublic.lean/declarations/coe-equivprodofsurjectiveofiscompl.md) | 65 | `result-track:99f8bf949a12d2e7bdf2751015c39859815f76e0acf6cf8ac21ac1f501de49bb` |
| 3 | `theorem` | [equivProdOfSurjectiveOfIsCompl_toLinearEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ComplementedPublic.lean/declarations/equivprodofsurjectiveofiscompl-tolinearequiv.md) | 70 | `result-track:6408f7da61e5bf49de545002c888f8938aaf06d17b2bc648c26201fd25bedcf6` |
| 4 | `theorem` | [equivProdOfSurjectiveOfIsCompl_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ComplementedPublic.lean/declarations/equivprodofsurjectiveofiscompl-apply.md) | 76 | `result-track:2c79eaabc71354c515ecf4601da65fa03c5b93ae2d8fc99fb7cc2cb97a9b8459` |
| 5 | `theorem` | [IsCompl.isTopCompl_of_isClosed](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ComplementedPublic.lean/declarations/iscompl-istopcompl-of-isclosed.md) | 86 | `result-track:fdf967722fa84b9aed144bf62f70de7ce9b4852d620f565f29282f079c930ca9` |
| 6 | `theorem` | [isTopCompl_iff_isCompl_isClosed](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ComplementedPublic.lean/declarations/istopcompl-iff-iscompl-isclosed.md) | 93 | `result-track:d4665b216544500788d0e6340e97115796c67643615ca1813f44571319626bfb` |
| 7 | `def` | [prodEquivOfClosedCompl](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ComplementedPublic.lean/declarations/prodequivofclosedcompl.md) | 102 | `declaration-track:cccfd0ba105017a71bdd9ed04ef9ebc170ed8a8bcdabb28a82e678f5b48e0eae` |
| 8 | `def` | [linearProjOfClosedCompl](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ComplementedPublic.lean/declarations/linearprojofclosedcompl.md) | 110 | `declaration-track:2085cedb465072f7d87731b6f57a3d486ed0da5a06b9513d2ef6219e355c637b` |
| 9 | `theorem` | [coe_prodEquivOfClosedCompl](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ComplementedPublic.lean/declarations/coe-prodequivofclosedcompl.md) | 117 | `result-track:c671861e753cb16ca15de0a26094f96bb2d3896d75a681d5f01ffbdb5a142eea` |
| 10 | `theorem` | [coe_prodEquivOfClosedCompl_symm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ComplementedPublic.lean/declarations/coe-prodequivofclosedcompl-symm.md) | 122 | `result-track:7d60ce70ba5f5126ae8d55ccd4566fada36ee67dc606ec5b47ac328579654987` |
| 11 | `theorem` | [coe_continuous_linearProjOfClosedCompl](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ComplementedPublic.lean/declarations/coe-continuous-linearprojofclosedcompl.md) | 127 | `result-track:6f4ce616f9809c82a4b874406744a230b30eb68f04b8bdb60bdd92d7ed45d49a` |
| 12 | `theorem` | [coe_continuous_linearProjOfClosedCompl'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ComplementedPublic.lean/declarations/coe-continuous-linearprojofclosedcompl-source-edition-2.md) | 132 | `result-track:87d6a0c98f4d66a1883cfa80eca40578719fe46729e1935a92e1f80d75b7cc38` |
| 13 | `theorem` | [ClosedComplemented.of_isCompl_isClosed](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ComplementedPublic.lean/declarations/closedcomplemented-of-iscompl-isclosed.md) | 136 | `result-track:6c2c6f2d65b33b63d8930860a4299e1b634e040456bc6f94c1c812a297a06c1a` |
| 14 | `theorem` | [closedComplemented_iff_isClosed_exists_isClosed_isCompl](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ComplementedPublic.lean/declarations/closedcomplemented-iff-isclosed-exists-isclosed-iscompl.md) | 142 | `result-track:cc073214c426fc0d3f8ca2b7f2da9c032fa65059f5ea4bf5fd17fa4ac236f04d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4567779a5b98c1decb7279c04db17d107c9c1bc0b5543a33d088b91bd689a60 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Complemented/Variant6cc20e58a03657aaa2c2684ab671c6d9a4b7ca9bdac908e3dceca020d3db323d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Complemented/Variant6cc20e58a03657aaa2c2684ab671c6d9a4b7ca9bdac908e3dceca020d3db323d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
