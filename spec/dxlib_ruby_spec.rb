RSpec.describe DxLib do
  it "has a version number" do
    expect(DxLib::VERSION).not_to be nil
  end

  it "ウィンドウの表示とUTF-8文字列の表示" do
    expect{
      DxLib::Functions.ChangeWindowMode(1)
      DxLib::Functions.SetMainWindowText("test - 試しに日本語を書いてみる♥")
      DxLib::Functions.DxLib_Init

      DxLib::Functions.DrawString(0, 0, "Press ANY KEY♥\nなにかキーを押してください",
        DxLib::Functions.GetColor(255, 0, 0), 0)

      DxLib::Functions.WaitKey
      DxLib::Functions.DxLib_End
    }.not_to raise_error
  end
end
