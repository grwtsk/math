# Verification target: Limits Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b8de13138d474a3e68e118dcede877e6a911258",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LimitsBasicNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/LimitsBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b8de13138d474a3e68e118dcede877e6a911258`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.Adjunctions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Colimits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [limitCone](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/limitcone.md) | 46 | `declaration-track:d65ec9ef1857dc47cee68d823f76575e19ba4ac7e9c1752444552be553757758` |
| 2 | `def` | [limitConeIsLimit](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/limitconeislimit.md) | 61 | `declaration-track:d711094b2a535fcee36be58ef1b39105e0eda6b2d754bdeabd51bd51876284e5` |
| 3 | `def` | [conePtOfConeForget](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/coneptofconeforget.md) | 85 | `declaration-track:6de9c4085b6edb89b2957d4e65e814395f7be427b4bfad1bc0da5f6297f9fe3c` |
| 4 | `instance` | [topologicalSpaceConePtOfConeForget](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/topologicalspaceconeptofconeforget.md) | 87 | `declaration-track:cdd1bbd0653ef9d618dec3ff4fbd67faecc5da8e540fc2163a582c8b58b0a542` |
| 5 | `def` | [coneOfConeForget](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/coneofconeforget.md) | 95 | `declaration-track:41e27396d199f2171b3a278da2269cb97cb0c6725ed053db8e87dc303238f393` |
| 6 | `def` | [isLimitConeOfForget](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/islimitconeofforget.md) | 108 | `declaration-track:e26baadbd571d2d837df780b8eaebf0686f44f3b24bcfef5887b54c2a7c1d2e7` |
| 7 | `theorem` | [induced_of_isLimit](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/induced-of-islimit.md) | 128 | `result-track:520fad2c8714340ec76bfbaffdfa5faa67645f44fbb474db644216b6d5de475f` |
| 8 | `theorem` | [limit_topology](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/limit-topology.md) | 144 | `result-track:8682b76375709adab201c8e5807713f2596b0e43208625c58c120ad6780955a1` |
| 9 | `lemma` | [hasLimit_iff_small_sections](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/haslimit-iff-small-sections.md) | 148 | `result-track:7008e1b3838182723b8e1858f710770824a5d95527cc78559f03f00148a4835e` |
| 10 | `instance` | [topCat_hasLimitsOfShape](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/topcat-haslimitsofshape.md) | 155 | `declaration-track:42009a55f753f9383164a0dd53f4ad873c406a1446f9c848e821af097cddb565` |
| 11 | `instance` | [topCat_hasLimitsOfSize](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/topcat-haslimitsofsize.md) | 161 | `declaration-track:6428f082f203de7c5497a2e63860de6722c5cc679bb3512a5785078c452e116c` |
| 12 | `instance` | [topCat_hasLimits](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/topcat-haslimits.md) | 163 | `declaration-track:687d2739966cd5c73eccdbb1dbf42438aba14628721da3a2bea33a4b62f0f9be` |
| 13 | `instance` | [forget_preservesLimitsOfSize](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/forget-preserveslimitsofsize.md) | 166 | `declaration-track:3ad352d1be04b2d16c168258800802e44cd71286817c761180610edd98b34b68` |
| 14 | `instance` | [forget_preservesLimits](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/forget-preserveslimits.md) | 169 | `declaration-track:191c57919f507931b7f3fdc5ae64a3cfb5195fe2c9f084334576742990f4d550` |
| 15 | `def` | [coconePtOfCoconeForget](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/coconeptofcoconeforget.md) | 184 | `declaration-track:cb27d0c554ac891ae0aa4ccf8ea56e0af60258680ab052410cf41f31702d4b25` |
| 16 | `instance` | [topologicalSpaceCoconePtOfCoconeForget](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/topologicalspacecoconeptofcoconeforget.md) | 186 | `declaration-track:7488a47a4f4e3d84509c8c2f4e5bdf33ecfa3af5dff2d4f366dcbf37fa71a9e9` |
| 17 | `def` | [coconeOfCoconeForget](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/coconeofcoconeforget.md) | 194 | `declaration-track:5d280b7516d8b740b1df2b3c724b2a8f18b8e1a2d9b96c54385f2db2a53da980` |
| 18 | `def` | [isColimitCoconeOfForget](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/iscolimitcoconeofforget.md) | 207 | `declaration-track:f9b3fb5ab6937192f73ff9ed7d0258d9b8a0ef9dd7b9963d4b2aa5c56c96b682` |
| 19 | `theorem` | [coinduced_of_isColimit](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/coinduced-of-iscolimit.md) | 230 | `result-track:b2fd4a49a4fb3c72a15548d4704ae430591d60d6672a591b4c7878672bff3848` |
| 20 | `lemma` | [isOpen_iff_of_isColimit](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/isopen-iff-of-iscolimit.md) | 243 | `result-track:cb4ebd30fa0193bc941dbbe6892dc2fe36ab8e0d8550771f642b885faca56c35` |
| 21 | `lemma` | [isClosed_iff_of_isColimit](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/isclosed-iff-of-iscolimit.md) | 250 | `result-track:f1af84f218cc96278a91e026ee82275d642b465ec65509618e1dbbfd440d8362` |
| 22 | `lemma` | [continuous_iff_of_isColimit](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/continuous-iff-of-iscolimit.md) | 255 | `result-track:c12812b15d3923a7d847c92ce1443abd0963b31965f4917f2a4f255608a0dc0f` |
| 23 | `theorem` | [colimit_topology](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/colimit-topology.md) | 264 | `result-track:5076ae79fee109480d20742dd6c8cad2412f5a77593d15f64855e987aa4dba3f` |
| 24 | `theorem` | [colimit_isOpen_iff](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/colimit-isopen-iff.md) | 268 | `result-track:cfe40162e798afa3f8038580204d967bfbf05a771b9f55dcdafd3b420ba55cae` |
| 25 | `lemma` | [hasColimit_iff_small_quot](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/hascolimit-iff-small-quot.md) | 273 | `result-track:17bb920741343ad0a4e927ec5ef7fd73057ce806076bdc7eb6ab457f16c139e1` |
| 26 | `instance` | [topCat_hasColimitsOfShape](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/topcat-hascolimitsofshape.md) | 280 | `declaration-track:d3a1e3cbcffb979e5ab7be621676d42350e71ffff64934646f0d595b8df945d9` |
| 27 | `instance` | [topCat_hasColimitsOfSize](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/topcat-hascolimitsofsize.md) | 286 | `declaration-track:0d56ab1cf4ae15b893952d1b498f9a6a5978aa88f32e885ac93f37ee0b465fa9` |
| 28 | `instance` | [topCat_hasColimits](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/topcat-hascolimits.md) | 288 | `declaration-track:c7abc8f91f5ba522439dfe8cfb78da08229b090d6ecd9d1b47b82d806a2d1940` |
| 29 | `instance` | [forget_preservesColimitsOfSize](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/forget-preservescolimitsofsize.md) | 291 | `declaration-track:f9c4ee8bf93b65d1e1742540dc26de82ca816af5d2049102c5d5d51ffdaddc16` |
| 30 | `instance` | [forget_preservesColimits](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/forget-preservescolimits.md) | 294 | `declaration-track:3f1235c4df8686536730ede276d6ba9790b3d8771f4c8f3d6b7edfbf03abb866` |
| 31 | `def` | [isTerminalPUnit](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/isterminalpunit.md) | 299 | `declaration-track:f891b5d2d5c406b1d9dd2ce97fd59b63ff0d6396e5001be712ebaa6a42fc99e6` |
| 32 | `def` | [terminalIsoPUnit](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/terminalisopunit.md) | 305 | `declaration-track:49bcad29ea3c617b9e42bd13dc2926e0a5c9f15f017b7eb12a00ab33e1971b06` |
| 33 | `def` | [isInitialPEmpty](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/isinitialpempty.md) | 309 | `declaration-track:3d0381a6adefe63a9c300ab4973c0e4f4e84eda5f844300b5645d0121962d9bc` |
| 34 | `def` | [initialIsoPEmpty](../../../../GeneralTopology/LimitsBasicNamespaced.lean/declarations/initialisopempty.md) | 315 | `declaration-track:daf96e3c8ad20bc169bb3f2d74e8e41b5e442a3c67760965c10435cc748b2568` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d58fdbc0b086a707c61c8fa9874e55a908419d0f42d1a28152ffc29040ae14b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant249ad4f5e887a9029ceaabe9f7940f5367c41b9f680758d7e27dec92d3db3286.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
