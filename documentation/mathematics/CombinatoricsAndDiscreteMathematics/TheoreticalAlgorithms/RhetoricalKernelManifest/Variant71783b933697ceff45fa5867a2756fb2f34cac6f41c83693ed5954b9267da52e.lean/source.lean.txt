import DAF.Rhetorical.Kernel.Manifest

/-!
# Deterministic RKM1 artifact generator

This executable writes or checks the exact bytes computed by the formal
`productionManifest` definition.  It contains no independent policy values.
-/

open DAF.Rhetorical.KernelManifest

private def expected : ByteArray :=
  ByteArray.mk productionManifestWire.toArray

private def expectedIndependent : ByteArray :=
  ByteArray.mk independentFiniteManifestWire.toArray

private def usage : String :=
  "usage: rhetorical_kernel_manifest (--write | --check | --write-independent | --check-independent) PATH"

private def checkArtifact
    (label : String) (expectedBytes : ByteArray)
    (path : System.FilePath) : IO Unit := do
  let observed ← IO.FS.readBinFile path
  if observed = expectedBytes then
    IO.println s!"fresh Lean-generated {label} rhetorical kernel manifest: {path}"
  else
    throw <| IO.userError s!"stale Lean-generated {label} rhetorical kernel manifest: {path}"

private def writeArtifact
    (label : String) (expectedBytes : ByteArray)
    (path : System.FilePath) : IO Unit := do
  IO.FS.writeBinFile path expectedBytes
  IO.println s!"wrote Lean-generated {label} rhetorical kernel manifest: {path}"

def main (arguments : List String) : IO UInt32 := do
  try
    match arguments with
    | ["--check", path] => checkArtifact "production" expected path; pure 0
    | ["--write", path] => writeArtifact "production" expected path; pure 0
    | ["--check-independent", path] =>
        checkArtifact "independent finite" expectedIndependent path; pure 0
    | ["--write-independent", path] =>
        writeArtifact "independent finite" expectedIndependent path; pure 0
    | _ => throw <| IO.userError usage
  catch error =>
    IO.eprintln error.toString
    pure 2
