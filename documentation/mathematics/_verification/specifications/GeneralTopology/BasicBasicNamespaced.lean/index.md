# Verification target: Basic Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "788504db3c98c05376465d809bd56fc217734c83",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd82db1c7d8e22ff8787afec95163a87abaf583895329819866a1d8a0da49d1f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/BasicBasicNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/BasicBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `788504db3c98c05376465d809bd56fc217734c83`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantd82db1c7d8e22ff8787afec95163a87abaf583895329819866a1d8a0da49d1f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantd82db1c7d8e22ff8787afec95163a87abaf583895329819866a1d8a0da49d1f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Pipeline.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TargetKind](../../../../GeneralTopology/BasicBasicNamespaced.lean/declarations/targetkind.md) | 16 | `declaration-track:39ac4b4b40451e41d8ef787855d70d4987ecbeab79dcd416578e85859fda2370` |
| 2 | `inductive` | [PrimitiveKind](../../../../GeneralTopology/BasicBasicNamespaced.lean/declarations/primitivekind.md) | 27 | `declaration-track:c9a899bc255ab6973826d1c1c836ed3940c108418b007fa1393985ffe6d9661e` |
| 3 | `def` | [TargetKind.isOpen](../../../../GeneralTopology/BasicBasicNamespaced.lean/declarations/targetkind-isopen.md) | 33 | `declaration-track:b1d38c126a5813954e117fcf10db6aef5a4d71ee3af8ebf068e924dfe055de34` |
| 4 | `structure` | [SurveyTarget](../../../../GeneralTopology/BasicBasicNamespaced.lean/declarations/surveytarget.md) | 38 | `declaration-track:4e61cbac3e3d2017e81a89058dc92df2a0d0af98ee5cf55e2fc3b07c992bb803` |
| 5 | `structure` | [FrameworkPrimitive](../../../../GeneralTopology/BasicBasicNamespaced.lean/declarations/frameworkprimitive.md) | 46 | `declaration-track:701545193054242da7daaadd62495dccaffc45a95860c86ed7bf963b1f8a5fee` |
| 6 | `structure` | [OpenMention](../../../../GeneralTopology/BasicBasicNamespaced.lean/declarations/openmention.md) | 54 | `declaration-track:16c0765c893745e11998da66e4eca8e4635196a215443ceadf42feefeddb92b2` |
| 7 | `structure` | [PaperSource](../../../../GeneralTopology/BasicBasicNamespaced.lean/declarations/papersource.md) | 60 | `declaration-track:b29af3a06435a7b1fa630fedf69a4deb6439654c910de6f98330b298b7f8b75d` |
| 8 | `inductive` | [StatementTranslationStatus](../../../../GeneralTopology/BasicBasicNamespaced.lean/declarations/statementtranslationstatus.md) | 68 | `declaration-track:664aa8cf403aaba2c4fabfdfdfd9fc1106b25de00b9f24161928449d49c3a221` |
| 9 | `def` | [SurveyTarget.statementSurface](../../../../GeneralTopology/BasicBasicNamespaced.lean/declarations/surveytarget-statementsurface.md) | 75 | `declaration-track:c18e91dc19d05cadc7fde00518ac40c8373d779e242ba7e77c2e1cdf09dab960` |
| 10 | `structure` | [SurveyTargetStatement](../../../../GeneralTopology/BasicBasicNamespaced.lean/declarations/surveytargetstatement.md) | 81 | `declaration-track:fe4ede517a3bf59da8ec5e77f9ee0439584fec9d6610aee37c606df4dcd80aff` |
| 11 | `def` | [noProofHolePolicy](../../../../GeneralTopology/BasicBasicNamespaced.lean/declarations/noproofholepolicy.md) | 87 | `declaration-track:a102378a4c084401e19b28ebdc02f5ea2c794984feac715eea929e784d5a16a8` |
| 12 | `def` | [targetResidue](../../../../GeneralTopology/BasicBasicNamespaced.lean/declarations/targetresidue.md) | 89 | `declaration-track:d6c3efc6f356cfe471ea87c0a5d9398d7edab60224f27d66c21330aadd760763` |
| 13 | `def` | [targetChecked](../../../../GeneralTopology/BasicBasicNamespaced.lean/declarations/targetchecked.md) | 96 | `declaration-track:9554e03ce5b19c3f30be36451f9e8e9b4bde481512f4a2eaa62207f0847eba31` |
| 14 | `theorem` | [targetChecked_hasResidue](../../../../GeneralTopology/BasicBasicNamespaced.lean/declarations/targetchecked-hasresidue.md) | 99 | `result-track:87238a76915f04c6454ccf9b64c9f4345367492106b60aead4ed995c00f58683` |
| 15 | `def` | [targetStatement](../../../../GeneralTopology/BasicBasicNamespaced.lean/declarations/targetstatement.md) | 103 | `declaration-track:381823dc4c3cdd1870f6e2e68517dca94c8026d86af59f0ce1d9c9e6f48a4214` |
| 16 | `def` | [targetStatementChecked](../../../../GeneralTopology/BasicBasicNamespaced.lean/declarations/targetstatementchecked.md) | 109 | `declaration-track:867dacb63f60889cf49e5646d2ed2c94eb46a394d169028f4b30cd676096e47e` |
| 17 | `theorem` | [targetStatementChecked_hasResidue](../../../../GeneralTopology/BasicBasicNamespaced.lean/declarations/targetstatementchecked-hasresidue.md) | 113 | `result-track:ee1f9647b20ad805342abb4e3a6150c55e6d9556368ba608ffad810b1327e69d` |
| 18 | `theorem` | [targetStatement_status](../../../../GeneralTopology/BasicBasicNamespaced.lean/declarations/targetstatement-status.md) | 117 | `result-track:946e9a9ce0c36bb4e489d20033056125694134753c0ef7c72c253f55601f8ae2` |
| 19 | `def` | [primitiveResidue](../../../../GeneralTopology/BasicBasicNamespaced.lean/declarations/primitiveresidue.md) | 122 | `declaration-track:43a243425283edb2538a1477dbbd63fd465b0304a8169a69ca74c0f511396921` |
| 20 | `def` | [mentionResidue](../../../../GeneralTopology/BasicBasicNamespaced.lean/declarations/mentionresidue.md) | 129 | `declaration-track:3f3e7967777c66a0e8433779892ad5599f7822992b4bfa60ba3501c8521e8d04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4ab1b163ef7b2085f8abf78579f2d7a071c24549a5c3b5c828f3eb2aa35d662 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantd82db1c7d8e22ff8787afec95163a87abaf583895329819866a1d8a0da49d1f3.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantd82db1c7d8e22ff8787afec95163a87abaf583895329819866a1d8a0da49d1f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
