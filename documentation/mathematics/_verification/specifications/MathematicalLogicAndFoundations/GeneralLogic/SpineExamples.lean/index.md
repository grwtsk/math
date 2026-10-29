# Verification target: Spine Examples

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9aa83eae36d00b9055818f118421ea3f338d3388",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpineExamples/Variant621659ab77b532a3496712055d5c796ffda448c6e7e1ef3926c3cd4f831e5488.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpineExamples.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpineExamples.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9aa83eae36d00b9055818f118421ea3f338d3388`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpineExamples/Variant621659ab77b532a3496712055d5c796ffda448c6e7e1ef3926c3cd4f831e5488.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpineExamples/Variant621659ab77b532a3496712055d5c796ffda448c6e7e1ef3926c3cd4f831e5488.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Presentation.Spine` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toyPresentation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpineExamples.lean/declarations/toypresentation.md) | 22 | `declaration-track:a81fb60e27d69bab1c191fe7cf1b2c06b10c427ab822ee449ab23dd0874a8a3c` |
| 2 | `def` | [exampleRHSpinePresentation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpineExamples.lean/declarations/examplerhspinepresentation.md) | 27 | `declaration-track:d725a0ad2584d7d361abf11d057230c8efe339b9d6f8e3c37c8976c9f1bafe3e` |
| 3 | `def` | [exampleTraceFormulaSpinePresentation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpineExamples.lean/declarations/exampletraceformulaspinepresentation.md) | 37 | `declaration-track:0793bada23354fef69d7aad2571e8debf87508835bbd935d571a72ecef3bf94c` |
| 4 | `def` | [exampleLanglandsSpinePresentation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpineExamples.lean/declarations/examplelanglandsspinepresentation.md) | 47 | `declaration-track:ddffd03b21f68fcff3142d1785150c7bf76f712a54bdc71e08446e56154499f2` |
| 5 | `def` | [examplePrismaticSpinePresentation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpineExamples.lean/declarations/exampleprismaticspinepresentation.md) | 57 | `declaration-track:7efee1ba423ac7e5f30cfef4b1ea1348f3bc36502f4d4b3ca5033ad952aa1913` |
| 6 | `theorem` | [example_spines_compliant](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpineExamples.lean/declarations/example-spines-compliant.md) | 68 | `result-track:bbb84e78100dd1a32e759a00eb2c81e9ce9590778c096217c8911e09638bbd3d` |
| 7 | `theorem` | [example_rh_spine_legacy_free](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpineExamples.lean/declarations/example-rh-spine-legacy-free.md) | 75 | `result-track:b598922aa54b1c32ca977a1717a1328e3cc6d45fbb050cf3e9ab6af7395d32f2` |
| 8 | `theorem` | [example_spines_not_authority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpineExamples.lean/declarations/example-spines-not-authority.md) | 80 | `result-track:da604a03940c9c14115ce534cf64fb567a3ca4caedfa860c1ee2807e8559c8c6` |
| 9 | `def` | [toyRealizationCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpineExamples.lean/declarations/toyrealizationcertificate.md) | 92 | `declaration-track:4b05443a96577b659746e2004a8bcf973b7e975396884d87f6fc88ecd050a1bb` |
| 10 | `theorem` | [example_rh_claim_via_certificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpineExamples.lean/declarations/example-rh-claim-via-certificate.md) | 102 | `result-track:8df3e3d223738247e7424c4d0dd048bfa968f1cf27151ff9484c16032c40ddd6` |
| 11 | `theorem` | [example_trace_formula_claim_via_certificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpineExamples.lean/declarations/example-trace-formula-claim-via-certificate.md) | 107 | `result-track:a3d434a23b272dc66ad7d269ec197b3a073ed179b068f7521f07df40afd633b3` |
| 12 | `theorem` | [example_langlands_claim_via_certificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpineExamples.lean/declarations/example-langlands-claim-via-certificate.md) | 112 | `result-track:27097584a95ee496eeaf4963ead2c6bb5e60ef1a97b44fe13004b2e8f5b4b1df` |
| 13 | `theorem` | [example_prismatic_claim_via_certificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SpineExamples.lean/declarations/example-prismatic-claim-via-certificate.md) | 117 | `result-track:4ac2c2cb9d5d41091f5b7f5f592849fa578460e52880d3d7c333402985ddb4fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe8cb1a91680879183bd7c7ff54d52909b94161395d686b0d59c835b296523dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpineExamples/Variant621659ab77b532a3496712055d5c796ffda448c6e7e1ef3926c3cd4f831e5488.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpineExamples/Variant621659ab77b532a3496712055d5c796ffda448c6e7e1ef3926c3cd4f831e5488.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
