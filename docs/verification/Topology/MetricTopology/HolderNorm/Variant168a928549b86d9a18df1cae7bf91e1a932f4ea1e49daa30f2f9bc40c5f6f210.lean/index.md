# Verification target: GRWTSK.Topology.MetricTopology.HolderNorm.Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acb796187791dfe3462b5bde06d31a857c0fa205",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acb796187791dfe3462b5bde06d31a857c0fa205`.

Source path: `GRWTSK/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Holder` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eHolderNorm](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/eholdernorm--d4138d84d873f4ac9d874e70.md) | 55 | `declaration-track:d4138d84d873f4ac9d874e70e9806f8e9d4545f11af48b6d84640d2c62a4136e` |
| 2 | `def` | [nnHolderNorm](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/nnholdernorm--5a5f03a081dee23587f326a9.md) | 59 | `declaration-track:5a5f03a081dee23587f326a9c2fa93bc6d2db2f66b304b31f79c5a8f5c13090a` |
| 3 | `def` | [MemHolder](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/memholder--8598eb694a4809b489211d30.md) | 64 | `declaration-track:8598eb694a4809b489211d304604e8cef3c305983e83198628dbc6759421641a` |
| 4 | `lemma` | [HolderWith.memHolder](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/holderwith-memholder--274e9b3ae0ca0707e045af92.md) | 66 | `result-track:274e9b3ae0ca0707e045af929d605bedfed8269df851d189e4a245fd425c65c8` |
| 5 | `lemma` | [eHolderNorm_lt_top](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/eholdernorm-lt-top--7512d30b6f99e5d298d9b046.md) | 68 | `result-track:7512d30b6f99e5d298d9b046762b1ad5b7cf9f581d1b2fb229d333848d361465` |
| 6 | `lemma` | [eHolderNorm_ne_top](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/eholdernorm-ne-top--56234e19b37c5e4c29bcd78d.md) | 75 | `result-track:56234e19b37c5e4c29bcd78d8ddc8f683384fed358cf55783064192109f0cf18` |
| 7 | `lemma` | [eHolderNorm_eq_top](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/eholdernorm-eq-top--ec3d63b86f2ef3b28c53f2f4.md) | 78 | `result-track:ec3d63b86f2ef3b28c53f2f46e21281dbbd707d69c19060e24146a97c1b8d626` |
| 8 | `lemma` | [coe_nnHolderNorm_le_eHolderNorm](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/coe-nnholdernorm-le-eholdernorm--c771694736affc32ecf6a9f8.md) | 84 | `result-track:c771694736affc32ecf6a9f86a3cc93547eddde3c6d932e6d310eeef01cec5dd` |
| 9 | `lemma` | [eHolderNorm_const](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/eholdernorm-const--3dbd1bb2d2d716615fd73e52.md) | 90 | `result-track:3dbd1bb2d2d716615fd73e52ee9bd2c16aa2242c641287c4e6197e1d1f4c3002` |
| 10 | `lemma` | [eHolderNorm_zero](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/eholdernorm-zero--b1d94006693e5b8ee6dc6d9a.md) | 96 | `result-track:b1d94006693e5b8ee6dc6d9a1ae7f7963492cbf2937eb3a59e4b3159eb239893` |
| 11 | `lemma` | [nnHolderNorm_const](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/nnholdernorm-const--b848fa9b27f9f5eb724c2230.md) | 101 | `result-track:b848fa9b27f9f5eb724c223055e4b44d5535fc53d5c04cebc2ea7c653b838fb1` |
| 12 | `lemma` | [nnHolderNorm_zero](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/nnholdernorm-zero--bad8c5e1e5c61cee10d8ae16.md) | 108 | `result-track:bad8c5e1e5c61cee10d8ae1682bbb77826228099bb93893dffd6e308be621b98` |
| 13 | `lemma` | [eHolderNorm_of_isEmpty](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/eholdernorm-of-isempty--b164a09b47b3265da391de06.md) | 113 | `result-track:b164a09b47b3265da391de06856b04e8bedbd5ed9c8c1594a7d83c250cd6557b` |
| 14 | `lemma` | [HolderWith.eHolderNorm_le](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/holderwith-eholdernorm-le--5fd03e08834ac7aad575d7a7.md) | 118 | `result-track:5fd03e08834ac7aad575d7a7b83270b6ff3844cd635a51dd1e4e9e5acdb5f92c` |
| 15 | `lemma` | [memHolder_const](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/memholder-const--f5c241f1fc602ca42f234a0b.md) | 124 | `result-track:f5c241f1fc602ca42f234a0bd3a269f62ba19e17830b41c03dfde28b7b0271a8` |
| 16 | `lemma` | [memHolder_const'](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/memholder-const--7225fe6a6c9dcb5b931aa512.md) | 129 | `result-track:7225fe6a6c9dcb5b931aa512138b7e85d4fa9bfdeed36710764c7f57befbf051` |
| 17 | `lemma` | [memHolder_zero](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/memholder-zero--f2ea04322e099dc80803ed25.md) | 133 | `result-track:f2ea04322e099dc80803ed25bb4f07fe6c0da656271ad2ba9df0b738fe7d2ea5` |
| 18 | `lemma` | [eHolderNorm_eq_zero](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/eholdernorm-eq-zero--fae0e479121e4c34a6c18cbc.md) | 142 | `result-track:fae0e479121e4c34a6c18cbc20c8a1d72f7e76897f6069cd83a9b577984a104a` |
| 19 | `lemma` | [MemHolder.holderWith](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/memholder-holderwith--a611d661cee52d8c189ca659.md) | 163 | `result-track:a611d661cee52d8c189ca659a1a8204d887db6d8552b2567acdc9546d277c9e5` |
| 20 | `lemma` | [memHolder_iff_holderWith](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/memholder-iff-holderwith--198a6a0846c354bbc1f23d9e.md) | 179 | `result-track:198a6a0846c354bbc1f23d9e0b65dc5e3890ca69514dd2067a08313406fbfcf0` |
| 21 | `lemma` | [MemHolder.coe_nnHolderNorm_eq_eHolderNorm](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/memholder-coe-nnholdernorm-eq-eholdernorm--32dfc5bfe7f4d83e462de895.md) | 183 | `result-track:32dfc5bfe7f4d83e462de89520da52b040169f6be644d00bd590955dac16ea06` |
| 22 | `lemma` | [HolderWith.nnholderNorm_le](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/holderwith-nnholdernorm-le--ab16bd87224214ca48774d28.md) | 189 | `result-track:ab16bd87224214ca48774d28022f4f884943ae84695988359db68202d093559b` |
| 23 | `lemma` | [MemHolder.comp](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/memholder-comp--ab7247b9382af5dcc293700d.md) | 194 | `result-track:ab7247b9382af5dcc293700da5955acf2e3dfa04b6be1d5800a404f8e652e314` |
| 24 | `lemma` | [MemHolder.nnHolderNorm_eq_zero](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/memholder-nnholdernorm-eq-zero--ab0037aa42363fe2b363d663.md) | 198 | `result-track:ab0037aa42363fe2b363d663f42caa71093562404c2f89357d34c4c71640326e` |
| 25 | `lemma` | [MemHolder.add](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/memholder-add--1c0d215a8ee07af8af2a7780.md) | 209 | `result-track:1c0d215a8ee07af8af2a7780f0681f24d2b6f50b57a43da4ef2bfdf1734f2ff8` |
| 26 | `lemma` | [MemHolder.smul](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/memholder-smul--450c9a929ee93edce406b76e.md) | 212 | `result-track:450c9a929ee93edce406b76e1cde2116a1e9dbadb768b044e50dbe49685b7113` |
| 27 | `lemma` | [MemHolder.smul_iff](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/memholder-smul-iff--8a599df79801138c339f636d.md) | 216 | `result-track:8a599df79801138c339f636da84089cef237111f0e33b41c4a5d61feb839d530` |
| 28 | `lemma` | [MemHolder.nsmul](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/memholder-nsmul--8ce0aaf68cc8c2fe883c5a5f.md) | 222 | `result-track:8ce0aaf68cc8c2fe883c5a5f976e0c577a842488caa95f818c2bf23ae8dd813c` |
| 29 | `lemma` | [MemHolder.nnHolderNorm_add_le](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/memholder-nnholdernorm-add-le--e6c4bd0e08932eaf922e524c.md) | 226 | `result-track:e6c4bd0e08932eaf922e524c14abb6f2de533feda1b61d11fba24d51dbcca8d4` |
| 30 | `lemma` | [eHolderNorm_add_le](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/eholdernorm-add-le--23d56c4bf12008cc2fec20a3.md) | 231 | `result-track:23d56c4bf12008cc2fec20a3176ebe1a39011f0c7e24d613752e6562127ea830` |
| 31 | `lemma` | [eHolderNorm_smul](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/eholdernorm-smul--8cf51c6fba47ce323a916511.md) | 242 | `result-track:8cf51c6fba47ce323a9165117fb483ab97e777589e5667ff392ff7c3800616ec` |
| 32 | `lemma` | [MemHolder.nnHolderNorm_smul](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/memholder-nnholdernorm-smul--ccca7cb325eb2b93e17eeff3.md) | 263 | `result-track:ccca7cb325eb2b93e17eeff3fac1a0d5edb040fb12afb4872c7b3d2a8fd8a500` |
| 33 | `lemma` | [eHolderNorm_nsmul](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/eholdernorm-nsmul--5529aa191ff5b8d8103da08d.md) | 269 | `result-track:5529aa191ff5b8d8103da08d9916d6e56b7655e089211558e726401c91739ff6` |
| 34 | `lemma` | [MemHolder.nnHolderNorm_nsmul](../../../../../mathematics/Topology/MetricTopology/HolderNorm/Variant168a928549b86d9a18df1cae7bf91e1a932f4ea1e49daa30f2f9bc40c5f6f210.lean/declarations/memholder-nnholdernorm-nsmul--074653418faac9c943ef88ae.md) | 273 | `result-track:074653418faac9c943ef88ae1c743c4c32fe0ffd774742dda62cc4fa58e06539` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
