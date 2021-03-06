import ARKit

class DefeatScene: SKScene {
    
    let loseLabel = SKLabelNode(fontNamed: "Chalkduster")
    let restartLabel = SKLabelNode(fontNamed: "Chalkduster")
    
    override func sceneDidLoad() {
        loseLabel.text = "You Lose!"
        loseLabel.fontSize = 60
        loseLabel.fontColor = SKColor.red
        
        restartLabel.text = "Tap to start again"
        restartLabel.fontSize = 30
        restartLabel.fontColor = SKColor.red
        
        run(Sounds.win)
    }
    
    override func didMove(to view: SKView) {
        loseLabel.position = CGPoint(x: frame.midX, y: frame.midY)
        restartLabel.position = CGPoint(x:frame.midX, y: frame.midY - 60)
        
        addChild(loseLabel)
        addChild(restartLabel)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        SceneManager.instance.loadScene(scene: GameScene())
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
}
