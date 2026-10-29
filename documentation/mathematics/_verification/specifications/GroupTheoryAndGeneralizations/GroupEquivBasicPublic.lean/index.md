# Verification target: Group Equiv Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "894c142453ed6bbe58dc2dac32b706451d67ec3e",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant70702b7f38ad159563a76519fcd0ead7efc30d7fbac222a87bb04872a050cd26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `894c142453ed6bbe58dc2dac32b706451d67ec3e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant70702b7f38ad159563a76519fcd0ead7efc30d7fbac222a87bb04872a050cd26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant70702b7f38ad159563a76519fcd0ead7efc30d7fbac222a87bb04872a050cd26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MulEquivClass.toMulEquiv_injective](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/mulequivclass-tomulequiv-injective.md) | 34 | `result-track:0b9cc144e402cf6316c7a15bbc4fd277f3cc913fbc1bc1f1a67f9b8cc20e12aa` |
| 2 | `theorem` | [MulEquivClass.isDedekindFiniteMonoid_iff](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/mulequivclass-isdedekindfinitemonoid-iff.md) | 38 | `result-track:1f4514996d178531f1ea982a09738c448796d7e2c1149f9f4d52e716c03d18ce` |
| 3 | `def` | [ofUnique](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/ofunique.md) | 53 | `declaration-track:ea15d1a3d9299035b3b00c71ea80bddf02194b96aea40a7e848d5290ca961001` |
| 4 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/instance.md) | 59 | `declaration-track:f84a6ff6f015810a0c6033011f29cb550243fa492e88b6e8e4066460c9e320d6` |
| 5 | `def` | [funUnique](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/fununique.md) | 67 | `declaration-track:dca7ad5e7834050ccca5dce8baa5546b9e132ea33b59fa794e92903777c74a9c` |
| 6 | `def` | [arrowCongr](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/arrowcongr.md) | 82 | `declaration-track:849b1db7609f8cbe77a6a6e56a428babec472bf205bd552967c81c9fa07b319b` |
| 7 | `def` | [monoidHomCongrLeftEquiv](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/monoidhomcongrleftequiv.md) | 99 | `declaration-track:533654972a46490cbce374d876634cb9230586a226ef4cba68d6ed24e97d74b8` |
| 8 | `def` | [monoidHomCongrRightEquiv](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/monoidhomcongrrightequiv.md) | 110 | `declaration-track:781e1ec3e02e96be63ea15a02986477fdbda49fa713316462469dbde1cae17ef` |
| 9 | `lemma` | [monoidHomCongrLeftEquiv_refl](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/monoidhomcongrleftequiv-refl.md) | 117 | `result-track:9a43de2301a3f5b2b29f36b783922f7da4825df765bb5fa1ea8047a6ea30c2b0` |
| 10 | `lemma` | [monoidHomCongrRightEquiv_refl](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/monoidhomcongrrightequiv-refl.md) | 120 | `result-track:6adea49a73269d3eac769537050c20b5a3254bfcf33457ed685e376a08467411` |
| 11 | `lemma` | [symm_monoidHomCongrLeftEquiv](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/symm-monoidhomcongrleftequiv.md) | 123 | `result-track:8031bf4d28ec7954b762dc919eee1acb79d2e239cea7d45908aca8ac404ed3c0` |
| 12 | `lemma` | [symm_monoidHomCongrRightEquiv](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/symm-monoidhomcongrrightequiv.md) | 127 | `result-track:a30bda9260a5c3bff13efb364826d2918338d6586b65e3bc942edf1bf90020d7` |
| 13 | `lemma` | [monoidHomCongrLeftEquiv_trans](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/monoidhomcongrleftequiv-trans.md) | 131 | `result-track:96e482fb743a356a20a21a9dc506aa58ec3bc8d636da61a293440f4f67ce50b5` |
| 14 | `lemma` | [monoidHomCongrRightEquiv_trans](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/monoidhomcongrrightequiv-trans.md) | 136 | `result-track:43781a52a2e44050bee55fc360dc459d421df87a84a5e87fb778bdf697283dec` |
| 15 | `def` | [monoidHomCongrLeft](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/monoidhomcongrleft.md) | 151 | `declaration-track:84fb7da61325d8e580df80e7b9217ea6f1e4f56f62b396b7f8adfb62652c7b3b` |
| 16 | `def` | [monoidHomCongrRight](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/monoidhomcongrright.md) | 160 | `declaration-track:1f86edf32b01141314392dcf60799a34b77407786831d94b2af3db7eaadd1796` |
| 17 | `lemma` | [monoidHomCongrLeft_refl](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/monoidhomcongrleft-refl.md) | 165 | `result-track:64b6b6c10bd4f423687fbc76ce9cf12e61a7926cd4fd1861e8c47cbe2c41dfd7` |
| 18 | `lemma` | [monoidHomCongrRight_refl](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/monoidhomcongrright-refl.md) | 168 | `result-track:e3ef20f45f04e911c7aa20a762fe70fec93e767259ba978a44b569b29c38db9e` |
| 19 | `lemma` | [symm_monoidHomCongrLeft](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/symm-monoidhomcongrleft.md) | 171 | `result-track:86f72fa148a01b598e5e8f0e78d974ba3b4272f2d9a60e36ce47b7b3b2a3c2dd` |
| 20 | `lemma` | [symm_monoidHomCongrRight](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/symm-monoidhomcongrright.md) | 175 | `result-track:2a20842391138152ec2a000b72f60b069ded92c3326c4bed593c7d8bcd914bc8` |
| 21 | `lemma` | [monoidHomCongrLeft_trans](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/monoidhomcongrleft-trans.md) | 179 | `result-track:6faf2b87a8f94ba3de8e09b396bb10d919db78aeac3a44b1d5c81c14dd6ee0a6` |
| 22 | `lemma` | [monoidHomCongrRight_trans](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/monoidhomcongrright-trans.md) | 184 | `result-track:b2318ddd96c54b67ea9f64924caa97bb1bce219b0720e81645bb8778aedc7e20` |
| 23 | `def` | [piCongrRight](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/picongrright.md) | 202 | `declaration-track:72b6071eedcc228c5a168fbead5739673cbca935388ddb5b5d4a62ce53ed7c8b` |
| 24 | `theorem` | [piCongrRight_refl](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/picongrright-refl.md) | 210 | `result-track:4bdab5e2c43e97efe73bca664389a1fd4099e4e4111b498a90af419a9b2ed89e` |
| 25 | `theorem` | [piCongrRight_symm](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/picongrright-symm.md) | 214 | `result-track:e8609d7212fe75cface0c048987bef7f7c496f2b0e48dbf6367b0c05e5ec2272` |
| 26 | `theorem` | [piCongrRight_trans](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/picongrright-trans.md) | 218 | `result-track:b9ae7679a3d4388ccb33591b9d50705cbcfb0026835696d43f1cfa1aa23624dd` |
| 27 | `def` | [piUnique](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/piunique.md) | 227 | `declaration-track:b4f8dd2c849d216a9b1c86798dcd90695dfdf934f2e1f2dd3755ceb18e29adaf` |
| 28 | `def` | [inv](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/inv.md) | 242 | `declaration-track:5cb7802f45569340e5f02985e905c23c28510e95665311fe8ebfa2b14a34cab3` |
| 29 | `theorem` | [inv_symm](../../../../GroupTheoryAndGeneralizations/GroupEquivBasicPublic.lean/declarations/inv-symm.md) | 248 | `result-track:e233e8ef30136b2d51cab36b50f478ce4eb2fb3712aca97d3d14056ad73e37a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=41580b69b78bff0902084b04cb2e3080b5d70f6ca55040be8980b7452a5ba80e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant70702b7f38ad159563a76519fcd0ead7efc30d7fbac222a87bb04872a050cd26.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant70702b7f38ad159563a76519fcd0ead7efc30d7fbac222a87bb04872a050cd26.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
