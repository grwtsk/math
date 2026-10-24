# Verification target: GRWTSK.Topology.GeneralTopology.Topology.Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b38ab3a942556522b262016fecdb36dc1c171d3c",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b38ab3a942556522b262016fecdb36dc1c171d3c`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Analysis.Filter` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bases` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyFinite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Ctop](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/ctop--4c5acfb533c59e5be7fe92fb.md) | 35 | `declaration-track:4c5acfb533c59e5be7fe92fb98f07eb1e2ea0446c58371a7d0eebe9c5e5c9b83` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/instance--8216251bb3cdf3d67c0e6ea2.md) | 46 | `declaration-track:8216251bb3cdf3d67c0e6ea241aa7604bda937440a7006aa492ff54f38bdec54` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/instance--cdc0df7bb032feccdb3f9fcd.md) | 60 | `declaration-track:cdc0df7bb032feccdb3f9fcd5bd4860f2aff0d360441bb32f1c8544a3ca91904` |
| 4 | `theorem` | [coe_mk](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/coe-mk--892b46740556b4797af756d9.md) | 64 | `result-track:892b46740556b4797af756d9b34ffbbde21ddaa11da77d2f7e9cc23b20c0a277` |
| 5 | `def` | [ofEquiv](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/ofequiv--cc36ca8f08bf1d31860077c6.md) | 68 | `declaration-track:cc36ca8f08bf1d31860077c63cc9f269bd8a5e91a64698dfb4c15eadc0d3f053` |
| 6 | `theorem` | [ofEquiv_val](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/ofequiv-val--cd71d54fb3181235da734444.md) | 79 | `result-track:cd71d54fb3181235da7344440b9dce3b769be646fc58f233d01b906934d42f72` |
| 7 | `def` | [toTopsp](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/totopsp--7cff79c8fb1ebd41b9005d0d.md) | 86 | `declaration-track:7cff79c8fb1ebd41b9005d0dbaebca964275a818ebb7e72132164cca7d5009a8` |
| 8 | `theorem` | [toTopsp_isTopologicalBasis](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/totopsp-istopologicalbasis--35f1024a1b47b9118c5bbf9b.md) | 89 | `result-track:35f1024a1b47b9118c5bbf9bbaa07c1efb3e4e0ddcd082261d8bbd62288b211d` |
| 9 | `theorem` | [mem_nhds_toTopsp](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/mem-nhds-totopsp--0d0dc1416012a5f629df6ba6.md) | 98 | `result-track:0d0dc1416012a5f629df6ba686247c59c054c3fac734ff52658294485a2dcea8` |
| 10 | `structure` | [Ctop.Realizer](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/ctop-realizer--efc38030629fe1bfd258ac1a.md) | 109 | `declaration-track:efc38030629fe1bfd258ac1abdf9d7648acf8ce046cf8a6223addaee485c65ed` |
| 11 | `def` | [Ctop.toRealizer](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/ctop-torealizer--3eb7b4416fbfe777428f9997.md) | 118 | `declaration-track:3eb7b4416fbfe777428f99973b8d09d2e8109140932bbda359baa4b4645eaeb3` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/instance--bedbd9c67c8e871d43ab4ce7.md) | 122 | `declaration-track:bedbd9c67c8e871d43ab4ce7472d240b7a0dd46063b72d8df212054961844d19` |
| 13 | `theorem` | [is_basis](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/is-basis--a6eaec60d8723031902baf86.md) | 127 | `result-track:a6eaec60d8723031902baf8666878befd57db9dea96dfaf1553f5b7dfc5d12bb` |
| 14 | `theorem` | [mem_nhds](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/mem-nhds--d6764a974f45f29156b0c907.md) | 132 | `result-track:d6764a974f45f29156b0c907a003b76d4e3569acbb4c7f8dcb5e271edbbd2779` |
| 15 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/isopen-iff--07d64a09cdc4dd714a94dc9e.md) | 137 | `result-track:07d64a09cdc4dd714a94dc9ee8dd6a349ddcc4761b1fe2fc717cbcf534eb8efb` |
| 16 | `theorem` | [isClosed_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/isclosed-iff--466031fe30178be9944bea7c.md) | 142 | `result-track:466031fe30178be9944bea7ca38eb506e8aa7a7b287d8e875f05c4ddce139db0` |
| 17 | `theorem` | [mem_interior_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/mem-interior-iff--7bd75b57cded1c93f5d18010.md) | 152 | `result-track:7bd75b57cded1c93f5d18010cfc4ca8cee2a6e6032ac0fec7c63d2ec4c41123b` |
| 18 | `theorem` | [isOpen](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/isopen--3037e488886fe6fb0dad4f2e.md) | 157 | `result-track:3037e488886fe6fb0dad4f2e5d4f146eb698a36acd24a1bea2c27831bb427266` |
| 19 | `theorem` | [ext'](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/ext--6f832a70e8bb6509583904e5.md) | 161 | `result-track:6f832a70e8bb6509583904e57491a1adf3d12af4bab20ce23247fc2267e68e47` |
| 20 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/ext--42a0ba7d96be126de1c9307d.md) | 168 | `result-track:42a0ba7d96be126de1c9307d4429fd315d4f614712f7fbc024a7b20f8ba28502` |
| 21 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/id--f972dd4962db1227aa0f969a.md) | 178 | `declaration-track:f972dd4962db1227aa0f969a23958b9209d855d189292aaf41a78e9531e49412` |
| 22 | `def` | [ofEquiv](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/ofequiv--cd223efe21bbc18604bb9453.md) | 192 | `declaration-track:cd223efe21bbc18604bb94538d020569ecfc193238d4f72fb01e330e647992f2` |
| 23 | `theorem` | [ofEquiv_σ](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/ofequiv--d22c7b1de43530270919b619.md) | 200 | `result-track:d22c7b1de43530270919b6199484625f507c7202487f301bdddcf8326254e636` |
| 24 | `theorem` | [ofEquiv_F](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/ofequiv-f--aa88ac6e46b56e1bef3b48ff.md) | 204 | `result-track:aa88ac6e46b56e1bef3b48ffbf9bf9073a09746f340bc95442bae28c136a2707` |
| 25 | `def` | [nhds](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/nhds--cda9114808c9b4c486b78174.md) | 210 | `declaration-track:cda9114808c9b4c486b781741eb3b7b7989a69d7d0ae744511b98a77940740f2` |
| 26 | `theorem` | [nhds_σ](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/nhds--15f1b43b280566f9211bd375.md) | 225 | `result-track:15f1b43b280566f9211bd375ae50e3e1bfde85fbf6acfbb62503215aef3a9c77` |
| 27 | `theorem` | [nhds_F](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/nhds-f--ef869ca9608579b394e2f0d3.md) | 229 | `result-track:ef869ca9608579b394e2f0d3803f325d492e7a1be265e5e2ab397198bae04180` |
| 28 | `theorem` | [tendsto_nhds_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/tendsto-nhds-iff--b66b1bd5eaea08ed1a20aa29.md) | 233 | `result-track:b66b1bd5eaea08ed1a20aa29dfb50fd2c4b8cf27aaf9ae82e8e62759dee80457` |
| 29 | `structure` | [LocallyFinite.Realizer](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/locallyfinite-realizer--61bca45a2aa30440565c67b1.md) | 243 | `declaration-track:61bca45a2aa30440565c67b145e6da13ae0b51a103c0a7969d64f87574346123` |
| 30 | `theorem` | [LocallyFinite.Realizer.to_locallyFinite](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/locallyfinite-realizer-to-locallyfinite--22f5f5ff7ab52cce38e22dfa.md) | 248 | `result-track:22f5f5ff7ab52cce38e22dfa9677f3292328d6d4c3ba34e17e9ab4d70ccc3043` |
| 31 | `theorem` | [locallyFinite_iff_exists_realizer](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/locallyfinite-iff-exists-realizer--6fedb7b20f6c84d1c856f1f1.md) | 253 | `result-track:6fedb7b20f6c84d1c856f1f11956276a9ff37645788f4aa45a99d76e0197a35b` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/instance--9d28cd01eb7495c90c41e3b8.md) | 269 | `declaration-track:9d28cd01eb7495c90c41e3b8cbebc1a219761173bd1174053ea0c9367834eec6` |
| 33 | `def` | [Compact.Realizer](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/compact-realizer--699193d05fe6b48d4b7d6749.md) | 275 | `declaration-track:699193d05fe6b48d4b7d6749d286ba4c7c7e54fd1e3b56a8cc07c2be0909a157` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89053ad6ce63f9c4f1fcda8ba42fe12b04c356784c1cae31d335a653c0779ce5.lean/declarations/instance--7aa150bfbb0e3e4a01ae4245.md) | 279 | `declaration-track:7aa150bfbb0e3e4a01ae424527f9b6cf114a3d36af8e58077611834009514789` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
