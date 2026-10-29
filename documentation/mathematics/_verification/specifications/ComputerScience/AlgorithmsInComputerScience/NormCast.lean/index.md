# Verification target: Norm Cast

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70200086813716451c0e08e2068083959a03b440",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormCast/Variant55c4d36c8a9ddb204641033e5f97733ab4849529b0065df6eb41e905105d28f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70200086813716451c0e08e2068083959a03b440`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormCast/Variant55c4d36c8a9ddb204641033e5f97733ab4849529b0065df6eb41e905105d28f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormCast/Variant55c4d36c8a9ddb204641033e5f97733ab4849529b0065df6eb41e905105d28f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Tactic.NormCast` — import line 1; external provider; requires a separately pinned dependency.
- `Std.Data.Rat.Lemmas` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/declarations/example-source-edition-21.md) | 16 | `declaration-track:fceec459cd213f9db950944f7b70c17a57aa3397da78952982596e0de053eded` |
| 2 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/declarations/example-source-edition-14.md) | 17 | `declaration-track:a9579c85e13ecd63352d9b4a91e96ff2dec862a1a74f6edbfbfd5ea1639427f5` |
| 3 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/declarations/example-source-edition-16.md) | 18 | `declaration-track:b35c63e76634c9cc5c20329db1821cc4f03aca04595871284b29a15d0de00e31` |
| 4 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/declarations/example-source-edition-3.md) | 20 | `declaration-track:07586c7f8e471974159093512969e65ff739f1c83a0c7cb494799d356f8d956c` |
| 5 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/declarations/example-source-edition-12.md) | 21 | `declaration-track:4aa36c70eca3324d69f1f1a63b80341735c8eb18899aeaae0bdb3f1d53c4f062` |
| 6 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/declarations/example-source-edition-17.md) | 24 | `declaration-track:b97057f7e7b908229fc4319da19905844735db441aa583bf7671a5ace46be520` |
| 7 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/declarations/example-source-edition-6.md) | 25 | `declaration-track:1c01f8e0484476541f87bf9a2367c4cbd0b2daaf39bec6cab2f02f6cfaeeec11` |
| 8 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/declarations/example-source-edition-20.md) | 26 | `declaration-track:e3fc210385e0d11647dbeec07523a043189a1c0328f21651bd51c3e31562471a` |
| 9 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/declarations/example-source-edition-18.md) | 27 | `declaration-track:d3d7e8b248b90b292ac96623ec8ae6def1becc129bf5791eee29b92d0d792689` |
| 10 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/declarations/example-source-edition-15.md) | 29 | `declaration-track:b2864760825533e0c12481c9ec3047575c33242ae0fe64f2211371a8b2ef98bf` |
| 11 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/declarations/example-source-edition-8.md) | 34 | `declaration-track:264d4acc23fe6d1027eed20c6910543f1c47b1b8d9cae572ebeca9ff7f5948c7` |
| 12 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/declarations/example.md) | 36 | `declaration-track:033f5b4722cb374272f3d22807afdadb5814cc9e92dabbc0780f304da6670553` |
| 13 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/declarations/example-source-edition-13.md) | 41 | `declaration-track:4f9bf3cea5578a313f8e101fcbca3915b4010a3ca9b864d65cdd87ec5c88fba5` |
| 14 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/declarations/example-source-edition-19.md) | 47 | `declaration-track:e11eb2292b21c919802eca88246026aa0ae883aba0450dd3a9cc9918cb8b2433` |
| 15 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/declarations/example-source-edition-11.md) | 48 | `declaration-track:4730887dca3ebbf2b470adb7d60ecaf40f6a6fbfb38651ddc4eacd810c1dfe3a` |
| 16 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/declarations/example-source-edition-9.md) | 49 | `declaration-track:39d134a66ee623eef019b9e39f5cd1808eca55b71d8f57dfea0df9f964972933` |
| 17 | `structure` | [p](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/declarations/p.md) | 51 | `declaration-track:fcc8cf14294e0e48231b4c9b86282bc710c6d1e9e261d4178ca864e7be7c6871` |
| 18 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/declarations/example-source-edition-10.md) | 52 | `declaration-track:3de9489f164846b57ad66d350d4fff603e8e5f6933c819470ad4cdf02d891eec` |
| 19 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/declarations/example-source-edition-5.md) | 60 | `declaration-track:0c701fb260fc42aad09392b952efb989c74684ab4eff4c00ce5256531aae68b2` |
| 20 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/declarations/example-source-edition-7.md) | 62 | `declaration-track:217ce17b00afc9c8b46b005acd2b93be260fea28254ceea1f4530028ec841baa` |
| 21 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/declarations/example-source-edition-2.md) | 64 | `declaration-track:04fc427063e89479c3f04df33f3ed776c9f2d406421cb5e26211fb484f739b4d` |
| 22 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/declarations/example-source-edition-4.md) | 69 | `declaration-track:0b80214980b386f56724bb5ac14243bb88b5ba283dfd6a923aa5c2e57d1a57ca` |
| 23 | `theorem` | [b](../../../../../ComputerScience/AlgorithmsInComputerScience/NormCast.lean/declarations/b.md) | 75 | `result-track:20851a9f3ad046b6ffa5ad42a8dae5bfc773cb73131186943b406ca716409ffc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1879fb236cbe328950db9594322ba2fd9fa5f5810b94569b44f8199ae78109a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormCast/Variant55c4d36c8a9ddb204641033e5f97733ab4849529b0065df6eb41e905105d28f1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NormCast/Variant55c4d36c8a9ddb204641033e5f97733ab4849529b0065df6eb41e905105d28f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
