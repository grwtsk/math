# Verification target: Mathlib Adapter Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f17b0289709b082eebc9cc4a7a21c9d4457f4e28",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MathlibAdapter/Variant9c5e7343e7d0cdafdda622c02dae03abe62c821570eaf7c10715fed5a94290df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapterNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapterNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f17b0289709b082eebc9cc4a7a21c9d4457f4e28`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MathlibAdapter/Variant9c5e7343e7d0cdafdda622c02dae03abe62c821570eaf7c10715fed5a94290df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MathlibAdapter/Variant9c5e7343e7d0cdafdda622c02dae03abe62c821570eaf7c10715fed5a94290df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.GaloisCohomology.Selmer` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MathlibCohomologyAdapterBackend](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapterNamespaced.lean/declarations/mathlibcohomologyadapterbackend.md) | 35 | `declaration-track:23cc59acc200d400e2e7d8bcf28e42019f15c83df1b636d200dc94a1d35f464c` |
| 2 | `def` | [usableForFinalTheorem](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapterNamespaced.lean/declarations/usableforfinaltheorem.md) | 42 | `declaration-track:a11030ab99c32b59295b81168e36698f09023c8570cd20301b3e97935e2ca402` |
| 3 | `theorem` | [unavailable_not_usableForFinalTheorem](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapterNamespaced.lean/declarations/unavailable-not-usableforfinaltheorem.md) | 46 | `result-track:04523d03cf3d658b7c858001dbb95422c773971d5ee4fd1bd8e5e9c5dff5b841` |
| 4 | `structure` | [FiniteH1MathlibAdapter](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapterNamespaced.lean/declarations/finiteh1mathlibadapter.md) | 54 | `declaration-track:8faadadc1f66d6606d536958417383693e183504f97d61f7980c98db7a647b5d` |
| 5 | `def` | [FiniteH1MathlibAdapter.usableForFinalTheorem](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapterNamespaced.lean/declarations/finiteh1mathlibadapter-usableforfinaltheorem.md) | 73 | `declaration-track:1eab7216e4a58a6470f993d65e2bef4ce472173ee0de064b89534ae4bf4d2425` |
| 6 | `theorem` | [FiniteH1MathlibAdapter.unavailable_not_usableForFinalTheorem](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapterNamespaced.lean/declarations/finiteh1mathlibadapter-unavailable-not-usableforfinaltheorem.md) | 85 | `result-track:7e32ada6ba8dc1d1978afb6023ed6b54b992a0c9da45f328583ade6883fb408f` |
| 7 | `theorem` | [FiniteH1MathlibAdapter.usableForFinalTheorem_has_transfers](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapterNamespaced.lean/declarations/finiteh1mathlibadapter-usableforfinaltheorem-has-transfers.md) | 96 | `result-track:9a50244f8dd6d5fe0acf970b83fdbcfe47a38a6e586160c80202ba1b3724d91c` |
| 8 | `structure` | [FiniteSelmerMathlibAdapter](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapterNamespaced.lean/declarations/finiteselmermathlibadapter.md) | 109 | `declaration-track:de52121c2bf49082570d28cf519ea62ee07e970f63cf417ea33460578ead44f4` |
| 9 | `def` | [FiniteSelmerMathlibAdapter.usableForFinalTheorem](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapterNamespaced.lean/declarations/finiteselmermathlibadapter-usableforfinaltheorem.md) | 128 | `declaration-track:7be08d9c9a4964f0c7a03ce126f3e2d9b1e68b3d03d8f275683d92a47a93fb97` |
| 10 | `theorem` | [FiniteSelmerMathlibAdapter.unavailable_not_usableForFinalTheorem](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapterNamespaced.lean/declarations/finiteselmermathlibadapter-unavailable-not-usableforfinaltheorem.md) | 140 | `result-track:e4d50b919aed3ebbedbca2e91147e4e87ef1910d5d18bab2ad75e6406adaeb32` |
| 11 | `theorem` | [FiniteSelmerMathlibAdapter.usableForFinalTheorem_has_globalH1](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapterNamespaced.lean/declarations/finiteselmermathlibadapter-usableforfinaltheorem-has-globalh1.md) | 149 | `result-track:33c661a206396b69383b821c75b9a1b8d1a9049ee4c7ce73471800afee8fac57` |
| 12 | `theorem` | [FiniteSelmerMathlibAdapter.usableForFinalTheorem_has_localH1](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapterNamespaced.lean/declarations/finiteselmermathlibadapter-usableforfinaltheorem-has-localh1.md) | 156 | `result-track:7e0b20c99633b53d17c0c375b16289741e98e391e93b16713e950b881eca1480` |
| 13 | `theorem` | [FiniteSelmerMathlibAdapter.usableForFinalTheorem_has_transfers](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibAdapterNamespaced.lean/declarations/finiteselmermathlibadapter-usableforfinaltheorem-has-transfers.md) | 164 | `result-track:ebbe6fddcd65c02ef916ff06860f0310f868c49af26c35c7dec69397552f41cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2cfc46302c4a2f7b38c6907e5b14029159bb2259846cafd04bfefd832f91f236 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MathlibAdapter/Variant9c5e7343e7d0cdafdda622c02dae03abe62c821570eaf7c10715fed5a94290df.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MathlibAdapter/Variant9c5e7343e7d0cdafdda622c02dae03abe62c821570eaf7c10715fed5a94290df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
