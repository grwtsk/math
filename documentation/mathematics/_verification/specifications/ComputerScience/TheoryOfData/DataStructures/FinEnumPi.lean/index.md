# Verification target: Fin Enum Pi

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25f2cc0fffb7f1edbefb1d3ec6dd46dab1acbc3e",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant15f72949a8b426456b79453f1233217b0db782383ab9cd3c3de1f08c952245a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25f2cc0fffb7f1edbefb1d3ec6dd46dab1acbc3e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant15f72949a8b426456b79453f1233217b0db782383ab9cd3c3de1f08c952245a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FinEnum/Variant15f72949a8b426456b79453f1233217b0db782383ab9cd3c3de1f08c952245a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Monad.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.ProdSigma` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FinEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/finenum.md) | 27 | `declaration-track:668f7c955e810ab8a4a0fc266ad68178cc96b57ceef07ba4369794be860a3cb2` |
| 2 | `def` | [ofEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/ofequiv.md) | 43 | `declaration-track:a84b8bb4ed89232a8519c3e89734ec98d5203ddec2121d909ad1c2fc5c2010f7` |
| 3 | `def` | [ofNodupList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/ofnoduplist.md) | 51 | `declaration-track:45f0477354d629150fbd3ee8b83924b67f7c8b6c3e86b6d3b298ea2515f02f28` |
| 4 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/oflist.md) | 61 | `declaration-track:e2deb24995ba21d4ab19646bb7fa23d8431901100cbcce2ad23835ccb090b3f7` |
| 5 | `def` | [toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/tolist.md) | 66 | `declaration-track:4fa20abbfe846b27c29fdd78241efd42cc0af95f70996ae01164b02e9bbcc6f2` |
| 6 | `theorem` | [mem_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/mem-tolist.md) | 73 | `result-track:81bf43bf2df68cc6e21f775ab119c5f8de55143871bbae20d936e03f9bd5bdab` |
| 7 | `theorem` | [nodup_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/nodup-tolist.md) | 78 | `result-track:a343bc6f838ce8dfec91647a87b346958c9ba36d4590a5f77e906cc15aacd5a7` |
| 8 | `def` | [ofSurjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/ofsurjective.md) | 83 | `declaration-track:544d520cbc8ea30c6ab469452693ec22122c9396b3216d8527ad9d844c605ee6` |
| 9 | `def` | [ofInjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/ofinjective.md) | 88 | `declaration-track:2dd9da165b16a020f046911a8a61fe2270735bc4b7784636a7f1db0d9eaa972a` |
| 10 | `instance` | [pempty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/pempty.md) | 98 | `declaration-track:31c5919dfc1217f76cf65bb20c422c406732712c8deb062530b7e678d57f0f30` |
| 11 | `instance` | [empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/empty.md) | 102 | `declaration-track:759b91f52d4e32b04029e23518f2754ad6551ed75bf17f7e59095b73eba6f972` |
| 12 | `instance` | [punit](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/punit.md) | 106 | `declaration-track:581cd32da6032967b608a329148f85b8d59bbfc650907d635afafadc66359f51` |
| 13 | `instance` | [prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/prod.md) | 111 | `declaration-track:5cd66697153bbfb6396bc37dd0f225ee9a1d27df13d2065bcd85dafc2fab1690` |
| 14 | `instance` | [sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/sum.md) | 115 | `declaration-track:ef55851f90dbd4e19a0ae7ded612ed5a61f5fc0e1f044d633747707427212477` |
| 15 | `instance` | [fin](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/fin.md) | 119 | `declaration-track:c70c9e8e2d21eb553cce848094ffc4314253e2fd8cd44c11d391381e68803cd3` |
| 16 | `instance` | [Quotient.enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/quotient-enum.md) | 123 | `declaration-track:063713150c17ac7751692e68db89d1f2ab31bac47f4479761cd8517e1b04539f` |
| 17 | `def` | [Finset.enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/finset-enum.md) | 129 | `declaration-track:22a7840504198dafe785917571a40b86569233d152f9a1fa909d4d5d488ff5c9` |
| 18 | `theorem` | [Finset.mem_enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/finset-mem-enum.md) | 137 | `result-track:184c7111bffcb81a8a4bf4c56dcbd5a9d207e15de9d032be6df0d17539a27bb7` |
| 19 | `instance` | [Finset.finEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/finset-finenum.md) | 171 | `declaration-track:603fc029417755e457fd0a855af5ae0937bcfa3182ffc2cb19a227d48e299278` |
| 20 | `instance` | [Subtype.finEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/subtype-finenum.md) | 175 | `declaration-track:0087d446487ed4ee43678ab66bf46da47f15b69eadecbba48202d4840554f15c` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/instance-source-edition-2.md) | 180 | `declaration-track:59fbc6e9230f3137d267175dca864b430d28ed6bef1bbae371654577c630b565` |
| 22 | `instance` | [PSigma.finEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/psigma-finenum.md) | 184 | `declaration-track:b260d890a3cbe374c20745d047621e45c3bfa2cb073ce2faa86c5cb1145c2b90` |
| 23 | `instance` | [PSigma.finEnumPropLeft](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/psigma-finenumpropleft.md) | 188 | `declaration-track:14fb269036172ed805254ed6ec7f4b01332b388a98c188e0dea006800d402168` |
| 24 | `instance` | [PSigma.finEnumPropRight](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/psigma-finenumpropright.md) | 194 | `declaration-track:b92e40f4e50a91023a862c9edf79782aced46d04660a649e72ea8ff969b4194f` |
| 25 | `instance` | [PSigma.finEnumPropProp](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/psigma-finenumpropprop.md) | 200 | `declaration-track:9ae7315e140107fb3670c6200340db3e3711a6963919c83d3275990c37272eed` |
| 26 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/instance.md) | 206 | `declaration-track:193227f21f622c00df4c289b9670539075640008f47571be564f19db51b19351` |
| 27 | `def` | [Pi.cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/pi-cons.md) | 212 | `declaration-track:cc0603c58ca7162a0d5d9f6d2615a1eac887652c1f88fcf126ff8711c4d66dc5` |
| 28 | `def` | [Pi.tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/pi-tail.md) | 219 | `declaration-track:51abf675cd2ccd10b79722aca8c700575f6f53e2d2cf949913ebab4c503474d4` |
| 29 | `def` | [pi](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/pi.md) | 224 | `declaration-track:31f45a7eb1369a8769fb358b4a2369f94e1e88ff3cbbea3d915ba947080336d8` |
| 30 | `theorem` | [mem_pi](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/mem-pi.md) | 230 | `result-track:797c88fdacdd1e25ac33b72f37715b59e5331caf0ef277c7ceae6f7e85076eb7` |
| 31 | `def` | [pi.enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/pi-enum.md) | 249 | `declaration-track:c07c2ca1f8e608c24ffaa4ff3c9f2cdf278e5276476f183785ecb2309a40232a` |
| 32 | `theorem` | [pi.mem_enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/pi-mem-enum.md) | 253 | `result-track:172cd5e8801143dae8124a7c372c16df5d12fbe38910199094b5544b58180c9c` |
| 33 | `instance` | [pi.finEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/pi-finenum.md) | 257 | `declaration-track:cf5b0951f8f9a34cf49d4b0ea5b1f8960f54782ab8510d25cca4eb78bf6f5de9` |
| 34 | `instance` | [pfunFinEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/declarations/pfunfinenum.md) | 262 | `declaration-track:4beae2756802e46a03bd3bca99e7c04df3210113d9f5a906255c6d9318a32e46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=666d959a89650a6c9e361347b9cb58edd00013fe0ed004be36f233f3d9292c74 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant15f72949a8b426456b79453f1233217b0db782383ab9cd3c3de1f08c952245a4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/FinEnum/Variant15f72949a8b426456b79453f1233217b0db782383ab9cd3c3de1f08c952245a4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
