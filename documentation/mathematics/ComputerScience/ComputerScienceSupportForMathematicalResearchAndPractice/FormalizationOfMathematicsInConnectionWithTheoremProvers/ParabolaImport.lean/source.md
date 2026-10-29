# Parabola Import — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `183d460e6d4f90705c13b43df6f09af97e87bc1f` · SHA-256 `64c84c0d04c94012bd49df871bb80c04ad892778c352107194eda97fd5d7ae63`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Analysis.Decoupling.VanishingCurvature

set_option autoImplicit false

namespace Think.Analysis.Decoupling
namespace ParabolaImport

/--
Dependency surface for Bourgain-Demeter parabola decoupling.

No theorem dependency is imported here. A later trusted-import policy would
need to fill this surface before any theorem depending on it can be promoted.
-/
structure ParabolaDecouplingDependency where
  dependencyName : String
  authority : DecouplingAuthority
  trustedImportWitnessPresent : Bool
deriving DecidableEq, Repr

def bourgainDemeterParabolaDependency : ParabolaDecouplingDependency :=
  { dependencyName := "Bourgain-Demeter parabola decoupling"
    authority := .openResidue
    trustedImportWitnessPresent := false }

theorem bourgain_demeter_dependency_is_open_residue :
    bourgainDemeterParabolaDependency.authority = .openResidue := rfl

theorem bourgain_demeter_dependency_has_no_trusted_import_witness :
    bourgainDemeterParabolaDependency.trustedImportWitnessPresent = false := rfl

end ParabolaImport
end Think.Analysis.Decoupling
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5505074e808707817b56fdebb0176fd7091b8a3783fd10817167881bb4a775ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParabolaImport/Variant64c84c0d04c94012bd49df871bb80c04ad892778c352107194eda97fd5d7ae63.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
