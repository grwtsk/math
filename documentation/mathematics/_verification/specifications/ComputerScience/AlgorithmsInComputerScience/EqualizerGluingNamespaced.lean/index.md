# Verification target: Equalizer Gluing Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "385fc17934bb7f2928fb1db3b1704eb1884452bc",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EqualizerGluing/Variant151fde6778d72f6128ac6933324cdc042c259d9e04bb5dd925599ade1f66cd8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/EqualizerGluingNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/EqualizerGluingNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `385fc17934bb7f2928fb1db3b1704eb1884452bc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EqualizerGluing/Variant151fde6778d72f6128ac6933324cdc042c259d9e04bb5dd925599ade1f66cd8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EqualizerGluing/Variant151fde6778d72f6128ac6933324cdc042c259d9e04bb5dd925599ade1f66cd8b.lean.json)

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
| 1 | `structure` | [FinCat](../../../../../ComputerScience/AlgorithmsInComputerScience/EqualizerGluingNamespaced.lean/declarations/fincat.md) | 19 | `declaration-track:5319b5e0a4522f32e7beccccef9b9c69535e6e02356222f153f9c50201adfa34` |
| 2 | `structure` | [Pullback](../../../../../ComputerScience/AlgorithmsInComputerScience/EqualizerGluingNamespaced.lean/declarations/pullback.md) | 25 | `declaration-track:2953c3e3cea819ae38427636f03326c9445736343feff5ad6d17d039ef8ce28e` |
| 3 | `structure` | [Presheaf](../../../../../ComputerScience/AlgorithmsInComputerScience/EqualizerGluingNamespaced.lean/declarations/presheaf.md) | 32 | `declaration-track:2411a19cddd05e807d7c3a8ec257ef4efc4f9138844a13b8f8c8b5958704294f` |
| 4 | `structure` | [Cover](../../../../../ComputerScience/AlgorithmsInComputerScience/EqualizerGluingNamespaced.lean/declarations/cover.md) | 41 | `declaration-track:ec0e370e1c0d42d6737ba333489267df44bc37d653b05b6ce0a34b5f14b6560f` |
| 5 | `def` | [Matching](../../../../../ComputerScience/AlgorithmsInComputerScience/EqualizerGluingNamespaced.lean/declarations/matching.md) | 48 | `declaration-track:7207647ec8a12ae2a772714d0be043ebd1a2c1cd0a8727fcd6d6ea8368063163` |
| 6 | `def` | [Glues](../../../../../ComputerScience/AlgorithmsInComputerScience/EqualizerGluingNamespaced.lean/declarations/glues.md) | 58 | `declaration-track:814b002fb80dd53122130e70248439fbe907cc65cea23a4859e0502036fbe069` |
| 7 | `structure` | [GluingCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/EqualizerGluingNamespaced.lean/declarations/gluingcertificate.md) | 66 | `declaration-track:d175e6194f85ea1bcc1ee171449b17ee2fd3aa9ba718ef0431bcdf84470bf841` |
| 8 | `def` | [ExistsUniqueGluing](../../../../../ComputerScience/AlgorithmsInComputerScience/EqualizerGluingNamespaced.lean/declarations/existsuniquegluing.md) | 78 | `declaration-track:a80cb4454d631bf1a2a7ec1c5076e4adf05b6c96d2586a7a1452a5ea8914c601` |
| 9 | `theorem` | [gluing_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/EqualizerGluingNamespaced.lean/declarations/gluing-sound.md) | 88 | `result-track:9adbf6d0ef3d53b819d64641444e1fae56263dfde8afd51ca11d4ed11d70fb7d` |
| 10 | `structure` | [EncodedGluingCert](../../../../../ComputerScience/AlgorithmsInComputerScience/EqualizerGluingNamespaced.lean/declarations/encodedgluingcert.md) | 98 | `declaration-track:21dbd9d2bdb52db73355bd8c577f40e43eba458e0354ba537b5be2e5d5c3f824` |
| 11 | `def` | [checkGluingCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/EqualizerGluingNamespaced.lean/declarations/checkgluingcertificate.md) | 103 | `declaration-track:4774b425061ac2ecc296a79fb5f8a3f932100d6f5ca379ccae52294a11baa969` |
| 12 | `theorem` | [checkGluingCertificate_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/EqualizerGluingNamespaced.lean/declarations/checkgluingcertificate-sound.md) | 106 | `result-track:12792148e805a08dff841ee4f927c0bd6300fb655689f2a2a9b002fb8156aad3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a2bdb25c870777942148110f788e94627a30be801ca4c51083d077f3bad3990 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EqualizerGluing/Variant151fde6778d72f6128ac6933324cdc042c259d9e04bb5dd925599ade1f66cd8b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EqualizerGluing/Variant151fde6778d72f6128ac6933324cdc042c259d9e04bb5dd925599ade1f66cd8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
